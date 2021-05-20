// Dark Reaver of Karazhan
// Author: Henhouse
#include "scriptPCH.h"

enum
{
    // Dark Reaver spells
    SPELL_MOUNT                      = 46224,
    SPELL_CLEAVE                     = 20684,
    SPELL_STRIKE                     = 26613,
    SPELL_FURIOUS_ANGER              = 16791,
    SPELL_NIMBLE_REFLEXES            = 6264,
    SPELL_PIERCE_ARMOR               = 6016,
    SPELL_DETERRENCE                 = 19263,

    SPELL_GHOST_VISUAL               = 22650,
    SPELL_TWISTING_NETHER            = 23700,

    MOB_FORLORN_SPIRIT               = 80937,
    MOB_LURKING_SHADOW               = 81266,

    DEADWIND_PASS_ZONE               = 41
};

enum EventStates
{
    STATE_ENRAGED   = 1
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
    uint32 Reflex_Timer;
    uint32 SummonLurkingShadow_Timer;

    time_t Last_Pierce_Time;
    uint32 SkeletonSummonTime;

    uint8 Event_State;
    uint8 LastHealthPercentage;
    uint32 Biggest_Hit;

    void SetDefaults()
    {
        me->RemoveAurasDueToSpell(SPELL_FURIOUS_ANGER);
        me->RemoveAurasDueToSpell(SPELL_DETERRENCE);

        DoCast(me, SPELL_MOUNT, true);

        Cleave_Timer = 10000;
        SummonLurkingShadow_Timer = 25000;
        Reflex_Timer = 26500;
        Last_Pierce_Time = 0;
        SkeletonSummonTime = 22000;
        Summon_Announce_Timer = 20000;

        Event_State = 0;
        LastHealthPercentage = 100;
    }

    void Aggro(Unit *who)
    {
        m_creature->MonsterYell(urand(0, 1) ? AGGRO_TEXT_1 : AGGRO_TEXT_2);
        if (who->IsPlayer())
            SetGroupFFAPvP(who->ToPlayer());

        me->RemoveAurasDueToSpell(SPELL_MOUNT);
    }

    void Reset()
    {
        SetDefaults();
        // Make sure we despawn all Lurking Shadows on Reset.
        std::list<Creature *> lCreature;
        m_creature->GetCreatureListWithEntryInGrid(lCreature, MOB_LURKING_SHADOW, 200.0f);
        for (std::list<Creature *>::iterator itr = lCreature.begin(); itr != lCreature.end(); ++itr)
            (*itr)->ForcedDespawn();
    }

    void JustRespawned()
    {
        SetDefaults();
    }

