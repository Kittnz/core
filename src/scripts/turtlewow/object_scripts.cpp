
#include "scriptPCH.h"


bool GOHello_go_orb_of_the_bronze_dragonflight(Player* pPlayer, GameObject* pGo)
{
    pPlayer->TeleportTo(1, -8156.288086f, -4809.846191f, 35.879276f, 5.267656f);

    return true;
}

bool GOHello_go_portable_wormhole(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->isInCombat() || pPlayer->IsBeingTeleported() || (pPlayer->getDeathState() == CORPSE) || pPlayer->IsMoving())
        ChatHandler(pPlayer).PSendSysMessage("The wormhole is currently unstable.");
    else
    {
        pPlayer->TeleportTo((pPlayer->GetTeam() == ALLIANCE) ? WorldLocation(0, -8828.231445f, 627.927490f, 94.055664f, 0.0f) : WorldLocation(1, 1653.7f, -4416.6f, 16.8f, 0.65f));

        if (pPlayer->GetQuestStatus(60104) == QUEST_STATUS_INCOMPLETE)
        {
            CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(51573);

            if (cInfo != nullptr)
                pPlayer->KilledMonster(cInfo, ObjectGuid());
        }
    }
        return true;
}

struct go_survival_tent : public GameObjectAI
{
    explicit go_survival_tent(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_bUsed = false;
        m_uiJustUsedTimer = 1;
        m_uiUpdateTimer = 1000;
    }

    bool m_bUsed;
    uint32 m_uiJustUsedTimer;
    uint32 m_uiUpdateTimer;

    void UpdateAI(uint32 const uiDiff) override
    {       
        if (m_uiJustUsedTimer < uiDiff)
        {
            if (m_uiUpdateTimer < uiDiff)
            {
                std::list<Player*> players;
                MaNGOS::AnyPlayerInObjectRangeCheck check(me, 15.0f);
                MaNGOS::PlayerListSearcher<MaNGOS::AnyPlayerInObjectRangeCheck> searcher(players, check);

                Cell::VisitWorldObjects(me, searcher, 15.0f);

                for (Player* pPlayer : players)
                {
                    pPlayer->SetFlag(PLAYER_FLAGS, PLAYER_FLAGS_RESTING);
                    if (pPlayer->isHardcorePlayer())
                        pPlayer->SetRestBonus(static_cast<float>(pPlayer->GetRestBonus() + (sObjectMgr.GetXPForLevel(pPlayer->getLevel()) * 0.000060)));
                    else
                        pPlayer->SetRestBonus(static_cast<float>(pPlayer->GetRestBonus() + (sObjectMgr.GetXPForLevel(pPlayer->getLevel()) * 0.000125)));
                }
                m_uiUpdateTimer = 1000;
            }
            else
            {
                m_uiUpdateTimer -= uiDiff;
            }
            m_bUsed = true;
        }
        else
        {            
            m_uiJustUsedTimer -= uiDiff;
        }
    }
};

GameObjectAI* GetAI_go_survival_tent(GameObject* gameobject)
{
    return new go_survival_tent(gameobject);
}

struct go_custom_rested : public GameObjectAI
{
    explicit go_custom_rested(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_bUsed = false;
        m_uiJustUsedTimer = 1;
        m_uiUpdateTimer = 1000;
    }

    bool m_bUsed;
    uint32 m_uiJustUsedTimer;
    uint32 m_uiUpdateTimer;

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_uiJustUsedTimer < uiDiff)
        {
            if (m_uiUpdateTimer < uiDiff)
            {
                std::list<Player*> players;
                MaNGOS::AnyPlayerInObjectRangeCheck check(me, 22.0f);
                MaNGOS::PlayerListSearcher<MaNGOS::AnyPlayerInObjectRangeCheck> searcher(players, check);

                if (me->GetEntry() == 1000465) // Large distance for Alah'Thalas.
                    Cell::VisitWorldObjects(me, searcher, 100.0f);
                else
                    Cell::VisitWorldObjects(me, searcher, 22.0f);

                for (Player* pPlayer : players)
                {
                    pPlayer->SetFlag(PLAYER_FLAGS, PLAYER_FLAGS_RESTING);
                    pPlayer->SetRestType(REST_TYPE_IN_TAVERN);
                }
                m_uiUpdateTimer = 2500;
            }
            else
            {
                m_uiUpdateTimer -= uiDiff;
            }
            m_bUsed = true;
        }
        else
        {
            m_uiJustUsedTimer -= uiDiff;
        }
    }
};

