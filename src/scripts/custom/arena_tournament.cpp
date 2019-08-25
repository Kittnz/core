
//You'll find Arena Ambassadors in any major city. Join the fray, get cool rewards for murdering friends 
//and enemies in the Battle Ring, where you will experience a bonus x5 honor gaining!
//
//There, you will earn[Bloody Coins] for slaying your opponents.You can exchange them for buffs talking 
//to Trixy Gollavix or item rewards taken directly from Zul�Gurub if you give them to Dyah Owon, the item rewarder.
//You will find them at the entrance of the arena.
//
//As an incentive for all players, Dyah Owon will offer repeatable quests to earn some experience from level 1 to 60, 
//as well as the option to exchange[Bloody Coins] for Horde or Alliance Commendation Signets, 
//which you can use to increase the reputation of any major city of your choice.
//
//Note: To prevent group camping, you won't earn Bloody Coins if you are in a group. Arena Spectators like fair play!

#include "scriptPCH.h"

#define ARENA_AMBASSADOR_INVITATION_TEXT 90004
#define BLOODY_COIN 50015

static const WorldLocation m_GurubashiArena(0, -13233.059570f, 218.713669f, 31.868229f, 1.079525f);

bool GossipHello_npc_arena_ambassador(Player* p_Player, Creature* p_Creature)
{
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Take me to the arena!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    p_Player->SEND_GOSSIP_MENU(ARENA_AMBASSADOR_INVITATION_TEXT, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_arena_ambassador(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        p_Player->TeleportTo(m_GurubashiArena);

    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

bool CanGetBloodyReward(Player* player, int32 itemId)
{
    ItemPosCountVec dest;
    InventoryResult msg = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, itemId, 1);
    if (msg != InventoryResult::EQUIP_ERR_OK)
    {
        ChatHandler(player).PSendSysMessage("Your inventory is full!");
        return false;
    }

    return true;
}

bool HasBloodyCoins(Player* player, uint32 ReqCount)
{
    return player->GetItemCount(BLOODY_COIN) >= ReqCount;
}

bool RemovedBloodyCoins(Player* player, uint32 ReqCount)
{
    if (HasBloodyCoins(player, ReqCount))
    {
        sLog.outInfo("Arena Tournament: Player %s (GUID: %llu) just spent %u Bloody Coins", player->GetName(), player->GetObjectGuid().GetRawValue(), ReqCount);
        return player->RemoveItemCurrency(BLOODY_COIN, ReqCount);
    }
    return false;
}

enum BloodyCoinReward
{
    BloodyCoinRew_1 = 1,
    BloodyCoinRew_2 = 2,
    BloodyCoinRew_3 = 3,
    BloodyCoinRew_4 = 4,
    BloodyCoinRew_5 = 5,
    BloodyCoinRew_6 = 6,
};

bool GossipHello_npc_arena_vendor(Player *pPlayer, Creature *_Creature)
{
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, "Speed (50%, 15 seconds): 1 Bloody Coin", GOSSIP_SENDER_MAIN, BloodyCoinReward::BloodyCoinRew_1);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, "Stamina (16, 30 min): 3 Bloody Coins", GOSSIP_SENDER_MAIN, BloodyCoinReward::BloodyCoinRew_2);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, "Intellect (16, 30 min): 3 Bloody Coins", GOSSIP_SENDER_MAIN, BloodyCoinReward::BloodyCoinRew_3);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, "Agility (17, 30 min): 3 Bloody Coins", GOSSIP_SENDER_MAIN, BloodyCoinReward::BloodyCoinRew_4);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, "Strength (17, 30 min): 3 Bloody Coins", GOSSIP_SENDER_MAIN, BloodyCoinReward::BloodyCoinRew_5);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, "Spirit (15, 30 min): 3 Bloody Coins", GOSSIP_SENDER_MAIN, BloodyCoinReward::BloodyCoinRew_6);

    pPlayer->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, _Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_arena_vendor(Player *player, Creature *_Creature, uint32 sender, uint32 action)
{
    auto AddItemIfAllowed = [player](int32 itemId, int32 CoinAmount)
    {
        if (CanGetBloodyReward(player, itemId) && RemovedBloodyCoins(player, CoinAmount))
        {
            ItemPrototype const *pProto = ObjectMgr::GetItemPrototype(itemId);
            sLog.outInfo("Arena Tournament: Player %s (GUID: %llu) has purchased %s", player->GetName(), player->GetObjectGuid().GetRawValue(), pProto->Name1);
            player->AddItem(itemId);
        }
    };

    if (sender == GOSSIP_SENDER_MAIN)
    {
        BloodyCoinReward eAction = (BloodyCoinReward)action;
        uint32 coins = 0;
        uint32 spell = 0;
        char* buff = "";

        switch (eAction)
        {
            case BloodyCoinRew_1: // Speed
                spell = 2379;
                coins = 1;
                buff = "Speed";
                break;
            case BloodyCoinRew_2: // Stamina
                spell = 12178;
                coins = 3;
                buff = "Stamina";
                break;
            case BloodyCoinRew_3: // Intellect
                spell = 12176;
                coins = 3;
                buff = "Intellect";
                break;
            case BloodyCoinRew_4: // Agility
                spell = 12174;
                coins = 3;
                buff = "Agility";
                break;
            case BloodyCoinRew_5: // Strength
                spell = 12179;
                coins = 3;
                buff = "Strength";
                break;
            case BloodyCoinRew_6: // Spirit
                spell = 12177;
                coins = 3;
                buff = "Spirit";
                break;
            default:
                break;
        }

        if (RemovedBloodyCoins(player, coins)) {
            _Creature->CastSpell(_Creature, 14867, true); // NPC Visual Cast
            player->CastSpell(player, spell, true);
            sLog.outInfo("Arena Tournament: Player %s (GUID: %llu) has purchased %s buff", player->GetName(), player->GetObjectGuid().GetRawValue(), buff);
        } else {
            _Creature->PMonsterSay("You don't have enough coins! Fight for your life! Yarrrr!");
        }
    }
    player->CLOSE_GOSSIP_MENU();
    return true;
}

void AddSC_arena_tournament()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_arena_ambassador";
    newscript->pGossipHello = &GossipHello_npc_arena_ambassador;
    newscript->pGossipSelect = &GossipSelect_npc_arena_ambassador;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_arena_vendor";
    newscript->pGossipHello = GossipHello_npc_arena_vendor;
    newscript->pGossipSelect = GossipSelect_npc_arena_vendor;
    newscript->RegisterSelf();
}