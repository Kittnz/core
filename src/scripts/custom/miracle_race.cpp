#include "scriptPCH.h"
#include <array>

// Spells:

#define SALT_FLATS_RACE_SLOW      6601
#define SALT_FLATS_RACE_NORMAL    6602  // Decreases run speed, value -16%
#define SALT_FLATS_RACE_SPEED     6600  // Increases run speed, value +14%
#define DAMAGE_CAR                7084
#define I_CANT_DRIVE_55           31565 // What the actual fuck...
#define EXPLOSIVE_SHEEP_PASSIVE   4051
#define EXPLOSIVE_SHEEP           4050

// Items:

#define GNOME_CAMERA_KEY   5916
#define GOBLIN_CAMERA_KEY  5937

bool GossipHello_npc_daisy(Player* p_Player, Creature* p_Creature)
{
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I'll join Goblin's Team.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I'll join Gnomes's Team.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    p_Player->SEND_GOSSIP_MENU(90200, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_daisy(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        p_Player->TeleportTo(1, -6168.598145F, -3907.561523F, -60.108891F + 1.5f, 3.0f);
        p_Player->SetDisplayId(15435); // Hiding player, else they'll be sitting on a spinning wheel.
        p_Player->SetUInt32Value(UNIT_FIELD_MOUNTDISPLAYID, 10318);
        p_Creature->MonsterSay("Dicks out for Goblins!", 0, 0);
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        p_Player->TeleportTo(1, -6168.643555F, -3897.561523F, -60.092022F + 1.5f, 3.0f);
        p_Player->SetDisplayId(15435); // Hiding player, else they'll be sitting on a spinning wheel.
        p_Player->SetUInt32Value(UNIT_FIELD_MOUNTDISPLAYID, 2490);
        p_Creature->MonsterSay("Dicks out for Gnomes!", 0, 0);
    }
    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

// Ignore this for while:

struct go_speed_up : public GameObjectAI
{
    explicit go_speed_up(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_bUsed = false;
        m_uiJustUsedTimer = 1;
        m_uiUpdateTimer = 10;
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

                for (Player* p_Player : players)
                {
                    p_Player->CastSpell(p_Player, SALT_FLATS_RACE_SPEED, false);
                }
                m_uiUpdateTimer = 10;
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

GameObjectAI* GetAI_go_speed_up(GameObject* gameobject)
{
    return new go_speed_up(gameobject);
}

void AddSC_lost_turtles()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_daisy";
    newscript->pGossipHello = &GossipHello_npc_daisy;
    newscript->pGossipSelect = &GossipSelect_npc_daisy;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_speed_up";
    newscript->GOGetAI = &GetAI_go_speed_up;
    newscript->RegisterSelf();

    //newscript = new Script;
    //newscript->Name = "npc_raceaway_sheep";
    //newscript->pGossipHello = &GossipHello_npc_raceaway_sheep;
    //newscript->pGossipSelect = &GossipSelect_npc_raceaway_sheep;
    //newscript->RegisterSelf();
}