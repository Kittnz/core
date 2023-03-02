#include "Bot.hpp"
#include "dpp/dpp.h"

#include <thread>

#include "BaseCommandHandler.hpp"
#include "AuthManager.hpp"
#include "Log.h"

namespace DiscordBot
{
    using namespace std::literals::string_literals;
    using namespace dpp;


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

        //Fix callback check for rate limiting
        _core->message_create(dpp::message(channelId, message), [](const confirmation_callback_t& confirmation)
            {
                //rate-limited.
                if (confirmation.http_info.status == 429)
                {

                }

                utility::log_error()(confirmation);
            });
    }

    void Bot::Stop()
    {
        if (!_core)
            return;

        _core->shutdown();
    }

    void Bot::Setup(std::string token)
    {
        if (_core)
            return;


        _core = std::make_unique<cluster>(token, dpp::intents::i_all_intents);
        _core->on_log([](const dpp::log_t& event) 
        {
            if (event.severity > dpp::ll_trace) 
            {
                std::ostringstream ss;
                ss << "[" << dpp::utility::current_date_time() << "] " << dpp::utility::loglevel(event.severity) << ": " << event.message;
                sLog.outDiscord(ss.str().c_str());
            }
        });


        _core->on_form_submit([this](const form_submit_t& event) 
            {
                BaseCommandHandler::HandleFormSubmit(event);
            });

        _core->on_ready([this](const ready_t& event) {
            BaseCommandHandler::RegisterAll(*this);
        });

        


        _core->start(true);
    }

}
