/*
 * Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
 * Copyright (C) 2009-2011 MaNGOSZero <https://github.com/mangos/zero>
 * Copyright (C) 2011-2016 Nostalrius <https://nostalrius.org>
 * Copyright (C) 2016-2017 Elysium Project <https://github.com/elysium-project>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

// \addtogroup realmd Realm Daemon
// @{
// \file

#include "Common.h"
#include "Database/DatabaseEnv.h"
#include "RealmList.h"

#include "Config/Config.h"
#include "Log.h"
#include "AuthSocket.h"
#include "SystemConfig.h"
#include "revision.h"
#include "Util.h"
#include "migrations_list.h"
#include <openssl/opensslv.h>
#include <openssl/crypto.h>

#include <ace/Get_Opt.h>
#include <ace/Dev_Poll_Reactor.h>
#include <ace/TP_Reactor.h>
#include <ace/ACE.h>
#include <ace/Acceptor.h>
#include <ace/SOCK_Acceptor.h>

#ifdef USE_SENDGRID
#include "MailerService.h"
#include <curl/curl.h>
#endif

#ifdef WIN32
#include "ServiceWin32.h"
char serviceName[] = "realmd";
char serviceLongName[] = "MaNGOS realmd service";
char serviceDescription[] = "Massive Network Game Object Server";
/*
 * -1 - not in service mode
 *  0 - stopped
 *  1 - running
 *  2 - paused
 */
int m_ServiceStatus = -1;
#else
#include "PosixDaemon.h"
#endif

bool StartDB();
void UnhookSignals();
void HookSignals();

bool stopEvent = false;                                     // Setting it to true stops the server

DatabaseType LoginDatabase;                                 // Accessor to the realm server database

// Print out the usage string for this program on the console.
void usage(const char *prog)
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Usage: \n %s [<options>]\n"
        "    -v, --version            print version and exist\n\r"
        "    -c config_file           use config_file as configuration file\n\r"
        #ifdef WIN32
        "    Running as service functions:\n\r"
        "    -s run                   run as service\n\r"
        "    -s install               install service\n\r"
        "    -s uninstall             uninstall service\n\r"
        #else
        "    Running as daemon functions:\n\r"
        "    -s run                   run as daemon\n\r"
        "    -s stop                  stop daemon\n\r"
        #endif
        ,prog);
}

char const* g_mainLogFileName = "Realmd.log";

// Launch the realm server
extern int main(int argc, char **argv)
{
    // Command line parsing
    char const* cfg_file = _REALMD_CONFIG;

    char const *options = ":c:s:";

    ACE_Get_Opt cmd_opts(argc, argv, options);
    cmd_opts.long_option("version", 'v');

    char serviceDaemonMode = '\0';

    int option;
    while ((option = cmd_opts()) != EOF)
    {
        switch (option)
        {
            case 'c':
                cfg_file = cmd_opts.opt_arg();
                break;
            case 'v':
                printf("Core revion: %s\n", _FULLVERSION);
                return 0;

            case 's':
            {
                const char *mode = cmd_opts.opt_arg();

                if (!strcmp(mode, "run"))
                    serviceDaemonMode = 'r';
#ifdef WIN32
                else if (!strcmp(mode, "install"))
                    serviceDaemonMode = 'i';
                else if (!strcmp(mode, "uninstall"))
                    serviceDaemonMode = 'u';
#else
                else if (!strcmp(mode, "stop"))
                    serviceDaemonMode = 's';
#endif
                else
                {
                    sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Runtime-Error: -%c unsupported argument %s", cmd_opts.opt_opt(), mode);
                    usage(argv[0]);
                    Log::WaitBeforeContinueIfNeed();
                    return 1;
                }
                break;
            }
            case ':':
                sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Runtime-Error: -%c option requires an input argument", cmd_opts.opt_opt());
                usage(argv[0]);
                Log::WaitBeforeContinueIfNeed();
                return 1;
            default:
                sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Runtime-Error: bad format of commandline arguments");
                usage(argv[0]);
                Log::WaitBeforeContinueIfNeed();
                return 1;
        }
    }

#ifdef WIN32                                                // windows service command need execute before config read
    switch (serviceDaemonMode)
    {
        case 'i':
            if (WinServiceInstall())
                sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Installing service");
            return 1;
        case 'u':
            if (WinServiceUninstall())
                sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Uninstalling service");
            return 1;
        case 'r':
            WinServiceRun();
            break;
    }
#endif

    if (!sConfig.SetSource(cfg_file))
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Could not find configuration file %s.", cfg_file);
        Log::WaitBeforeContinueIfNeed();
        return 1;
    }

#ifndef WIN32                                               // posix daemon commands need apply after config read
    switch (serviceDaemonMode)
    {
        case 'r':
            startDaemon();
            break;
        case 's':
            stopDaemon();
            break;
    }