GameObjectAI* GetAI_go_custom_rested(GameObject* gameobject)
{
    return new go_custom_rested(gameobject);
}


struct go_campfire_rested : public GameObjectAI
{
    explicit go_campfire_rested(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_bUsed = false;
        m_uiJustUsedTimer = 1;
        m_uiUpdateTimer = 1000;
    }

    bool m_bUsed;
    uint32 m_uiJustUsedTimer;
    uint32 m_uiUpdateTimer;

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_uiJustUsedTimer < uiDiff)
        {
            if (m_uiUpdateTimer < uiDiff)
            {
                std::list<Player*> players;
                MaNGOS::AnyPlayerInObjectRangeCheck check(me, 5.0f);
                MaNGOS::PlayerListSearcher<MaNGOS::AnyPlayerInObjectRangeCheck> searcher(players, check);

                Cell::VisitWorldObjects(me, searcher, 5.0f);

                for (Player* pPlayer : players)
                {
                    pPlayer->SetFlag(PLAYER_FLAGS, PLAYER_FLAGS_RESTING);
                    pPlayer->SetRestBonus(static_cast<float>(pPlayer->GetRestBonus() + (sObjectMgr.GetXPForLevel(pPlayer->getLevel()) * 0.000125)));
                }
                m_uiUpdateTimer = 2500;
            }
            else
            {
                m_uiUpdateTimer -= uiDiff;
            }
            m_bUsed = true;
        }
        else
        {
            m_uiJustUsedTimer -= uiDiff;
        }
    }
};

GameObjectAI* GetAI_go_campfire_rested(GameObject* gameobject)
{
    return new go_campfire_rested(gameobject);
}

struct go_cot_enter_trigger : public GameObjectAI
{
    explicit go_cot_enter_trigger(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_uiUpdateTimer = 1000;
    }

    uint32 m_uiUpdateTimer;

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_uiUpdateTimer < uiDiff)
        {
            std::list<Player*> players;
            MaNGOS::AnyPlayerInObjectRangeCheck check(me, 8.0f, true, false);
            MaNGOS::PlayerListSearcher<MaNGOS::AnyPlayerInObjectRangeCheck> searcher(players, check);

            Cell::VisitWorldObjects(me, searcher, 8.0f);

            for (Player* pPlayer : players)
            {
                if (!pPlayer->isAlive()) {
                    pPlayer->ResurrectPlayer(0.5f);
                    pPlayer->SpawnCorpseBones();
                }
                pPlayer->TeleportTo(269, -2002.51f, 6575.36f, -154.93f, 5.76f);
            }
            m_uiUpdateTimer = 1000;
        }
        else
        {
            m_uiUpdateTimer -= uiDiff;
        }
    }
};

GameObjectAI* GetAI_go_cot_enter_trigger(GameObject* gameobject)
{
    return new go_cot_enter_trigger(gameobject);
}

struct go_cot_exit_trigger : public GameObjectAI
{
    explicit go_cot_exit_trigger(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_uiUpdateTimer = 1000;
    }

    uint32 m_uiUpdateTimer;

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_uiUpdateTimer < uiDiff)
        {
            std::list<Player*> players;
            MaNGOS::AnyPlayerInObjectRangeCheck check(me, 8.0f, true, false);
            MaNGOS::PlayerListSearcher<MaNGOS::AnyPlayerInObjectRangeCheck> searcher(players, check);

            Cell::VisitWorldObjects(me, searcher, 8.0f);

            for (Player* pPlayer : players)
            {
                //pPlayer->TeleportTo(1, -8349.90f, -4060.05f, -208.06f, 3.48f);
                pPlayer->TeleportTo(1, -8756.86f, -4191.39f, -209.49f, 5.57f);
            }
            m_uiUpdateTimer = 1000;
        }
        else
        {
            m_uiUpdateTimer -= uiDiff;
        }
    }
};

