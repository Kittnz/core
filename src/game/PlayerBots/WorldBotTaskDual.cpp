#include "WorldBotAI.h"
#include "WorldBotTaskManager.h"
#include "Player.h"
#include "MotionMaster.h"

bool WorldBotAI::CanPerformDual() const
{
    // Add conditions for when a bot can perform a duel
    // For example, not in combat, not in a battleground, etc.
    return !me->IsInCombat() && !me->InBattleGround() && !m_isDualBot;
}

void WorldBotAI::StartDualing()
{
    m_isDualBot = true;
    m_isDualBotGetReady = true;
    m_isDualBotReady = false;
    m_isDualBotInProgress = false;

    // Move to a dueling area if necessary
    // For now, we'll assume the bot is already in a suitable location
}

bool WorldBotAI::IsDualingComplete() const
{
    // The dueling is complete when the bot is no longer in duel mode
    return !m_isDualBot;
}

void WorldBotAI::UpdateDualingBehavior()
{
    if (m_isDualBotGetReady)
    {
        ClearPath();
        if (!me->IsStopped())
            StopMoving();

        DrinkAndEat();

        if (me->GetHealthPercent() > 90.0f)
            m_isDualBotReady = true;
    }

    if (m_isDualBotReady && !m_isDualBotInProgress)
    {
        m_isDualBotGetReady = false;
        m_isDualBotReady = false;

        me->Yell("Get ready, here I come!", LANG_UNIVERSAL);

        // Accept duel
        WorldPacket data(CMSG_DUEL_ACCEPTED);
        data << me->GetObjectGuid();
        me->GetSession()->HandleDuelAcceptedOpcode(data);

        m_isDualBotInProgress = true;

        // Get opponent
        Player* plTarget = me->duel->opponent;

        // Move away from opponent
        const float distance = me->GetDistance(plTarget);
        if (distance < 25.0f)
            me->GetMotionMaster()->MoveDistance(plTarget, frand(5, 25));

        // Attack target
        AttackStart(plTarget);
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
        true
    });
}
