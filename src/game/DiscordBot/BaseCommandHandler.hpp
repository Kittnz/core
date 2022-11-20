#pragma once
#include "dpp/dpp.h"

#include "Common.h"
#include "Platform/Define.h"

#include <memory>
#include <any>
#include <vector>
#include <stdint.h>

namespace DiscordBot
{

    class BaseCommandHandler
    {
    public:
        BaseCommandHandler()
        {
            _handlers.push_back(this);
        }

        static void RegisterAll(Bot& bot);

        virtual void RegisterCommands(dpp::commandhandler&) = 0;


        //override to allow/disallow all commands of said handler.
        virtual bool IsAuthorized(const dpp::user*) const = 0;

        virtual ~BaseCommandHandler() noexcept = default;

    protected:
        void Register(const std::string& command, const dpp::parameter_registration_t& parameters, dpp::command_handler handler, const std::string& description = "",
            dpp::snowflake guild_id = 0);

    private:

        static bool CheckAllowedAccess(const dpp::user* user, std::string command);
        

        static std::vector<BaseCommandHandler*> _handlers;
        static std::unique_ptr<dpp::commandhandler> _commandHandler; 
        static std::unordered_map<std::string, BaseCommandHandler*> _commandLinks;
    };
}