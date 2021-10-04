#include "scriptPCH.h"

struct custom_dungeon_portal : public GameObjectAI
{
    explicit custom_dungeon_portal(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_uiUpdateTimer = 1000;
    }

    uint32 m_uiUpdateTimer;

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_uiUpdateTimer < uiDiff)
        {
            using namespace std;
            using namespace MaNGOS;

            list<Player*> players;
            AnyPlayerInObjectRangeCheck check(me, 2.0f, true, false);
            PlayerListSearcher<AnyPlayerInObjectRangeCheck> searcher(players, check);
            Cell::VisitWorldObjects(me, searcher, 2.0f);

            for (Player* pPlayer : players)
            {
                if (!pPlayer->IsInCombat())
                {
                    if (!pPlayer->IsAlive())
                    {
                        pPlayer->ResurrectPlayer(0.5f);
                        pPlayer->SpawnCorpseBones();
                    }

                    switch (me->GetEntry())
                    {
                    case 181580: pPlayer->TeleportTo(800, -11068.1F, -1806.4F, 52.7F, 1.5F); break; // Karazhan Crypt (Entrance)
                    case 181581: pPlayer->TeleportTo(0, -11068.9F, -1828.6F, 60.26F, 3.1F);  break; // Karazhan Crypt (Exit)
                    case 112911: pPlayer->TeleportTo(802, 579.13F, 90.70F, 276.11F, 3.4F);   break; // The Crescent Grove (Entrance)
                    case 112912: pPlayer->TeleportTo(1, 1722.0F, -1272.6F, 163.26F, 5.8F);   break; // The Crescent Grove (Exit)
                    case 112915: pPlayer->TeleportTo(269, -2002.5F, 6575.3F, -154.9F, 5.7F); break; // Black Morass (Entrance)
                    case 112916: pPlayer->TeleportTo(1, -8756.8F, -4191.3F, -209.4F, 5.5F);  break; // Black Morass (Exit)
                    case 112917: pPlayer->TeleportTo(35, -1.15F, 44.4F, -25.58F, 1.6F);      break; // Stromwind Vault (Entrance)
                    case 112918: pPlayer->TeleportTo(0, -8677.6F, 637.0F, 96.9F, 5.3F);      break; // Stromwind Vault (Exit)
                    }                     
                }
            }
            m_uiUpdateTimer = 1000;
        }
        else
            m_uiUpdateTimer -= uiDiff;
    }
};

GameObjectAI* GetAI_custom_dungeon_portal(GameObject* gameobject) { return new custom_dungeon_portal(gameobject); }


void AddSC_custom_teleports()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "custom_dungeon_portal";
    newscript->GOGetAI = &GetAI_custom_dungeon_portal;
    newscript->RegisterSelf();   
}
