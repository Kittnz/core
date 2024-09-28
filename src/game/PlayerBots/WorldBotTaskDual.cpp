#include "WorldBotAI.h"
#include "WorldBotTaskManager.h"
#include "Player.h"
#include "MotionMaster.h"

bool WorldBotAI::CanPerformDual() const
{
    std::string botName = me->GetName();
    std::transform(botName.begin(), botName.end(), botName.begin(), ::tolower);

    return m_taskManager.IsTaskLevelAppropriate(TASK_DUAL, me->GetLevel()) &&
        !me->IsInCombat() && !me->InBattleGround() && !m_isDualBot && 
        botName.find("bank") == std::string::npos;
}

void WorldBotAI::StartDualing()
{
    // Check if the bot is on the correct map
    uint32 correctMapId = (me->GetTeam() == ALLIANCE) ? 0 : 1; // 0 for Eastern Kingdoms, 1 for Kalimdor
    if (me->GetMapId() != correctMapId)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: Bot %s is on incorrect map. Teleporting to major city.", me->GetName());
        if (me->GetTeam() == ALLIANCE)
        {
            me->TeleportTo(0, -9002.163f, 867.087f, 29.620f, 2.244f, TELE_TO_FORCE_MAP_CHANGE);
        }
        else
        {
            me->TeleportTo(1, 1469.857f, -4220.508f, 58.993f, 6.195f, TELE_TO_FORCE_MAP_CHANGE);
        }
    }

    if (!me->IsBeingTeleported())
    {
        // Define the dueling location
        float duelX, duelY, duelZ;
        if (me->GetTeam() == ALLIANCE)
        {
            // Set Alliance dueling coordinates (e.g., outside Stormwind)
            duelX = -9123.0f;
            duelY = 346.0f;
            duelZ = 94.0f;
        }
        else
        {
            // Set Horde dueling coordinates (e.g., outside Orgrimmar)
            duelX = 1277.0f;
            duelY = -4385.0f;
            duelZ = 29.0f;
        }

        // Move to the dueling location
        if (StartNewPathToSpecificDestination(duelX, duelY, duelZ, me->GetMapId(), false))
        {
            sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: Bot %s is moving to dueling location.", me->GetName());
            m_isDualBot = true;
            m_isDualBotGetReady = false;
            m_isDualBotReady = false;
            m_isDualBotInProgress = false;
            m_isDualBotMovingToLocation = true;
        }
        else
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Failed to create path to dueling location for bot %s", me->GetName());
            m_taskManager.CompleteCurrentTask();
        }
    }
}

bool WorldBotAI::IsDualingComplete() const
{
    // The dueling is complete when the bot is no longer in duel mode
    return !m_isDualBot;
}

void WorldBotAI::UpdateDualingBehavior()
{
    if (m_isDualBotMovingToLocation)
    {
        // Check if we've reached the dueling location
        if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() == IDLE_MOTION_TYPE)
        {
            sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: Bot %s has reached the dueling location.", me->GetName());
            m_isDualBotMovingToLocation = false;
            m_isDualBotGetReady = true;
            m_inDuelPosition = true;  // Set the flag here
        }
        return;
    }

    if (m_isDualBotGetReady)
    {
        ClearPath();
        if (!me->IsStopped())
            StopMoving();

        DrinkAndEat();

        if (me->GetHealthPercent() > 90.0f && me->GetPowerPercent(me->GetPowerType()) > 90.0f)
        {
            m_isDualBotReady = true;
            m_isDualBotGetReady = false;
        }
    }

    if (m_isDualBotReady && !m_isDualBotInProgress)
    {
        // Periodically yell for a duel
        m_duelYellTimer.Update(1 * IN_MILLISECONDS);
        if (m_duelYellTimer.Passed())
        {
            me->Yell("I'm ready for a duel! Who dares to challenge me?", LANG_UNIVERSAL);
            m_duelYellTimer.Reset(30 * IN_MILLISECONDS); // Yell every 30 seconds
        }
    }

    if (m_isDualBotInProgress)
    {
        // Check if we're in an active duel
        if (me->duel)
        {
            // Get opponent
            Player* plTarget = me->duel->opponent;

            // Move away from opponent if too close
            const float distance = me->GetDistance(plTarget);
            if (distance < 25.0f)
                me->GetMotionMaster()->MoveDistance(plTarget, frand(5, 25));

            // Attack target
            AttackStart(plTarget);
        }
        else
        {
            // If we're not in a duel, reset for the next one
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Bot %s has finished a duel and is ready for another.", me->GetName());
            m_isDualBotInProgress = false;
            m_isDualBotGetReady = true;
        }
    }
}

void WorldBotAI::RegisterDualTask()
{
    m_taskManager.RegisterTask({
        TASK_DUAL,
        "Dual",
        PRIORITY_LOW,
        [this](WorldBotAI* bot) { return this->CanPerformDual(); },
        [this](WorldBotAI* bot) { this->StartDualing(); },
        [this](WorldBotAI* bot) { return this->IsDualingComplete(); },
        true, // implemented
        20,  // Minimum level
        60   // Maximum level
    });
}
