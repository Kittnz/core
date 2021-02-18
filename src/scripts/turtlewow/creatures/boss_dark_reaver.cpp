// Dark Reaver of Karazhan
// Author: Henhouse
#include "scriptPCH.h"

enum
{
    SPELL_MOUNT             = 46224,
    SPELL_CLEAVE            = 20684,
    SPELL_STRIKE            = 26613,
    SPELL_FURIOUS_ANGER     = 16791,

    SPELL_GHOST_VISUAL      = 22650,
    SPELL_TWISTING_NETHER   = 23700,

    MOB_FORLORN_SPIRIT      = 80937,
};

enum EventStates
{
    STATE_ENRAGED   = 1,
};

constexpr auto AGGRO_TEXT_1 = "Mortals shall not defile these lands!";
constexpr auto AGGRO_TEXT_2 = "You descrecate the Master's lands with your filthy footsteps!";

constexpr auto SUMMON_TEXT_1 = "Rise, spirits. Defend the Master's lands!";
constexpr auto SUMMON_TEXT_2 = "Spirits, rise, and drive back this rabble!";

constexpr auto DEATH_TEXT_1 = "Master, I am sorry... I have failed...";
constexpr auto DEATH_TEXT_2 = "The Master... is not... well...";

constexpr auto LEASH_TEXT_1 = "Cowards! I will hunt you if you ever return!";
constexpr auto LEASH_TEXT_2 = "Leave--and never again enter these lands!";

struct boss_dark_reaverAI : public ScriptedAI
{
    boss_dark_reaverAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 Cleave_Timer;
    uint32 Summon_Announce_Timer;
    uint32 Summon_Timer;

    uint8 Event_State;

    uint8 LastHealthPercentage;

    void SetDefaults()
    {
        DoCast(me, SPELL_MOUNT, true);

        Cleave_Timer = 12000;
        Summon_Announce_Timer = 18500;
        Summon_Timer = 20000;

        Event_State = 0;

        LastHealthPercentage = 100;
    }

    void Aggro(Unit *who)
    {
        m_creature->MonsterYell(urand(0, 1) ? AGGRO_TEXT_1 : AGGRO_TEXT_2);
        me->InterruptNonMeleeSpells(false, SPELL_MOUNT);
    }

    void Reset()
    {
        SetDefaults();
    }

    void JustRespawned()
    {
        SetDefaults();
    }

    void JustReachedHome()
    {
        DoCast(me, SPELL_MOUNT, true);
    }

    void KilledUnit(Unit* victim)
    {
        if (victim->GetTypeId() != TYPEID_PLAYER)
            return;

        if (urand(0, 1)) // don't spam on wipe
            m_creature->MonsterYell("Join those below...");
    }

    void JustDied(Unit* /*pKiller*/)
    {
        m_creature->MonsterYell(urand(0, 1) ? DEATH_TEXT_1 : DEATH_TEXT_2);

        uint32 m_respawn_delay_Timer = 2 * DAY;
        m_creature->SetRespawnDelay(m_respawn_delay_Timer);
        m_creature->SetRespawnTime(m_respawn_delay_Timer);
        m_creature->SaveRespawnTime();
    }

    void UpdateAI(const uint32 diff)
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        // Anti-leash protection
        if (m_creature->GetZoneId() != 41) // Deadwind Pass
        {
            m_creature->MonsterYell(urand(0, 1) ? LEASH_TEXT_1 : LEASH_TEXT_2);
            EnterEvadeMode();
        }

        // Cleave
        if (Cleave_Timer < diff)
        {
            if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_CLEAVE) == CAST_OK)
                Cleave_Timer = urand(15000, 22000);
        }
        else
            Cleave_Timer -= diff;

        // Strike every 10% HP loss.
        if (LastHealthPercentage - me->GetHealthPercent() >= 10)
        {
            if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_STRIKE) == CAST_OK)
                LastHealthPercentage = me->GetHealthPercent();
        }

        // Announce incoming summon
        if (Summon_Announce_Timer < diff)
        {
            me->MonsterYell(urand(0, 1) ? SUMMON_TEXT_1 : SUMMON_TEXT_2);
            Summon_Announce_Timer = 58500;
        }
        else
            Summon_Announce_Timer -= diff;

        // Summon Lackey (skeleton)
        if (Summon_Timer < diff)
        {
            // I can't do math so this will suffice.
            int8 quikmafs[4][2] = {{5,0},{-5,0},{0,5},{0,-5}};

            for (uint8 i = 0; i < 4; ++i)
            {
                Creature* spawn = me->SummonCreature(MOB_FORLORN_SPIRIT,
                    me->GetPositionX() + quikmafs[i][0],
                    me->GetPositionY() + quikmafs[i][1],
                    me->GetPositionZ(),
                    me->GetOrientation(),
                    TEMPSUMMON_TIMED_COMBAT_OR_CORPSE_DESPAWN,
                    5000 // OOC Despawn time
                );

                spawn->AddAura(SPELL_GHOST_VISUAL);
                spawn->CastSpell(spawn, SPELL_TWISTING_NETHER, true); // for visual
                spawn->Attack(me->getVictim(), true);
                spawn->GetMotionMaster()->MoveChase(me->getVictim());
            }

            Summon_Timer = 60000;
        }
        else
            Summon_Timer -= diff;

        // Furious Anger (baby enrage) at 15%.
        if (me->GetHealthPercent() < 15 && !(Event_State & STATE_ENRAGED))
        {
            me->MonsterTextEmote("Dark Reaver of Karazhan becomes angered!", nullptr, true);

            DoCast(me, SPELL_FURIOUS_ANGER, true);
            Event_State |= STATE_ENRAGED;
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_dark_reaver(Creature *creature)
{
    return new boss_dark_reaverAI(creature);
}

void AddSC_boss_dark_reaver()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "boss_dark_reaver";
    newscript->GetAI = &GetAI_boss_dark_reaver;
    newscript->RegisterSelf();
}