#endif

    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Core revision: %s [realm-daemon]", _FULLVERSION);
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "<Ctrl-C> to stop.\n" );
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Using configuration file %s.", cfg_file);

    // Check the version of the configuration file
    uint32 confVersion = sConfig.GetIntDefault("ConfVersion", 0);
    if (confVersion < _REALMDCONFVERSION)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "*****************************************************************************");
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, " WARNING: Your realmd.conf version indicates your conf file is out of date!");
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "          Please check for updates, as your current default values may cause");
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "          strange behavior.");
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "*****************************************************************************");
        Log::WaitBeforeContinueIfNeed();
    }

    sLog.Out(LOG_BASIC, LOG_LVL_DETAIL, "%s (Library: %s)", OPENSSL_VERSION_TEXT, SSLeay_version(SSLEAY_VERSION));
    if (SSLeay() < 0x009080bfL )
    {
        sLog.Out(LOG_BASIC, LOG_LVL_DETAIL, "WARNING: Outdated version of OpenSSL lib. Logins to server may not work!");
        sLog.Out(LOG_BASIC, LOG_LVL_DETAIL, "WARNING: Minimal required version [OpenSSL 0.9.8k]");
    }

    sLog.Out(LOG_BASIC, LOG_LVL_DETAIL, "Using ACE: %s", ACE_VERSION);

#ifdef USE_SENDGRID
    sLog.Out(LOG_BASIC, LOG_LVL_DETAIL, "Using CURL version %s", curl_version());

    // not checking the SendMail config option here to make sure config reloads will work (in the future?)
    MailerService mailer;
    MailerService::set_global_mailer(&mailer);
#endif

#if defined (ACE_HAS_EVENT_POLL) || defined (ACE_HAS_DEV_POLL)
    ACE_Reactor::instance(new ACE_Reactor(new ACE_Dev_Poll_Reactor(ACE::max_handles(), 1), 1), true);
#else
    ACE_Reactor::instance(new ACE_Reactor(new ACE_TP_Reactor(), true), true);
#endif

    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "Max allowed open files is %d", ACE::max_handles());

    // realmd PID file creation
    std::string pidfile = sConfig.GetStringDefault("PidFile", "");
    if(!pidfile.empty())
    {
        uint32 pid = CreatePIDFile(pidfile);
        if( !pid )
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Cannot create PID file %s.\n", pidfile.c_str() );
            Log::WaitBeforeContinueIfNeed();
            return 1;
        }

        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "Daemon PID: %u\n", pid );
    }

    // Initialize the database connection
    if(!StartDB())
    {
        Log::WaitBeforeContinueIfNeed();
        return 1;
    }

    // Ensure the table used for geolocking has some data in it, if enabled
    if (sConfig.GetBoolDefault("GeoLocking", false))
    {
        auto result = std::unique_ptr<QueryResult>(LoginDatabase.Query("SELECT 1 FROM `geoip` LIMIT 1"));

        if (!result)
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "The geoip table cannot be empty when geolocking is enabled.");
            return 1;
        }
    }

    // Get the list of realms for the server
    sRealmList.Initialize(sConfig.GetIntDefault("RealmsStateUpdateDelay", 20));
    if (sRealmList.size() == 0)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "No valid realms specified.");
        Log::WaitBeforeContinueIfNeed();
        return 1;
    }
    if (ExpectedRealmdClientBuilds.size() == 0)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "No valid client builds specified.");
        Log::WaitBeforeContinueIfNeed();
        return 1;
    }

    // cleanup query
    // set expired bans to inactive
    LoginDatabase.BeginTransaction();
    LoginDatabase.Execute("UPDATE `account_banned` SET `active` = 0 WHERE `unbandate`<=UNIX_TIMESTAMP() AND `unbandate`<>`bandate`");
    LoginDatabase.Execute("DELETE FROM `ip_banned` WHERE `unbandate`<=UNIX_TIMESTAMP() AND `unbandate`<>`bandate`");
    LoginDatabase.CommitTransaction();

    // Launch the listening network socket
    ACE_Acceptor<AuthSocket, ACE_SOCK_Acceptor> acceptor;

    uint16 rmport = sConfig.GetIntDefault("RealmServerPort", DEFAULT_REALMSERVER_PORT);
    std::string bind_ip = sConfig.GetStringDefault("BindIP", "0.0.0.0");

    ACE_INET_Addr bind_addr(rmport, bind_ip.c_str());

    if(acceptor.open(bind_addr, ACE_Reactor::instance(), ACE_NONBLOCK) == -1)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "MaNGOS realmd can not bind to %s:%d", bind_ip.c_str(), rmport);
        Log::WaitBeforeContinueIfNeed();
        return 1;
    }

    // Catch termination signals
    HookSignals();

    // Handle affinity for multiple processors and process priority on Windows
    #ifdef WIN32
    {
        HANDLE hProcess = GetCurrentProcess();

        uint32 Aff = sConfig.GetIntDefault("UseProcessors", 0);
        if(Aff > 0)
        {
            ULONG_PTR appAff;
            ULONG_PTR sysAff;

            if(GetProcessAffinityMask(hProcess,&appAff,&sysAff))
            {
                ULONG_PTR curAff = Aff & appAff;            // remove non accessible processors

                if(!curAff )
                {
                    sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Processors marked in UseProcessors bitmask (hex) %x not accessible for realmd. Accessible processors bitmask (hex): %x",Aff,appAff);
                }
                else
                {
                    if(SetProcessAffinityMask(hProcess,curAff))
                        sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Using processors (bitmask, hex): %x", curAff);
                    else
                        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Can't set used processors (hex): %x", curAff);
                }
            }
            sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "");
        }

        bool Prio = sConfig.GetBoolDefault("ProcessPriority", false);

        if(Prio)
        {
            if(SetPriorityClass(hProcess,HIGH_PRIORITY_CLASS))
                sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "realmd process priority class set to HIGH");
            else
                sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Can't set realmd process priority class.");
            sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "");
        }
    }
    #endif

    //server has started up successfully => enable async DB requests
    LoginDatabase.AllowAsyncTransactions();

    // maximum counter for next ping
    uint32 numLoops = (sConfig.GetIntDefault( "MaxPingTime", 30 ) * (MINUTE * 1000000 / 100000));
    uint32 loopCounter = 0;

    #ifndef WIN32
    detachDaemon();
    #endif
    // Wait for termination signal
    while (!stopEvent)
    {
        // dont move this outside the loop, the reactor will modify it
        ACE_Time_Value interval(0, 100000);

        if (ACE_Reactor::instance()->run_reactor_event_loop(interval) == -1)
            break;

        if( (++loopCounter) == numLoops )
        {
            loopCounter = 0;
            sLog.Out(LOG_BASIC, LOG_LVL_DETAIL, "Ping MySQL to keep connection alive");
            LoginDatabase.Ping();
        }
#ifdef WIN32
        if (m_ServiceStatus == 0) stopEvent = true;
        while (m_ServiceStatus == 2) Sleep(1000);
#endif
    }

    // Wait for the delay thread to exit
    LoginDatabase.HaltDelayThread();

    // Remove signal handling before leaving
    UnhookSignals();

    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "Halting process..." );
    return 0;
}

