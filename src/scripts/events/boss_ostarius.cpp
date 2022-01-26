// Ostarius
// Author: Henhouse
#include "scriptPCH.h"

// Enable for development logs to help debug some things.
//#define DEBUG_ON

enum
{
    SPELL_SCAN_OF_OSTARIUS = 57000,
    SPELL_MORTALITY_SCAN = 57005,
    SPELL_CONFLAG = 16805,
    SPELL_SANDSTORM = 57002,
    SPELL_TARGET_CHANNEL = 57004,

    SPELL_STOMP = 27993,
    SPELL_EARTHQUAKE = 19798,

    SPELL_SONIC_BURST = 23918,
    SPELL_CHAIN_LIGHTNING = 28293,

    SPELL_ROOT_FOREVER = 31366,
    SPELL_TELEPORT_VISUAL = 26638,

    NPC_PEDESTAL_BUNNY = 80969,
    MOB_ULDUM_CONSTRUCT = 80938,
    MOB_DEFENSE_SENTRY = 80939,

    GOB_PEDESTAL = 142343,
    GOB_DEFENSE_PORTAL = 3000270,
    GOB_DEBILITATING_DEVICE = 3000271,
};

enum PhaseStates
{
    STATE_PHASE_1 = 1,
    STATE_PHASE_2 = 2,
    STATE_PHASE_3 = 4,
    STATE_PHASE_4 = 8,
    STATE_ENRAGED = 16,
};

enum Events
{
    EVENT_INTRO_RP_1 = 1,
    EVENT_INTRO_RP_2,
    EVENT_INTRO_RP_3,
    EVENT_INTRO_RP_4,
    EVENT_INTRO_RP_5,
    EVENT_INTRO_RP_6,
    EVENT_INTRO_RP_7,
    EVENT_INTRO_RP_8,
    EVENT_PHASE_1_DELAY,
    EVENT_PHASE_3_DELAY,
};

// Don't TOUCH these
const float squareX = -9606.21484f;
const float squareY = -2806.25635f;
const float squareZ = 7.838724f;
const float squareDiameter = 4.191733f;

constexpr auto PED_TEXT_1 = "Initiating unlock sequence...";
constexpr auto PED_TEXT_2 = "Plates present, scanning for item validation...";
constexpr auto PED_TEXT_3 = "Plates authentication complete. Unlocking the gates...";
constexpr auto PED_TEXT_4 = "Activating Gate Keeper to greet the guests...";

constexpr auto INTRO_TEXT_1 = "Welcome, honored guests, to the research facility.";
constexpr auto INTRO_TEXT_2 = "Please wait for the initial scanning...";
constexpr auto INTRO_TEXT_3 = "WARNING! Curse of the flesh detected!";
constexpr auto INTRO_TEXT_4 = "Initiating manual gate override... Gate locked successfully.";
constexpr auto INTRO_TEXT_5 = "Activating defensive system for threat elimination.";

constexpr auto PHASE_1_TEXT = "Guardians, awaken and smite these intruders!";
constexpr auto PHASE_2_TEXT = "Fire will burn your corruption!";
constexpr auto PHASE_3_TEXT = "Elusive... Then face the might of the frost!";
constexpr auto PHASE_4_TEXT = "Still you persist, servants of the old ones? Very well.";
constexpr auto ENRAGE_TEXT  = "NO! I will not fail again!";
constexpr auto DEATH_TEXT   = "You will bring your own, undoing... it has already begun...";

constexpr auto PLAYER_DEATH_1 = "So fragile.";
constexpr auto PLAYER_DEATH_2 = "You have failed!";
constexpr auto PLAYER_DEATH_3 = "None shall pass!";
constexpr auto PLAYER_DEATH_4 = "It had to be done.";


enum SoundEntries
{
    SOUND_PED_TEXT_1    = 30279,
    SOUND_PED_TEXT_2    = 30280,
    SOUND_PED_TEXT_3    = 30281,
    SOUND_PED_TEXT_4    = 30282,

