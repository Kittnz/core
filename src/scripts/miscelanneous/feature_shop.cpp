
#include "scriptPCH.h"
#include "AccountMgr.h"
#include <array>

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
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Balance: 0", GOSSIP_SENDER_MAIN, ACTION_CATEGORY_START);
    }

    if (coins_result)
    {
        Field* coins_amount = coins_result->Fetch();        
        
        std::stringstream strstream;
        strstream << "Balance: " << coins_amount->GetUInt32();
        std::string formattedMessage = strstream.str();

        if (coins_amount != nullptr)
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, formattedMessage.c_str(), GOSSIP_SENDER_MAIN, ACTION_CATEGORY_START);

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
    case ACTION_CATEGORY_START + 9:
        SendEntriesInfoByCategory(pPlayer, 9);
        break;
    case ACTION_CATEGORY_START + 10:
        SendEntriesInfoByCategory(pPlayer, 10);
        break;
    case ACTION_CATEGORY_START + 11:
        SendEntriesInfoByCategory(pPlayer, 11);
        break;
    case ACTION_CATEGORY_START + 12:
        SendEntriesInfoByCategory(pPlayer, 12);
        break;
    case ACTION_CATEGORY_START + 13:
        SendEntriesInfoByCategory(pPlayer, 13);
        break;
    case ACTION_CATEGORY_START + 14:
        SendEntriesInfoByCategory(pPlayer, 14);
        break;
    case ACTION_CATEGORY_START:
        pCreature->MonsterWhisper("If you'd like to purchase some items from me, you need Turtle Tokens! You can buy them via PayPal: info.turtlewow@gmail.com. Please include your account name. 1 euro gives you 10 tokens.", pPlayer);
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

            QueryResult* Result = LoginDatabase.PQuery("SELECT `coins` FROM `shop_coins` WHERE `id` = %u", pPlayer->GetSession()->GetAccountId());

            if (!Result)
            {
                sLog.outError("Possible DB error. Can't get info about turtle token balance on account %u", pPlayer->GetSession()->GetAccountId());
                return true;
            }

            Field* fields = Result->Fetch();

            uint32 coins = fields[0].GetUInt32();
            delete Result;

            if (coins > 0)
            {
                int32 newBalance = coins - shopentry->Price;

                if (newBalance >= 0)
                {
                    LoginDatabase.BeginTransaction();

                    bool successTransaction =
                        LoginDatabase.PExecute("UPDATE `shop_coins` SET `coins` = %i WHERE `id` = %u", newBalance, pPlayer->GetSession()->GetAccountId()) &&
                        LoginDatabase.PExecute("INSERT INTO `shop_logs` VALUES (NOW(), %u, %u, %u, %u, 0)", pPlayer->GetGUIDLow(), pPlayer->GetSession()->GetAccountId(), shopentry->Item, shopentry->Price);

                    LoginDatabase.CommitTransaction();

                    if (!successTransaction)
                    {
                        sLog.outError("Internal DB error. Can't proceed payment on account %u", pPlayer->GetSession()->GetAccountId());
                        return true;
                    }

                    // Going hardcore is possible only for characters below level 10.
                    if (pPlayer->GetLevel() > 1 && shopentry->Item == 50010)
                    {
                        pCreature->MonsterSay("Too late, my friend! You must have done this at level 1.", 0U, pPlayer);
                        break;
                    }

                    Item* item = pPlayer->StoreNewItem(dest, shopentry->Item, true, Item::GenerateItemRandomPropertyId(shopentry->Item));
                    pPlayer->SendNewItem(item, count, false, true);

                    if (shopentry->Item == 50010)
                        pPlayer->EnableTurtleMode();

                    uint8 index = 1;

                    for (auto& itr : sObjectMgr.GetShopCategoriesList())
                    {
                        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, itr.second.Name.c_str(), GOSSIP_SENDER_MAIN, ACTION_CATEGORY_START + index);
                        ++index;
                    }
                }
                else
                    pCreature->MonsterWhisper("You don't have enough tokens to buy this! You can buy tokens via PayPal: info.turtlewow@gmail.com. Please include your account name. 1 euro gives you 10 tokens.", pPlayer);
            }
            else
                pCreature->MonsterWhisper("You have 0 tokens and can't shop. You can buy tokens via PayPal: info.turtlewow@gmail.com. Please include your account name. 1 euro gives you 10 tokens.", pPlayer);
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