bool GOHello_go_turtle_radio(Player* pPlayer, GameObject* pGo)
{
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Teldrassil'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Brill's Tavern'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Ashenvale'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Darkmoon Faire'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Thunderbluff'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Goldshire Inn'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Magic'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Baby Murloc Song'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 8);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Barrens'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Tinker Town'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 10);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Dark Forest'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 11);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Maexxna'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 12);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Orgrimmar'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 13);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "Play 'Soggy Night'", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 14);

    pPlayer->SEND_GOSSIP_MENU(90300, pGo->GetGUID());
    return true;
}

bool GOSelect_go_turtle_radio(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
        pPlayer->PlayDirectMusic(4536);
    if (action == GOSSIP_ACTION_INFO_DEF + 2)
        pPlayer->PlayDirectMusic(5355);
    if (action == GOSSIP_ACTION_INFO_DEF + 3)
        pPlayer->PlayDirectMusic(5532);
    if (action == GOSSIP_ACTION_INFO_DEF + 4)
        pPlayer->PlayDirectMusic(8440);
    if (action == GOSSIP_ACTION_INFO_DEF + 5)
        pPlayer->PlayDirectMusic(7077);
    if (action == GOSSIP_ACTION_INFO_DEF + 6)
        pPlayer->PlayDirectMusic(4516);
    if (action == GOSSIP_ACTION_INFO_DEF + 7)
        pPlayer->PlayDirectMusic(6669);
    if (action == GOSSIP_ACTION_INFO_DEF + 8)
        pPlayer->PlayDirectMusic(8485);
    if (action == GOSSIP_ACTION_INFO_DEF + 9)
        pPlayer->PlayDirectMusic(2536);
    if (action == GOSSIP_ACTION_INFO_DEF + 10)
        pPlayer->PlayDirectMusic(7196);
    if (action == GOSSIP_ACTION_INFO_DEF + 11)
        pPlayer->PlayDirectMusic(5376);
    if (action == GOSSIP_ACTION_INFO_DEF + 12)
        pPlayer->PlayDirectMusic(8887);
    if (action == GOSSIP_ACTION_INFO_DEF + 13)
        pPlayer->PlayDirectMusic(5055);
    if (action == GOSSIP_ACTION_INFO_DEF + 14)
        pPlayer->PlayDirectMusic(6836);

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOHello_go_winter_radio(Player* pPlayer, GameObject* pGo)
{
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "<Switch: 100.3 FM>", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT_12, "<Switch: 101.5 FM>", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);


    pPlayer->SEND_GOSSIP_MENU(90300, pGo->GetGUID());
    return true;
}

bool GOSelect_go_winter_radio(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
        pPlayer->PlayDirectMusic(4516);
    if (action == GOSSIP_ACTION_INFO_DEF + 2)
        pPlayer->PlayDirectMusic(8440);

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

GameObjectAI* GetAI_go_cot_exit_trigger(GameObject* gameobject)
{
    return new go_cot_exit_trigger(gameobject);
}

bool GOHello_go_portal_to_stormwind(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetTeam() == ALLIANCE)
        pPlayer->TeleportTo(0, -8828.231445f, 627.927490f, 94.055664f, 0.0f);

    return true;
}

bool GOHello_go_portal_to_darnassus(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetTeam() == ALLIANCE)
        pPlayer->TeleportTo(1, 9962.712891f, 2280.142822f, 1341.394409f, 0.0f);

    return true;
}

bool GOHello_go_portal_to_ironforge(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetTeam() == ALLIANCE)
        pPlayer->TeleportTo(0, -4917.0f, -955.0f, 502.0f, 0.0f);

    return true;
}

bool GOHello_go_portal_to_orgrimmar(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetTeam() == HORDE)
        pPlayer->TeleportTo(1, 1437.0f, -4421.0f, 25.24f, 1.65f);

    return true;
}

enum BountyQuests
{
    QUEST_HORDE_PLAYER = 50322,
    QUEST_ALLIANCE_PLAYER = 50323
};