    SOUND_INTRO_TEXT_1  = 30285,
    SOUND_INTRO_TEXT_2  = 30286,
    SOUND_INTRO_TEXT_3  = 30291,
    SOUND_INTRO_TEXT_4  = 30287,
    SOUND_INTRO_TEXT_5  = 30288,

    SOUND_PHASE_1       = 30278,
    SOUND_PHASE_2       = 30277,
    SOUND_PHASE_3       = 30276,
    SOUND_PHASE_4       = 30283,
    SOUND_ENRAGE        = 30289,
    SOUND_DEATH         = 30290,

    SOUND_PLAYER_DEATH  = 80284,
};

// Maximum amount of portals or debilitating devices that will open/active at the same time.
constexpr uint8 MAX_OPEN_PORTALS = 20;
constexpr uint8 MAX_SPAWNED_CONSTRUCTS = 50;
constexpr uint8 MAX_ACTIVE_DEVICES = 30;

constexpr float sentryLocs[4][4] =
{
    {-9613.08f, -2828.02f, 10.7f, 1.145f},
    {-9617.7f, -2743.983f, 14.8f, 5.265f},
    {-9572.8427f, -2840.13f, 10.0f, 1.41f},
    {-9581.63f, -2728.22f, 12.5f, 4.91f},
};

std::vector<ObjectGuid> constructSpawns;
std::vector<ObjectGuid> sentrySpawns;
std::vector<ObjectGuid> portals;
std::vector<ObjectGuid> devices;

bool isFrostPhase;

// BroadcastText system is obviously broken. Reads in sound IDs from DB as 0, so we do our own.
void PlaySound(Unit* source, uint32 soundId, bool playToZone = false)
{
    if (playToZone)
    {
        if (Map* pZone = source->GetMap())
            pZone->PlayDirectSoundToMap(soundId);
    }
    else
        source->PlayDirectSound(soundId);
}

Player* GetNearbyEnemyPlayer(Unit* self, const float& dist)
{
    return self->FindNearestHostilePlayer(dist);
}

