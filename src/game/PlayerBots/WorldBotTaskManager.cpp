#include "WorldBotTaskManager.h"
#include "WorldBotAI.h"

WorldBotTaskManager::WorldBotTaskManager(WorldBotAI* bot) : m_bot(bot), m_currentTaskId(TASK_NONE) {}

void WorldBotTaskManager::RegisterTask(const WorldBotTask& task)
{
    m_tasks.push_back(task);
    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTaskManager: Registered task %s (ID: %u, Implemented: %s, Level Range: %u-%u)",
        task.name.c_str(), task.id, task.implemented ? "true" : "false", task.minLevel, task.maxLevel);

    // Default task
    if (task.id == TASK_ROAM)
    {
        WorldBotTask roamTask = task;
        roamTask.minLevel = 1;
        roamTask.maxLevel = 60;
        m_tasks.push_back(roamTask);
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTaskManager: Registered TASK_ROAM for all levels (1-60)");
    }
}

void WorldBotTaskManager::StartTask(WorldBotTask* task)
{
    if (task)
    {
        m_currentTaskId = task->id;
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTaskManager: Starting task %s", task->name.c_str());
        task->execute(m_bot);
    }
    else
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotTaskManager: Attempted to start a null task");
    }
}

void WorldBotTaskManager::UpdateTasks()
{
    const WorldBotTask* currentTask = FindTaskById(m_currentTaskId);

    if (!currentTask || currentTask->isComplete(m_bot))
    {
        const WorldBotTask* nextTask = SelectNextTask();
        if (nextTask)
        {
            StartTask(const_cast<WorldBotTask*>(nextTask));
        }
        else
        {
            m_currentTaskId = TASK_NONE;
        }
    }
}

void WorldBotTaskManager::SetCurrentTask(uint8 taskId)
{
    const WorldBotTask* newTask = FindTaskById(taskId);
    if (newTask && newTask->canPerform(m_bot))
    {
        if (m_currentTaskId != TASK_NONE)
        {
            const WorldBotTask* currentTask = FindTaskById(m_currentTaskId);
            if (currentTask)
                currentTask->isComplete(m_bot); // Allow current task to clean up if needed
        }

        m_currentTaskId = taskId;
        newTask->execute(m_bot);
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTaskManager: Set current task to %s", newTask->name.c_str());
    }
    else
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotTaskManager: Failed to set task %u as current task", taskId);
    }
}

bool WorldBotTaskManager::SwitchToTask(uint8 taskId)
{
    const WorldBotTask* newTask = FindTaskById(taskId);
    if (newTask && newTask->canPerform(m_bot))
    {
        if (m_currentTaskId != TASK_NONE)
        {
            const WorldBotTask* currentTask = FindTaskById(m_currentTaskId);
            if (currentTask)
            {
                currentTask->isComplete(m_bot);
                m_bot->OnTaskComplete(m_currentTaskId);
            }
        }

        StartTask(const_cast<WorldBotTask*>(newTask));
        return true;
    }
    return false;
}

std::string WorldBotTaskManager::GetCurrentTaskName() const
{
    const WorldBotTask* currentTask = FindTaskById(m_currentTaskId);
    return currentTask ? currentTask->name : "None";
}

const WorldBotTask* WorldBotTaskManager::FindTaskById(uint8 taskId) const
{
    for (const auto& task : m_tasks)
    {
        if (task.id == taskId)
            return &task;
    }
    return nullptr;
}

WorldBotTask* WorldBotTaskManager::SelectNextTask()
{
    WorldBotTask* highestPriorityTask = nullptr;
    WorldBotTask* roamTask = nullptr;
    uint8 botLevel = m_bot->me->GetLevel();

    std::ostringstream logStream;
    logStream << "WorldBotTaskManager: Task selection process for bot level " << static_cast<int>(botLevel) << ":\n";

    for (auto& task : m_tasks)
    {
        logStream << "  Evaluating task " << task.name << " (ID: " << static_cast<int>(task.id)
            << ", Priority: " << static_cast<int>(task.priority)
            << ", Level Range: " << static_cast<int>(task.minLevel) << "-" << static_cast<int>(task.maxLevel) << "):\n";

        if (task.id == TASK_ROAM && task.minLevel <= botLevel && task.maxLevel >= botLevel)
        {
            roamTask = &task;
            logStream << "    - TASK_ROAM found as potential fallback\n";
        }

        if (botLevel < task.minLevel || botLevel > task.maxLevel)
        {
            logStream << "    - Skipped: Bot level out of task's level range\n";
            continue;
        }

        if (!task.implemented)
        {
            logStream << "    - Skipped: Task not implemented\n";
            continue;
        }

        if (!task.canPerform(m_bot))
        {
            logStream << "    - Skipped: Task cannot be performed\n";
            continue;
        }

        logStream << "    - Task is eligible\n";

        if (!highestPriorityTask || task.priority > highestPriorityTask->priority)
        {
            highestPriorityTask = &task;
            logStream << "    - New highest priority task\n";
        }
        else
        {
            logStream << "    - Lower priority than current highest\n";
        }
    }

    if (highestPriorityTask)
    {
        logStream << "Selected task " << highestPriorityTask->name
            << " (Priority: " << static_cast<int>(highestPriorityTask->priority) << ")\n";
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "%s", logStream.str().c_str());
        return highestPriorityTask;
    }
    else if (roamTask)
    {
        logStream << "No suitable task found. Defaulting to TASK_ROAM\n";
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "%s", logStream.str().c_str());
        return roamTask;
    }
    else
    {
        logStream << "No suitable task found and TASK_ROAM not available\n";
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "%s", logStream.str().c_str());
        return nullptr;
    }
}


void WorldBotTaskManager::CompleteCurrentTask()
{
    const WorldBotTask* currentTask = FindTaskById(m_currentTaskId);
    if (currentTask)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTaskManager: Completing task %s", currentTask->name.c_str());
        m_bot->OnTaskComplete(m_currentTaskId);
        m_currentTaskId = TASK_NONE;

        const WorldBotTask* nextTask = SelectNextTask();
        if (nextTask)
        {
            StartTask(const_cast<WorldBotTask*>(nextTask));
        }
    }
}

std::vector<uint8> WorldBotTaskManager::GetImplementedTaskIds() const
{
    std::vector<uint8> implementedTasks;
    for (const auto& task : m_tasks)
    {
        if (task.implemented)
        {
            implementedTasks.push_back(task.id);
        }
    }
    return implementedTasks;
}

bool WorldBotTaskManager::IsTaskLevelAppropriate(uint8 taskId, uint8 botLevel) const
{
    const WorldBotTask* task = FindTaskById(taskId);
    if (task)
    {
        return botLevel >= task->minLevel && botLevel <= task->maxLevel;
    }
    return false;
}

void WorldBotAI::OnTaskComplete(uint8 completedTaskId)
{
    switch (completedTaskId)
    {
    case TASK_EXPLORE:
        hasPoiDestination = false;
        DestName.clear();
        DestCoordinatesX = 0.0f;
        DestCoordinatesY = 0.0f;
        DestCoordinatesZ = 0.0f;
        DestMap = 0;
        ClearPath();
        break;
    case TASK_DUAL:
        m_inDuelPosition = false;
    default:
        break;
    }
}
