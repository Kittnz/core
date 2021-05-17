// Dark Reaver of Karazhan
// Author: Henhouse
#include "scriptPCH.h"

enum
{
    SPELL_MOUNT             = 46224,
    SPELL_CLEAVE            = 20684,
    SPELL_STRIKE            = 26613,
    SPELL_FURIOUS_ANGER     = 16791,
    SPELL_NIMBLE_REFLEXES   = 6264,
    SPELL_PIERCE_ARMOR      = 6016,
    SPELL_DETERRENCE        = 19263,

    SPELL_GHOST_VISUAL      = 22650,
    SPELL_TWISTING_NETHER   = 23700,

    MOB_FORLORN_SPIRIT      = 80937,
};

enum EventStates
{
    STATE_ENRAGED   = 1,
};

// I can't do math so this will suffice.
const int8 quikmafs[4][2] = { {5,0},{-5,0},{0,5},{0,-5} };

constexpr auto AGGRO_TEXT_1 = "Mortals shall not defile these lands!";
constexpr auto AGGRO_TEXT_2 = "You desecrate the Master's lands with your filthy footsteps!";

constexpr auto SUMMON_TEXT_1 = "Rise, spirits. Defend the Master's lands!";
constexpr auto SUMMON_TEXT_2 = "Spirits, rise, and drive back this rabble!";

constexpr auto DEATH_TEXT_1 = "Master, I am sorry... I have failed...";
constexpr auto DEATH_TEXT_2 = "The Master... is not... well...";

constexpr auto LEASH_TEXT_1 = "Cowards! I will hunt you if you ever return!";
constexpr auto LEASH_TEXT_2 = "Leave and never again enter these lands!";


struct boss_dark_reaverAI : public ScriptedAI
{
    boss_dark_reaverAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 Cleave_Timer;
    uint32 Summon_Announce_Timer;
    uint32 Summon_Timer;
    uint32 Reflex_Timer;

    time_t Last_Pierce_Time;
    uint32 RepeatingSummonTime;

    uint8 Event_State;
    uint8 LastHealthPercentage;
    uint32 Biggest_Hit;

    void SetDefaults()
    {
        me->RemoveAurasDueToSpell(SPELL_FURIOUS_ANGER);
        me->RemoveAurasDueToSpell(SPELL_DETERRENCE);

        DoCast(me, SPELL_MOUNT, true);

        Cleave_Timer = 12000;
        Summon_Timer = 20000;
        Reflex_Timer = 30000;
        Last_Pierce_Time = 0;
        RepeatingSummonTime = 25000;
        Summon_Announce_Timer = RepeatingSummonTime - 1500;

        Event_State = 0;
        LastHealthPercentage = 100;
    }

    void Aggro(Unit *who)
    {
        m_creature->MonsterYell(urand(0, 1) ? AGGRO_TEXT_1 : AGGRO_TEXT_2);

        me->RemoveAurasDueToSpell(SPELL_MOUNT);
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
        DoCast(me, SPELL_MOUNT);
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

        uint32 m_respawn_delay_Timer = urand(48 * HOUR, 64 * HOUR);
        m_creature->SetRespawnDelay(m_respawn_delay_Timer);
        m_creature->SetRespawnTime(m_respawn_delay_Timer);
        m_creature->SaveRespawnTime();
    }

    void DamageTaken(Unit* /*done_by*/, uint32& damage)
    {
        if (damage < 300 || damage < Biggest_Hit)
            return;

        // Don't allow to repeat within a 10 second period.
        if (difftime(time(NULL), Last_Pierce_Time) >= 10)
        {
            DoCast(me->getVictim(), SPELL_PIERCE_ARMOR, true);
            Last_Pierce_Time = time(NULL);
            Biggest_Hit = damage;
        }
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
                Cleave_Timer = urand(14000, 20000);
        }
        else
            Cleave_Timer -= diff;

        // Nimble Reflexes
        if (Reflex_Timer < diff)
        {
            if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_NIMBLE_REFLEXES) == CAST_OK)
                Reflex_Timer = 30000;
        }
        else
            Reflex_Timer -= diff;

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
            Summon_Announce_Timer = RepeatingSummonTime - 1500;
        }
        else
            Summon_Announce_Timer -= diff;

        // Summon Forlorn Spirit add (skeleton)
        if (Summon_Timer < diff)
        {
            // Pick a random, non-tank target within 25yds. If none, default to tank.
            Unit* randomTarget = GetRandomNearbyEnemyPlayer(me);
            if (!randomTarget)
                randomTarget = me->getVictim();

            // Random 50/50 the summons will be on boss or a random player;
            float x, y, z, o;
            if (urand(0, 1)) // boss
            {
                x = me->GetPositionX();
                y = me->GetPositionY();
                z = me->GetPositionZ();
                o = me->GetOrientation();
            }
            else // player
            {
                x = randomTarget->GetPositionX();
                y = randomTarget->GetPositionY();
                z = randomTarget->GetPositionZ();
                o = randomTarget->GetOrientation();
            }

            for (uint8 i = 0; i < 4; ++i)
            {
                Creature* spawn = me->SummonCreature(MOB_FORLORN_SPIRIT,
                    x + quikmafs[i][0],
                    y + quikmafs[i][1],
                    z,
                    o,
                    TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN,
                    5000 // OOC Despawn time
                );

                spawn->AddAura(SPELL_GHOST_VISUAL);
                spawn->CastSpell(spawn, SPELL_TWISTING_NETHER, true); // for visual

                // Pass boss threat list, but tiny amount to simply know all targets.
                for (auto t : me->getThreatManager().getThreatList())
                {
                    if (!t || !t->isOnline())
                        continue;

                    float threatAmount = t->getSourceUnit() == randomTarget ? 5.0f : 0.01f;
                    spawn->getThreatManager().addThreatDirectly(t->getTarget(), threatAmount);
                }

                // Set it combat with random target.
                spawn->SetInCombatWith(randomTarget);
                spawn->Attack(randomTarget, true);
                spawn->GetMotionMaster()->MoveChase(randomTarget);
            }

            Summon_Timer = RepeatingSummonTime;
        }
        else
            Summon_Timer -= diff;

        // Furious Anger (baby enrage) at 15%.
        if (me->GetHealthPercent() < 15 && !(Event_State & STATE_ENRAGED))
        {
            me->MonsterTextEmote("$n becomes angered!", me, true);

            DoCast(me, SPELL_FURIOUS_ANGER, true);
            DoCast(me, SPELL_DETERRENCE, true);
            Event_State |= STATE_ENRAGED;
        }

        DoMeleeAttackIfReady();
    }

    // Attempts to find nearby enemy player that is not the current aggro of the boss.
    Unit* GetRandomNearbyEnemyPlayer(Unit* self, uint8 attempt = 0)
    {
        attempt++;
        if (attempt > 5)
            return nullptr;

        Unit* random = self->SelectRandomUnfriendlyTarget(me->getVictim(), 35.0f);
        if (!random)
            return nullptr;

        // Recurse until we select a player (missing MaNGOS func to do this...)
        if (!random->IsPlayer() || !self->canAttack(random))
            return GetRandomNearbyEnemyPlayer(self, attempt);

        return random;
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
