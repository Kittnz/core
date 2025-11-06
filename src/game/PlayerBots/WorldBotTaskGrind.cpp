#include "WorldBotAI.h"
#include "WorldBotTravelSystem.h"
#include "WorldBotTaskManager.h"
#include "PlayerBotMgr.h"
#include "Map.h"
#include "GridSearchers.h"
#include "Creature.h"
#include <cmath>

extern std::vector<GrindCreatureInfo> grindCreatures;

bool WorldBotAI::CanPerformGrind() const
{
    // Check if we recently failed to find any valid grind locations
    if (m_grindTaskFailedTime > 0)
    {
        time_t now = time(nullptr);
        if ((now - m_grindTaskFailedTime) < GRIND_RETRY_DELAY)
        {
            // Still in cooldown period
            return false;
        }
    }

    std::string botName = me->GetName();
    std::transform(botName.begin(), botName.end(), botName.begin(), ::tolower);

    /*return m_taskManager.IsTaskLevelAppropriate(TASK_GRIND, me->GetLevel()) &&
        !me->IsInCombat() && botName.find("bank") == std::string::npos;*/
    return true;
}

void WorldBotAI::StartGrinding()
{
    if (grindCreatures.empty())
        return;

    // Reset previous grinding state
    m_grindEntryTarget = 0;
    m_grindMaxLevel = 0;
    m_isAtGrindDestination = false;
    m_grindRadius = VISIBILITY_DISTANCE_LARGE;

    if (!SetGrindDestination())
    {
        if (me->IsBeingTeleported())
        {
            sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: %s is being teleported. Will attempt to set grind destination again later.", me->GetName());
            return;
        }
        else
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: %s failed to set grind destination, switching to roam task temporarily", me->GetName());
            
            // Set the failure time to prevent immediate retry
            m_grindTaskFailedTime = time(nullptr);
            
            // Complete the grind task - this will trigger task selection and automatically select roam
            m_taskManager.CompleteCurrentTask();
            
            return;
        }
    }
    else
    {
        // Successfully set grind destination, clear failure time
        m_grindTaskFailedTime = 0;
    }
}

bool WorldBotAI::IsGrindingComplete() const
{
    return me->GetLevel() > m_grindMaxLevel + 3;
}

