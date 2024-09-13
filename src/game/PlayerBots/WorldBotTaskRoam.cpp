#include "WorldBotAI.h"
#include "WorldBotTaskManager.h"

bool WorldBotAI::CanPerformRoam() const
{
    // Roaming can always be performed
    return true;
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
