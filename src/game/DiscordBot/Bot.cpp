#include "Bot.hpp"
#include "dpp/dpp.h"

#include <thread>

#include "World.h"
#include "BaseCommandHandler.hpp"
#include "AuthManager.hpp"

namespace DiscordBot
{
    using namespace std::literals::string_literals;
    using namespace dpp;


    void RegisterHandlers();

    Bot::~Bot()
    {
        for (auto handler : _handlers)
            delete handler;
    }

    void Bot::AddHandler(BaseCommandHandler* handler)
    {
        _handlers.push_back(handler); 
    }

    cluster* Bot::GetCore() const
    {
        return _core.get();
    }

    void Bot::SendMessageToChannel(uint64_t channelId, std::string message)
    {
        if (!_core)
            return;

        _core->message_create(dpp::message(channelId, message));
    }

    void Bot::Setup(std::string token)
    {
        if (_core)
            return;


        _core = std::make_unique<cluster>(token, dpp::intents::i_all_intents);
        _core->on_log(dpp::utility::cout_logger());


        _core->on_form_submit([&](const form_submit_t& event) 
            {
                std::string v = std::get<std::string>(event.components[0].components[0].value);
                std::string v2 = std::get<std::string>(event.components[1].components[0].value);
                dpp::message m;
                AuthManager::Instance()->Login(v, v2, &event.command.usr);
                m.set_content("You logged in ").set_flags(m_ephemeral);


                event.reply(m);
            });

        _core->on_ready([this](const ready_t& event) {
            RegisterHandlers();
            BaseCommandHandler::RegisterAll(*this);
        });

        


        _core->start(true);
    }

}
