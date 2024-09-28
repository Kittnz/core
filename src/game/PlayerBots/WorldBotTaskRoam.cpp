#include "WorldBotAI.h"
#include "WorldBotTaskManager.h"

bool WorldBotAI::CanPerformRoam() const
{
    std::string botName = me->GetName();
    std::transform(botName.begin(), botName.end(), botName.begin(), ::tolower);

    return m_taskManager.IsTaskLevelAppropriate(TASK_ROAM, me->GetLevel()) && botName.find("bank") == std::string::npos;
}

bool WorldBotAI::IsRoamingComplete() const
{
    // Roaming is never complete, it's a continuous task
    return false;
}

void WorldBotAI::RegisterRoamTask()
{
    m_taskManager.RegisterTask({
        TASK_ROAM,
        "Roam",
        PRIORITY_LOW,
        [this](WorldBotAI* bot) { return true; },  // CanPerformRoam
        [](WorldBotAI* bot) {},  // No-op start function
        [](WorldBotAI* bot) { return false; },  // IsRoamingComplete
        true,
        50,  // Minimum level
        60   // Maximum level
    });
}
