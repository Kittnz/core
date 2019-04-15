#include "scriptPCH.h"

enum
{
    SPELL_SHADOWVOLLEY          = 21341,
    SPELL_VOIDBOLT              = 22709,
    SPELL_MANA_BURN             = 26049,
    SPELL_SHADOWFORM            = 16592,
    SPELL_SHADOW_BOLT           = 17483,
    SPELL_SHADOW_SHOCK          = 30138,
    SPELL_PERIODIC_SHADOW_STORM = 2148,
    SPELL_PIERCING_SHADOW       = 16429,
    SPELL_VEIL_OF_SHADOW        = 22687,
    SPELL_BLACKOUT              = 15269,
    TWIN_TELEPORT_VISUAL        = 26638,
    SPELL_DRAIN_LIFE            = 29155
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
    uint32 PiercingShadow_Timer;
    uint32 Veil_of_Shadow_Timer;
    uint32 Blackout_Timer;
    uint32 DrainLife_Timer;

    bool mana_burn_warning_said;
    bool in_shadow_form;

    void SetDefaults() {
        m_creature->SetObjectScale(4.2f);

        VoidBolt_Timer = 12000;
        ManaBurn_Timer = 30000;
        ShadowBolt_Timer = urand(4000, 6000);
        ShadowShock_Timer = urand(6000, 10000);
        PiercingShadow_Timer = 12000;
        Veil_of_Shadow_Timer = 12000;
        Blackout_Timer = urand(6000, 16000);
        DrainLife_Timer = urand(3000, 6000);

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

        uint32 m_respawn_delay_Timer = urand(4, 6)*DAY + urand(12, 24*HOUR);

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
            DoCast(m_creature, SPELL_PERIODIC_SHADOW_STORM);
            in_shadow_form = true;
        }

        if (in_shadow_form) {
            // ShadowShock_Timer
            if (ShadowShock_Timer < diff)
            {
                DoCast(m_creature, SPELL_SHADOW_SHOCK);
                ShadowShock_Timer = urand(6000, 10000);
            } else {
                ShadowShock_Timer -= diff;
            }
        }

        if (in_shadow_form) {
            // Veil_of_Shadow_Timer
            if (Veil_of_Shadow_Timer < diff)
            {
                if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_VEIL_OF_SHADOW) == CAST_OK)
                    Veil_of_Shadow_Timer = 12000;
            } else {
                Veil_of_Shadow_Timer -= diff;
            }
        }

        //VoidBolt_Timer
        if (DrainLife_Timer < diff)
        {
            if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_DRAIN_LIFE) == CAST_OK)
                DrainLife_Timer = urand(3000, 6000);
        }
        else
            DrainLife_Timer -= diff;

        // Blackout_Timer
        if (Blackout_Timer < diff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0)) {
                DoCast(pTarget, SPELL_BLACKOUT);
                Blackout_Timer = urand(6000, 12000);
            } else {
                Blackout_Timer = 1000;
            }
        } else {
            Blackout_Timer -= diff;
        }

        // ShadowBolt_Timer
        if (ShadowBolt_Timer < diff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0)) {
                DoCast(pTarget, SPELL_SHADOW_BOLT);
                if (!in_shadow_form)
                    ShadowBolt_Timer = urand(3000, 6000);
                else
                    ShadowBolt_Timer = urand(1500, 3000);
            } else {
                ShadowBolt_Timer = 1000;
            }
        } else {
            ShadowBolt_Timer -= diff;
        }

        // PiercingShadow_Timer
        if (PiercingShadow_Timer < diff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0)) {
                DoCast(pTarget, SPELL_PIERCING_SHADOW);
                PiercingShadow_Timer = 12000;
            } else {
                PiercingShadow_Timer = 1000;
            }
        } else {
            PiercingShadow_Timer -= diff;
        }

        //ManaBurn_Timer
        if ((ManaBurn_Timer - 10000) <= diff && !mana_burn_warning_said) {
            std::list<Player*> players;
            GetPlayersWithinRange(players, 75);
            m_creature->InterruptNonMeleeSpells(false);
            DoCast(m_creature, TWIN_TELEPORT_VISUAL);

            for (auto &player : players) {
                if (player && player->isAlive() && player != m_creature->getVictim())
                    player->TeleportTo(m_creature->GetMapId(), m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ(),
                                       m_creature->GetOrientation(), TELE_TO_NOT_LEAVE_COMBAT);
            }

            m_creature->PMonsterYell("Soon... You will run! Cowards!");
            mana_burn_warning_said = true;
        }
        if (ManaBurn_Timer < diff)
        {
            m_creature->PMonsterYell("BURN! ALL OF YOUR ENERGY, BURN!");
            m_creature->InterruptNonMeleeSpells(false);
            DoCast(m_creature, SPELL_MANA_BURN);
            ManaBurn_Timer = 30000;
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