#include "LoginCommandHandler.hpp"

namespace DiscordBot
{
    bool LoginCommandHandler::IsAuthorized(const dpp::user*) const
    {
        return true; // this is the base command handler for users to login to, always allow.
    }

    void LoginCommandHandler::RegisterCommands(dpp::commandhandler& registrar)
    {
        Register("login", {}, MakeCommandHandler(&LoginCommandHandler::HandleLoginComand),
            "Allows users to login to link their Discord account and WoW account");

        _commHandler = &registrar;
    }

    void LoginCommandHandler::HandleLoginComand(const std::string& command, const dpp::parameter_list_t& parameters, dpp::command_source src)
    {
        if (!src.interaction_event.has_value())
            return;

        dpp::interaction_modal_response modal("Turtle Login", "Please login with your Turtle WoW account");
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


        src.interaction_event.value().dialog(modal);
    }
}