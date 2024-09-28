#ifndef MANGOS_WORLDBOTTASKMANAGER_H
#define MANGOS_WORLDBOTTASKMANAGER_H

#include <vector>
#include <string>
#include <functional>

// Forward declaration
class WorldBotAI;

enum WorldBotTaskPriority
{
    PRIORITY_LOW,
    PRIORITY_MEDIUM,
    PRIORITY_HIGH,
    PRIORITY_CRITICAL
};

struct WorldBotTask
{
    uint8 id;
    std::string name;
    WorldBotTaskPriority priority;
    std::function<bool(WorldBotAI*)> canPerform;
    std::function<void(WorldBotAI*)> execute;
    std::function<bool(WorldBotAI*)> isComplete;
    bool implemented;
    uint8 minLevel;
    uint8 maxLevel;
};

class WorldBotTaskManager
{
public:
    WorldBotTaskManager(WorldBotAI* bot);

    void RegisterTask(const WorldBotTask& task);
    void UpdateTasks();
    bool SwitchToTask(uint8 taskId);
    uint8 GetCurrentTaskId() const { return m_currentTaskId; }
    std::string GetCurrentTaskName() const;
    void SetCurrentTask(uint8 taskId);
    void CompleteCurrentTask();
    std::vector<uint8> GetImplementedTaskIds() const;
    const WorldBotTask* FindTaskById(uint8 taskId) const;
    bool IsTaskLevelAppropriate(uint8 taskId, uint8 botLevel) const;

private:
    WorldBotAI* m_bot;
    std::vector<WorldBotTask> m_tasks;
    uint8 m_currentTaskId;

    WorldBotTask* SelectNextTask();
    void StartTask(WorldBotTask* task);
};

#endif // MANGOS_WORLDBOTTASKMANAGER_H