// Attempts to find randomy nearby enemy player.
Player* GetRandomNearbyEnemyPlayer(Unit* self, const float& dist, uint8 attempt = 0)
{
    ++attempt;
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

void DeleteObject(WorldObject* object, std::vector<ObjectGuid> &list)
{
    // Find and delete self from vector.
    std::vector<ObjectGuid>::const_iterator it = std::find(list.begin(), list.end(), object->GetObjectGuid());
    if (it != list.end())
        list.erase(it);

    object->DeleteLater();
}

struct boss_ostariusAI : public ScriptedAI
{
    explicit boss_ostariusAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    EventMap m_events;

    uint8 CurrentPhase;
    uint8 PhaseState;
    uint8 LastHealthPercentage;
    uint16 numOfPortalsToSpawn;
    uint16 numOfDevicesToSpawn;

    uint32 PortalCheck_Timer;
    uint32 SonicBurst_Timer;
    uint32 ChainLightning_Timer;
    uint32 SpawnPortals_Timer;
    uint32 SpawnDevices_Timer;

    void SetDefaults()
    {
        m_events.Reset();

        PhaseState = 0;
        CurrentPhase = 0;
        isFrostPhase = false;

        numOfPortalsToSpawn = 2;
        numOfDevicesToSpawn = 2;

        LastHealthPercentage = 100;

        PortalCheck_Timer = 30000;
        SonicBurst_Timer = 10000;
        ChainLightning_Timer = 15000;
        SpawnPortals_Timer = 0;
        SpawnDevices_Timer = 0;

        me->SetAttackTimer(BASE_ATTACK, 1 * DAY); // never auto initially

        // Reset to neutral for RP intro.
        me->SetFactionTemplateId(7); // Neutral (Creature)
        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NON_ATTACKABLE_2);
    }

    void Reset()
    {
        SetDefaults();

        DespawnSummons();
    }

    void JustRespawned() override
    {
        JustReachedHome();
        DoCast(me, SPELL_TELEPORT_VISUAL, true);
    }

    void JustReachedHome() override
    {
        Reset();

        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED | UNIT_FLAG_DISABLE_MOVE);
        me->ForceValuesUpdateAtIndex(UNIT_FIELD_FLAGS);

        me->AddAura(SPELL_ROOT_FOREVER); // core support for NPC rooting broken?
    }

    void Aggro(Unit* who) override
    {
#ifdef DEBUG_ON
        // Skip RP intro when debugging.
        m_events.ScheduleEvent(EVENT_INTRO_RP_6, Seconds(0));
#else
        m_events.ScheduleEvent(EVENT_INTRO_RP_1, Seconds(0));
#endif
    }

    void DespawnSummons()
    {
        for (const auto& guid : sentrySpawns)
            if (auto c = me->GetMap()->GetCreature(guid))
                DeleteObject(c, sentrySpawns);

        for (const auto& guid : constructSpawns)
            if (auto c = me->GetMap()->GetCreature(guid))
                DeleteObject(c, constructSpawns);

        for (const auto& guid : portals)
            if (auto g = me->GetMap()->GetGameObject(guid))
                DeleteObject(g, portals);

        for (const auto& guid : devices)
            if (auto g = me->GetMap()->GetGameObject(guid))
                DeleteObject(g, devices);
    }

    void KilledUnit(Unit* victim) override
    {
        if (victim->GetTypeId() != TYPEID_PLAYER)
            return;

        if (urand(0, 1)) // don't spam on wipe
        {
            switch (urand(1, 4))
            {
            case 1:
                me->MonsterSendTextToZone(PLAYER_DEATH_1, CHAT_MSG_MONSTER_YELL);
                break;
            case 2:
                me->MonsterSendTextToZone(PLAYER_DEATH_2, CHAT_MSG_MONSTER_YELL);
                break;
            case 3:
                me->MonsterSendTextToZone(PLAYER_DEATH_3, CHAT_MSG_MONSTER_YELL);
                break;
            case 4:
                me->MonsterSendTextToZone(PLAYER_DEATH_4, CHAT_MSG_MONSTER_YELL);
                break;
            }

            PlaySound(me, SOUND_PLAYER_DEATH);
        }
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        DespawnSummons();

        PlaySound(me, SOUND_DEATH, true);
        me->MonsterSendTextToZone(DEATH_TEXT, CHAT_MSG_MONSTER_YELL);

        // Kill pedestal bunny. Acts as a respawn timer for boss (when can be summoned again).
        if (Creature* bunny = me->FindNearestCreature(NPC_PEDESTAL_BUNNY, 300.f, true))
            bunny->SetDeathState(JUST_DIED);
    }

    void MakeNormal()
    {
        me->RemoveAurasDueToSpell(SPELL_ROOT_FOREVER);

        me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED | UNIT_FLAG_DISABLE_MOVE);
        me->ForceValuesUpdateAtIndex(UNIT_FIELD_FLAGS);
    }

    void TogglePedestal()
    {
        auto ped = me->FindNearestGameObject(GOB_PEDESTAL, 100.0f);
        if (ped)
        {
            if (ped->getLootState() == GO_READY || ped->getLootState() == GO_JUST_DEACTIVATED)
                ped->UseDoorOrButton();
            else
                ped->ResetDoorOrButton();
        }
    }

    void UpdateAI(const uint32 diff) override
    {
        m_events.Update(diff);

        // Anti-leash protection
        if (me->GetPositionX() > (me->GetHomePosition().x + 150))
            EnterEvadeMode();

        if (!me->SelectHostileTarget() || !me->GetVictim())
            return;

        // Timer events
        while (uint32 eventId = m_events.ExecuteEvent())
        {
            switch (eventId)
            {
            case EVENT_INTRO_RP_1:
                // Initial delay.
                m_events.ScheduleEvent(EVENT_INTRO_RP_2, Seconds(2));
                break;
            case EVENT_INTRO_RP_2:
                PlaySound(me, SOUND_INTRO_TEXT_1, true);
                me->MonsterSendTextToZone(INTRO_TEXT_1, CHAT_MSG_MONSTER_YELL);
                m_events.ScheduleEvent(EVENT_INTRO_RP_3, Seconds(6));
                break;
            case EVENT_INTRO_RP_3:
                PlaySound(me, SOUND_INTRO_TEXT_2, true);
                me->MonsterSendTextToZone(INTRO_TEXT_2, CHAT_MSG_MONSTER_YELL);
                m_events.ScheduleEvent(EVENT_INTRO_RP_4, Seconds(4));
                break;
            case EVENT_INTRO_RP_4:
                me->CastSpell(me->GetVictim(), SPELL_SCAN_OF_OSTARIUS, true);
                m_events.ScheduleEvent(EVENT_INTRO_RP_5, Seconds(6));
                break;
            case EVENT_INTRO_RP_5:
                PlaySound(me, SOUND_INTRO_TEXT_3, true);
                me->MonsterSendTextToZone(INTRO_TEXT_3, CHAT_MSG_MONSTER_YELL);
                m_events.ScheduleEvent(EVENT_INTRO_RP_6, Seconds(4));
                me->SetFactionTemplateId(14); // Hostile
                break;
            case EVENT_INTRO_RP_6:
                me->CastSpell(me, SPELL_TARGET_CHANNEL, true);

                PlaySound(me, SOUND_INTRO_TEXT_4, true);
                me->MonsterSendTextToZone(INTRO_TEXT_4, CHAT_MSG_MONSTER_YELL);
                m_events.ScheduleEvent(EVENT_INTRO_RP_7, Seconds(5));
                break;
            case EVENT_INTRO_RP_7:
                TogglePedestal();
                me->InterruptNonMeleeSpells(false, SPELL_TARGET_CHANNEL);
                m_events.ScheduleEvent(EVENT_INTRO_RP_8, Seconds(2));
                break;
            case EVENT_INTRO_RP_8:
            {
                PlaySound(me, SOUND_INTRO_TEXT_5, true);
                me->MonsterSendTextToZone(INTRO_TEXT_5, CHAT_MSG_MONSTER_YELL);
                m_events.ScheduleEvent(EVENT_PHASE_1_DELAY, Seconds(6));
                break;
            }
            case EVENT_PHASE_1_DELAY:
                CurrentPhase = 1;
                break;
            case EVENT_PHASE_3_DELAY:
                // Remove physical immunity, reset combat reach, unroot, restore swing timer.
                MakeNormal();

                me->SetAttackTimer(BASE_ATTACK, 2000);
                me->SetInCombatWith(me->GetVictim());

                break;
            }
        }

        // Portal phase.
        if (CurrentPhase == 1 && !(PhaseState & STATE_PHASE_1))
        {
            DoCast(me, SPELL_SANDSTORM, true);

            // Make attackable now once shield is up.
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NON_ATTACKABLE_2);
            me->ForceValuesUpdateAtIndex(UNIT_FIELD_FLAGS);

            PlaySound(me, SOUND_PHASE_1, true);
            me->MonsterSendTextToZone(PHASE_1_TEXT, CHAT_MSG_MONSTER_YELL);

            // Spawn portals so sentries enter battlefield.
            SpawnPortals();

            PhaseState |= STATE_PHASE_1;
        }

        // Sentry phase (fire).
        if (me->GetHealthPercent() < 70 && !(PhaseState & STATE_PHASE_2))
        {
            PlaySound(me, SOUND_PHASE_2, true);
            me->MonsterSendTextToZone(PHASE_2_TEXT, CHAT_MSG_MONSTER_YELL);

            SummonSentries();

            CurrentPhase = 2;
            PhaseState |= STATE_PHASE_2;
        }

        // Frost phase (changes spells on sentries and summons suppression devices)
        if (me->GetHealthPercent() < 50 && !(PhaseState & STATE_PHASE_3))
        {
            isFrostPhase = true;

            PlaySound(me, SOUND_PHASE_3, true);
            me->MonsterSendTextToZone(PHASE_3_TEXT, CHAT_MSG_MONSTER_YELL);

            SpawnSupressionDevices();

            CurrentPhase = 3;
            PhaseState |= STATE_PHASE_3;
        }

        // Manual intervention phase.
        if (me->GetHealthPercent() < 30 && !(PhaseState & STATE_PHASE_4))
        {
            PlaySound(me, SOUND_PHASE_4, true);
            me->MonsterSendTextToZone(PHASE_4_TEXT, CHAT_MSG_MONSTER_YELL);

            DespawnSummons();

            m_events.ScheduleEvent(EVENT_PHASE_3_DELAY, Seconds(5));
            me->RemoveAurasDueToSpell(SPELL_SANDSTORM); // Remove here so animation finishes before phase starts.

            CurrentPhase = 4;
            PhaseState |= STATE_PHASE_4;
        }

        if (CurrentPhase == 1)
        {
            if (SpawnPortals_Timer <= diff)
            {
                SpawnPortals();

                // Spawn more next time.
                numOfPortalsToSpawn += 1;

                SpawnPortals_Timer = 40 * IN_MILLISECONDS;
            }
            else
                SpawnPortals_Timer -= diff;
        }

        // Frost phase
        if (CurrentPhase == 3)
        {
            if (SpawnDevices_Timer <= diff)
            {
                SpawnSupressionDevices();

                // Spawn more next time.
                numOfDevicesToSpawn += 2;

                SpawnDevices_Timer = 20 * IN_MILLISECONDS;
            }
            else
                SpawnDevices_Timer -= diff;
        }

        if (CurrentPhase < 4)
            return;


        // Stomp and Earthquake every 10% HP loss.
        if (LastHealthPercentage - me->GetHealthPercent() >= 10)
        {
            if (DoCastSpellIfCan(me->GetVictim(), SPELL_STOMP) == CAST_OK)
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

        // Reactivate all defenses at 15%
        if (me->GetHealthPercent() < 15 && !(PhaseState & STATE_ENRAGED))
        {
            me->MonsterTextEmote("Ostarius reactivates all defenses out of desperation!", nullptr, true);
            me->MonsterSendTextToZone(ENRAGE_TEXT, CHAT_MSG_MONSTER_YELL);
            PlaySound(me, SOUND_ENRAGE, true);

            SummonSentries();
            SpawnPortals();
            SpawnSupressionDevices();

            PhaseState |= STATE_ENRAGED;
        }

        DoMeleeAttackIfReady();
    }

    void SpawnPortals()
    {
        for (uint8 i = 0; i < numOfPortalsToSpawn; ++i)
        {
            // Hit the limit. Try again later.
            if (portals.size() >= MAX_OPEN_PORTALS)
                return;

            // Generates random spawn within a square on the floor.
            float spawnX = squareX + (squareDiameter * float(urand(0, 10)));
            float spawnY = squareY + (squareDiameter * float(urand(0, 10)));

            GameObject* portal = me->SummonGameObject(GOB_DEFENSE_PORTAL,
                spawnX,
                spawnY,
                squareZ,
                0.0f
            );
            portals.push_back(portal->GetObjectGuid());

            portal->SetActiveObjectState(true);
        }
    }

    void SummonSentries()
    {
        for (uint8 i = 0; i < (sizeof(sentryLocs) / sizeof(sentryLocs[0])); ++i)
        {
            Creature* sentry = me->SummonCreature(
                MOB_DEFENSE_SENTRY,
                sentryLocs[i][0],
                sentryLocs[i][1],
                sentryLocs[i][2],
                sentryLocs[i][3]
            );

            sentrySpawns.push_back(sentry->GetObjectGuid());
        }
    }

    void SpawnSupressionDevices()
    {
        for (uint8 i = 0; i < numOfDevicesToSpawn; ++i)
        {
            // Hit the limit. Try again later.
            if (devices.size() >= MAX_ACTIVE_DEVICES)
                return;

            // Generates random spawn within a square on the floor.
            float spawnX = squareX + (squareDiameter * float(urand(0, 10)));
            float spawnY = squareY + (squareDiameter * float(urand(0, 10)));

            GameObject* device = me->SummonGameObject(
                GOB_DEBILITATING_DEVICE,
                spawnX,
                spawnY,
                squareZ,
                0.0f
            );
            devices.push_back(device->GetObjectGuid());
        }
    }
};

