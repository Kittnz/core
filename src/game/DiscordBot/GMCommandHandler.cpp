#include "GMCommandHandler.hpp"
#include "Bot.hpp"
#include "World.h"
#include "AuthManager.hpp"

namespace DiscordBot
{
    bool GMCommandHandler::IsAuthorized(const dpp::user* user) const
    {
        auto authInfo = AuthManager::Instance()->GetAuthInfo(user);
        return authInfo && authInfo->authenticated && authInfo->securityLevel > SEC_PLAYER;
    }


    void GMCommandHandler::RegisterCommands(dpp::commandhandler& registrar)
    {
        Register("gm", 
            { 
                {"command", dpp::param_info(dpp::pt_string, false, "Command to be executed on the server.")},
                {"selfonly", dpp::param_info(dpp::pt_boolean, true, "If set to true then only you can see the output.")} 
            },
			MakeCommandHandler(&GMCommandHandler::ExecuteGMCommand),
			"Executes a server command");



        _commHandler = &registrar;
    }

    void GMCommandHandler::ExecuteGMCommand(const std::string& command, const dpp::parameter_list_t& parameters, dpp::command_source src)
    {
        auto authinfo = AuthManager::Instance()->GetAuthInfo(&src.issuer);
        if (!authinfo)
            return;

        std::string commandParam;
        bool selfOnly = false;
        if (!parameters.empty())
        {
            commandParam = std::get<std::string>(parameters[0].second);
            if (parameters.size() > 1)
                selfOnly = std::get<bool>(parameters[1].second);
        }

        _commandOutput[src.issuer.id].output = "";
        _commandOutput[src.issuer.id].selfOnly = selfOnly;



        CliCommandHolder* cmd = new CliCommandHolder(authinfo->gameAccountId, (AccountTypes)authinfo->securityLevel, std::make_pair(this, src), commandParam.c_str(), &CommandPrint, &CommandFinished);
        sWorld.QueueCliCommand(cmd);
    }


    void GMCommandHandler::CommandPrint(std::any callbackArg, const char* output)
    {
        auto [handler, source] = std::any_cast<std::pair<GMCommandHandler*, dpp::command_source>>(callbackArg);
        handler->_commandOutput[source.issuer.id].output += output;
    }

    void GMCommandHandler::CommandFinished(std::any callbackArg, bool sucess)
    {
        auto [handler, source] = std::any_cast<std::pair<GMCommandHandler*, dpp::command_source>>(callbackArg);     

        std::string output = handler->_commandOutput[source.issuer.id].output;

        if (output.empty())
        {
            handler->_commHandler->owner->message_create(dpp::message(source.channel_id, "Command executed. No output was generated."));
            return;
        }

        uint32 offset = 0;
        bool first = true;
        do
        {
            //str.substr with count greater than size from offset is fine to overflow.
            //wish DPP had string view constructors
            std::string message = output.substr(offset, MaxMessageLength);
            offset += MaxMessageLength;

            dpp::message msg(message);
            if (handler->_commandOutput[source.issuer.id].selfOnly)
                msg.set_flags(dpp::m_ephemeral);


            if (first)
            {
                handler->_commHandler->reply(msg, source);
                first = false;
                continue;
            }

            msg.channel_id = source.channel_id;

            handler->_commHandler->owner->message_create(msg);

        } while (offset < output.size() - 1);
    }

}