#include "scriptPCH.h"

template <typename Functor>
void DoAfterTime(Player* player, uint32 p_time, Functor&& function)
{
    player->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), player->m_Events.CalculateTime(p_time));
}

#define KARAZHAN_CRYPT_KEY 51356
#define KARAZHAN_GATE_RESET 1

bool GOHello_karazhan_crypt_gate(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->HasItemCount(KARAZHAN_CRYPT_KEY, 1))
    {
        pGo->UseDoorOrButton();
        pPlayer->HandleEmote(EMOTE_ONESHOT_KNEEL);

        if (GameObjectAI* gAI = pGo->AI())
            gAI->SetData(KARAZHAN_GATE_RESET, 1);
    }
    else
        pPlayer->GetSession()->SendNotification("Requires Karazhan Crypt Key.");

    return true;
}

struct karazhan_crypt_gate : public GameObjectAI
{
    explicit karazhan_crypt_gate(GameObject* pGo) : GameObjectAI(pGo) {}
    uint32 BackTimer = 0;

    virtual void UpdateAI(uint32 const uiDiff) override
    {
        if (BackTimer != 0)
        {
            if (BackTimer < uiDiff)
            {
                BackTimer = 0;
                me->ResetDoorOrButton();
            }
            else
            {
                BackTimer -= uiDiff;
                if (BackTimer == 0)
                {
                    me->ResetDoorOrButton();
                }
            }
        }
    }

    virtual void SetData(uint32 id, uint32 value) override
    {
        if (id == KARAZHAN_GATE_RESET)
            BackTimer = 25 * IN_MILLISECONDS;
        GameObjectAI::SetData(id, value);
    }
};

GameObjectAI* GetAI_karazhan_crypt_gate(GameObject* Obj) { return new karazhan_crypt_gate(Obj); }

struct karazhan_crypt_portal : public GameObjectAI
{
    explicit karazhan_crypt_portal(GameObject* pGo) : GameObjectAI(pGo)
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
                    if (me->GetEntry() == 181580) // Entrance
                        pPlayer->TeleportTo(800, -11068.1F, -1806.4F, 52.74F, 1.5F);
                    if (me->GetEntry() == 181581) // Exit
                        pPlayer->TeleportTo(0, -11068.9F, -1828.6F, 60.26F, 3.1F);
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

GameObjectAI* GetAI_karazhan_crypt_portal(GameObject* gameobject) { return new karazhan_crypt_portal(gameobject); }


struct tomb_bat_event_trigger : public GameObjectAI
{
    explicit tomb_bat_event_trigger(GameObject* pGo) : GameObjectAI(pGo)
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
            GameObject* bat_event_activated = me->FindNearestGameObject(177301, 10.0f);

            if (!bat_event_activated)
            {
                std::list<Player*> players;
                MaNGOS::AnyPlayerInObjectRangeCheck check(me, 20.0f);
                MaNGOS::PlayerListSearcher<MaNGOS::AnyPlayerInObjectRangeCheck> searcher(players, check);

                Cell::VisitWorldObjects(me, searcher, 20.0f);

                for (Player* pPlayer : players)
                {
                    me->SummonGameObject(177301, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1800, true); // 30 minutes
                    pPlayer->PlayDirectMusic(1171);

                    DoAfterTime(pPlayer, 15 * IN_MILLISECONDS, [player = pPlayer]() {
                        player->SummonCreature(91922, -11063.4F, -1795.69F, 56.65F, 3.1F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 150 * IN_MILLISECONDS);
                        });
                }
                m_uiUpdateTimer = 2500;
            }
        }
        else
            m_uiUpdateTimer -= uiDiff;
    }
};

GameObjectAI* GetAI_tomb_bat_event_trigger(GameObject* gameobject) { return new tomb_bat_event_trigger(gameobject); }

struct tomb_batAI : public ScriptedAI
{
    tomb_batAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() 
    {
        m_creature->SetFlag(UNIT_DYNAMIC_FLAGS, UNIT_DYNFLAG_DEAD | UNIT_DYNFLAG_TAPPED);
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        m_creature->SetStandState(UNIT_STAND_STATE_DEAD);
    }
    void UpdateAI(const uint32 diff)
    {
        GameObject* bat_event_activated = me->FindNearestGameObject(177301, 30.0f);

        if (bat_event_activated)
        {
            m_creature->RemoveFlag(UNIT_DYNAMIC_FLAGS, UNIT_DYNFLAG_DEAD | UNIT_DYNFLAG_TAPPED);
            m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            m_creature->SetStandState(UNIT_STAND_STATE_STAND);

            if (!m_creature->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE))
            {
                if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim()) return;
                DoMeleeAttackIfReady();
            }
        }
    }
    void JustDied(Unit*) override 
    {
        m_creature->SetRespawnTime(1800); // 30 minutes
    }
    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_tomb_bat(Creature* _Creature) { return new tomb_batAI(_Creature); }

void AddSC_instance_karazhan_crypt()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "tomb_bat";
    newscript->GetAI = &GetAI_tomb_bat;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "tomb_bat_event_trigger";
    newscript->GOGetAI = &GetAI_tomb_bat_event_trigger;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "karazhan_crypt_gate";
    newscript->pGOHello = &GOHello_karazhan_crypt_gate;
    newscript->GOGetAI = &GetAI_karazhan_crypt_gate;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "karazhan_crypt_portal";
    newscript->GOGetAI = &GetAI_karazhan_crypt_portal;
    newscript->RegisterSelf();
}