struct mob_uldum_constructAI : public ScriptedAI
{
    explicit mob_uldum_constructAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    bool channelStarted;
    uint32 channelCheck_Timer;
    uint32 encage_Timer;

    void SetDefaults()
    {
        channelStarted = false;
        channelCheck_Timer = 11 * IN_MILLISECONDS;
        encage_Timer = 0;
    }

    void Reset()
    {
        SetDefaults();
        me->CastStop(); // Stop any active encage spell channelling.
    }

    void KilledUnit(Unit* victim) override
    {
        // TODO: Add text about unit failing scan.
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        DeleteObject(me, constructSpawns);
    }

    void EnterEvadeMode() override
    {
        me->CastStop();
        me->DeleteLater();
    }

    void UpdateAI(const uint32 diff) override
    {
        if (!me->GetVictim())
            return;

        if (channelStarted)
        {
            if (channelCheck_Timer <= diff)
            {
                DoCast(me->GetVictim(), SPELL_CONFLAG, true);
                channelCheck_Timer = 11 * IN_MILLISECONDS;
                channelStarted = false;
                encage_Timer = 5 * IN_MILLISECONDS;
            }
            else
                channelCheck_Timer -= diff;
        }

        if (!channelStarted && encage_Timer <= diff)
        {
            if (DoCastSpellIfCan(me->GetVictim(), SPELL_MORTALITY_SCAN) == CAST_OK)
            {
                channelStarted = true;
            }
        }
        else
            encage_Timer -= diff;
    }
};

