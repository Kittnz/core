
// Make sure to apply the contents of /sql/shop onto your database.

#include "scriptPCH.h"
#include "AccountMgr.h"
#include <array>

bool ChatHandler::HandleReloadShopCommand(char* args)
{
    sObjectMgr.LoadShop();
    SendSysMessage("DB table `shop_categories` reloaded.");
    SendSysMessage("DB table `shop_entries` reloaded.");
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


enum
{
    ACTION_CATEGORY_START = 10000,
    ACTION_ENTRY_START = 20000,
};

inline void SendEntriesInfoByCategory(Player* pPlayer, uint8 category)
{
    for (auto &itr : sObjectMgr.GetShopEntriesList())
    {
        if (itr.second.Category != category)
            continue;

        std::stringstream DescriptionPrice;
        DescriptionPrice << itr.second.Description << " " << itr.second.Price;

        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, DescriptionPrice.str().c_str(), GOSSIP_SENDER_MAIN, ACTION_ENTRY_START + itr.first);
    }
}

bool GossipHello_npc_shop(Player* pPlayer, Creature* pCreature)
{
    QueryResult* coins_result = LoginDatabase.PQuery("SELECT `coins` FROM `shop_coins` WHERE `id` = '%u'", pPlayer->GetSession()->GetAccountId());

    if (!coins_result)
    {
        LoginDatabase.PExecute("INSERT INTO shop_coins (id, coins) VALUES ('%u', 0)", pPlayer->GetSession()->GetAccountId());
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Account Balance: 0 Turtle Tokens", GOSSIP_SENDER_MAIN, ACTION_CATEGORY_START);
    }

    if (coins_result)
    {
        Field* coins_amount = coins_result->Fetch();

        std::stringstream strstream;
        strstream << "Account Balance: " << coins_amount->GetUInt32() << " Turtle Tokens.";
        std::string formattedMessage = strstream.str();

        if (coins_amount != nullptr)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, formattedMessage.c_str(), GOSSIP_SENDER_MAIN, ACTION_CATEGORY_START);
        }

        delete coins_result;
    }

    uint8 index = 1;

    for (auto &itr : sObjectMgr.GetShopCategoriesList())
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, itr.second.Name.c_str(), GOSSIP_SENDER_MAIN, ACTION_CATEGORY_START + index);
        ++index;
    }
    
    pPlayer->SEND_GOSSIP_MENU(90000, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_shop(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    pPlayer->PlayerTalkClass->ClearMenus();

    switch (uiAction)
    {
    case ACTION_CATEGORY_START + 1:
        SendEntriesInfoByCategory(pPlayer, 1);
        break;
    case ACTION_CATEGORY_START + 2:
        SendEntriesInfoByCategory(pPlayer, 2);
        break;
    case ACTION_CATEGORY_START + 3:
        SendEntriesInfoByCategory(pPlayer, 3);
        break;
    case ACTION_CATEGORY_START + 4:
        SendEntriesInfoByCategory(pPlayer, 4);
        break;
    case ACTION_CATEGORY_START + 5:
        SendEntriesInfoByCategory(pPlayer, 5);
        break;
    case ACTION_CATEGORY_START + 6:
        SendEntriesInfoByCategory(pPlayer, 6);
        break;
    case ACTION_CATEGORY_START + 7:
        SendEntriesInfoByCategory(pPlayer, 7);
        break;
    case ACTION_CATEGORY_START + 8:
        SendEntriesInfoByCategory(pPlayer, 8);
        break;
    case ACTION_CATEGORY_START:
        return GossipHello_npc_shop(pPlayer, pCreature);

    default:
    {
        if (ShopEntry const* shopentry = sObjectMgr.GetShopEntryInfo(uiAction - ACTION_ENTRY_START))
        {
            int32 count = 1;
            ItemPosCountVec dest;
            uint32 noSpaceForCount = 0;
            uint8 msg = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, shopentry->Item, count, &noSpaceForCount);
            if (msg != EQUIP_ERR_OK)
                count -= noSpaceForCount;

            if (count == 0 || dest.empty())
            {
                pCreature->MonsterSay("Your bags are full or you already have this item.", 0U, pPlayer);
                break;
            }

            QueryResult* Result = LoginDatabase.PQuery("select account_balance_update(%d,%d)", pPlayer->GetSession()->GetAccountId(), shopentry->Price);

            if (!Result)
            {
                sLog.outError("DB function 'account_balance_update' is missing.");
                return true;
            }

            Field* fields = Result->Fetch();

            int32 bSuccess = fields[0].GetInt32();
            delete Result;

            if (bSuccess == 1)
            {
                // Going hardcore is possible only for characters below level 10.
                if (pPlayer->getLevel() > 10 && shopentry->Item == 50010)
                {
                    pCreature->MonsterSay("Too late, my friend! You must have done this before level 10.", 0U, pPlayer);
                    break;
                }

                Item* item = pPlayer->StoreNewItem(dest, shopentry->Item, true, Item::GenerateItemRandomPropertyId(shopentry->Item));
                pPlayer->SendNewItem(item, count, false, true);

                if (shopentry->Item == 50010)
                {
                    pPlayer->EnableHardcoreMode(); 
                }

                uint8 index = 1;

                for (auto &itr : sObjectMgr.GetShopCategoriesList())
                {
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, itr.second.Name.c_str(), GOSSIP_SENDER_MAIN, ACTION_CATEGORY_START + index);
                    ++index;
                }
            }
            else
                pCreature->MonsterSay("You don't have enough Turtle WoW Tokens.", 0U, pPlayer);
        }
        break;
    }
    }

    pPlayer->SEND_GOSSIP_MENU(90001, pCreature->GetGUID());   
    return true;
}

void AddSC_shop()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_shop";
    newscript->pGossipHello = &GossipHello_npc_shop;
    newscript->pGossipSelect = &GossipSelect_npc_shop;
    newscript->RegisterSelf();
}