bool GOHello_go_bounty(Player* pPlayer, GameObject* pGo)
{
    std::string HordePlayerName{ "H_Empty" };
    std::string AlliancePlayerName{ "A_Empty" };

    QueryResult* result_h = CharacterDatabase.PQuery("SELECT characters.name FROM characters JOIN bounty_quest_targets ON characters.guid = bounty_quest_targets.horde_player WHERE bounty_quest_targets.id = 1");
    QueryResult* result_a = CharacterDatabase.PQuery("SELECT characters.name FROM characters JOIN bounty_quest_targets ON characters.guid = bounty_quest_targets.alliance_player WHERE bounty_quest_targets.id = 1");

    switch (pPlayer->GetTeam()) 
    {
    case ALLIANCE:

        if (result_h)
        {
            Field* fields = result_h->Fetch();
            HordePlayerName = fields[0].GetString();
        }
        delete result_h;

        if (pPlayer->GetQuestStatus(QUEST_HORDE_PLAYER) == QUEST_STATUS_NONE)
        {
            std::stringstream WantedHordePlayerName;
            WantedHordePlayerName << "WANTED: " << HordePlayerName;
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_MONEY_BAG, WantedHordePlayerName.str().c_str(), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
        break;

    case HORDE: 

        if (result_a)
        {
            Field* fields = result_a->Fetch();
            AlliancePlayerName = fields[0].GetString();
        }
        delete result_a;

        if (pPlayer->GetQuestStatus(QUEST_ALLIANCE_PLAYER) == QUEST_STATUS_NONE)
        {
            std::stringstream WantedAlliancePlayerName;
            WantedAlliancePlayerName << "WANTED: " << AlliancePlayerName;
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_MONEY_BAG, WantedAlliancePlayerName.str().c_str(), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        }
        break;
    case TEAM_NONE:
    case TEAM_CROSSFACTION:
        break;
    default:
        break;
    }  
    pPlayer->SEND_GOSSIP_MENU(90325, pGo->GetGUID());
    return true;
}

bool GOSelect_go_bounty(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)    {
        Quest const* pQuest = sObjectMgr.GetQuestTemplate(QUEST_HORDE_PLAYER);
          pPlayer->AddQuest(pQuest, NULL);
    }

    if (action == GOSSIP_ACTION_INFO_DEF + 2) {
        Quest const* pQuest = sObjectMgr.GetQuestTemplate(QUEST_ALLIANCE_PLAYER);
        pPlayer->AddQuest(pQuest, NULL);
    }
    
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

class DemorphAfterTime : public BasicEvent 
{
public:
    explicit DemorphAfterTime(uint64 player_guid) : BasicEvent(), player_guid(player_guid) {}

    bool Execute(uint64 e_time, uint32 p_time) override 
    {
        Player* player = ObjectAccessor::FindPlayer(player_guid);
        if (player) 
            player->DeMorph();

        return false;
    }

private:
    uint64 player_guid;
};

bool GOHello_go_epl_flying_machine(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->getLevel() >= 25)
    {
        if (pPlayer->GetZoneId() == 139 || pPlayer->GetZoneId() == 1377)
        {
            if (pPlayer->GetTeam() == ALLIANCE)
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TAXI, "Set a course back to the Stormwind City.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            else
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TAXI, "Set a course back to the Orgrimmar.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
        else
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TAXI, "Up to the Plaguelands!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    }
    pPlayer->SEND_GOSSIP_MENU(90342, pGo->GetGUID());
    return true;
}

bool GOSelect_go_epl_flying_machine(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pPlayer->GetTeam() == ALLIANCE)
        {
            if (pPlayer->GetMoney() >= 5000)
            {
                pPlayer->ModifyMoney(-5000);
                pPlayer->SetDisplayId(8011);
                pPlayer->TeleportTo(0, -9046.90000F, 343.2570F, 190.055800F, 2.967656F);
                pPlayer->m_Events.AddEvent(new DemorphAfterTime(pPlayer->GetGUID()), pPlayer->m_Events.CalculateTime(15000));
                pPlayer->CastSpell(pPlayer, 130, true);
            }
            else
                ChatHandler(pPlayer).PSendSysMessage("You don't have enough money!");
        }
        else
        {
            if (pPlayer->GetMoney() >= 5000)
            {
                pPlayer->ModifyMoney(-5000);
                pPlayer->SetDisplayId(8011);
                pPlayer->TeleportTo(1, 1271.40000F, -4271.9370F, 118.055800F, 2.367656F);
                pPlayer->m_Events.AddEvent(new DemorphAfterTime(pPlayer->GetGUID()), pPlayer->m_Events.CalculateTime(15000));
                pPlayer->CastSpell(pPlayer, 130, true);
            }
            else
                ChatHandler(pPlayer).PSendSysMessage("You don't have enough money!");
        }
    }
    if (action == GOSSIP_ACTION_INFO_DEF + 2)
    {
        if (pPlayer->GetMoney() >= 5000)
        {
            pPlayer->ModifyMoney(-5000);
            pPlayer->SetDisplayId(8011);
            pPlayer->TeleportTo(0, 1645.700000F, -3044.899700F, 190.055800F, 2.967656F);
            pPlayer->m_Events.AddEvent(new DemorphAfterTime(pPlayer->GetGUID()), pPlayer->m_Events.CalculateTime(15000));
            pPlayer->CastSpell(pPlayer, 130, true);
        }
        else
        ChatHandler(pPlayer).PSendSysMessage("You don't have enough money!");
    }
    return true;
}