enum SentrySpells
{
    SPELL_BLIZZARD = 21367,
    SPELL_RAIN_OF_FIRE = 24669,

    SPELL_FROST_BREATH  = 22479,
};

struct mob_uldum_sentryAI : public ScriptedAI
{
    explicit mob_uldum_sentryAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 AoE_Timer;
    uint32 Breath_Timer;
    bool canBreath;

    void SetDefaults()
    {
        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_STUNNED | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NON_ATTACKABLE_2 | UNIT_FLAG_DISABLE_MOVE);
        me->ForceValuesUpdateAtIndex(UNIT_FIELD_FLAGS);

        // Needed so our channeled spells have no issues casting.
        me->SetFloatValue(UNIT_FIELD_COMBATREACH, me->GetCombatReach() * 20);
        me->SetFloatValue(UNIT_FIELD_BOUNDINGRADIUS, me->GetObjectBoundingRadius() * 20);
        me->ForceValuesUpdateAtIndex(UNIT_FIELD_COMBATREACH);
        me->ForceValuesUpdateAtIndex(UNIT_FIELD_BOUNDINGRADIUS);

        me->AddAura(SPELL_ROOT_FOREVER); // core support for NPC rooting broken?
        DoCast(me, SPELL_TELEPORT_VISUAL);

