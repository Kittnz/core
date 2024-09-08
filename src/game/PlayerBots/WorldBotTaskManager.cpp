#include "WorldBotTaskManager.h"
#include "WorldBotAI.h"

WorldBotTaskManager::WorldBotTaskManager(WorldBotAI* bot) : m_bot(bot), m_currentTaskId(TASK_NONE) {}

void WorldBotTaskManager::RegisterTask(const WorldBotTask& task)
{
    m_tasks.push_back(task);
}

void WorldBotTaskManager::StartTask(WorldBotTask* task)
{
    if (task)
    {
        m_currentTaskId = task->id;
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTaskManager: Starting task %s", task->name.c_str());
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

    for (auto& task : m_tasks)
    {
        if (task.canPerform(m_bot))
        {
            if (!highestPriorityTask || task.priority > highestPriorityTask->priority)
            {
                highestPriorityTask = &task;
            }
        }
    }

    return highestPriorityTask;
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
