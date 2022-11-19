#include "Bot.hpp"
#include "dpp/dpp.h"

#include <thread>

#include "AccountMgr.h"
#include "World.h"


namespace DiscordBot
{
    using namespace std::literals::string_literals;
    using namespace dpp;


    void RegisterHandlers();

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

        _core->on_slashcommand([](const dpp::slashcommand_t& event) {
            if (event.command.get_command_name() == "login") 
            {
                dpp::interaction_modal_response modal("my_modal", "Please enter stuff");
                /* Add a text component */
                modal.add_component(
                    dpp::component().
                    set_label("Username").
                    set_id("username").
                    set_type(dpp::cot_text).
                    set_placeholder("Username").
                    set_max_length(12).
                    set_text_style(dpp::text_short)
                );

                modal.add_row();
                modal.add_component(
                    dpp::component().
                    set_label("Password").
                    set_id("password").
                    set_type(dpp::cot_text).
                    set_placeholder("Password").
                    set_min_length(1).
                    set_max_length(20).
                    set_text_style(dpp::text_short)
                );

                event.dialog(modal);
            }
        });

        _core->on_form_submit([&](const form_submit_t& event) {
            std::string v = std::get<std::string>(event.components[0].components[0].value);
            std::string v2 = std::get<std::string>(event.components[1].components[0].value);
            dpp::message m;
            bool res = sAccountMgr.CheckPassword(sAccountMgr.GetId(v), v2, v);
            m.set_content("You logged in " + (res ? "succesfully"s : "unsucessfully"s)).set_flags(m_ephemeral);


            event.reply(m);
            });

        _core->on_ready([bot = _core.get()](const ready_t& event) {
            RegisterHandlers();
            BaseCommandHandler::RegisterAll(*bot);
        });

        


        _core->start(true);
    }

}
