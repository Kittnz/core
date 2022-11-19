#include "GMCommandHandler.hpp"

#include "World.h"

namespace DiscordBot
{

    void GMCommandHandler::RegisterCommands(dpp::commandhandler& registrar)
    {
        registrar.add_command("gm", 
            { 
                {"command", dpp::param_info(dpp::pt_string, false, "Command to be executed on the server.")},
                {"selfonly", dpp::param_info(dpp::pt_boolean, true, "If set to true then only you can see the output.")} 
            },

			[&registrar, this](const std::string& command, const dpp::parameter_list_t& parameters, dpp::command_source src) 
			{
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

				CliCommandHolder* cmd = new CliCommandHolder(1, SEC_CONSOLE, std::make_pair(this, src), commandParam.c_str(), &CommandPrint, &CommandFinished);
				sWorld.QueueCliCommand(cmd);
			},
			"Executes a server command");

        _commHandler = &registrar;
    }

    void GMCommandHandler::CommandPrint(std::any callbackArg, const char* output)
    {
        auto& [handler, source] = std::any_cast<std::pair<GMCommandHandler*, dpp::command_source>>(callbackArg);
        handler->_commandOutput[source.issuer.id].output += output;
    }

    void GMCommandHandler::CommandFinished(std::any callbackArg, bool sucess)
    {
        auto& [handler, source] = std::any_cast<std::pair<GMCommandHandler*, dpp::command_source>>(callbackArg);     

        std::string output = handler->_commandOutput[source.issuer.id].output;

        uint32 offset = 0;
        do
        {
            //str.substr with count greater than size from offset is fine to overflow.
            //wish DPP had string view constructors
            std::string message = output.substr(offset, MaxMessageLength);

            dpp::message msg(message);
            if (handler->_commandOutput[source.issuer.id].selfOnly)
                msg.set_flags(dpp::m_ephemeral);



           // handler->_commHandler->reply(msg, source);
            offset += MaxMessageLength;

        } while (offset < output.size() - 1);
    }

}