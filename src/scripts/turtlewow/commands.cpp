#include "scriptPCH.h"
#include "AccountMgr.h"
#include <array>
#include "MoveSplineInit.h"
#include "MoveSpline.h"

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


bool ChatHandler::HandleReloadShopCommand(char* args)
{
    sObjectMgr.LoadShop();
    SendSysMessage("DB table `shop_categories` reloaded.");
    SendSysMessage("DB table `shop_entries` reloaded.");
    return true;
}

bool ChatHandler::HandleSaleCommand(char* args)
{
    if (!*args)
    {
        SendSysMessage("Syntax: .sale on / off");
        SetSentErrorMessage(true);
        return false;
    }

    bool value;

    if (!ExtractOnOff(&args, value))
    {
        SetSentErrorMessage(true);
        return false;
    }

    if (value)
    {
        WorldDatabase.PExecute("UPDATE shop_items SET price = price / 2;");
        SendSysMessage("Shop sale is ON.");
    }
    else
    {
        WorldDatabase.PExecute("UPDATE shop_items SET price = price * 2;");
        SendSysMessage("Shop sale is OFF.");
    }
    SendSysMessage("Use this command to update prices: |cff0ccaec.reload shop|r");
    return true;
}

bool ChatHandler::HandleFlyCommand(char* args)
{
    if (!*args)
    {
        SendSysMessage("Syntax: .fly on / off");
        SetSentErrorMessage(true);
        return false;
    }

    Player* target = m_session->GetPlayer();
    bool value;

    if (!target)
        return false;

    if (!ExtractOnOff(&args, value))
    {
        SetSentErrorMessage(true);
        return false;
    }

    target->CastSpell(target, 14867, true);

    if (value)
    {
        target->SetFlying(true);
        target->SetDisplayId(target->GetTeam() == ALLIANCE ? 6299 : 4566); // Black and Brown Owls
        target->SetObjectScale(0.7F);
        target->UpdateSpeed(MOVE_SWIM, true, 6.0F);
        // Looks better if bird doesn't appear on the ground:
        target->NearLandTo(target->GetPositionX(), target->GetPositionY(), target->GetPositionZ() + 4.0F, target->GetOrientation()); 
    }
    else
    {
        target->SetFlying(false);
        target->SetObjectScale(target->getNativeScale());
        target->UpdateSpeed(MOVE_SWIM, true, 1.0F);
        target->UpdateSpeed(MOVE_RUN,  true, 1.0F);
        target->UpdateSpeed(MOVE_WALK, true, 1.0F);
        target->DeMorph();

        target->m_movementInfo.UpdateTime(WorldTimer::getMSTime());
        WorldPacket hover(SMSG_MOVE_SET_HOVER, 31);
        hover << target->GetPackGUID();
        hover << target->m_movementInfo;
        target->SendMovementMessageToSet(std::move(hover), true);

        target->m_movementInfo.UpdateTime(WorldTimer::getMSTime());
        WorldPacket stop_swim(MSG_MOVE_STOP_SWIM, 31);
        stop_swim << target->GetPackGUID();
        stop_swim << target->m_movementInfo;
        target->SendMovementMessageToSet(std::move(stop_swim), true);
    }
    return true;
}

bool ChatHandler::HandleBalanceCommand(char* args)
{
    char* c_account_name = ExtractArg(&args);

    if (!c_account_name)
        return false;

    std::string account_name = c_account_name;

    if (!AccountMgr::normalizeString(account_name))
    {
        PSendSysMessage("Account doesn't exist.");
        SetSentErrorMessage(true);
        return false;
    }

    uint32 account_id;
    account_id = ExtractAccountId(&c_account_name, &account_name);

    int32 coins = (int32)atoi(args);

    if (!coins)
        return false;

    QueryResult* result = LoginDatabase.PQuery("SELECT `coins` FROM `shop_coins` WHERE `id` = '%u'", account_id);

    if (!result)
    {
        LoginDatabase.PExecute("INSERT INTO shop_coins (id, coins) VALUES ('%u', 0)", account_id);
        PSendSysMessage("This player had no record in the shop_coins table. Run the command again.");
    }

    if (result)
    {
        Field* fields = result->Fetch();
        int32 current_balance = fields[0].GetInt32();

        int32 updated_balance = current_balance + coins;
        delete result;

        if (updated_balance < 0)
        {
            PSendSysMessage("Can't go below zero, the current balance is %i.", current_balance);
            return false;
        }

        LoginDatabase.PExecute("UPDATE `shop_coins` SET `coins`=`coins`+%i WHERE `id`=%u", coins, account_id);
        PSendSysMessage("You've successfully added %i coins to %s.", coins, account_name.c_str());
        PSendSysMessage("Account %s now has %i coins.", account_name.c_str(), updated_balance);
        return true;
    }
    return false;
}

