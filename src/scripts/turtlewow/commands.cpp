#include "scriptPCH.h"
#include "AccountMgr.h"
#include <array>
#include <Language.h>
#include <Battlegrounds/BattleGroundMgr.h>
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
    // Static price for Spectral Tiger:
    WorldDatabase.PExecute("UPDATE shop_items SET price = 2000 where item = 80430;");

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
        target->SetDisplayId(18509);
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
    //   target->DeMorph();

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
        PSendSysMessage("Wrong account name.");
        SetSentErrorMessage(true);
        return false;
    }

    uint32 account_id;
    account_id = ExtractAccountId(&c_account_name, &account_name);
    int32 coins = (int32)atoi(args);

    if (!coins || !account_id)
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

bool ChatHandler::HandleFoolCommand(char* args)
{
    if (!*args)
    {
        SendSysMessage("Syntax: .fool on / off");
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
        sWorld.setConfig(CONFIG_BOOL_FOOLSDAY, true);
        SendSysMessage("Fool's Day event is ON.");
    }
    else
    {
        sWorld.setConfig(CONFIG_BOOL_FOOLSDAY, false);
        SendSysMessage("Fool's Day event is OFF.");
    }
    return true;
}

bool ChatHandler::HandleBgTestCommand(char* args)
{
    sBattleGroundMgr.ToggleTesting();
    return true;
}

bool ChatHandler::HandleReloadCustomPetEntries(char* args)
{
    sObjectMgr.LoadCustomPetCreatureEntries();
    SendSysMessage(">> Table `custom_pet_entry_relation` reloaded.");
    return true;
}

bool ChatHandler::HandleReloadCustomMountEntries(char* args)
{
    sObjectMgr.LoadCustomMountCreatureEntries();
    SendSysMessage(">> Table `custom_mount_entry_relation` reloaded.");
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

bool ChatHandler::HandleModifyFaceCommand(char* args)
{
    if (!*args)
        return false;

    uint8 face = (uint8)atoi(args);
    Player* target = GetSelectedPlayer();

    if (!target)
        target = m_session->GetPlayer();

    target->SetByteValue(PLAYER_BYTES, 1, face);
    target->SetDisplayId(DISPLAY_ID_BOX);
    target->DirectSendPublicValueUpdate(UNIT_FIELD_DISPLAYID);
    target->DeMorph();

    PSendSysMessage("Character's face has been changed to: %u", face);
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

bool ChatHandler::HandleTransferCommand(char* args)
{
    if (!args || !*args)
        return false;

    char* rawPlName = ExtractArg(&args);
    char* rawAccountName = ExtractArg(&args);
    if (!rawPlName || !rawAccountName)
    {
        SendSysMessage("Syntax: .transfer player_name account_name");
        return false;
    }

    std::string playerName(rawPlName);
    std::string accountName(rawAccountName);

    // Player must be offline
    // This will only return the player if it's ONLINE
    if (ObjectAccessor::FindPlayerByName(playerName.c_str()))
    {
        SendSysMessage("Player must be offline.");
        return false;
    }
    else
    {
        QueryResult* result = CharacterDatabase.PQuery("SELECT `guid` FROM `characters` WHERE `name` = '%s'",
                playerName.c_str());

        if (!result)
        {
            SendSysMessage("Player not found.");
            return false;
        }
        else
        {
            Field* fields = result->Fetch();
            uint32 guid = fields[0].GetUInt32();

            uint32 accountId = sAccountMgr.GetId(accountName);

            // Account must exist
            if (!accountId)
            {
                SendSysMessage("Account not found.");
                return false;
            }

            CharacterDatabase.PExecute("UPDATE characters SET account = %u WHERE guid = '%u'", accountId, guid);
            PSendSysMessage("You have successfully moved character %s to account %s.", playerName.c_str(),
                            accountName.c_str());
        }
    }
    return true;
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

class NearestGameObjectInObjectRangeCheck
{
public:
    NearestGameObjectInObjectRangeCheck(WorldObject const& obj, float range) : i_obj(obj), i_range(range) {}
    WorldObject const& GetFocusObject() const { return i_obj; }
    bool operator()(GameObject* go)
    {
        if (i_obj.IsWithinDistInMap(go, i_range))
        {
            i_range = i_obj.GetDistance(go);        // use found GO range as new range limit for next check
            return true;
        }
        return false;
    }
    float GetLastRange() const { return i_range; }
private:
    WorldObject const& i_obj;
    float  i_range;
};

bool ChatHandler::HandleTurtleCinematic(char* args)
{
	uint32 CinematicId = 0;
	if (!ExtractUInt32(&args, CinematicId))
	{
		PSendSysMessage("Usage: .cinematic $cinematicInt$");
		return false;
	}

	if (Player* CurrentPlayer = GetSession()->GetPlayer())
	{
		CurrentPlayer->SendCinematicStart(CinematicId);
	}

	return true;
}
