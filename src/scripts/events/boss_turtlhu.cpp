#include "scriptPCH.h"

enum
{
    SPELL_SHADOWVOLLEY = 21341,
    SPELL_VOIDBOLT = 22709,
    SPELL_MANA_BURN = 26049,
    SPELL_SHADOWFORM = 16592,
    SPELL_SHADOW_BOLT = 17483,
    SPELL_SHADOW_SHOCK = 30138,
    SPELL_PERIODIC_SHADOW_STORM = 2148,
    SPELL_PIERCING_SHADOW = 16429,
    SPELL_VEIL_OF_SHADOW = 22687,
    SPELL_BLACKOUT = 15269,
    SPELL_TWIN_TELEPORT_VISUAL = 26638,
    SPELL_DRAIN_LIFE = 29155
};

struct boss_concaviusAI : public ScriptedAI
{
    boss_concaviusAI(Creature* c) : ScriptedAI(c)
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

    void SetDefaults()
    {
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

    void Aggro(Unit* who) override
    {
        // "Gul'kafh an'shel." = "Gaze into the void."
        m_creature->PMonsterYell("Gul'kafh an'shel.");
    }

    void Reset() override
    {
        SetDefaults();
    }

    void JustRespawned() override
    {
        // "Vwyq agth sshoq'meg N'Zoth vra zz shfk qwor ga'halahs agthu." = "Once more shall the twisted flesh-banners of N'Zoth chitter and howl above the fly-blown corpse of this world."
        m_creature->PMonsterYell("Vwyq agth sshoq'meg N'Zoth vra zz shfk qwor ga'halahs agthu!");
        SetDefaults();
    }

    void KilledUnit(Unit* victim) override
    {
        Player* affectedPlayer;
        Creature* creature;

        switch (victim->GetTypeId())
        {
        case TYPEID_PLAYER:
        {
            affectedPlayer = victim->GetAffectingPlayer();
            if (!affectedPlayer)
                return;

            if (affectedPlayer->GetLevel() < 50)
                return;

            break;
        }
        case TYPEID_UNIT:
        {
            creature = victim->ToCreature();
            if (!creature->IsPet() && !creature->IsTotem())
                return;

            if (creature->GetLevel() < 50)
                return;

            break;
        }
        default:
            return;
        }
        // "Sk'shuul agth vorzz N'Zoth naggwa'fssh." = "Your deaths shall sing of N'Zoth's unending glory."
        m_creature->PMonsterYell("Sk'shuul agth vorzz N'Zoth naggwa'fssh!");
        DoCastSpellIfCan(m_creature, SPELL_SHADOWVOLLEY);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        m_creature->SetObjectScale(0.35f);
        
        // "Iilth vwah, uhn'agth fhssh za." = "Where one falls, many shall take its place."
        m_creature->PMonsterSay("Iilth vwah, uhn'agth fhssh za...");

        uint32 m_respawn_delay_Timer = urand(3, 5) * DAY;

        /** DRRS */
        if (m_creature->GetSpawnFlags() & SPAWN_FLAG_DYNAMIC_RESPAWN_TIME &&
            sWorld.GetActiveSessionCount() > BLIZZLIKE_REALM_POPULATION)

            m_respawn_delay_Timer *= float(BLIZZLIKE_REALM_POPULATION) / float(sWorld.GetActiveSessionCount());

        m_creature->SetRespawnDelay(m_respawn_delay_Timer);
        m_creature->SetRespawnTime(m_respawn_delay_Timer);
        m_creature->SaveRespawnTime();
    }

    void UpdateAI(const uint32 diff) override
    {
        //Return since we have no target
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        // Adopting shadowform
        if (m_creature->GetHealthPercent() <= 30 && !in_shadow_form)
        {
            // "Sk'shgn eqnizz hoq." = "Your fear drives me."
            // "Sk'magg yawifk hoq." = "Your suffering strengthens me."
            // "Sk'uuyat guulphg hoq." = "Your agony sustains me."
            m_creature->PMonsterYell("Sk'shgn eqnizz hoq! Sk'magg yawifk hoq! Sk'uuyat guulphg hoq.");
            m_creature->InterruptNonMeleeSpells(false);
            DoCast(m_creature, SPELL_SHADOWFORM);
            DoCast(m_creature, SPELL_PERIODIC_SHADOW_STORM);
            in_shadow_form = true;
        }

        if (in_shadow_form)
        {
            // ShadowShock_Timer
            if (ShadowShock_Timer < diff)
            {
                DoCast(m_creature, SPELL_SHADOW_SHOCK);
                ShadowShock_Timer = urand(6000, 10000);
            }
            else
            {
                ShadowShock_Timer -= diff;
            }
        }

        if (in_shadow_form)
        {
            // Veil_of_Shadow_Timer
            if (Veil_of_Shadow_Timer < diff)
            {
                if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_VEIL_OF_SHADOW) == CAST_OK)
                    Veil_of_Shadow_Timer = 12000;
            }
            else
            {
                Veil_of_Shadow_Timer -= diff;
            }
        }

