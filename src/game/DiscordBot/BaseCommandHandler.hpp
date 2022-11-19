#pragma once
#include "dpp/dpp.h"

#include "Bot.hpp"

#include <memory>
#include <any>
#include <vector>

namespace DiscordBot
{

    class BaseCommandHandler
    {
    public:
        BaseCommandHandler()
        {
            _handlers.push_back(this);
        }

        static void RegisterAll(dpp::cluster& bot)
        {
            _commandHandler = std::make_unique<dpp::commandhandler>(&bot);
            _commandHandler->add_prefix(".").add_prefix("/");
            for (const auto& handler : _handlers)
            {
                handler->RegisterCommands(*_commandHandler);
            }
            _commandHandler->register_commands();
        }

        virtual void RegisterCommands(dpp::commandhandler&) = 0;

        bool D() { return false; }

        virtual ~BaseCommandHandler() noexcept = default;

    private:
        static inline std::vector<BaseCommandHandler*> _handlers;
        static inline std::unique_ptr<dpp::commandhandler> _commandHandler; 
    };
}