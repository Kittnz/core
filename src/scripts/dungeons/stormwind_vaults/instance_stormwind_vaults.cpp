#include "scriptPCH.h"

using namespace std;

template <typename Functor>
void DoAfterTime(Player* player, uint32 p_time, Functor&& function)
{
    player->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), player->m_Events.CalculateTime(p_time));
}

enum mob_entries
{
    maddened_guard = 60597,
    hungry_rat = 93105
};

enum object_guids
{
    rat_door_one_guid = 5000697,
    rat_door_two_guid = 5000698
};

const string dialog_lines[4] = { 
    "Do you hear them?! In the walls... They're always watching!",
    "What even are you?! The watchers sent you, you're going to rip us apart!",
    "There is no leaving, not for any of us, they block our escape...",
    "I don't want to join them, they whisper me to join them, they show me images of my body torn into pieces..."    
};

struct instance_stormwind_vault : public ScriptedInstance
{
    explicit instance_stormwind_vault(Map* p_Map) : ScriptedInstance(p_Map)
    {
        Initialize();
    };

    void OnCreatureEnterCombat(Creature* pCreature) override
    {
        if (pCreature->IsAlive() && !pCreature->IsInCombat())
            pCreature->SetInCombatWithZone();

        switch (pCreature->GetEntry())
        {
        case maddened_guard:
            int32 line = urand(0, 3);
            pCreature->PMonsterSay("%s", dialog_lines[line].c_str());
            break;
        }
    }

    void OnCreatureDeath(Creature* pCreature) override
    {
    }
};

InstanceData* GetInstanceData_instance_stormwind_vault(Map* p_Map) { return new instance_stormwind_vault(p_Map); }

struct stormwind_vault_rat_trap : public GameObjectAI
{
    explicit stormwind_vault_rat_trap(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_uiJustUsedTimer = 1;
        m_uiUpdateTimer = 1000;
    }

    uint32 m_uiJustUsedTimer;
    uint32 m_uiUpdateTimer;

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_uiUpdateTimer < uiDiff)
        {
            GameObject* rat_event_activated = me->FindNearestGameObject(3000274, 3.0f);

            if (!rat_event_activated)
            {
                std::list<Player*> players;
                MaNGOS::AnyPlayerInObjectRangeCheck check(me, 3.0f);
                MaNGOS::PlayerListSearcher<MaNGOS::AnyPlayerInObjectRangeCheck> searcher(players, check);

                Cell::VisitWorldObjects(me, searcher, 20.0f);

                for (Player* pPlayer : players)
                {
                    me->SummonGameObject(3000274, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1800, true); // 30 minutes
                    pPlayer->PlayDirectMusic(8740);

                    GameObject* rat_door_one = me->FindNearestGameObject(rat_door_one_guid, 20.0F);
                    GameObject* rat_door_two = me->FindNearestGameObject(rat_door_two_guid, 20.0F);

                    if (rat_door_one && rat_door_two)
                    {
                        rat_door_one->UseDoorOrButton(60);
                        rat_door_two->UseDoorOrButton(60);
                    }

                    DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer]() {
                        int n = 15;
                        for (int i = 0; i < n; ++i)
                        {
                            player->SummonCreature(93106, player->GetPositionX() + urand (1,4), player->GetPositionY() + urand(1,4), player->GetPositionZ(), player->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 150 * IN_MILLISECONDS);
                        }
                        });
                }
                m_uiUpdateTimer = 2500;
            }
        }
        else
            m_uiUpdateTimer -= uiDiff;
    }
};

GameObjectAI* GetAI_stormwind_vault_rat_trap(GameObject* gameobject) { return new stormwind_vault_rat_trap(gameobject); }

void AddSC_instance_stormwind_vaults()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "instance_stormwind_vault";
    newscript->GetInstanceData = &GetInstanceData_instance_stormwind_vault;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "stormwind_vault_rat_trap";
    newscript->GOGetAI = &GetAI_stormwind_vault_rat_trap;
    newscript->RegisterSelf();
}