bool GOHello_go_stormwind_fountain(Player* pPlayer, GameObject* pGo)
{
    int32 coin = 51600 + urand(0, 44);
    pPlayer->AddItem(coin);
    pPlayer->PlayDirectSound(1204, pPlayer);
    pPlayer->HandleEmote(EMOTE_ONESHOT_KNEEL);

    int32 timer = 30 + urand(0, 70);

    pGo->SetRespawnTime(timer * MINUTE);
    pGo->Despawn();
    pGo->UpdateObjectVisibility();
    return true;
}

bool GOHello_go_epl_tree_of_life(Player* pPlayer, GameObject* pGo)
{
    if (!pPlayer->HasItemCount(51701)) // VANGUARD_SEED
        return false;

    float x, y, z;
    pGo->GetSafePosition(x, y, z);

    pPlayer->SummonGameObject(1000321, x, y, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 25, true);    // Aura
    pPlayer->SummonGameObject(1000222, x, y, z-1.0F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 18000, true); // Tree Bush
    pPlayer->SummonGameObject(1000322, x, y, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 5, true); // Tree 

    pPlayer->CastSpell(pPlayer, 740, false);
    pPlayer->PlayDirectMusic(4536);
    pPlayer->HandleEmote(EMOTE_ONESHOT_KNEEL);

    pGo->SetRespawnTime(4320 * MINUTE); // 3 days
    pGo->Despawn();
    pGo->UpdateObjectVisibility();
    return true;
}

struct go_epl_growing_tree : public GameObjectAI
{
    explicit go_epl_growing_tree(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_bUsed = false;
        m_uiJustUsedTimer = 1;
        m_uiUpdateTimer = 3000;
    }

    bool m_bUsed;
    uint32 m_uiJustUsedTimer;
    uint32 m_uiUpdateTimer;

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_uiJustUsedTimer < uiDiff)
        {
            if (m_uiUpdateTimer < uiDiff)
            {
                float x, y, z;
                me->GetSafePosition(x, y, z);

                switch (me->GetEntry())
                {
                case 1000322: me->SummonGameObject(1000323, x, y, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 5, true); me->Despawn(); me->UpdateObjectVisibility(); break;
                case 1000323: me->SummonGameObject(1000324, x, y, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 5, true); me->Despawn(); me->UpdateObjectVisibility(); break;
                case 1000324: me->SummonGameObject(1000325, x, y, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 5, true); me->Despawn(); me->UpdateObjectVisibility(); break;
                case 1000325: me->SummonGameObject(1000326, x, y, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 5, true); me->Despawn(); me->UpdateObjectVisibility(); break;
                case 1000326: me->SummonGameObject(1000327, x, y, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 5, true); me->Despawn(); me->UpdateObjectVisibility(); break;
                case 1000327: me->SummonGameObject(1000328, x, y, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 5, true); me->Despawn(); me->UpdateObjectVisibility(); break;
                case 1000328: me->SummonGameObject(1000329, x, y, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 18000, true); me->Despawn(); me->UpdateObjectVisibility(); break;
                }                  
                m_uiUpdateTimer = 3000;
            }
            else
            {
                m_uiUpdateTimer -= uiDiff;
            }
            m_bUsed = true;
        }
        else
        {
            m_uiJustUsedTimer -= uiDiff;
        }
    }
};

GameObjectAI* GetAI_go_epl_growing_tree(GameObject* gameobject)
{
    return new go_epl_growing_tree(gameobject);
}

bool GOHello_go_brainwashing_device(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->getLevel() >= 10 && pPlayer->HasItemCount(51715, 1))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, "Click here to reset your talents.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    
    pPlayer->SEND_GOSSIP_MENU(90350, pGo->GetGUID());
    return true;
}