    void JustReachedHome()
    {
        if (!m_creature->isInCombat())
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
        if (m_creature->GetZoneId() != DEADWIND_PASS_ZONE)
        {
            m_creature->MonsterYell(urand(0, 1) ? LEASH_TEXT_1 : LEASH_TEXT_2);
            EnterEvadeMode();
        }

        // Cleave
        if (Cleave_Timer < diff)
        {
            if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_CLEAVE) == CAST_OK)
                Cleave_Timer = urand(10000, 16000);
        }
        else
            Cleave_Timer -= diff;

        // Nimble Reflexes
        if (Reflex_Timer < diff)
        {
            if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_NIMBLE_REFLEXES) == CAST_OK)
                Reflex_Timer = urand(26500, 30000);
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
            Summon_Announce_Timer = 20000;
        }
        else
            Summon_Announce_Timer -= diff;

        // Summon Forlorn Spirit add (skeleton)
        if (SkeletonSummonTime < diff)
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
                if (Creature* spawn = me->SummonCreature(MOB_FORLORN_SPIRIT,
                    x + quikmafs[i][0],
                    y + quikmafs[i][1],
                    z,
                    o,
                    TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT,
                    5000 // OOC Despawn time
                ))
                {

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
                    spawn->AI()->AttackStart(randomTarget);
                }
            }

            SkeletonSummonTime = 22000;
        }
        else
            SkeletonSummonTime -= diff;

        // Summon Lurking Shadow
        if (SummonLurkingShadow_Timer < diff)
        {
            // Pick a random, non-tank target within 25yds. If none, default to tank.
            Unit* randomTarget = GetRandomNearbyEnemyPlayer(me);
            if (!randomTarget)
                randomTarget = me->getVictim();

            if (Creature* lurkingShadow = me->SummonCreature(MOB_LURKING_SHADOW,
                                     randomTarget->GetPositionX(),
                                     randomTarget->GetPositionY(),
                                     randomTarget->GetPositionZ(),
                                     randomTarget->GetAngle(randomTarget->GetPositionX(), randomTarget->GetPositionY()),
                                     TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT,
                                     5000 // OOC Despawn time
            ))
            {
                lurkingShadow->getThreatManager().addThreatDirectly(randomTarget, 10000.0f);
                lurkingShadow->SetInCombatWith(randomTarget);
                lurkingShadow->AI()->AttackStart(randomTarget);
            }

            SummonLurkingShadow_Timer = urand(SkeletonSummonTime + 2000, SkeletonSummonTime + 10000);
        }
        else
            SummonLurkingShadow_Timer -= diff;

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

    void SetPvPDesired(Player* pPlayer)
    {
        if (!pPlayer->HasFlag(PLAYER_FLAGS, PLAYER_FLAGS_PVP_DESIRED))
            pPlayer->SetFlag(PLAYER_FLAGS, PLAYER_FLAGS_PVP_DESIRED);
        pPlayer->UpdatePvP(true);
    }

    void SetGroupFFAPvP(Player* pPlayer)
    {
        Group* pGroup = pPlayer->GetGroup();
        if (!pGroup)
        {
            SetPvPDesired(pPlayer);
            return;
        }

        for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
        {
            if (Player *pMember = itr->getSource())
            {
                if (pMember->GetZoneId() == DEADWIND_PASS_ZONE)
                {
                    SetPvPDesired(pMember);
                }
            }
        }
    }
};

CreatureAI* GetAI_boss_dark_reaver(Creature *creature)
{
    return new boss_dark_reaverAI(creature);
}

struct lurking_shadowAI : public ScriptedAI
{
    lurking_shadowAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    int8 currentClass;

    void Reset()
    {
        currentClass = -1;
    }

    void SetClassIfNeeded(Unit* pWho)
    {
        if (currentClass != -1 || !pWho->IsPlayer())
            return;

        m_creature->MonsterTextEmote("A $c shadow appears next to $N...", pWho);
        // Make the creature use the same weapons as the aggroer.
        if (Item* mainItem = pWho->ToPlayer()->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_MAINHAND))
            m_creature->SetVirtualItem(VIRTUAL_ITEM_SLOT_0, mainItem->GetEntry());
        if (Item* offHand = pWho->ToPlayer()->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_OFFHAND))
            m_creature->SetVirtualItem(VIRTUAL_ITEM_SLOT_1, offHand->GetEntry());
        currentClass = pWho->ToPlayer()->getClass();
    }

    void Aggro(Unit* pWho)
    {
        SetClassIfNeeded(pWho);
    }

    void DamageTaken(Unit* source, uint32& damage)
    {
        // Only allow damage from players being the same class as the one who aggroed the mob.
        if (!source->IsPlayer() || source->ToPlayer()->getClass() != currentClass && currentClass != -1)
            damage = 0;
    }

    void DamageDeal(Unit* source, uint32& damage)
    {
        // Just in case class is not set on Aggro
        SetClassIfNeeded(source);
    }

    void UpdateAI(const uint32 diff)
    {
        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_lurking_shadow(Creature *creature)
{
    return new lurking_shadowAI(creature);
}

void AddSC_boss_dark_reaver()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "boss_dark_reaver";
    newscript->GetAI = &GetAI_boss_dark_reaver;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "lurking_shadow";
    newscript->GetAI = &GetAI_lurking_shadow;
    newscript->RegisterSelf();
}