        AoE_Timer = urand(0, 8000);
        Breath_Timer = 0;
        canBreath = false;
    }

    void Reset()
    {
        SetDefaults();
    }

    void KilledUnit(Unit* victim) override {}

    void EnterEvadeMode() override
    {
        me->CastStop();
        me->DeleteLater();
    }

    void UpdateAI(const uint32 diff) override
    {
        if (AoE_Timer < diff)
        {
            Unit* randomTarget = GetRandomNearbyEnemyPlayer(me, 200.0f);
            if (!randomTarget)
                return;

            uint32 spellToCast = isFrostPhase ? SPELL_BLIZZARD : SPELL_RAIN_OF_FIRE;
            DoCast(randomTarget, spellToCast, true);
            if (spellToCast == SPELL_BLIZZARD)
            {
                canBreath = true;
                Breath_Timer = urand(2500, 3500);
            }

            AoE_Timer = urand(15500, 25000);
        }
        else
            AoE_Timer -= diff;

        if (canBreath)
        {
            if (Breath_Timer < diff)
            {
                DoCast(me, SPELL_FROST_BREATH, true);
                canBreath = false;
            }
            else
                Breath_Timer -= diff;
        }
    }
};

bool GOOpen_go_uldum_portal(Player* pPlayer, GameObject* pGo)
{
    DeleteObject(pGo, portals);

    return true;
}

