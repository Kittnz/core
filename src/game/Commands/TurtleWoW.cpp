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

// Syntax: use .maketabard X to create a new item with chosen starting display_id (X), then use .maketabard without arguments to make more items by incrementing the display_id.
// Create dummy entries in custom range for each item type before using the command.

// replace into item_template (entry, display_id, inventory_type, name, quality) value (100000, 1, 19, 'Dummy Tabard', 1);     -- Tabard
// replace into item_template (entry, display_id, inventory_type, name, quality) value (200000, 1, 3,  'Dummy Shoulders', 1);  -- Shoulders
// replace into item_template (entry, display_id, inventory_type, name, quality) value (300000, 1, 1,  'Dummy Head', 1);       -- Head
// replace into item_template (entry, display_id, inventory_type, name, quality) value (400000, 1, 20,  'Dummy Body', 1);      -- Body
// replace into item_template (entry, display_id, inventory_type, name, quality) value (500000, 1, 16,  'Dummy Back', 1);      -- Back
// replace into item_template (entry, display_id, inventory_type, name, quality) value (600000, 1, 21,  'Dummy Weapon', 1);    -- Main hand

bool ChatHandler::HandleMakeTabardCommand(char* args) // Do not use on real server. 
{
    Player* target = m_session->GetPlayer();

    uint8 slot  = 18;  // EQUIPMENT_SLOT_TABARD
    uint32 type = 19;  // Item inventory_type
    uint32 display_id = 1;

    Item *item = m_session->GetPlayer()->GetItemByPos(INVENTORY_SLOT_BAG_0, slot);
    if (!item) return false;
    uint32 entry = item->GetEntry();

    if (!*args)
    {
        ItemPrototype const* proto = sItemStorage.LookupEntry<ItemPrototype>(entry);
        if (!proto) return false;
        display_id = proto->DisplayInfoID;
        display_id++;
    }
    else 
        display_id = (uint32)atoi(args);
        
    target->DestroyItemCount(item->GetEntry(), 1, true, true, 0);
    entry++;
    WorldDatabase.PExecute("REPLACE INTO item_template (entry, display_id, inventory_type, name, quality) VALUES ('%u', '%u', '%u', 'entry: %u | inventory_type: %u | display_id: %u', 1)", entry, display_id, type, entry, type, display_id);

#ifdef WIN32 // Delay is important.
    #include <Windows.h>
    Sleep(100); 
#else
    #include <unistd.h>
    usleep(100); 
#endif

    sObjectMgr.LoadItemPrototypes();
    Item* newItem = target->AddItem(entry, 1);
    if (!newItem) return false;
    target->EquipItem(slot, newItem, true);
    return true;
}

bool ChatHandler::HandleMakeShouldersCommand(char* args) // Do not use on real server. 
{
    Player* target = m_session->GetPlayer();

    uint8 slot  = 2;  // EQUIPMENT_SLOT_SHOULDERS
    uint32 type = 3; // Item inventory_type
    uint32 display_id = 1;

    Item *item = m_session->GetPlayer()->GetItemByPos(INVENTORY_SLOT_BAG_0, slot);
    if (!item) return false;
    uint32 entry = item->GetEntry();

    if (!*args)
    {
        ItemPrototype const* proto = sItemStorage.LookupEntry<ItemPrototype>(entry);
        if (!proto) return false;
        display_id = proto->DisplayInfoID;
        display_id++;
    }
    else
        display_id = (uint32)atoi(args);

    target->DestroyItemCount(item->GetEntry(), 1, true, true, 0);
    entry++;
    WorldDatabase.PExecute("REPLACE INTO item_template (entry, display_id, inventory_type, name, quality) VALUES ('%u', '%u', '%u', 'entry: %u | inventory_type: %u | display_id: %u', 1)", entry, display_id, type, entry, type, display_id);

#ifdef WIN32 // Delay is important.
#include <Windows.h>
    Sleep(100);
#else
#include <unistd.h>
    usleep(100);
#endif

    sObjectMgr.LoadItemPrototypes();
    Item* newItem = target->AddItem(entry, 1);
    if (!newItem) return false;
    target->EquipItem(slot, newItem, true);
    return true;
}

bool ChatHandler::HandleMakeHeadCommand(char* args) // Do not use on real server. 
{
    Player* target = m_session->GetPlayer();

    uint8 slot  = 0;  // EQUIPMENT_SLOT_HEAD
    uint32 type = 1;  // Item inventory_type
    uint32 display_id = 1;

    Item *item = m_session->GetPlayer()->GetItemByPos(INVENTORY_SLOT_BAG_0, slot);
    if (!item) return false;
    uint32 entry = item->GetEntry();

    if (!*args)
    {
        ItemPrototype const* proto = sItemStorage.LookupEntry<ItemPrototype>(entry);
        if (!proto) return false;
        display_id = proto->DisplayInfoID;
        display_id++;
    }
    else
        display_id = (uint32)atoi(args);

    target->DestroyItemCount(item->GetEntry(), 1, true, true, 0);
    entry++;
    WorldDatabase.PExecute("REPLACE INTO item_template (entry, display_id, inventory_type, name, quality) VALUES ('%u', '%u', '%u', 'entry: %u | inventory_type: %u | display_id: %u', 1)", entry, display_id, type, entry, type, display_id);

#ifdef WIN32 // Delay is important.
#include <Windows.h>
    Sleep(100);
#else
#include <unistd.h>
    usleep(100);
#endif

    sObjectMgr.LoadItemPrototypes();
    Item* newItem = target->AddItem(entry, 1);
    if (!newItem) return false;
    target->EquipItem(slot, newItem, true);
    return true;
}

