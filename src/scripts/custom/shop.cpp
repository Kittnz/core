
// Make sure to apply the contents of /sql/shop onto your database.

#include "scriptPCH.h"
#include <array>

bool ChatHandler::HandleReloadShopCommand(char* args)
{
    sObjectMgr.LoadShop();
    SendSysMessage("DB table `shop_categories` reloaded.");
    SendSysMessage("DB table `shop_entries` reloaded.");
    return true;
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
