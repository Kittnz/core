// Ostarius
// Author: Henhouse
#include "scriptPCH.h"

// Enable for development logs to help debug some things.
//#define DEBUG_ON

enum
{
    SPELL_STOMP             = 27993,
    SPELL_EARTHQUAKE        = 19798,

    SPELL_SONIC_BURST       = 23918,
    SPELL_CHAIN_LIGHTNING   = 28293,

    SPELL_ROOT_FOREVER      = 31366,
    SPELL_TELEPORT_VISUAL   = 26638,

    MOB_ULDUM_CONSTRUCT     = 80938,
    MOB_DEFENSE_SENTRY      = 80939,

    GOB_DEFENSE_PORTAL      = 3000270,
};

enum PhaseStates
{
    STATE_PHASE_1           = 1,
    STATE_PHASE_2           = 2,
    STATE_ENRAGED           = 4,
};

enum Events
{
    EVENT_PHASE_1_DELAY = 1,
    EVENT_PHASE_2_DELAY,
};

const double portalLocs[4][4] = {
    {-9613.08f, -2828.02f, 11.2f, 1.145f},
    {-9617.7f, -2743.983f, 15.3f, 5.265f},
    {-9572.8427f, -2840.13f, 10.62f, 4.65f},
    {-9581.63f, -2728.22f, 13.02f, 1.7f},
};

const double sentryLocs[4][4] = {
    {-9592.858f, -2832.802f, 57.5f, 1.386f},
    {-9552.5566f, -2836.38f, 56.73f, 1.84f},
    {-9632.44f, -2755.29f, 58.67f, 5.76f},
    {-9602.155f, -2734.95f, 59.555f, 5.265f},
};

constexpr auto AGGRO_TEXT_1 = "THREAT DETECTED. INITIATING DEFENSE PROTOCOLS.";
constexpr auto AGGRO_TEXT_2 = "DEFENSE SYSTEMS COMING ONLINE.";

constexpr auto RESET_TEXT_1 = "THREATS NEUTRALIZED. DEFENSE PROTOCOLS RESET.";
constexpr auto RESET_TEXT_2 = "THREAT SCAN RESULT: ZERO. DEFENSE PROTOCOLS: DEACTIVATED.";

constexpr auto DEATH_TEXT_1 = "UNEXPECTED... shut...down.";
constexpr auto DEATH_TEXT_2 = "DEFENSE... failure.";

std::vector<Unit*> spawnedConstructs;
std::vector<GameObject*> portals;

// Attempts to find nearby enemy player that is not the current aggro of the boss.
Player* GetRandomNearbyEnemyPlayer(Unit* self, float dist, uint8 attempt = 0)
{
    attempt++;
    if (attempt > 10)
        return nullptr;

    Unit* random = self->SelectRandomUnfriendlyTarget(nullptr, dist);
    if (!random)
        return nullptr;

#ifdef DEBUG_ON
    sLog.outString("Selected %s, is player: %u", random->GetName(), random->IsPlayer());
#endif

    // Recurse until we select a player (missing MaNGOS func to do this...)
    if (!random->IsPlayer())
        return GetRandomNearbyEnemyPlayer(self, dist, attempt);

    return random->ToPlayer();
}

struct boss_ostariusAI : public ScriptedAI
{
    boss_ostariusAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    EventMap m_events;

    float originalCombatReach;
    float homeXPosition;

    uint8 CurrentPhase;
    uint8 PhaseState;
    uint8 LastHealthPercentage;

    uint32 PortalCheck_Timer;
    uint32 SetFlags_Timer;
    uint32 SonicBurst_Timer;
    uint32 ChainLightning_Timer;

    void SetDefaults()
    {
        m_events.Reset();

        originalCombatReach = 3; // default value for model

        PhaseState = 0;
        CurrentPhase = 0;

        LastHealthPercentage = 100;

        PortalCheck_Timer = 30000;
        SetFlags_Timer = 1000;
        SonicBurst_Timer = 10000;
        ChainLightning_Timer = 15000;

        // Make ranges larger so that casters can shoot from farther away.
        me->SetFloatValue(UNIT_FIELD_COMBATREACH, originalCombatReach * me->GetObjectScale() * 6);
        me->ForceValuesUpdateAtIndex(UNIT_FIELD_COMBATREACH);

        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED | UNIT_FLAG_DISABLE_MOVE);
        me->ForceValuesUpdateAtIndex(UNIT_FIELD_FLAGS);

