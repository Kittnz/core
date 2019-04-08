#include "scriptPCH.h"

enum
{
    SPELL_SHADOWVOLLEY          = 21341,
    SPELL_VOIDBOLT              = 22709,
    SPELL_MANA_BURN             = 26049,
    SPELL_SHADOWFORM            = 16592,
    SPELL_SHADOW_BOLT           = 17483,
    SPELL_SHADOW_SHOCK          = 30138
};

struct boss_turtlhuAI : public ScriptedAI
{
    boss_turtlhuAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 VoidBolt_Timer;
    uint32 ManaBurn_Timer;
    uint32 ShadowBolt_Timer;
    uint32 ShadowShock_Timer;

    bool mana_burn_warning_said;
    bool in_shadow_form;

    void SetDefaults() {
        m_creature->SetObjectScale(4.2f);

        VoidBolt_Timer = 15000;
        ManaBurn_Timer = 45000;
        ShadowBolt_Timer = urand(4000, 6000);
        ShadowShock_Timer = urand(8000, 12000);

        mana_burn_warning_said = false;
        in_shadow_form = false;
    }

    void Aggro(Unit *who)
    {
        m_creature->PMonsterYell("NO! LET ME STEAL MORE TREASURES! WE NEED THEM!");
    }

    void Reset()
    {
        SetDefaults();
    }

    void JustRespawned()
    {
        m_creature->PMonsterYell("Finally! I'm here! The wait is over.");
        SetDefaults();
    }

    void KilledUnit(Unit* victim)
    {
        Player* affectedPlayer;
        Creature* creature;

        switch (victim->GetTypeId())
        {
            case TYPEID_PLAYER:
                affectedPlayer = victim->GetAffectingPlayer();
                if (!affectedPlayer)
                    return;
                if (affectedPlayer->getLevel() < 50)
                    return;
                break;

            case TYPEID_UNIT:
                creature = victim->ToCreature();
                if (!creature->IsPet() && !creature->IsTotem())
                    return;

                if (creature->getLevel() < 50)
                    return;
                break;

            default:
                return;
        }

        m_creature->PMonsterYell("Do you understand it now? You can't do anything.");
        DoCastSpellIfCan(m_creature, SPELL_SHADOWVOLLEY);
    }

    void JustDied(Unit* /*pKiller*/)
    {
        m_creature->SetObjectScale(0.35f);
        m_creature->PMonsterSay("I... feel... weak... Thanks for freeing my soul, strangers.");

        uint32 m_respawn_delay_Timer = urand(4, 7)*DAY + urand(0, 24*HOUR);

        /** DRRS */
        if (m_creature->GetSpawnFlags() & SPAWN_FLAG_DYNAMIC_RESPAWN_TIME &&
            sWorld.GetActiveSessionCount() > BLIZZLIKE_REALM_POPULATION)

            m_respawn_delay_Timer *= float(BLIZZLIKE_REALM_POPULATION) / float(sWorld.GetActiveSessionCount());

        m_creature->SetRespawnDelay(m_respawn_delay_Timer);
        m_creature->SetRespawnTime(m_respawn_delay_Timer);
        m_creature->SaveRespawnTime();
    }

    void UpdateAI(const uint32 diff)
    {
        //Return since we have no target
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        // Adopting shadowform
        if (m_creature->GetHealthPercent() <= 30 && !in_shadow_form) {
            m_creature->PMonsterYell("The shadows! I'll let them consume me to erase you!");
            m_creature->InterruptNonMeleeSpells(false);
            DoCast(m_creature, SPELL_SHADOWFORM);
            in_shadow_form = true;
        }

        if (in_shadow_form) {
            // ShadowShock_Timer
            if (ShadowShock_Timer < diff)
            {
                DoCast(m_creature, SPELL_SHADOW_SHOCK);
                ShadowShock_Timer = urand(6000, 12000);
            } else {
                ShadowShock_Timer -= diff;
            }
        }

        // ShadowBolt_Timer
        if (ShadowBolt_Timer < diff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0)) {
                DoCast(pTarget, SPELL_SHADOW_BOLT);
                ShadowBolt_Timer = urand(2000, 6000);
            } else {
                ShadowBolt_Timer = 1000;
            }
        } else {
            ShadowBolt_Timer -= diff;
        }

        //ManaBurn_Timer
        if ((ManaBurn_Timer - 10000) <= diff && !mana_burn_warning_said) {
            m_creature->PMonsterYell("Soon... You will run! Cowards!");
            mana_burn_warning_said = true;
        }
        if (ManaBurn_Timer < diff)
        {
            m_creature->PMonsterYell("BURN! ALL OF YOUR ENERGY, BURN!");
            m_creature->InterruptNonMeleeSpells(false);
            DoCast(m_creature->SelectNearestTarget(100), SPELL_MANA_BURN);
            ManaBurn_Timer = 45000;
            mana_burn_warning_said = false;
        }
        else
            ManaBurn_Timer -= diff;

        //VoidBolt_Timer
        if (VoidBolt_Timer < diff && !in_shadow_form)
        {
            if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_VOIDBOLT) == CAST_OK)
                VoidBolt_Timer = urand(9000, 12000);
        }
        else
            VoidBolt_Timer -= diff;

        DoMeleeAttackIfReady();
    }

};

CreatureAI* GetAI_boss_turtlhu(Creature *_Creature)
{
    return new boss_turtlhuAI(_Creature);
}

void AddSC_boss_turtlhu()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "boss_turtlhu";
    newscript->GetAI = &GetAI_boss_turtlhu;
    newscript->RegisterSelf();
}