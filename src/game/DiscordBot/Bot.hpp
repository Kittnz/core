#pragma once
#include "dpp/dpp.h"
#include "GMCommandHandler.hpp"
#include "BaseCommandHandler.hpp"

#include <string>
#include <optional>
#include <functional>
#include <memory>

namespace DiscordBot
{
    struct MessageData
    {
        std::string userId;
        std::string text;
    };


    class Bot
    {
    public:
        void Setup(std::string token);
        void SendMessageToChannel(uint64_t channelId, std::string message);

        dpp::cluster* GetCore() const;

    private:
        std::unique_ptr<dpp::cluster> _core;
        std::string _commandOutput;
    };
}