// Handle termination signals
/** Put the global variable stopEvent to 'true' if a termination signal is caught **/
void OnSignal(int s)
{
    switch (s)
    {
        case SIGINT:
        case SIGTERM:
            stopEvent = true;
            break;
        #ifdef _WIN32
        case SIGBREAK:
            stopEvent = true;
            break;
        #endif
    }

    signal(s, OnSignal);
}

// Initialize connection to the database
bool StartDB()
{
    std::string dbstring = sConfig.GetStringDefault("LoginDatabaseInfo", "");
    if(dbstring.empty())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Database not specified");
        return false;
    }

    // Remove password from DB string for log output
    // format: 127.0.0.1;3306;mangos;mangos;characters
    // In a properly formatted string, token 4 is the password
    std::string dbStringLog = dbstring;

    if (std::count(dbStringLog.begin(), dbStringLog.end(), ';') == 4)
    {
        // Have correct number of tokens, can replace
        std::string::iterator start = dbStringLog.end(), end = dbStringLog.end();

        int occurrence = 0;
        for (std::string::iterator itr = dbStringLog.begin(); itr != dbStringLog.end(); ++itr)
        {
            if (*itr == ';')
                ++occurrence;

            if (occurrence == 3 && start == dbStringLog.end())
                start = ++itr;
            else if (occurrence == 4 && end == dbStringLog.end())
                end = itr;

            if (start != dbStringLog.end() && end != dbStringLog.end())
                break;
        }

        dbStringLog.replace(start, end, "*");
    }
    else
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Incorrectly formatted database connection string for logon database");
        return false;
    }

    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Database: %s", dbStringLog.c_str() );
    if(!LoginDatabase.Initialize(dbstring.c_str()))
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Cannot connect to database");
        return false;
    }

    if (!LoginDatabase.CheckRequiredMigrations(MIGRATIONS_LOGON))
    {
        // Wait for already started DB delay threads to end
        LoginDatabase.HaltDelayThread();
        return false;
    }

    return true;
}

// Define hook 'OnSignal' for all termination signals
void HookSignals()
{
    signal(SIGINT, OnSignal);
    signal(SIGTERM, OnSignal);
    #ifdef _WIN32
    signal(SIGBREAK, OnSignal);
    #endif
}

// Unhook the signals before leaving
void UnhookSignals()
{
    signal(SIGINT, 0);
    signal(SIGTERM, 0);
    #ifdef _WIN32
    signal(SIGBREAK, 0);
    #endif
}

// @}