bool ChatHandler::HandleMakeRobeCommand(char* args) // Do not use on real server. 
{
    Player* target = m_session->GetPlayer();

    uint8 slot = 4;  // EQUIPMENT_SLOT_CHEST
    uint32 type = 20;  // Item inventory_type
    uint32 display_id = 1;

    Item *item = m_session->GetPlayer()->GetItemByPos(INVENTORY_SLOT_BAG_0, slot);
    if (!item) return false;
    uint32 entry = item->GetEntry();

    if (!*args)
    {
        ItemPrototype const* proto = sItemStorage.LookupEntry<ItemPrototype>(entry);
        if (!proto) return false;
        display_id = proto->DisplayInfoID;
        display_id++;
    }
    else
        display_id = (uint32)atoi(args);

    target->DestroyItemCount(item->GetEntry(), 1, true, true, 0);
    entry++;
    WorldDatabase.PExecute("REPLACE INTO item_template (entry, display_id, inventory_type, name, quality) VALUES ('%u', '%u', '%u', 'entry: %u | inventory_type: %u | display_id: %u', 1)", entry, display_id, type, entry, type, display_id);

#ifdef WIN32 // Delay is important.
#include <Windows.h>
    Sleep(100);
#else
#include <unistd.h>
    usleep(100);
#endif

    sObjectMgr.LoadItemPrototypes();
    Item* newItem = target->AddItem(entry, 1);
    if (!newItem) return false;
    target->EquipItem(slot, newItem, true);
    return true;
}

bool ChatHandler::HandleMakeBackCommand(char* args) // Do not use on real server. 
{
    Player* target = m_session->GetPlayer();

    uint8 slot = 14;  // EQUIPMENT_SLOT_BACK
    uint32 type = 16;  // Item inventory_type
    uint32 display_id = 1;

    Item *item = m_session->GetPlayer()->GetItemByPos(INVENTORY_SLOT_BAG_0, slot);
    if (!item) return false;
    uint32 entry = item->GetEntry();

    if (!*args)
    {
        ItemPrototype const* proto = sItemStorage.LookupEntry<ItemPrototype>(entry);
        if (!proto) return false;
        display_id = proto->DisplayInfoID;
        display_id++;
    }
    else
        display_id = (uint32)atoi(args);

    target->DestroyItemCount(item->GetEntry(), 1, true, true, 0);
    entry++;
    WorldDatabase.PExecute("REPLACE INTO item_template (entry, display_id, inventory_type, name, quality) VALUES ('%u', '%u', '%u', 'entry: %u | inventory_type: %u | display_id: %u', 1)", entry, display_id, type, entry, type, display_id);

#ifdef WIN32 // Delay is important.
#include <Windows.h>
    Sleep(100);
#else
#include <unistd.h>
    usleep(100);
#endif

    sObjectMgr.LoadItemPrototypes();
    Item* newItem = target->AddItem(entry, 1);
    if (!newItem) return false;
    target->EquipItem(slot, newItem, true);
    return true;
}

bool ChatHandler::HandleMakeWeaponCommand(char* args) // Do not use on real server. 
{
    Player* target = m_session->GetPlayer();

    uint8 slot = 15;   // EQUIPMENT_SLOT_MAINHAND
    uint32 type = 21;  // Item inventory_type
    uint32 display_id = 1;

    Item *item = m_session->GetPlayer()->GetItemByPos(INVENTORY_SLOT_BAG_0, slot);
    if (!item) return false;
    uint32 entry = item->GetEntry();

    if (!*args)
    {
        ItemPrototype const* proto = sItemStorage.LookupEntry<ItemPrototype>(entry);
        if (!proto) return false;
        display_id = proto->DisplayInfoID;
        display_id++;
    }
    else
        display_id = (uint32)atoi(args);

    target->DestroyItemCount(item->GetEntry(), 1, true, true, 0);
    entry++;
    WorldDatabase.PExecute("REPLACE INTO item_template (entry, display_id, inventory_type, name, quality) VALUES ('%u', '%u', '%u', 'entry: %u | inventory_type: %u | display_id: %u', 1)", entry, display_id, type, entry, type, display_id);

#ifdef WIN32 // Delay is important.
#include <Windows.h>
    Sleep(100);
#else
#include <unistd.h>
    usleep(100);
#endif

    sObjectMgr.LoadItemPrototypes();
    Item* newItem = target->AddItem(entry, 1);
    if (!newItem) return false;
    target->EquipItem(slot, newItem, true);
    return true;
}