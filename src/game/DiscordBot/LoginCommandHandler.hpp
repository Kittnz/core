#pragma once
#include "BaseCommandHandler.hpp"

namespace DiscordBot
{
    class LoginCommandHandler : public BaseCommandHandler
    {
    public:
        bool IsAuthorized(const dpp::user*) const override;

        void RegisterCommands(dpp::commandhandler&) override;

    private:
        dpp::commandhandler* _commHandler;
    };
}