        me->AddAura(SPELL_ROOT_FOREVER); // core support for NPC rooting broken?
        me->setAttackTimer(BASE_ATTACK, 1 * DAY); // never auto initially

        // Immune to all physical damage in phase 1 (because behind door, but hitbox is HUGE).
        me->ApplySpellImmune(0, IMMUNITY_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, true);

        float x, y, z, o;
        me->GetHomePosition(x, y, z, o);
        homeXPosition = x;
    }

    void Reset()
    {
        SetDefaults();

        DespawnSummons();

        me->MonsterYell(urand(0, 1) ? RESET_TEXT_1 : RESET_TEXT_2);

        if (CurrentPhase >= 2)
        {
            float x, y, z, o;
            me->GetHomePosition(x, y, z, o);
            me->TeleportPositionRelocation(x, y, z, o);
            me->NearTeleportTo(x, y, z, o);
            me->SetFacingTo(o);

            DoCast(me, SPELL_TELEPORT_VISUAL, true);
        }
    }

    void JustReachedHome()
    {
        float x, y, z, o;
        me->GetHomePosition(x, y, z, o);
        homeXPosition = x;
    }

    void Aggro(Unit *who)
    {
        m_creature->MonsterYell(urand(0, 1) ? AGGRO_TEXT_1 : AGGRO_TEXT_2);

        m_events.ScheduleEvent(EVENT_PHASE_1_DELAY, Seconds(3));
    }

    void DespawnSummons()
    {
        for (auto u : spawnedConstructs)
            if (u)
                u->DeleteLater();

        for (auto g : portals)
            if (g)
                g->DeleteLater();
    }

    void KilledUnit(Unit* victim)
    {
        if (victim->GetTypeId() != TYPEID_PLAYER)
            return;

        if (urand(0, 1)) // don't spam on wipe
        {
            uint8 unitsLeft = me->getThreatManager().getThreatList().size();
            if (unitsLeft)
                me->PMonsterYell("THREAT ELIMINATED. %u REMAINING.", unitsLeft);
        }
    }

    void JustDied(Unit* /*pKiller*/)
    {
        DespawnSummons();

        m_creature->MonsterYell(urand(0, 1) ? DEATH_TEXT_1 : DEATH_TEXT_2);

        uint32 m_respawn_delay_Timer = 3 * DAY;
        m_creature->SetRespawnDelay(m_respawn_delay_Timer);
        m_creature->SetRespawnTime(m_respawn_delay_Timer);
        m_creature->SaveRespawnTime();
    }

    void DamageTaken(Unit* /*done_by*/, uint32& damage) {}

    void MakeNormal()
    {
        me->SetFloatValue(UNIT_FIELD_COMBATREACH, originalCombatReach);
        me->ForceValuesUpdateAtIndex(UNIT_FIELD_COMBATREACH);

        me->RemoveAurasDueToSpell(SPELL_ROOT_FOREVER);

        me->ApplySpellImmune(0, IMMUNITY_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, false);

        me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED | UNIT_FLAG_DISABLE_MOVE);
        me->ForceValuesUpdateAtIndex(UNIT_FIELD_FLAGS);
    }

    void UpdateAI(const uint32 diff)
    {
        m_events.Update(diff);

        // Anti-leash protection
        if (me->GetPositionX() > (homeXPosition + 150))
            EnterEvadeMode();

        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        // Timer events
        while (uint32 eventId = m_events.ExecuteEvent())
        {
            switch (eventId)
            {
            case EVENT_PHASE_1_DELAY:
                CurrentPhase = 1;
                break;
            case EVENT_PHASE_2_DELAY:
                // Teleport in, remove physical immunity, reset combat reach, unroot, restore swing timer.
                DoCast(me, SPELL_TELEPORT_VISUAL, true);
                me->NearTeleportTo(-9615.06f, -2782.88f, 7.83f, 0.0f);

                MakeNormal();

                me->setAttackTimer(BASE_ATTACK, 2000);
                me->SetInCombatWith(me->getVictim());

                break;
            }
        }

        if (CurrentPhase == 1 && !(PhaseState & STATE_PHASE_1))
        {
            // Spawn portals so sentries enter battlefield.
            SpawnPortals();

            me->MonsterYell("SENTRY TELEPORTATION VECTOR: ESTABLISHED.");

            // Spawn sentry casters
            SummonConstructs();

            PhaseState |= STATE_PHASE_1;
        }

        if (me->GetHealthPercent() < 40 && !(PhaseState & STATE_PHASE_2))
        {
            DespawnSummons();

            me->MonsterYell("DEFAULT DEFENSE PARAMETERS PROVE INADEQUATE. COMMENCING MANUAL OVERRIDE.");
            m_events.ScheduleEvent(EVENT_PHASE_2_DELAY, Seconds(2));

            CurrentPhase = 2;
            PhaseState |= STATE_PHASE_2;
        }

        if (CurrentPhase == 1)
        {
            // Check to occasionally reopen portals.
            if (PortalCheck_Timer < diff)
            {
#ifdef DEBUG_ON
                sLog.outString("portal vector size: %u", portals.size());
#endif

                // Trigger respawn of missing portal if one or more have been destroyed.
                if (portals.size() < (sizeof(portalLocs) / sizeof(portalLocs[0])))
                {
                    me->MonsterYell("PORTAL GRID: RE-ESTABLISHED.");
                    SpawnPortals();
                }

                PortalCheck_Timer = 30000;
            }
            else
                PortalCheck_Timer -= diff;
        }

        if (CurrentPhase < 2)
            return;

        if (SetFlags_Timer < diff)
        {
            // But why?! Seems to be some client bug or server bug where the updates in this function
            // do not always fully register with the client, causing the boss to skip around like he's
            // teleporting instead of walk normally. My guess is something with the packet batching,
            // but really, who knows. This will just keep reapplying the flags we want over and over
            // in the hopes to keep everyone's clients aware that he can walk.
            MakeNormal();
            SetFlags_Timer = 1000;
        }
        else
            SetFlags_Timer -= diff;

        // Stomp and Earthquake every 10% HP loss.
        if (LastHealthPercentage - me->GetHealthPercent() >= 10)
        {
            if (DoCastSpellIfCan(me->getVictim(), SPELL_STOMP) == CAST_OK)
            {
                DoCast(me, SPELL_EARTHQUAKE, true);
                LastHealthPercentage = me->GetHealthPercent();
            }
        }

        // Sonic Burst
        if (SonicBurst_Timer < diff)
        {
            if (DoCastSpellIfCan(me, SPELL_SONIC_BURST) == CAST_OK)
                SonicBurst_Timer = urand(25000, 53000);
        }
        else
            SonicBurst_Timer -= diff;
        
        // Chain Lighting a far away target, but within their casting range.
        if (ChainLightning_Timer < diff)
        {
            // WTB built-in functions for this :sob:. MaNGOS is lacking them... Messy, but oh well.
            for (uint8 i = 0; i < 20; ++i)
            {
                if (Player* target = GetRandomNearbyEnemyPlayer(me, 30))
                {
                    // Target must be more than 15yrds away (we ideally want to target a caster).
                    if (target->GetDistance2d(me) < 15.0f)
                        continue;

                    DoCast(target, SPELL_CHAIN_LIGHTNING, true);

                    break;
                }
            }

            // Reset timer even if our 20-attempt search fails.
            // Static so players can learn to avoid.
            ChainLightning_Timer = 15000;
        }
        else
            ChainLightning_Timer -= diff;

        // Re-activate all defenses at 15%
        if (me->GetHealthPercent() < 15 && !(PhaseState & STATE_ENRAGED))
        {
            me->MonsterTextEmote("Ostarius reactivates all defenses out of desperation!", nullptr, true);

            SummonConstructs();
            SpawnPortals();

            PhaseState |= STATE_ENRAGED;
        }

        DoMeleeAttackIfReady();
    }

    void SpawnPortals()
    {
        for (uint8 i = 0; i < (sizeof(portalLocs) / sizeof(portalLocs[0])); ++i)
        {
            // Check if portal is currently spawned (cheap way, but easy), skip if it is.
            if (portals.size() && IsPortalAlreadySpawned(i))
                continue;

            GameObject* portal = me->SummonGameObject(GOB_DEFENSE_PORTAL,
                portalLocs[i][0],
                portalLocs[i][1],
                portalLocs[i][2],
                portalLocs[i][3]
            );
            portals.push_back(portal);

            // Makes usable.
            portal->SetActiveObjectState(true);
        }
    }

    bool IsPortalAlreadySpawned(uint8 index)
    {
        for (auto portal : portals)
            if (portal->GetDistanceSqr(
                portalLocs[index][0],
                portalLocs[index][1],
                portalLocs[index][2]
            ) < 0.5f) // Never exactly on the same spot apparently?
                return true;

        return false;
    }

    void SummonConstructs()
    {
        for (uint8 i = 0; i < (sizeof(sentryLocs) / sizeof(sentryLocs[0])); ++i)
        {
            Creature* sentry = me->SummonCreature(MOB_DEFENSE_SENTRY,
                sentryLocs[i][0],
                sentryLocs[i][1],
                sentryLocs[i][2],
                sentryLocs[i][3],
                TEMPSUMMON_MANUAL_DESPAWN
            );
            spawnedConstructs.push_back(sentry);
        }
    }
};