struct go_uldum_portalAI : public GameObjectAI
{
    explicit go_uldum_portalAI(GameObject* object) : GameObjectAI(object)
    {
        Reset();
    }

    uint32 Summon_Timer;
    uint8 PlayerSelect_Fails;

    void Reset()
    {
        Summon_Timer = 2500; // for portal to render
    }

    void UpdateAI(const uint32 diff) override
    {
        if (Summon_Timer < diff)
        {
            // Hit the limit. Try again later.
            if (constructSpawns.size() >= MAX_SPAWNED_CONSTRUCTS)
                return;

            float ground_z = me->GetMap()->GetHeight(me->GetPositionX(), me->GetPositionY(), MAX_HEIGHT);

            Creature* spawn = me->SummonCreature(
                MOB_ULDUM_CONSTRUCT,
                me->GetPositionX(),
                me->GetPositionY(),
                ground_z,
                me->GetOrientation(),
                TEMPSUMMON_CORPSE_TIMED_DESPAWN,
                5000
            );

            Player* randomPlayer = GetNearbyEnemyPlayer(spawn, 300.0f);
            if (!randomPlayer)
            {
                // Hopefully we don't get here, but try to find a player a few more times before giving up.
                PlayerSelect_Fails++;
                Summon_Timer = 100;
                spawn->DeleteLater();

                // If we're repeatedly failing to find players, delete portal.
                if (PlayerSelect_Fails >= 5)
                    DeleteObject(me, portals);

                return;
            }

            PlayerSelect_Fails = 0;
            constructSpawns.push_back(spawn->GetObjectGuid());

            spawn->SetInCombatWith(randomPlayer);
            spawn->GetMotionMaster()->MoveChase(randomPlayer);

            Summon_Timer = urand(16000, 25000);
        }
        else
            Summon_Timer -= diff;
    }
};

constexpr auto SPELL_PIERCING_COLD = 57003;

// aka debilitating device
struct go_uldum_suppressionAI : public GameObjectAI
{
    go_uldum_suppressionAI(GameObject* pGo) : GameObjectAI(pGo), m_uiCheckTimer(500), m_bActive(true) { RestoreGo(); }

    uint32 m_uiCheckTimer;
    bool m_bActive;

    bool OnUse(Unit* pUser) override
    {
        if (pUser->IsWithinDistInMap(me, 5.0f))
        {
            me->SetGoState(GO_STATE_ACTIVE);
            m_bActive = false;
            m_uiCheckTimer = 3000;
            return true;
        }
        else
            return false;
    }

    void ApplyAura()
    {
        me->SendGameObjectCustomAnim();
        Map::PlayerList const& liste = me->GetMap()->GetPlayers();
        for (const auto& i : liste)
        {
            if (me->GetDistance(i.getSource()) <= 10.0f)
                if (!i.getSource()->HasStealthAura() && i.getSource()->IsAlive() && !i.getSource()->IsGameMaster())
                    i.getSource()->AddAura(SPELL_PIERCING_COLD);
        }
    }

    void RestoreGo()
    {
        me->SetGoState(GO_STATE_READY);
        m_bActive = true;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (m_uiCheckTimer <= uiDiff)
        {
            if (m_bActive)
                ApplyAura();
            else
                DeleteObject(me, devices);

            m_uiCheckTimer = 2000;
            return;
        }
        else
            m_uiCheckTimer -= uiDiff;
    }
};

// Pedestal of Uldum NPC (RP intro)
enum PedestalEvents
{
    PEDESTAL_EVENT_INTRO_1 = 1,
    PEDESTAL_EVENT_INTRO_2,
    PEDESTAL_EVENT_INTRO_3,
    PEDESTAL_EVENT_INTRO_4,
    PEDESTAL_EVENT_BOSS_SPAWN
};