bool WorldBotAI::SetGrindDestination()
{
    // Check if we have valid grind quests
    if (grindCreatures.empty())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: No grind quests available");
        return false;
    }

    // Check if the bot is on the correct map
    uint32 correctMapId = (me->GetTeam() == ALLIANCE) ? 0 : 1;
    if (me->GetMapId() != correctMapId)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Bot %s is on incorrect map. Teleporting to major city.", me->GetName());
        if (me->GetTeam() == ALLIANCE)
            me->TeleportTo(0, -9002.163f, 867.087f, 29.620f, 2.244f);
        else
            me->TeleportTo(1, 1469.857f, -4220.508f, 58.993f, 6.195f);
        return false;
    }

    // Clean up old blacklisted locations
    CleanupOldFailedGrindLocations();

    std::vector<const GrindCreatureInfo*> validCreatures;

    // find creatures within level range
    for (const auto& creature : grindCreatures)
    {
        // First check map
        bool mapOk = (creature.mapId == me->GetMapId());

        if (mapOk)
        {
            int myLevel = me->GetLevel();
            int maxLevel = myLevel + MAX_GRIND_LEVEL_DIFFERENCE;
            int minLevel = myLevel - MAX_GRIND_LEVEL_DIFFERENCE;
            if (minLevel < 1) minLevel = 1;

            bool levelOk = (creature.level <= maxLevel && creature.level >= minLevel);

            // Check if this location is blacklisted
            bool blacklisted = IsGrindLocationBlacklisted(creature.creatureId, creature.position_x, 
                                                         creature.position_y, creature.position_z, creature.mapId);

            if (levelOk && !blacklisted)
            {
                validCreatures.push_back(&creature);
            }
        }
    }

    if (validCreatures.empty())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: No valid grind mobs found for bot %s (level %u) - Checked %zu total mobs, all valid locations may be blacklisted", 
                 me->GetName(), me->GetLevel(), grindCreatures.size());
        
        // If all locations are blacklisted, clear the blacklist and try ONE more time
        if (!m_failedGrindLocations.empty())
        {
            sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: Clearing grind location blacklist for bot %s to allow retry", me->GetName());
            m_failedGrindLocations.clear();
            
            // Try again, but WITHOUT recursion - just re-search for valid creatures
            for (const auto& creature : grindCreatures)
            {
                bool mapOk = (creature.mapId == me->GetMapId());
                if (mapOk)
                {
                    int myLevel = me->GetLevel();
                    int maxLevel = myLevel + MAX_GRIND_LEVEL_DIFFERENCE;
                    int minLevel = myLevel - MAX_GRIND_LEVEL_DIFFERENCE;
                    if (minLevel < 1) minLevel = 1;

                    bool levelOk = (creature.level <= maxLevel && creature.level >= minLevel);
                    if (levelOk)
                    {
                        validCreatures.push_back(&creature);
                    }
                }
            }
            
            // If STILL empty after clearing blacklist, we have a real problem
            if (validCreatures.empty())
            {
                sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: No valid grind locations even after clearing blacklist for bot %s", me->GetName());
                return false;
            }
        }
        else
        {
            // No blacklisted locations but still no valid creatures
            return false;
        }
    }

    // Score each quest based on multiple factors
    struct CreatureScore {
        const GrindCreatureInfo* creature;
        float score;
    };
    std::vector<CreatureScore> scoredCreatures;

    for (const auto* creature : validCreatures)
    {
        float distance = me->GetDistance(creature->position_x, creature->position_y, creature->position_z);

        float distanceScore = 1.0f - std::min(1.0f, distance / 10000.0f); // Normalize to 0-1
        float spawnScore = std::min(1.0f, creature->spawnCount / 100.0f); // Normalize spawn count
        float levelDiffScore = 1.0f - (std::abs(static_cast<float>(me->GetLevel() - creature->level)) / float(MAX_GRIND_LEVEL_DIFFERENCE));
        float clusterScore = 1.0f - std::min(1.0f, creature->clusterRadius / 500.0f); // Normalize radius

        float totalScore = (distanceScore * 0.4f) +    // Distance is most important
            (spawnScore * 0.3f) +        // Spawn count is second
            (levelDiffScore * 0.2f) +    // Level difference is third
            (clusterScore * 0.1f);       // Cluster density is least important

        scoredCreatures.push_back({ creature, totalScore });
    }

    // Sort by score and select the best
    std::sort(scoredCreatures.begin(), scoredCreatures.end(),
        [](const CreatureScore& a, const CreatureScore& b) { return a.score > b.score; });

    const GrindCreatureInfo* selectedCreature = scoredCreatures[0].creature;

    m_grindEntryTarget = selectedCreature->creatureId;
    m_grindTargetLevel = selectedCreature->level;
    m_grindMaxLevel = me->GetLevel() + MAX_GRIND_LEVEL_DIFFERENCE;
    m_grindDestination.x = selectedCreature->position_x;
    m_grindDestination.y = selectedCreature->position_y;
    m_grindDestination.z = selectedCreature->position_z;

    // Set grind radius based on cluster size but no larger than large visibility
    m_grindRadius = std::min(selectedCreature->clusterRadius * 1.2f, VISIBILITY_DISTANCE_LARGE);

    // Check if we're already close enough to this destination
    float distanceToDestination = me->GetDistance(m_grindDestination.x, m_grindDestination.y, m_grindDestination.z);
    if (distanceToDestination <= m_grindRadius)
    {
        m_isAtGrindDestination = true;
        return true;
    }

    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: Set grind destination for bot %s (level %u) to kill %s (level %u) at position (%.2f, %.2f, %.2f)",
        me->GetName(), me->GetLevel(), selectedCreature->creatureName.c_str(), selectedCreature->level,
        m_grindDestination.x, m_grindDestination.y, m_grindDestination.z);

    bool pathResult = StartNewPathToSpecificDestination(m_grindDestination.x, m_grindDestination.y, m_grindDestination.z, me->GetMapId(), false);
    
    // If pathing failed immediately (nodes not connected, etc.), the location will be blacklisted
    // inside StartNewPathToSpecificDestination, so we don't need to do it here again
    
    return pathResult;
}

