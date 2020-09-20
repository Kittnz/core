#include "AccountMgr.h"
#include "Chat.h"
#include "Language.h"
#include "ObjectMgr.h"
#include "Opcodes.h"
#include "Player.h"
#include "GMTicketMgr.h"
#include "ScriptMgr.h"
#include "World.h"

bool ChatHandler::HandleGMTicketListCommand(char* args)
{
    static const std::unordered_map<std::string, uint8> categories
    {
        { "stuck", 1 },{ "behavior", 2 },{ "harassment", 2 },{ "guild", 3 },
        { "item", 4 },{ "environment", 5 },{ "world", 5 },{ "npc", 6 },
        { "creature", 6 },{ "creep", 6 },{ "quest", 7 },{ "questnpc", 7 },
        { "technical", 8 },{ "account", 9 },{ "billing", 9 },{ "character", 10 }
    };

    auto it = categories.find(args);

    if (it == categories.end())
        sTicketMgr->ShowList(*this, false);
    else
        sTicketMgr->ShowList(*this, false, it->second);

    return true;
}

bool ChatHandler::ViewTicketByIdOrName(char* ticketId_c, char* name_c)
{
    GmTicket* ticket = NULL;

    // By ticket id
    if (ticketId_c && *ticketId_c)
    {
        uint32 ticketId = atoi(ticketId_c);
        ticket = sTicketMgr->GetTicket(ticketId);
    }

    // By player name
    if (!ticket && name_c && *name_c)
    {
        std::string name(name_c);
        if (!normalizePlayerName(name))
            return false;

        // Detect target's GUID
        ObjectGuid guid;
        if (Player* player = ObjectAccessor::FindPlayerByName(name.c_str()))
            guid = player->GetGUID();
        else
            guid = sObjectMgr.GetPlayerGuidByName(name);

        // Target must exist
        if (!guid)
        {
            SendSysMessage(LANG_NO_PLAYERS_FOUND);
            return true;
        }
        ticket = sTicketMgr->GetTicketByPlayer(guid);
    }

    if (!ticket)
    {
        SendSysMessage(LANG_COMMAND_TICKETNOTEXIST);
        return true;
    }

    if (ticket->IsClosed() || ticket->IsCompleted())
    {
        SendSysMessage(LANG_COMMAND_TICKETARCHIVED);
        return true;
    }
    return ViewTicket(ticket);
}

bool ChatHandler::ViewTicket(GmTicket* ticket)
{
    ticket->SetViewed();
    if (Player* player = ticket->GetPlayer()) // Inform that ticket has been viewed
        sTicketMgr->SendTicket(player->GetSession(), ticket);
    ticket->SaveToDB();

    SendSysMessage(ticket->FormatMessageString(*this, true).c_str());
    return true;
}

bool ChatHandler::HandleGMTicketGetByIdOrNameCommand(char* args)
{
    return ViewTicketByIdOrName(args, args);
}


bool ChatHandler::HandleGMTicketCloseByIdCommand(char* args)
{
    if (!*args)
        return false;

    uint32 ticketId = atoi(args);
    GmTicket* ticket = sTicketMgr->GetTicket(ticketId);
    if (!ticket)
    {
        SendSysMessage(LANG_COMMAND_TICKETNOTEXIST);
        return true;
    }
    if (ticket->IsClosed() || ticket->IsCompleted())
    {
        SendSysMessage(LANG_COMMAND_TICKETARCHIVED);
        return true;
    }

    // Ticket should be assigned to the player who tries to close it.
    // Console can override though
    Player* player = GetSession() ? GetSession()->GetPlayer() : NULL;
    if (player && ticket->IsAssignedNotTo(player->GetGUID()))
    {
        PSendSysMessage(LANG_COMMAND_TICKETCANNOTCLOSE, ticket->GetId());
        return true;
    }

    sTicketMgr->CloseTicket(ticket->GetId(), player ? player->GetObjectGuid() : ObjectGuid(uint64(-1)));
    sTicketMgr->UpdateLastChange();

    std::string msg = ticket->FormatMessageString(*this, player ? player->GetName() : "Console", NULL, NULL, NULL, NULL);
    sWorld.SendGMTicketText(msg.c_str());

    // Inform player, who submitted this ticket, that it is closed
    if (Player* submitter = ticket->GetPlayer())
    {
        WorldPacket data(SMSG_GMTICKET_DELETETICKET, 4);
        data << uint32(GMTICKET_RESPONSE_TICKET_DELETED);
        submitter->GetSession()->SendPacket(&data);
    }
    return true;
}