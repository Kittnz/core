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

            for (Player* player : players)
            {
                if (!player->IsInCombat())
                {
                    if (!player->IsAlive())
                    {
                        player->ResurrectPlayer(0.5f);
                        player->SpawnCorpseBones();
                    }

                    array<pair<uint32, WorldLocation>, 8> portals_and_locations =
                    {{
                        { 181580, WorldLocation{800, -11068.1F, -1806.4F, 52.7F, 1.5F} },  // Karazhan Crypt (Entrance)
                        { 181581, WorldLocation{0, -11068.9F, -1828.6F, 60.26F, 3.1F} },   // Karazhan Crypt (Exit)
                        { 112911, WorldLocation{802, 579.13F, 90.70F, 276.11F, 3.4F} },    // The Crescent Grove (Entrance)
                        { 112912, WorldLocation{1, 1722.0F, -1272.6F, 163.26F, 5.8F} },    // The Crescent Grove (Exit)
                        { 112915, WorldLocation{269, -2002.5F, 6575.3F, -154.9F, 5.7F} },  // Black Morass (Entrance)
                        { 112916, WorldLocation{1, -8756.8F, -4191.3F, -209.4F, 5.5F} },   // Black Morass (Exit)
                        { 112917, WorldLocation{35, -1.15F, 44.4F, -25.58F, 1.6F} },       // Stromwind Vault (Entrance)
                        { 112918, WorldLocation{0, -8677.6F, 637.0F, 96.9F, 5.3F} },       // Stromwind Vault (Exit)
                    }};

                    for (auto const& teleport : portals_and_locations)
                    {
                        if (me->GetEntry() == teleport.first)
                            player->TeleportTo(teleport.second);
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
