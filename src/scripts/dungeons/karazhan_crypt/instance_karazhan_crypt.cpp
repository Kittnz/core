#include "scriptPCH.h"

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
                if (!pPlayer->IsAlive())
                {
                    pPlayer->ResurrectPlayer(0.5f);
                    pPlayer->SpawnCorpseBones();
                }
                if (me->GetEntry() == 181580) // Entrance
                    pPlayer->TeleportTo(800, -11085.0F, -1788.2F, 52.7F, 5.3F);
                if (me->GetEntry() == 181581) // Exit
                    pPlayer->TeleportTo(0, -11068.9F, -1828.6F, 60.26F, 3.1F);
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

// Ravenous Strigoi

enum ravenous_strigoi_spells
{
    SPELL_RAVAGE = 8391,
    SPELL_BLOOD_LEECH = 24437,
    SPELL_PUTRID_BITE = 30113,
    SPELL_RAVENOUS_CLAW = 17470,
    SPELL_CHARGE = 22911,
    SPELL_PSYCHIC_SCREAM = 26042,
};

struct ravenous_strigoiAI : public ScriptedAI
{
public:
    ravenous_strigoiAI(Creature* pCreature) : ScriptedAI(pCreature) { Reset(); }

    void Reset() override
    {
        m_uiRavageTimer = 5000;
        m_uiLeechTimer = 6000;
        m_uiPutridBiteTimer = 5000;
        m_uiChargeTimer = 15000;
        m_uiScreamTimer = 7000;
    }

    void SpellHitTarget(Unit* /*pTarget*/, const SpellEntry* pSpell) override
    {
        if (pSpell->Id == SPELL_CHARGE)
            m_uiScreamTimer = 500;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiRavageTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_RAVAGE) == CAST_OK)
                m_uiRavageTimer = 10000;
        }
        else
            m_uiRavageTimer -= uiDiff;

        if (m_uiLeechTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_BLOOD_LEECH) == CAST_OK)
                m_uiLeechTimer = 15000;
        }
        else
            m_uiLeechTimer -= uiDiff;

        if (m_uiPutridBiteTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_PUTRID_BITE) == CAST_OK)
                m_uiPutridBiteTimer = 20000;
        }
        else
            m_uiPutridBiteTimer -= uiDiff;

        if (m_uiChargeTimer <= uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 1))
            {
                if (DoCastSpellIfCan(pTarget, SPELL_CHARGE) == CAST_OK)
                    m_uiChargeTimer = urand(15000, 25000);
            }
        }
        else
            m_uiChargeTimer -= uiDiff;

        if (m_uiScreamTimer)
        {
            if (m_uiScreamTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_PSYCHIC_SCREAM) == CAST_OK)
                    m_uiScreamTimer = 0;
            }
            else
                m_uiScreamTimer -= uiDiff;
        }

        DoMeleeAttackIfReady();
        EnterEvadeIfOutOfCombatArea(uiDiff);
    }

private:
    uint32 m_uiRavageTimer;
    uint32 m_uiLeechTimer;
    uint32 m_uiPutridBiteTimer;
    uint32 m_uiChargeTimer;
    uint32 m_uiScreamTimer;
};

CreatureAI* GetAI_ravenous_strigoi(Creature* pCreature) { return new ravenous_strigoiAI(pCreature); }

// Forgotten Soul

enum forgotten_soul_spells
{
    SPELL_FROSTBOLT = 15530,
    SPELL_FROST_BLAST = 19260,
    SPELL_FROST_NOVA = 30094,
    SPELL_FROST_BREATH = 21099
};

struct forgotten_soulAI : public ScriptedAI
{
public:
    forgotten_soulAI(Creature* pCreature) : ScriptedAI(pCreature) { Reset(); }

    void Reset() override
    {
        m_uiFrostBoltTimer = 5000;
        m_uiFrostBlast = 15000;
        m_uiFrostNovaTimer = 10000;
        m_uiFrostBreathTimer = 6000;
    }

    void SpellHitTarget(Unit* /*pTarget*/, const SpellEntry* pSpell) override
    {
        if (pSpell->Id == SPELL_CHARGE)
            m_uiFrostBreathTimer = 500;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiFrostBoltTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_FROSTBOLT) == CAST_OK)
                m_uiFrostBoltTimer = 10000;
        }
        else
            m_uiFrostBoltTimer -= uiDiff;

        if (m_uiFrostBlast <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_FROST_NOVA) == CAST_OK)
                m_uiFrostBlast = 15000;
        }
        else
            m_uiFrostBlast -= uiDiff;

        if (m_uiFrostNovaTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_FROST_NOVA) == CAST_OK)
                m_uiFrostNovaTimer = 20000;
        }
        else
            m_uiFrostNovaTimer -= uiDiff;

        if (m_uiFrostBreathTimer)
        {
            if (m_uiFrostBreathTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_FROST_BREATH) == CAST_OK)
                    m_uiFrostBreathTimer = 0;
            }
            else
                m_uiFrostBreathTimer -= uiDiff;
        }

        DoMeleeAttackIfReady();
        EnterEvadeIfOutOfCombatArea(uiDiff);
    }

private:
    uint32 m_uiFrostBoltTimer;
    uint32 m_uiFrostBlast;
    uint32 m_uiFrostNovaTimer;
    uint32 m_uiChargeTimer;
    uint32 m_uiFrostBreathTimer;
};

CreatureAI* GetAI_forgotten_soul(Creature* pCreature) { return new forgotten_soulAI(pCreature); }

void AddSC_instance_karazhan_crypt()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "forgotten_soul";
    newscript->GetAI = &GetAI_forgotten_soul;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "ravenous_strigoi";
    newscript->GetAI = &GetAI_ravenous_strigoi;
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