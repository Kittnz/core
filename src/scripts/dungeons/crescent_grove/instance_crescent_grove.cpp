#include "scriptPCH.h"

template <typename Functor>
void DoAfterTime(Player* player, uint32 p_time, Functor&& function)
{
    player->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), player->m_Events.CalculateTime(p_time));
}

struct instance_crescent_grove : public ScriptedInstance
{
    explicit instance_crescent_grove(Map* p_Map) : ScriptedInstance(p_Map)
    {
        Initialize();
    };

    void OnCreatureEnterCombat(Creature* pCreature) override
    {
        if (pCreature->IsAlive() && !pCreature->IsInCombat())
            pCreature->SetInCombatWithZone();
    }
};

InstanceData* GetInstanceData_instance_crescent_grove(Map* p_Map) { return new instance_crescent_grove(p_Map); }


struct crescent_grove_portal : public GameObjectAI
{
    explicit crescent_grove_portal(GameObject* pGo) : GameObjectAI(pGo)
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
                if (!pPlayer->IsInCombat())
                {
                    if (!pPlayer->IsAlive())
                    {
                        pPlayer->ResurrectPlayer(0.5f);
                        pPlayer->SpawnCorpseBones();
                    }
                    if (me->GetEntry() == 112911) // Entrance
                        pPlayer->TeleportTo(802, 579.13F, 90.70F, 276.11F, 3.4F);
                    if (me->GetEntry() == 112912) // Exit  
                        pPlayer->TeleportTo(1, 1722.0F, -1272.6F, 163.26F, 5.8F);
                }
            }
            m_uiUpdateTimer = 1000;
        }
        else
        {
            m_uiUpdateTimer -= uiDiff;
        }
    }
};

GameObjectAI* GetAI_crescent_grove_portal(GameObject* gameobject) { return new crescent_grove_portal(gameobject); }

void AddSC_instance_crescent_grove()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "crescent_grove_portal";
    newscript->GOGetAI = &GetAI_crescent_grove_portal;
    newscript->RegisterSelf();
}