bool ChatHandler::HandleReloadCustomPetEntries(char* args)
{
    sObjectMgr.LoadCustomPetCreatureEntries();
    return true;
}

bool ChatHandler::HandleReloadCustomMountEntries(char* args)
{
    sObjectMgr.LoadCustomMountCreatureEntries();
    return true;
}

bool ChatHandler::HandleMorphNextCommand(char* args)
{
    uint16 display_id = m_session->GetPlayer()->GetDisplayId();
    display_id++;
    Unit* target = GetSelectedUnit();

    if (!target)
        target = m_session->GetPlayer();

    target->SetDisplayId(display_id);
    PSendSysMessage("Current DisplayID: %u", m_session->GetPlayer()->GetDisplayId());
    return true;
}

bool ChatHandler::HandleMorphBackCommand(char* args)
{
    uint16 display_id = m_session->GetPlayer()->GetDisplayId();
    display_id--;
    Unit* target = GetSelectedUnit();

    if (!target)
        target = m_session->GetPlayer();

    target->SetDisplayId(display_id);
    PSendSysMessage("Current DisplayID: %u", m_session->GetPlayer()->GetDisplayId());
    return true;
}

bool ChatHandler::HandleModifyXpCommand(char* args)
{
    if (!*args)
    {
        SendSysMessage("Syntax: .givexp value, where [value] is experience.");
        SetSentErrorMessage(true);
        return false;
    }

    uint32 XP = (uint32)atoi(args);
    Player* target = GetSelectedPlayer();

    if (!target)
        target = m_session->GetPlayer();

    target->GiveXP(XP, target);
    return true;
}

// This is the first id in the dbc and exists in all clients.
#define DISPLAY_ID_BOX 4

bool ChatHandler::HandleModifyHairStyleCommand(char* args)
{
    if (!*args)
        return false;

    uint8 hairstyle = (uint8)atoi(args);
    Player* target = GetSelectedPlayer();

    if (!target)
        target = m_session->GetPlayer();

    target->SetByteValue(PLAYER_BYTES, 2, hairstyle);
    target->SetDisplayId(DISPLAY_ID_BOX);
    target->DirectSendPublicValueUpdate(UNIT_FIELD_DISPLAYID);
    target->DeMorph();

    PSendSysMessage("Character's hair style has been changed to: %u", hairstyle);
    return true;
}

bool ChatHandler::HandleModifyHairColorCommand(char* args)
{
    if (!*args)
        return false;

    uint8 haircolor = (uint8)atoi(args);
    Player* target = GetSelectedPlayer();

    if (!target)
        target = m_session->GetPlayer();

    target->SetByteValue(PLAYER_BYTES, 3, haircolor);
    target->SetDisplayId(DISPLAY_ID_BOX);
    target->DirectSendPublicValueUpdate(UNIT_FIELD_DISPLAYID);
    target->DeMorph();

    PSendSysMessage("Character's hair color has been changed to: %u", haircolor);
    return true;
}

bool ChatHandler::HandleModifySkinColorCommand(char* args)
{
    if (!*args)
        return false;

    uint8 skincolor = (uint8)atoi(args);
    Player* target = GetSelectedPlayer();

    if (!target)
        target = m_session->GetPlayer();

    target->SetByteValue(PLAYER_BYTES, 0, skincolor);
    target->SetDisplayId(DISPLAY_ID_BOX);
    target->DirectSendPublicValueUpdate(UNIT_FIELD_DISPLAYID);
    target->DeMorph();

    PSendSysMessage("Character's skin color has been changed to: %u", skincolor);
    return true;
}

