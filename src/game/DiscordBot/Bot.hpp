#pragma once
#include "dpp/dpp.h"
#include "GMCommandHandler.hpp"
#include "BaseCommandHandler.hpp"
#include "Common.h"
#include "Platform/Define.h"

#include <string>
#include <optional>
#include <functional>
#include <memory>

namespace DiscordBot
{
    constexpr uint32 MaxMessageLength = 2000;

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
