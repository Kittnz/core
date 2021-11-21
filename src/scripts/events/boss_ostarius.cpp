
// Boss Ostarius
// Author: Henhouse


#include "scriptPCH.h"
//#define DEBUG_ON

enum PhaseStates
{
    STATE_PHASE_1 = 1,
    STATE_PHASE_2 = 2,
    STATE_ENRAGED = 4
};

enum Events
{
    EVENT_PHASE_1_DELAY = 1,
    EVENT_PHASE_2_DELAY = 2
};

constexpr float portalLocs[][4] =
{
    {-9613.080f, -2828.020f, 11.20f, 1.145f},
    {-9617.700f, -2743.983f, 15.30f, 5.265f},
    {-9572.843f, -2840.130f, 10.62f, 4.650f},
    {-9581.630f, -2728.220f, 13.02f, 1.700f}
};

constexpr float sentryLocs[][4] =
{
    {-9592.858f, -2832.80f, 57.50f, 1.386f},
    {-9552.556f, -2836.38f, 56.73f, 1.840f},
    {-9632.440f, -2755.29f, 58.67f, 5.760f},
    {-9602.155f, -2734.95f, 59.55f, 5.265f}
};

constexpr auto AGGRO_TEXT_1 = "THREAT DETECTED. INITIATING DEFENSE PROTOCOLS.";
constexpr auto AGGRO_TEXT_2 = "DEFENSE SYSTEMS COMING ONLINE.";
constexpr auto RESET_TEXT_1 = "THREATS NEUTRALIZED. DEFENSE PROTOCOLS RESET.";
constexpr auto RESET_TEXT_2 = "THREAT SCAN RESULT: ZERO. DEFENSE PROTOCOLS: DEACTIVATED.";
constexpr auto DEATH_TEXT_1 = "UNEXPECTED... shut...down.";
constexpr auto DEATH_TEXT_2 = "DEFENSE... failure.";

constexpr uint32 SPELL_STOMP = 27993;
constexpr uint32 SPELL_EARTHQUAKE = 19798;
constexpr uint32 SPELL_SONIC_BURST = 23918;
constexpr uint32 SPELL_CHAIN_LIGHTNING = 28293;
constexpr uint32 SPELL_ROOT_FOREVER = 31366;
constexpr uint32 SPELL_TELEPORT_VISUAL = 26638;

constexpr uint32 MOB_ULDUM_CONSTRUCT = 80938;
constexpr uint32 MOB_DEFENSE_SENTRY = 80939;

constexpr uint32 GOB_DEFENSE_PORTAL = 3000270;

std::vector<Unit*> spawnedConstructs;
std::vector<GameObject*> portals;

// Attempts to find nearby enemy player that is not the current aggro of the boss.
Player* GetRandomNearbyEnemyPlayer(Unit* self, const float& dist, std::size_t attempt = 0)
{
    ++attempt;
    if (attempt > 10)
    {
        return nullptr;
    }

    Unit* random = self->SelectRandomUnfriendlyTarget(nullptr, dist);
    if (!random)
    {
        return nullptr;
    }

#ifdef DEBUG_ON
    sLog.outString("Selected %s, is player: %u", random->GetName(), random->IsPlayer());
#endif

    // Recurse until we select a player (missing MaNGOS func to do this...)
    if (!random->IsPlayer())
    {
        return GetRandomNearbyEnemyPlayer(self, dist, attempt);
    }

    return random->ToPlayer();
}

SpellEntry* MakeCustomSpellEntry(uint32 spellId)
{
    const auto entry = sSpellMgr.GetSpellEntry(spellId);
    if (entry)
    {
        return new SpellEntry(*entry);
    }

    return nullptr;
}

struct boss_ostariusAI : public ScriptedAI
{
    explicit boss_ostariusAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    EventMap m_events;

    float fOriginalCombatReach;
    float fHomeXPosition;
    float fLastHealthPercentage;

    uint8 uiCurrentPhase;
    uint8 uiPhaseState;

    uint32 uiPortalCheck_Timer;
    uint32 uiSetFlags_Timer;
    uint32 uiSonicBurst_Timer;
    uint32 uiChainLightning_Timer;
    time_t aggroTime;