enum SentrySpells
{
    SPELL_BLIZZARD          = 10187,
    SPELL_RAIN_OF_FIRE      = 24669,
};

struct mob_uldum_sentryAI : public ScriptedAI
{
    mob_uldum_sentryAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 AoE_Timer;

    void SetDefaults()
    {
        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);

        // Needed so our channeled spells have no issues casting.
        me->SetFloatValue(UNIT_FIELD_COMBATREACH, me->GetCombatReach() * 20);
        me->SetFloatValue(UNIT_FIELD_BOUNDINGRADIUS, me->GetObjectBoundingRadius() * 20);

        me->AddAura(SPELL_ROOT_FOREVER); // core support for NPC rooting broken?
        DoCast(me, SPELL_TELEPORT_VISUAL);

        AoE_Timer = urand(0, 8000);
    }

    void Reset()
    {
        SetDefaults();
    }

    void JustSpawned()
    {
        Reset();
    }

    void KilledUnit(Unit* victim) {}

    void UpdateAI(const uint32 diff)
    {
        if (AoE_Timer < diff)
        {
            Unit* randomTarget = GetRandomNearbyEnemyPlayer(me, 150.0f);
            if (!randomTarget)
                return;

            if (DoCastSpellIfCan(randomTarget, urand(0, 1) ? SPELL_BLIZZARD : SPELL_RAIN_OF_FIRE) == CAST_OK)
                AoE_Timer = urand(15500, 25000);
        }
        else
            AoE_Timer -= diff;
    }
};