bool GOSelect_go_brainwashing_device(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
            pPlayer->ResetTalents();
            pPlayer->AddAura(27880);
            pGo->Despawn();
            pGo->UpdateObjectVisibility();
            pPlayer->CLOSE_GOSSIP_MENU();
    }
    return true;
}

struct stormwind_vault_portal : public GameObjectAI
{
    explicit stormwind_vault_portal(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_uiUpdateTimer = 1000;
    }

    uint32 m_uiUpdateTimer;

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_uiUpdateTimer < uiDiff)
        {
            std::list<Player*> players;
            MaNGOS::AnyPlayerInObjectRangeCheck check(me, 1.0f, true, false);
            MaNGOS::PlayerListSearcher<MaNGOS::AnyPlayerInObjectRangeCheck> searcher(players, check);

            Cell::VisitWorldObjects(me, searcher, 1.0f);

            for (Player* pPlayer : players)
            {
                pPlayer->GetSession()->SendNotification("This dungeon is currently not available.");
                //if (!pPlayer->isAlive()) 
                //{
                //    pPlayer->ResurrectPlayer(0.5f);
                //    pPlayer->SpawnCorpseBones();
                //}
                //if (me->GetEntry() == 3000281)
                //    pPlayer->TeleportTo(0, -8677.60F, 637.04F, 96.90F, 5.3F);
                //else
                //    pPlayer->TeleportTo(35, -1.15F, 44.4F, -25.58F, 1.6F);
            }
            m_uiUpdateTimer = 1000;
        }
        else
        {
            m_uiUpdateTimer -= uiDiff;
        }
    }
};

GameObjectAI* GetAI_stormwind_vault_portal(GameObject* gameobject)
{
    return new stormwind_vault_portal(gameobject);
}

void AddSC_object_scripts()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "stormwind_vault_portal";
    newscript->GOGetAI = &GetAI_stormwind_vault_portal;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_campfire_rested";
    newscript->GOGetAI = &GetAI_go_campfire_rested;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_brainwashing_device";
    newscript->pGOHello = &GOHello_go_brainwashing_device;
    newscript->pGOGossipSelect = &GOSelect_go_brainwashing_device;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_epl_growing_tree";
    newscript->GOGetAI = &GetAI_go_epl_growing_tree;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_epl_tree_of_life";
    newscript->pGOHello = &GOHello_go_epl_tree_of_life;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_stormwind_fountain";
    newscript->pGOHello = &GOHello_go_stormwind_fountain;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_epl_flying_machine";
    newscript->pGOHello = &GOHello_go_epl_flying_machine;
    newscript->pGOGossipSelect = &GOSelect_go_epl_flying_machine;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_portable_wormhole";
    newscript->pGOHello = &GOHello_go_portable_wormhole;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_orb_of_the_bronze_dragonflight";
    newscript->pGOHello = &GOHello_go_orb_of_the_bronze_dragonflight;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_survival_tent";
    newscript->GOGetAI = &GetAI_go_survival_tent;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_custom_rested";
    newscript->GOGetAI = &GetAI_go_custom_rested;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_cot_enter_trigger";
    newscript->GOGetAI = &GetAI_go_cot_enter_trigger;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_cot_exit_trigger";
    newscript->GOGetAI = &GetAI_go_cot_exit_trigger;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_turtle_radio";
    newscript->pGOHello = &GOHello_go_turtle_radio;
    newscript->pGOGossipSelect = &GOSelect_go_turtle_radio;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_portal_to_darnassus";
    newscript->pGOHello = &GOHello_go_portal_to_darnassus;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_portal_to_ironforge";
    newscript->pGOHello = &GOHello_go_portal_to_darnassus;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_portal_to_stormwind";
    newscript->pGOHello = &GOHello_go_portal_to_stormwind;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_portal_to_orgrimmar";
    newscript->pGOHello = &GOHello_go_portal_to_orgrimmar;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_bounty";
    newscript->pGOHello = &GOHello_go_bounty;
    newscript->pGOGossipSelect = &GOSelect_go_bounty;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_winter_radio";
    newscript->pGOHello = &GOHello_go_winter_radio;
    newscript->pGOGossipSelect = &GOSelect_go_winter_radio;
    newscript->RegisterSelf();
}