    void SetDefaults()
    {
        m_events.Reset();

        fOriginalCombatReach = 3; // default value for model

        uiPhaseState = 0;
        uiCurrentPhase = 0;
        aggroTime = time(nullptr);

        fLastHealthPercentage = 100;

        uiPortalCheck_Timer = 30000;
        uiSetFlags_Timer = 1000;
        uiSonicBurst_Timer = 10000;
        uiChainLightning_Timer = 15000;

        // Make ranges larger so that casters can shoot from farther away.
        me->SetFloatValue(UNIT_FIELD_COMBATREACH, fOriginalCombatReach * me->GetObjectScale() * 6);
        me->ForceValuesUpdateAtIndex(UNIT_FIELD_COMBATREACH);

        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED | UNIT_FLAG_DISABLE_MOVE);
        me->ForceValuesUpdateAtIndex(UNIT_FIELD_FLAGS);

        me->AddAura(SPELL_ROOT_FOREVER); // core support for NPC rooting broken?
        me->SetAttackTimer(BASE_ATTACK, 1 * DAY); // never auto initially

        // Immune to all physical damage in phase 1 (because behind door, but hitbox is HUGE).
        me->ApplySpellImmune(0, IMMUNITY_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, true);

        float x, y, z, o;
        me->GetHomePosition(x, y, z, o);
        fHomeXPosition = x;
    }

    void Reset()
    {
        SetDefaults();

        DespawnSummons();

        me->MonsterYell(urand(0, 1) ? RESET_TEXT_1 : RESET_TEXT_2);

        if (uiCurrentPhase >= 2)
        {
            float x, y, z, o;
            me->GetHomePosition(x, y, z, o);
            me->TeleportPositionRelocation(x, y, z, o);
            me->NearTeleportTo(x, y, z, o);
            me->SetFacingTo(o);

            DoCast(me, SPELL_TELEPORT_VISUAL, true);
        }
    }

    void JustReachedHome() override
    {
        float x, y, z, o;
        me->GetHomePosition(x, y, z, o);
        fHomeXPosition = x;
    }

    void Aggro(Unit* who) override
    {
        m_creature->MonsterYell(urand(0, 1) ? AGGRO_TEXT_1 : AGGRO_TEXT_2);
        aggroTime = time(nullptr);

        m_events.ScheduleEvent(Events::EVENT_PHASE_1_DELAY, Seconds(3));
    }

    void DespawnSummons()
    {
        for (const auto& u : spawnedConstructs)
        {
            if (u)
            {
                u->DeleteLater();
            }
        }

        for (const auto& g : portals)
        {
            if (g)
            {
                g->DeleteLater();
            }
        }
    }

    void KilledUnit(Unit* victim) override
    {
        if (victim->GetTypeId() != TYPEID_PLAYER)
        {
            return;
        }

        if (urand(0, 1)) // don't spam on wipe
        {
            const std::size_t unitsLeft = me->GetThreatManager().getThreatList().size();
            if (unitsLeft)
            {
                me->PMonsterYell("THREAT ELIMINATED. %u REMAINING.", unitsLeft);
            }
        }
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        DespawnSummons();

        m_creature->MonsterYell(urand(0, 1) ? DEATH_TEXT_1 : DEATH_TEXT_2);

        uint32 m_respawn_delay_Timer = 3 * DAY;
        m_creature->SetRespawnDelay(m_respawn_delay_Timer);
        m_creature->SetRespawnTime(m_respawn_delay_Timer);
        m_creature->SaveRespawnTime();
    }

    void MakeNormal()
    {
        me->SetFloatValue(UNIT_FIELD_COMBATREACH, fOriginalCombatReach);
        me->ForceValuesUpdateAtIndex(UNIT_FIELD_COMBATREACH);

        me->RemoveAurasDueToSpell(SPELL_ROOT_FOREVER);

        me->ApplySpellImmune(0, IMMUNITY_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, false);

        me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED | UNIT_FLAG_DISABLE_MOVE);
        me->ForceValuesUpdateAtIndex(UNIT_FIELD_FLAGS);
    }

    void UpdateAI(const uint32 diff) override
    {
        m_events.Update(diff);

        // Anti-leash protection
        if (me->GetPositionX() > (fHomeXPosition + 150))
        {
            EnterEvadeMode();
        }

        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
        {
            return;
        }

        // Timer events
        while (uint32 eventId = m_events.ExecuteEvent())
        {
            switch (eventId)
            {
                case Events::EVENT_PHASE_1_DELAY:
                {
                    uiCurrentPhase = 1;
                    break;
                }
                case Events::EVENT_PHASE_2_DELAY:
                {
                    // Teleport in, remove physical immunity, reset combat reach, unroot, restore swing timer.
                    DoCast(me, SPELL_TELEPORT_VISUAL, true);
                    me->NearTeleportTo(-9615.06f, -2782.88f, 7.83f, 0.0f);

                    MakeNormal();

                    me->SetAttackTimer(BASE_ATTACK, 2000);
                    me->SetInCombatWith(me->GetVictim());

                    break;
                }
            }
        }

        if (uiCurrentPhase == 1 && !(uiPhaseState & PhaseStates::STATE_PHASE_1))
        {
            // Spawn portals so sentries enter battlefield.
            SpawnPortals();

            me->MonsterYell("SENTRY TELEPORTATION VECTOR: ESTABLISHED.");

            // Spawn sentry casters
            SummonConstructs();

            uiPhaseState |= PhaseStates::STATE_PHASE_1;
        }

        if (me->GetHealthPercent() < 40.f && !(uiPhaseState & PhaseStates::STATE_PHASE_2))
        {
            DespawnSummons();

            me->MonsterYell("DEFAULT DEFENSE PARAMETERS PROVE INADEQUATE. COMMENCING MANUAL OVERRIDE.");
            m_events.ScheduleEvent(Events::EVENT_PHASE_2_DELAY, Seconds(2));

            uiCurrentPhase = 2;
            uiPhaseState |= PhaseStates::STATE_PHASE_2;
        }

        if (uiCurrentPhase == 1)
        {
            // Check to occasionally reopen portals.
            if (uiPortalCheck_Timer < diff)
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

                uiPortalCheck_Timer = 30000;
            }
            else
            {
                uiPortalCheck_Timer -= diff;
            }
        }

        if (uiCurrentPhase < 2)
        {
            return;
        }

        if (uiSetFlags_Timer < diff)
        {
            // But why?! Seems to be some client bug or server bug where the updates in this function
            // do not always fully register with the client, causing the boss to skip around like he's
            // teleporting instead of walk normally. My guess is something with the packet batching,
            // but really, who knows. This will just keep reapplying the flags we want over and over
            // in the hopes to keep everyone's clients aware that he can walk.
            MakeNormal();
            uiSetFlags_Timer = 1000;
        }
        else
        {
            uiSetFlags_Timer -= diff;
        }

        // Stomp and Earthquake every 10% HP loss.
        if (fLastHealthPercentage - me->GetHealthPercent() > 10.f)
        {
            const auto secondsDiff = time(nullptr) - aggroTime;
            if (DoCastSpellIfCan(me->GetVictim(), SPELL_STOMP) == CAST_OK)
            {
                const float multiplier = 1 + (secondsDiff / 200.f);
                const auto entry = MakeCustomSpellEntry(SPELL_EARTHQUAKE); 
                entry->EffectBasePoints[EFFECT_0] *= multiplier;
                me->CastCustomSpell(me, entry, true);
                fLastHealthPercentage = me->GetHealthPercent();
            }
        }

        // Sonic Burst
        if (uiSonicBurst_Timer < diff)
        {
            if (DoCastSpellIfCan(me, SPELL_SONIC_BURST) == CAST_OK)
            {
                uiSonicBurst_Timer = urand(25000, 53000);
            }
        }
        else
        {
            uiSonicBurst_Timer -= diff;
        }
        
        // Chain Lighting a far away target, but within their casting range.
        if (uiChainLightning_Timer < diff)
        {
            // WTB built-in functions for this :sob:. MaNGOS is lacking them... Messy, but oh well.
            for (std::size_t i = 0; i < 20; ++i)
            {
                if (Player* target = GetRandomNearbyEnemyPlayer(me, 30))
                {
                    // Target must be more than 15yrds away (we ideally want to target a caster).
                    if (target->GetDistance2d(me) < 15.f)
                    {
                        continue;
                    }

                    uint32 addedValue = 0;

                    if (target->GetPowerType() == POWER_MANA)
                    {
                        addedValue = (target->GetMaxPower(POWER_MANA) - target->GetPower(POWER_MANA)) / 4;
                    }

                    const auto entry = MakeCustomSpellEntry(SPELL_CHAIN_LIGHTNING);
                    entry->EffectBasePoints[EFFECT_0] += addedValue;
                    me->CastCustomSpell(target, entry, true);
                    //DoCast(target, SPELL_CHAIN_LIGHTNING, true);

                    break;
                }
            }

            // Reset timer even if our 20-attempt search fails.
            // Static so players can learn to avoid.
            uiChainLightning_Timer = 15000;
        }
        else
        {
            uiChainLightning_Timer -= diff;
        }

        // Re-activate all defenses at 15%
        if (me->GetHealthPercent() < 15.f && !(uiPhaseState & PhaseStates::STATE_ENRAGED))
        {
            me->MonsterTextEmote("Ostarius reactivates all defenses out of desperation!", nullptr, true);

            SummonConstructs();
            SpawnPortals();

            uiPhaseState |= PhaseStates::STATE_ENRAGED;
        }

        DoMeleeAttackIfReady();
    }

    void SpawnPortals()
    {
        for (std::size_t i = 0; i < (sizeof(portalLocs) / sizeof(portalLocs[0])); ++i)
        {
            // Check if portal is currently spawned (cheap way, but easy), skip if it is.
            if (portals.size() && IsPortalAlreadySpawned(i))
            {
                continue;
            }

            GameObject* portal = me->SummonGameObject(GOB_DEFENSE_PORTAL, portalLocs[i][0], portalLocs[i][1], portalLocs[i][2], portalLocs[i][3]);

            portals.push_back(portal);

            // Makes usable.
            portal->SetActiveObjectState(true);
        }
    }

    bool IsPortalAlreadySpawned(const std::size_t index)
    {
        std::for_each(portals.begin(), portals.end(), [&](GameObject* portal)
        {
            if (portal->GetDistanceSqr(portalLocs[index][0], portalLocs[index][1], portalLocs[index][2]) < .5f) // Never exactly on the same spot apparently?
            {
                return true;
            }
        });

        return false;
    }

    void SummonConstructs()
    {
        for (std::size_t i = 0; i < (sizeof(sentryLocs) / sizeof(sentryLocs[0])); ++i)
        {
            Creature* sentry = me->SummonCreature(MOB_DEFENSE_SENTRY, sentryLocs[i][0], sentryLocs[i][1], sentryLocs[i][2], sentryLocs[i][3], TEMPSUMMON_MANUAL_DESPAWN);
            spawnedConstructs.push_back(sentry);
        }
    }
};