struct npc_uldum_pedestalAI : public ScriptedAI
{
    explicit npc_uldum_pedestalAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 InitialDelay_Timer;
    EventMap m_events;

    void SetDefaults()
    {
        m_events.Reset();
    }

    void Reset()
    {
        SetDefaults();

        m_events.ScheduleEvent(PEDESTAL_EVENT_INTRO_1, Seconds(2));
    }

    void UpdateAI(const uint32 diff) override
    {
        m_events.Update(diff);

        if (!me->GetVictim())
            return;

        while (uint32 eventId = m_events.ExecuteEvent())
        {
            switch (eventId)
            {
            // "Initiating unlock sequence...";
            // "Plates present, scanning for item validation...";
            // "Plates authentication complete. Unlocking the gates...";
            // "Activating Gate Keeper to greet the guests...";
                case PEDESTAL_EVENT_INTRO_1:
                    me->MonsterSay(PED_TEXT_1);
                    PlaySound(me, SOUND_PED_TEXT_1);
                    m_events.ScheduleEvent(PEDESTAL_EVENT_INTRO_2, Seconds(4));
                    break;
                case PEDESTAL_EVENT_INTRO_2:
                    me->MonsterSay(PED_TEXT_2);
                    PlaySound(me, SOUND_PED_TEXT_2);
                    m_events.ScheduleEvent(PEDESTAL_EVENT_INTRO_3, Seconds(6));
                    DoCast(nullptr, 25425, true);
                    break;
                case PEDESTAL_EVENT_INTRO_3:
                    me->MonsterSay(PED_TEXT_3);
                    PlaySound(me, SOUND_PED_TEXT_3);
                    m_events.ScheduleEvent(PEDESTAL_EVENT_INTRO_4, Seconds(7));
                    break;
                case PEDESTAL_EVENT_INTRO_4:
                    me->MonsterSay(PED_TEXT_4);
                    PlaySound(me, SOUND_PED_TEXT_4);
                    m_events.ScheduleEvent(PEDESTAL_EVENT_BOSS_SPAWN, Seconds(4));
                    break;
                case PEDESTAL_EVENT_BOSS_SPAWN:
                {
                    if (Creature* ostarius = me->SummonCreature(80935, -9637.72f, -2787.4f, 7.838f, 0.0f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000))
                    {
                        ostarius->AI()->JustRespawned();
                        ostarius->SetInCombatWith(me->GetVictim());
                    }

                    me->DeleteLater();
                    break;
                }
            }
        }
    }
};

CreatureAI* GetAI_boss_ostarius(Creature *creature)
{
    return new boss_ostariusAI(creature);
}

CreatureAI* GetAI_mob_uldum_construct(Creature* creature)
{
    return new mob_uldum_constructAI(creature);
}

CreatureAI* GetAI_mob_uldum_sentry(Creature* creature)
{
    return new mob_uldum_sentryAI(creature);
}

GameObjectAI* GetAI_go_uldum_portal(GameObject* gameobject)
{
    return new go_uldum_portalAI(gameobject);
}

GameObjectAI* GetAIgo_uldum_suppression(GameObject* pGo)
{
    return new go_uldum_suppressionAI(pGo);
}

CreatureAI* GetAI_npc_uldum_pedestal(Creature* creature)
{
    return new npc_uldum_pedestalAI(creature);
}

void AddSC_boss_ostarius()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "boss_ostarius";
    newscript->GetAI = &GetAI_boss_ostarius;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "mob_uldum_construct";
    newscript->GetAI = &GetAI_mob_uldum_construct;
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

    newscript = new Script;
    newscript->Name = "go_uldum_suppression";
    newscript->GOGetAI = &GetAIgo_uldum_suppression;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_uldum_pedestal";
    newscript->GetAI = &GetAI_npc_uldum_pedestal;
    newscript->RegisterSelf();
}