void WorldBotAI::UpdateGrindingBehavior()
{
    if (ShouldStopGrinding())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: %s stopping grinding task", me->GetName());
        m_taskManager.CompleteCurrentTask();
        return;
    }

    // If we're in combat, let the combat AI handle it
    if (me->IsInCombat())
        return;

    // Check if we're at the grind destination
    float distanceToDestination = me->GetDistance(m_grindDestination.x, m_grindDestination.y, m_grindDestination.z);
    if (distanceToDestination <= m_grindRadius)
    {
        m_isAtGrindDestination = true;
        // Look for target to attack
        if (Unit* target = FindNearestCreatureToGrind())
        {
            AttackStart(target);
            return;
        }
    }
    else if (!me->IsMoving() && !me->IsTaxiFlying())
    {
        m_isAtGrindDestination = false;
        // Resume movement to grind destination
        StartNewPathToSpecificDestination(m_grindDestination.x, m_grindDestination.y, m_grindDestination.z, me->GetMapId(), false);
    }
}

Unit* WorldBotAI::FindNearestCreatureToGrind()
{
    float searchRange = m_grindRadius;
    Unit* nearestTarget = nullptr;
    float nearestDistance = searchRange;

    for (const auto& guid : me->m_visibleGUIDs)
    {
        if (!guid.IsCreature())
            continue;

        if (Creature* creature = me->GetMap()->GetCreature(guid))
        {
            if (creature->GetEntry() != m_grindEntryTarget)
                continue;

            if (!creature->IsAlive() || !me->IsValidAttackTarget(creature))
                continue;

            float distance = me->GetDistance(creature);
            if (distance < nearestDistance)
            {
                nearestDistance = distance;
                nearestTarget = creature;
            }
        }
    }

    return nearestTarget;
}

bool WorldBotAI::ShouldStopGrinding() const
{
    // Stop if our level is higher than the max level we should grind at
    if (me->GetLevel() > m_grindMaxLevel)
        return true;

    // Also stop if the level difference becomes too great
    int levelDiff = me->GetLevel() - m_grindTargetLevel;  // Add m_grindTargetLevel as a member variable
    return levelDiff > MAX_GRIND_LEVEL_DIFFERENCE;
}

void WorldBotAI::RegisterGrindTask()
{
    m_taskManager.RegisterTask({
        TASK_GRIND,
        "Grind",
        PRIORITY_HIGH,
        [this](WorldBotAI* bot) { return this->CanPerformGrind(); },
        [this](WorldBotAI* bot) { this->StartGrinding(); },
        [this](WorldBotAI* bot) { return this->IsGrindingComplete(); },
        true,
        1,
        60
        });
}

void WorldBotAI::AddFailedGrindLocation(uint32 creatureId, float x, float y, float z, uint32 mapId)
{
    // Check if this location is already in the blacklist
    for (const auto& failed : m_failedGrindLocations)
    {
        if (failed.IsSameLocation(creatureId, x, y, z, mapId))
        {
            // Already blacklisted, don't add duplicate
            return;
        }
    }

    FailedGrindLocation failed;
    failed.creatureId = creatureId;
    failed.x = x;
    failed.y = y;
    failed.z = z;
    failed.mapId = mapId;
    failed.failedTime = time(nullptr);

    m_failedGrindLocations.push_back(failed);

    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: Bot %s blacklisted grind location (creature %u) at (%.2f, %.2f, %.2f) on map %u. Blacklist size: %zu",
        me->GetName(), creatureId, x, y, z, mapId, m_failedGrindLocations.size());
}

bool WorldBotAI::IsGrindLocationBlacklisted(uint32 creatureId, float x, float y, float z, uint32 mapId) const
{
    time_t now = time(nullptr);
    for (const auto& failed : m_failedGrindLocations)
    {
        // Check if blacklist entry has expired
        if (now - failed.failedTime > GRIND_BLACKLIST_DURATION)
            continue;

        if (failed.IsSameLocation(creatureId, x, y, z, mapId))
            return true;
    }
    return false;
}

void WorldBotAI::CleanupOldFailedGrindLocations()
{
    time_t now = time(nullptr);
    auto it = m_failedGrindLocations.begin();
    while (it != m_failedGrindLocations.end())
    {
        if (now - it->failedTime > GRIND_BLACKLIST_DURATION)
        {
            it = m_failedGrindLocations.erase(it);
        }
        else
        {
            ++it;
        }
    }
}