bool GOOpen_go_uldum_portal(Player* pPlayer, GameObject* pGo)
{
    pGo->DeleteLater();

    // Find and delete self from portal vector.
    std::vector<GameObject*>::const_iterator it = std::find(portals.begin(), portals.end(), pGo);
    if (it != portals.end())
        portals.erase(it);

    return true;
}

struct go_uldum_portalAI : public GameObjectAI
{
    go_uldum_portalAI(GameObject* object) : GameObjectAI(object)
    {
        Reset();
    }

    uint32 Summon_Timer;

    void Reset()
    {
        Summon_Timer = 2500; // for portal to render
    }

    void UpdateAI(const uint32 diff)
    {
        if (Summon_Timer < diff)
        {
            Creature* spawn = me->SummonCreature(
                MOB_ULDUM_CONSTRUCT,
                me->GetPositionX(),
                me->GetPositionY(),
                me->GetPositionZ(),
                me->GetOrientation(),
                TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN,
                0
            );

            Player* randomPlayer = GetRandomNearbyEnemyPlayer(spawn, 150.0f);
            if (!randomPlayer)
            {
                // Hopefully we don't get here, but something must be wrong... so don't FLOOD
                // server with queries, add small delay.
                Summon_Timer = 200;
                spawn->DeleteLater();
                return;
            }

            spawn->SetInCombatWith(randomPlayer);
            spawn->GetMotionMaster()->MoveChase(randomPlayer);

            Summon_Timer = urand(8000, 10000);
        }
        else
            Summon_Timer -= diff;
    }
};

CreatureAI* GetAI_boss_ostarius(Creature *creature)
{
    return new boss_ostariusAI(creature);
}

CreatureAI* GetAI_mob_uldum_sentry(Creature* creature)
{
    return new mob_uldum_sentryAI(creature);
}

GameObjectAI* GetAI_go_uldum_portal(GameObject* gameobject)
{
    return new go_uldum_portalAI(gameobject);
}

void AddSC_boss_ostarius()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "boss_ostarius";
    newscript->GetAI = &GetAI_boss_ostarius;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "mob_uldum_sentry";
    newscript->GetAI = &GetAI_mob_uldum_sentry;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_uldum_portal";
    newscript->GOGetAI = &GetAI_go_uldum_portal;
    newscript->GOOpen = &GOOpen_go_uldum_portal;
    newscript->RegisterSelf();
}
