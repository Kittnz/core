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
#include <memory>
#include <typeinfo>
#include "Formulas.h"
#include "AsyncCommandHandlers.h"

#define GNOMISH_PLASTIC_SURGERY_TOOLS_SKIN 50001
#define GNOMISH_PLASTIC_SURGERY_TOOLS_RACE 50002

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

bool ChatHandler::HandleSetCityRankCommand(char* args)
{
    uint32 city_rank = (uint32)atoi(args);
    Unit *target = GetSelectedUnit();

    if (!target)
        target = m_session->GetPlayer();

    target->SetByteValue(PLAYER_BYTES_3, 2, city_rank);
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

class DemorphAfterTime : public BasicEvent {
public:
    explicit DemorphAfterTime(uint64 player_guid) : BasicEvent(), player_guid(player_guid) {}

    bool Execute(uint64 e_time, uint32 p_time) override {
        Player* player = ObjectAccessor::FindPlayer(player_guid);
        if (player) {
            player->DeMorph();
        }
        return false;
    }

private:
    uint64 player_guid;
};

bool ChatHandler::HandleSkinCommand(char* args)
{
    if (!args || !*args)
    {
        PSendSysMessage("You must specify the name of the character you want to look like.");
        SetSentErrorMessage(true);
        return false;
    }

    if (Player* target = m_session->GetPlayer())
    {
        if (!target->HasItemCount(GNOMISH_PLASTIC_SURGERY_TOOLS_SKIN))
        {
            PSendSysMessage("You must purchase [Gnomish Plastic Surgery Tools] first.");
            SetSentErrorMessage(true);
            return false;
        }

        uint8 curr_race = target->getRace();
        std::string plName = args;
        CharacterDatabase.escape_string(plName);

        std::wstring wPlName;

        if (!Utf8toWStr(plName, wPlName))
            return false;

        wstrToLower(wPlName);

        if (Utf8FitTo(target->GetName(), wPlName))
        {
            PSendSysMessage("You must specify a name of a character different than yourself!");
            SetSentErrorMessage(true);
            return false;
        }

        if (target->isInCombat() || target->InBattleGround() || target->HasSpellCooldown(20939) || (target->getDeathState() == CORPSE) || target->IsBeingTeleported())
        {
            PSendSysMessage("You can not change your appearance yet.");
            SetSentErrorMessage(true);
            return false;
        }

        auto result = std::unique_ptr<QueryResult>{ CharacterDatabase.PQuery("SELECT race, playerBytes, playerBytes2 & 0xFF, gender FROM characters WHERE name='%s'", plName.c_str()) };

        if (!result)
        {
            PSendSysMessage("You must specify the name of the character you want to look like.");
            SetSentErrorMessage(true);
            return false;
        }

        Field* fields = result->Fetch();
        uint8 race = fields[0].GetUInt8();
        uint32 bytes = fields[1].GetUInt32();
        uint32 bytes2 = fields[2].GetUInt32();
        uint8 gender = fields[3].GetUInt8();

        if (race != curr_race)
        {
            PSendSysMessage("It should be a character of the same race.");
            SetSentErrorMessage(true);
            return false;
        }
        else
        {
            bytes2 |= (target->GetUInt32Value(PLAYER_BYTES_2) & 0xFFFFFF00);
            target->SetUInt32Value(PLAYER_BYTES, bytes);
            target->SetUInt32Value(PLAYER_BYTES_2, bytes2);
            target->SetByteValue(UNIT_FIELD_BYTES_0, 2, gender);
            //SendSysMessage("Done! A second chance at life to look pretty. Please, restart your game client!");
            target->DestroyItemCount(GNOMISH_PLASTIC_SURGERY_TOOLS_SKIN, 1, true, false, true);
            target->SaveInventoryAndGoldToDB();
            target->SetDisplayId(15435); // Invisible
            target->m_Events.AddEvent(new DemorphAfterTime(target->GetGUID()), target->m_Events.CalculateTime(250));
            return true;
        }
    }

    return false;
}

bool ChatHandler::HandleRaceCommand(char* args)
{
    if (!args || !*args)
    {
        PSendSysMessage("You must specify the name of the character you want to look like.");
        SetSentErrorMessage(true);
        return false;
    }

    if (Player* target = m_session->GetPlayer())
    {
        if (!target->HasItemCount(GNOMISH_PLASTIC_SURGERY_TOOLS_RACE))
        {
            PSendSysMessage("You must purchase [Gnomish Plastic Surgery Tools] first!");
            SetSentErrorMessage(true);
            return false;
        }

        uint8 curr_race = target->getRace();
        uint8 curr_class = target->getClass();

        const char* curr_class_name = GetClassName(curr_class, GetSessionDbcLocale());

        std::string plName = args;
        CharacterDatabase.escape_string(plName);

        std::wstring wPlName;

        if (!Utf8toWStr(plName, wPlName))
            return false;

        wstrToLower(wPlName);


        if (Utf8FitTo(target->GetName(), wPlName))
        {
            PSendSysMessage("You must specify a name of a character different than yourself!");
            SetSentErrorMessage(true);
            return false;
        }

        if (target->isInCombat() || target->InBattleGround() || target->HasSpellCooldown(20939) || (target->getDeathState() == CORPSE) || target->IsBeingTeleported())
        {
            PSendSysMessage("You can not change your race yet.");
            SetSentErrorMessage(true);
            return false;
        }

        auto result = std::unique_ptr<QueryResult>{ CharacterDatabase.PQuery("SELECT race, class, playerBytes, playerBytes2 & 0xFF, gender FROM characters WHERE name='%s'", plName.c_str()) };
        if (!result)
        {
            PSendSysMessage("We don't know this guy! You must specify the name of the character you want to look like.");
            SetSentErrorMessage(true);
            return false;
        }

        Field* fields = result->Fetch();
        uint32 new_race = fields[0].GetUInt32();
        uint8 class_ = fields[1].GetUInt8();
        uint32 bytes = fields[2].GetUInt32();
        uint32 bytes2 = fields[3].GetUInt32();
        uint8 gender = fields[4].GetUInt8();

        ChrRacesEntry const* curr_race_entry = sChrRacesStore.LookupEntry(curr_race);
        ChrRacesEntry const* new_race_entry = sChrRacesStore.LookupEntry(new_race);

        if (class_ != curr_class || curr_race_entry->TeamID != new_race_entry->TeamID)
        {
            PSendSysMessage("This character should be a part of your faction, and must be a %s.", curr_class_name);
            SetSentErrorMessage(true);
            return false;
        }
        else
        {
            bytes2 |= (target->GetUInt32Value(PLAYER_BYTES_2) & 0xFFFFFF00);

            target->SetUInt32Value(PLAYER_BYTES, bytes);
            target->SetUInt32Value(PLAYER_BYTES_2, bytes2);
            target->SetByteValue(UNIT_FIELD_BYTES_0, 2, gender);

            target->DestroyItemCount(GNOMISH_PLASTIC_SURGERY_TOOLS_RACE, 1, true, false, true);
            target->SaveInventoryAndGoldToDB();

            target->ChangeRace(new_race, gender, bytes, bytes2); // Player gets kicked from the server at this very moment.

            //sLog.outInfo("Player (GUID: %llu) \"%s\" changed race to %u", target->GetObjectGuid().GetRawValue(), target->GetName().c_str(), new_race); 
            // PSendSysMessage("Done! Please, restart your game client!"); // Might be not visible tho.

            return true;
        }
    }

    return false;
}

bool ChatHandler::HandleFactionCommand(char* args)
{
    if (!args || !*args)
    {
        PSendSysMessage("You must specify the name of the character you want to look like.");
        SetSentErrorMessage(true);
        return false;
    }

    if (Player* target = m_session->GetPlayer())
    {
        if (!target->HasItemCount(GNOMISH_PLASTIC_SURGERY_TOOLS_RACE))
        {
            PSendSysMessage("You must purchase [Gnomish Plastic Surgery Tools] first!");
            SetSentErrorMessage(true);
            return false;
        }

        uint8 curr_race = target->getRace();
        uint8 curr_class = target->getClass();

        const char* curr_class_name = GetClassName(curr_class, GetSessionDbcLocale());

        std::string plName = args;
        CharacterDatabase.escape_string(plName);

        std::wstring wPlName;

        if (!Utf8toWStr(plName, wPlName))
            return false;

        wstrToLower(wPlName);


        if (Utf8FitTo(target->GetName(), wPlName))
        {
            PSendSysMessage("You must specify a name of a character different than yourself!");
            SetSentErrorMessage(true);
            return false;
        }

        if (target->isInCombat() || target->InBattleGround() || target->HasSpellCooldown(20939) || (target->getDeathState() == CORPSE) || target->IsBeingTeleported())
        {
            PSendSysMessage("You can not change your race yet.");
            SetSentErrorMessage(true);
            return false;
        }

        auto result = std::unique_ptr<QueryResult>{ CharacterDatabase.PQuery("SELECT race, class, playerBytes, playerBytes2 & 0xFF, gender FROM characters WHERE name='%s'", plName.c_str()) };
        if (!result)
        {
            PSendSysMessage("We don't know this guy! You must specify the name of the character you want to look like.");
            SetSentErrorMessage(true);
            return false;
        }

        Field* fields = result->Fetch();
        uint32 new_race = fields[0].GetUInt32();
        uint8 class_ = fields[1].GetUInt8();
        uint32 bytes = fields[2].GetUInt32();
        uint32 bytes2 = fields[3].GetUInt32();
        uint8 gender = fields[4].GetUInt8();

        ChrRacesEntry const* curr_race_entry = sChrRacesStore.LookupEntry(curr_race);
        ChrRacesEntry const* new_race_entry = sChrRacesStore.LookupEntry(new_race);

            bytes2 |= (target->GetUInt32Value(PLAYER_BYTES_2) & 0xFFFFFF00);

            target->SetUInt32Value(PLAYER_BYTES, bytes);
            target->SetUInt32Value(PLAYER_BYTES_2, bytes2);
            target->SetByteValue(UNIT_FIELD_BYTES_0, 2, gender);

            target->DestroyItemCount(GNOMISH_PLASTIC_SURGERY_TOOLS_RACE, 1, true, false, true);
            target->SaveInventoryAndGoldToDB();

            target->ChangeRace(new_race, gender, bytes, bytes2); 
            return true;
    }

    return false;
}

bool ChatHandler::HandleUpdateSkinBytesCommand(char* args)
{
    uint8 skin = (uint8)atoi(args);
    Unit *target = GetSelectedUnit();

    // 10 Sally Whitemane (humans only)
    // 11 Jandice Barov (humans only)

    if (!target)
        target = m_session->GetPlayer();

    target->SetByteValue(PLAYER_BYTES, 0, skin);
    target->SetDisplayId(15435); // Invisible
    target->m_Events.AddEvent(new DemorphAfterTime(target->GetGUID()), target->m_Events.CalculateTime(250));

    PSendSysMessage("Character's skin has been changed to: %u", skin);
    return true;
}

bool ChatHandler::HandleUpdateHairStyleCommand(char* args)
{
    uint8 hair = (uint8)atoi(args);
    Unit *target = GetSelectedUnit();

    if (!target)
        target = m_session->GetPlayer();

    target->SetByteValue(PLAYER_BYTES, 2, hair);
    target->SetDisplayId(15435); // Invisible
    target->m_Events.AddEvent(new DemorphAfterTime(target->GetGUID()), target->m_Events.CalculateTime(250));

    PSendSysMessage("Character's hair style has been changed to: %u", hair);
    return true;
}

bool ChatHandler::HandleUpdateHairColorCommand(char* args)
{
    uint8 color = (uint8)atoi(args);
    Unit *target = GetSelectedUnit();

    if (!target)
        target = m_session->GetPlayer();

    target->SetByteValue(PLAYER_BYTES, 3, color);
    target->SetDisplayId(15435); // Invisible
    target->m_Events.AddEvent(new DemorphAfterTime(target->GetGUID()), target->m_Events.CalculateTime(250));

    PSendSysMessage("Character's hair color has been changed to: %u", color);
    return true;
}

bool ChatHandler::HandleGiveXPCommand(char* args)
{
    if (!*args)
    {
        SendSysMessage("Syntax: .givexp value, where [value] is experience.");
        SetSentErrorMessage(true);
        return false;
    }

    uint32 XP = (uint32)atoi(args);
    Player *target = GetSelectedPlayer();

    if (!target)
        target = m_session->GetPlayer();

    target->GiveXP(XP, target);
    return true;
}