bool ChatHandler::HandleModifyAccessoriesCommand(char* args)
{
    if (!*args)
        return false;

    uint8 accessories = (uint8)atoi(args);
    Player* target = GetSelectedPlayer();

    if (!target)
        target = m_session->GetPlayer();

    target->SetByteValue(PLAYER_BYTES_2, 0, accessories);
    target->SetDisplayId(DISPLAY_ID_BOX);
    target->DirectSendPublicValueUpdate(UNIT_FIELD_DISPLAYID);
    target->DeMorph();

    PSendSysMessage("Character's facial hair / markings / hooves have been changed to: %u", accessories);
    return true;
}

bool ChatHandler::HandleModifyTitleCommand(char* args)
{
    // For humans, Protector of Stormwind
    // For orcs, Overlord of Orgrimmar
    // For dwarves, Thane of Ironforge
    // For night elves, High Sentinel of Darnassus
    // For undead, Deathlord of the Undercity
    // For taurens, Chieftain of Thunderbluff
    // For gnomes, Avenger of Gnomeregan
    // For trolls, Voodoo Boss of Sen'jin

    uint32 city_rank = (uint32)atoi(args);
    Unit* target = GetSelectedUnit();

    if (!target)
        target = m_session->GetPlayer();

    target->SetByteValue(PLAYER_BYTES_3, 2, city_rank);
    return true;
}

#define GNOMISH_PLASTIC_SURGERY_TOOLS_SKIN 50001
#define GNOMISH_PLASTIC_SURGERY_TOOLS_RACE 50002
#define GNOMISH_PLASTIC_SURGERY_TOOLS_FACTION 51434

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
            PSendSysMessage("You must purchase [Gnomish Plastic Surgery Tools: Race Change] first!");
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

            target->ChangeRace(new_race, gender, bytes, bytes2); 

            return true;
        }
    }

    return false;
}

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
            PSendSysMessage("You must purchase [Gnomish Plastic Surgery Tools: Look Change] first.");
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
            target->DestroyItemCount(GNOMISH_PLASTIC_SURGERY_TOOLS_SKIN, 1, true, false, true);
            target->SaveInventoryAndGoldToDB();
            target->SetDisplayId(15435); // Invisible
            target->m_Events.AddEvent(new DemorphAfterTime(target->GetGUID()), target->m_Events.CalculateTime(250)); 
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
        if (!target->HasItemCount(GNOMISH_PLASTIC_SURGERY_TOOLS_FACTION))
        {
            PSendSysMessage("You must purchase [Gnomish Plastic Surgery Tools: Faction Change] first.");
            SetSentErrorMessage(true);
            return false;
        } 
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
            PSendSysMessage("You can not change your faction yet.");
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

        bytes2 |= (target->GetUInt32Value(PLAYER_BYTES_2) & 0xFFFFFF00);

        target->SetUInt32Value(PLAYER_BYTES, bytes);
        target->SetUInt32Value(PLAYER_BYTES_2, bytes2);
        target->SetByteValue(UNIT_FIELD_BYTES_0, 2, gender);

        target->DestroyItemCount(GNOMISH_PLASTIC_SURGERY_TOOLS_FACTION, 1, true, false, true);
        target->SaveInventoryAndGoldToDB();

        target->ChangeRace(new_race, gender, bytes, bytes2);
        return true;
    }
    return false;
}

bool ChatHandler::HandleMountCommand(char* /*args*/)
{
    Player* player = m_session->GetPlayer();
    Creature* target = GetSelectedCreature();

    uint32 modelid;

    if (player->IsTaxiFlying())
        return false;

    if (!target)
    {
        player->Unmount();
        player->UpdateSpeed(MOVE_RUN, false, 1.0F);
        PSendSysMessage("Nothing to ride on! Target any creature with mounting points.");
        SetSentErrorMessage(true);
        return false;
    }

    modelid = target->GetUInt32Value(UNIT_FIELD_DISPLAYID);
    player->SetUInt32Value(UNIT_FIELD_MOUNTDISPLAYID, modelid);
    player->UpdateSpeed(MOVE_RUN, false, 4.0F);
    return true;
}