        // DrainLife_Timer
        if (DrainLife_Timer < diff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_DRAIN_LIFE) == CAST_OK)
                DrainLife_Timer = urand(3000, 6000);
        }
        else
            DrainLife_Timer -= diff;

        // Blackout_Timer
        if (Blackout_Timer < diff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                DoCast(pTarget, SPELL_BLACKOUT);
                Blackout_Timer = urand(6000, 12000);
            }
            else
            {
                Blackout_Timer = 1000;
            }
        }
        else
        {
            Blackout_Timer -= diff;
        }

        // ShadowBolt_Timer
        if (ShadowBolt_Timer < diff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                DoCast(pTarget, SPELL_SHADOW_BOLT);
                if (!in_shadow_form)
                    ShadowBolt_Timer = urand(3000, 6000);
                else
                    ShadowBolt_Timer = urand(1500, 3000);
            }
            else
            {
                ShadowBolt_Timer = 1000;
            }
        }
        else
        {
            ShadowBolt_Timer -= diff;
        }

        // PiercingShadow_Timer
        if (PiercingShadow_Timer < diff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                DoCast(pTarget, SPELL_PIERCING_SHADOW);
                PiercingShadow_Timer = 12000;
            }
            else
            {
                PiercingShadow_Timer = 1000;
            }
        }
        else
        {
            PiercingShadow_Timer -= diff;
        }

        //ManaBurn_Timer
        if ((ManaBurn_Timer - 10000) <= diff && !mana_burn_warning_said)
        {
            std::list<Player*> players;
            GetPlayersWithinRange(players, 75);
            m_creature->InterruptNonMeleeSpells(false);
            DoCast(m_creature, SPELL_TWIN_TELEPORT_VISUAL);

            for (auto& player : players)
            {
                if (player && player->IsAlive() && player != m_creature->GetVictim())
                    m_creature->CastSpell(player, 21150, true);
            }

            // "Uovssh thyzz... qwaz..." = "To have waited so long... for this..."
            m_creature->PMonsterYell("Uovssh thyzz... qwaz...");
            mana_burn_warning_said = true;
        }

        if (ManaBurn_Timer < diff)
        {
            // "Sk'yahf agth huqth N'Zoth qornaus." = "Your souls shall sate N'Zoth's endless hunger."
            m_creature->PMonsterYell("Sk'yahf agth huqth N'Zoth qornaus.");
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
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_VOIDBOLT) == CAST_OK)
                VoidBolt_Timer = urand(9000, 12000);
        }
        else
            VoidBolt_Timer -= diff;

        DoMeleeAttackIfReady();
    }

};

CreatureAI* GetAI_boss_concavius(Creature* _Creature)
{
    return new boss_concaviusAI(_Creature);
}

void AddSC_boss_turtlhu()
{
    Script* newscript;
    newscript = new Script;
    newscript->Name = "boss_concavius";
    newscript->GetAI = &GetAI_boss_concavius;
    newscript->RegisterSelf();
}
