#include "Common.h"
#include "Database/DatabaseEnv.h"
#include "Database/DatabaseImpl.h"
#include "ObjectMgr.h"
#include "ObjectGuid.h"
#include "Item.h"
#include "Player.h"
#include "TemporarySummon.h"
#include "Totem.h"
#include "Pet.h"
#include "CreatureAI.h"
#include "GameObject.h"
#include "Opcodes.h"
#include "Chat.h"
#include "ObjectAccessor.h"
#include "MapManager.h"
#include "Language.h"
#include "World.h"
#include "GameEventMgr.h"
#include "ScriptMgr.h"
#include "SpellMgr.h"
#include "MapPersistentStateMgr.h"
#include "AccountMgr.h"
#include "WaypointManager.h"
#include "DBCStores.h"
#include "Util.h"
#include "Guild.h"
#include "GuildMgr.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "CellImpl.h"
#include "WaypointMovementGenerator.h"
#include <cctype>
#include <iostream>
#include <fstream>
#include <map>
#include <typeinfo>
#include "Formulas.h"
#include "AsyncCommandHandlers.h"

bool ChatHandler::HandleNextModelCommand(char*)
{
    uint16 display_id = m_session->GetPlayer()->GetDisplayId();
    display_id++;
    Unit *target = GetSelectedUnit();

    if (!target)
        target = m_session->GetPlayer();

    target->SetDisplayId(display_id);
    PSendSysMessage("Current DisplayID: %u", m_session->GetPlayer()->GetDisplayId());
    return true;
}

bool ChatHandler::HandlePrevModelCommand(char*)
{
    uint16 display_id = m_session->GetPlayer()->GetDisplayId();
    display_id--;
    Unit *target = GetSelectedUnit();

    if (!target)
        target = m_session->GetPlayer();

    target->SetDisplayId(display_id);
    PSendSysMessage("Current DisplayID: %u", m_session->GetPlayer()->GetDisplayId());
    return true;
} 

bool ChatHandler::HandleSetCityRankCommand(char* /*args*/)
{
    // City Protector is an apparently discontinued or never-implemented PvP rank that was announced by Blizzard at some point.
    // It was described in the official PvP-Guide to the original honor system that this would be a rank granted the player with Standing 1 in the past week.
    // It would last for one week and allow the City Protector to use a special spell to teleport him to his race's major city just like a second hearthstone.
    // More: http://wowwiki.wikia.com/wiki/City_Protector

    // The titles for City Protector rank could have been these unused titles found from World of Warcraft files.

    // For humans, Protector of Stormwind
    // For orcs, Overlord of Orgrimmar
    // For dwarves, Thane of Ironforge
    // For night elves, High Sentinel of Darnassus
    // For undead, Deathlord of the Undercity
    // For taurens, Chieftain of Thunderbluff
    // For gnomes, Avenger of Gnomeregan
    // For trolls, Voodoo Boss of Sen'jin

    uint32 city_rank = m_session->GetPlayer()->GetByteValue(PLAYER_BYTES_3, 2);
    city_rank++;
    Unit *target = GetSelectedUnit();

    if (!target)
        target = m_session->GetPlayer();

    target->SetByteValue(PLAYER_BYTES_3, 2, (uint32)city_rank);
    PSendSysMessage("Attempting to assign a new rank: %u", city_rank);
    return true;
}

bool ChatHandler::HandleMountCommand(char*)
{
    Player *player = m_session->GetPlayer();
    Creature *creature = GetSelectedCreature();
    uint32 modelid;

    if (!creature)
    {
        PSendSysMessage("No model ID specified. Target any creature with mounting points.");
        SetSentErrorMessage(true);
        return false;
    }

    modelid = creature->GetUInt32Value(UNIT_FIELD_DISPLAYID);
    player->SetUInt32Value(UNIT_FIELD_MOUNTDISPLAYID, modelid);
    return true;
}