struct mob_uldum_sentryAI : public ScriptedAI
{
    explicit mob_uldum_sentryAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 AoE_Timer;
    uint32 lastSpell;
    float currentMultiplier;

    static constexpr uint32 SPELL_BLIZZARD = 10187;
    static constexpr uint32 SPELL_RAIN_OF_FIRE = 24669;

    void SetDefaults()
    {
        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);

        // Needed so our channeled spells have no issues casting.
        me->SetFloatValue(UNIT_FIELD_COMBATREACH, me->GetCombatReach() * 20);
        me->SetFloatValue(UNIT_FIELD_BOUNDINGRADIUS, me->GetObjectBoundingRadius() * 20);

        me->AddAura(SPELL_ROOT_FOREVER); // core support for NPC rooting broken?
        DoCast(me, SPELL_TELEPORT_VISUAL);

        lastSpell = 0;
        currentMultiplier = 1.f;
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

    void KilledUnit(Unit* victim) override {}

    void UpdateAI(const uint32 diff) override
    {
        if (AoE_Timer < diff)
        {
            Unit* randomTarget = GetRandomNearbyEnemyPlayer(me, 150.f);
            if (!randomTarget)
            {
                return;
            }

            const uint32 spellId = urand(0, 1) ? SPELL_BLIZZARD : SPELL_RAIN_OF_FIRE;

            if (spellId == lastSpell)
            {
                currentMultiplier += 1.f;
            }
            else
            {
                currentMultiplier = 1.f;
            }

            const auto entry = MakeCustomSpellEntry(spellId);
            entry->EffectBasePoints[EFFECT_0] *= currentMultiplier;
            me->CastCustomSpell(randomTarget, entry);

            lastSpell = spellId;
            AoE_Timer = urand(15500, 25000);
        }
        else
        {
            AoE_Timer -= diff;
        }
    }
};

bool GOOpen_go_uldum_portal(Player* pPlayer, GameObject* pGo)
{
    pGo->DeleteLater();

    // Find and delete self from portal vector.
    std::vector<GameObject*>::const_iterator it = std::find(portals.begin(), portals.end(), pGo);
    if (it != portals.end())
    {
        portals.erase(it);
    }

    return true;
}

struct go_uldum_portalAI : public GameObjectAI
{
    explicit go_uldum_portalAI(GameObject* object) : GameObjectAI(object)
    {
        Reset();
    }

    uint32 Summon_Timer;

    void Reset()
    {
        Summon_Timer = 2500; // for portal to render
    }

    void UpdateAI(const uint32 diff) override
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

            Player* randomPlayer = GetRandomNearbyEnemyPlayer(spawn, 150.f);
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
        {
            Summon_Timer -= diff;
        }
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
