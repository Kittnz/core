#include "WorldBotAI.h"
#include "WorldBotTravelSystem.h"
#include "WorldBotTaskManager.h"
#include "Map.h"
#include "GridSearchers.h"
#include "Creature.h"

bool WorldBotAI::CanPerformGrind() const
{
    // Check if the bot's name contains "bank", don't allow them to grind
    std::string botName = me->GetName();
    std::transform(botName.begin(), botName.end(), botName.begin(), ::tolower);
    if (botName.find("bank") != std::string::npos)
    {
        return false;  // Don't allow grinding for bots with "bank" in their name
    }

    // Can grind if not in combat and not already at a destination
    return !me->IsInCombat() && m_grindHotSpots.empty();
}

void WorldBotAI::StartGrinding()
{
    // Reset previous grinding state
    m_grindHotSpots.clear();
    m_grindEntryTarget = 0;
    m_grindMaxLevel = 0;
    m_currentHotSpotIndex = 0;

    if (!SetGrindDestination())
    {
        if (me->IsBeingTeleported())
        {
            sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: %s is being teleported. Will attempt to set grind destination again later.", me->GetName());
            // We don't complete the task here, as we want to try again after teleportation
            return;
        }
        else
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: %s failed to set grind destination", me->GetName());
            m_taskManager.CompleteCurrentTask();
            return;
        }
    }

    // Move to the first hot spot
    if (StartNewPathToSpecificDestination(m_grindHotSpots[0].x, m_grindHotSpots[0].y, m_grindHotSpots[0].z, me->GetMapId(), false))
    {
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: %s started moving to first to first grind hot spot (%.2f, %.2f, %.2f)",
            me->GetName(), m_grindHotSpots[0].x, m_grindHotSpots[0].y, m_grindHotSpots[0].z);
    }
    else
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: %s failed to start path to grind destination", me->GetName());
        m_taskManager.CompleteCurrentTask();
    }
}

bool WorldBotAI::IsGrindingComplete() const
{
    // Grinding is complete when we've visited all hot spots
    return m_currentHotSpotIndex >= m_grindHotSpots.size();
}

bool WorldBotAI::SetGrindDestination()
{
    // Check if the bot is on the correct map
    uint32 correctMapId = (me->GetTeam() == ALLIANCE) ? 0 : 1; // 0 for Eastern Kingdoms, 1 for Kalimdor
    if (me->GetMapId() != correctMapId)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Bot %s is on incorrect map. Teleporting to major city.", me->GetName());
        if (me->GetTeam() == ALLIANCE)
        {
            me->TeleportTo(0, -9002.163f, 867.087f, 29.620f, 2.244f, TELE_TO_FORCE_MAP_CHANGE);
        }
        else
        {
            me->TeleportTo(1, 1469.857f, -4220.508f, 58.993f, 6.195f, TELE_TO_FORCE_MAP_CHANGE);
        }
        return false; // Return false to indicate we need to try again later
    }

    std::ostringstream query;
    query << "SELECT Guid, FileName, HotSpots, EntryTarget, MaxLevel, MinLevel FROM worldbot_easy_quest_profiles WHERE "
        << "QuestType = 'KillAndLoot' AND Faction = '" << (me->GetTeam() == ALLIANCE ? "alliance" : "horde") << "' "
        << "AND MapId = " << me->GetMapId() << " "
        << "AND HotSpots != '' AND HotSpots IS NOT NULL "
        << "AND EntryTarget != '' AND EntryTarget IS NOT NULL "
        << "AND MinLevel <= " << me->GetLevel() << " "
        << "AND MaxLevel >= " << me->GetLevel() << " "
        << "ORDER BY ABS(MaxLevel - " << me->GetLevel() << "), RAND() "
        << "LIMIT 10";

    std::unique_ptr<QueryResult> result(WorldDatabase.Query(query.str().c_str()));
    if (!result)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: No valid grind profiles found for bot %s (level %u). Query: %s", me->GetName(), me->GetLevel(), query.str().c_str());
        return false;
    }

    std::vector<std::tuple<uint32, std::string, std::string, uint32, uint32>> validProfiles;

    do
    {
        Field* fields = result->Fetch();
        uint32 guid = fields[0].GetUInt32();
        std::string FileName = fields[1].GetCppString();
        std::string hotSpots = fields[2].GetCppString();
        std::string entryTargetStr = fields[3].GetCppString();
        uint32 maxLevel = fields[4].GetUInt32();
        uint32 minLevel = fields[5].GetUInt32();

        validProfiles.emplace_back(guid, hotSpots, entryTargetStr, maxLevel, minLevel);
    } while (result->NextRow());
    if (validProfiles.empty())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: No valid grind profiles with appropriate level found for bot %s (level %u)", me->GetName(), me->GetLevel());
        return false;
    }

    // Randomly select a profile from the valid ones
    size_t randomIndex = urand(0, validProfiles.size() - 1);
    auto selectedProfile = validProfiles[randomIndex];

    m_grindEntryTarget = std::get<0>(selectedProfile);
    m_grindMaxLevel = std::get<3>(selectedProfile);
    uint32 minLevel = std::get<4>(selectedProfile);

    // Parse hot spots
    std::string hotSpotsStr = std::get<1>(selectedProfile);
    std::vector<std::string> coordinates;

    // Remove any whitespace from the string
    hotSpotsStr.erase(std::remove_if(hotSpotsStr.begin(), hotSpotsStr.end(), ::isspace), hotSpotsStr.end());

    // Split the string into individual coordinate groups
    size_t start = 0;
    size_t end = hotSpotsStr.find("),", start);
    while (end != std::string::npos)
    {
        coordinates.push_back(hotSpotsStr.substr(start, end - start + 1));
        start = end + 2;
        end = hotSpotsStr.find("),", start);
    }
    if (start < hotSpotsStr.length())
    {
        coordinates.push_back(hotSpotsStr.substr(start));
    }

    for (const auto& coord : coordinates)
    {
        // Remove the parentheses
        std::string cleanCoord = coord.substr(1, coord.length() - 2);

        std::vector<std::string> xyz;
        std::istringstream iss(cleanCoord);
        std::string token;
        while (std::getline(iss, token, ','))
        {
            xyz.push_back(token);
        }

        if (xyz.size() == 3)
        {
            Position pos;
            try
            {
                pos.x = std::stof(xyz[0]);
                pos.y = std::stof(xyz[1]);
                pos.z = std::stof(xyz[2]);
                m_grindHotSpots.push_back(pos);
            }
            catch (const std::exception& e)
            {
                sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Error parsing coordinate: %s. Error: %s", cleanCoord.c_str(), e.what());
            }
        }
        else
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Invalid coordinate format: %s", cleanCoord.c_str());
        }
    }

    if (m_grindHotSpots.empty())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: No valid hot spots found for bot %s", me->GetName());
        return false;
    }

    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: Set grind destination for bot %s (level %u) with MinLevel %u, MaxLevel %u and %zu hot spots",
        me->GetName(), me->GetLevel(), minLevel, m_grindMaxLevel, m_grindHotSpots.size());
    return true;
}

bool WorldBotAI::HasReachedGrindDestination() const
{
    if (m_currentHotSpotIndex >= m_grindHotSpots.size())
        return false;

    const Position& currentHotSpot = m_grindHotSpots[m_currentHotSpotIndex];
    float distanceToHotSpot = me->GetDistance(currentHotSpot.x, currentHotSpot.y, currentHotSpot.z);
    return distanceToHotSpot < 5.0f; // Consider it reached if within 5 yards
}

void WorldBotAI::CreatePathFromHotSpots()
{
    m_currentPath.clear();
    m_currentPathIndex = 0;

    for (size_t i = m_currentHotSpotIndex; i < m_grindHotSpots.size(); ++i)
    {
        const Position& hotSpot = m_grindHotSpots[i];
        TravelPath pathPoint;
        pathPoint.x = hotSpot.x;
        pathPoint.y = hotSpot.y;
        pathPoint.z = hotSpot.z;
        pathPoint.mapId = me->GetMapId();
        pathPoint.nr = i - m_currentHotSpotIndex;
        m_currentPath.push_back(pathPoint);
    }

    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Created path from hot spots for bot %s with %zu points", me->GetName(), m_currentPath.size());

    // Start moving to the first point in the path
    MoveToNextPoint();
}

void WorldBotAI::UpdateGrindingBehavior()
{
    if (m_grindHotSpots.empty())
    {
        if (!SetGrindDestination())
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: %s failed to set grind destination", me->GetName());
            m_taskManager.CompleteCurrentTask();
            return;
        }
    }

    if (HasReachedGrindDestination())
    {
        // Look for EntryTarget to attack
        if (Unit* target = FindEntryTargetToAttack())
        {
            AttackStart(target);
            return;
        }

        // Only move to the next spot if we've reached the current one and found no targets
        MoveToNextGrindSpot();
    }
    else if (!me->IsMoving() && !me->IsTaxiFlying())
    {
        // If we're not at the destination and not moving, resume movement
        MoveToNextGrindSpot();
    }
}

void WorldBotAI::MoveToNextGrindSpot()
{
    if (m_currentHotSpotIndex >= m_grindHotSpots.size())
    {
        m_currentHotSpotIndex = 0;
    }

    const Position& nextSpot = m_grindHotSpots[m_currentHotSpotIndex];
    float distanceToNextSpot = me->GetDistance(nextSpot.x, nextSpot.y, nextSpot.z);

    if (distanceToNextSpot > 5.0f)
    {
        if (!me->IsMoving() || distanceToNextSpot > 50.0f)  // Only start a new path if not moving or far away
        {
            StartNewPathToSpecificDestination(nextSpot.x, nextSpot.y, nextSpot.z, me->GetMapId(), false);
        }
    }
    else
    {
        // We're already at this spot, move to the next one
        m_currentHotSpotIndex++;
        if (m_currentHotSpotIndex >= m_grindHotSpots.size())
        {
            m_currentHotSpotIndex = 0;
        }
        const Position& newSpot = m_grindHotSpots[m_currentHotSpotIndex];
        StartNewPathToSpecificDestination(newSpot.x, newSpot.y, newSpot.z, me->GetMapId(), false);
    }
}

Unit* WorldBotAI::FindEntryTargetToAttack()
{
    float searchRange = 50.0f; // Adjust this value as needed
    bool alive = true;

    Creature* target = GetClosestCreatureWithEntry(me, m_grindEntryTarget, 50.0f);

    if (target && target->IsAlive() && me->IsValidAttackTarget(target) && target->GetLevel() <= m_grindMaxLevel)
    {
        float distance = me->GetDistance(target);
        if (distance <= searchRange)
        {
            return target;
        }
    }

    return nullptr;
}

void WorldBotAI::UpdateMaxLevelForGrindProfiles()
{
    std::ostringstream query;
    query << "SELECT Guid, EntryTarget FROM worldbot_easy_quest_profiles WHERE "
        << "QuestType = 'KillAndLoot' AND HotSpots != '' AND HotSpots IS NOT NULL AND EntryTarget != '' AND EntryTarget IS NOT NULL";

    std::unique_ptr<QueryResult> result(WorldDatabase.Query(query.str().c_str()));
    if (!result)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: No grind profiles found to update MaxLevel, MinLevel, and CreatureNames");
        return;
    }

    do
    {
        Field* fields = result->Fetch();
        if (!fields)
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Failed to fetch fields from query result");
            continue;
        }

        uint32 guid = fields[0].GetUInt32();
        std::string entryTargetStr = fields[1].GetCppString();

        uint32 maxLevel = 0;
        uint32 minLevel = std::numeric_limits<uint32>::max();
        bool foundValidEntry = false;
        std::string creatureNames;

        // Parse entryTargetStr manually
        std::istringstream iss(entryTargetStr);
        std::string token;
        while (std::getline(iss, token, ','))
        {
            uint32 entryTarget = 0;
            try
            {
                entryTarget = std::stoul(token);
            }
            catch (const std::exception& e)
            {
                sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Error converting string to uint32: %s", e.what());
                continue;
            }

            if (entryTarget == 0)
            {
                sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Invalid entry target 0 for profile Guid %u", guid);
                continue;
            }

            CreatureInfo const* cInfo = sObjectMgr.GetCreatureTemplate(entryTarget);
            if (cInfo)
            {
                foundValidEntry = true;
                if (cInfo->level_max > maxLevel)
                {
                    maxLevel = cInfo->level_max;
                }
                if (cInfo->level_min < minLevel)
                {
                    minLevel = cInfo->level_min;
                }
                if (!creatureNames.empty())
                {
                    creatureNames += ", ";
                }
                creatureNames += cInfo->name;
            }
            else
            {
                sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Could not find creature template for entry %u in profile Guid %u", entryTarget, guid);
            }
        }

        // Adjust maxLevel and minLevel
        if (foundValidEntry)
        {
            maxLevel = (maxLevel < UINT32_MAX - 2) ? maxLevel + 2 : UINT32_MAX;
            minLevel = (minLevel > 2) ? minLevel - 2 : 1;
        }
        else
        {
            maxLevel = 0;
            minLevel = 0;
            creatureNames.clear();
        }

        // Manually escape single quotes in creatureNames
        std::string escapedCreatureNames;
        for (char c : creatureNames)
        {
            if (c == '\'')
                escapedCreatureNames += "''";
            else
                escapedCreatureNames += c;
        }

        std::ostringstream updateQuery;
        updateQuery << "UPDATE worldbot_easy_quest_profiles SET "
            << "MaxLevel = " << maxLevel << ", "
            << "MinLevel = " << minLevel << ", "
            << "CreatureNames = '" << escapedCreatureNames << "' "
            << "WHERE Guid = " << guid;

        if (WorldDatabase.Execute(updateQuery.str().c_str()))
        {
            if (!foundValidEntry)
            {
                sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: No valid EntryTargets found for profile Guid %u, setting MaxLevel and MinLevel to 0, CreatureNames to empty", guid);
            }
            else
            {
                sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Updated MaxLevel to %u, MinLevel to %u, and CreatureNames for profile Guid %u", maxLevel, minLevel, guid);
            }
        }
        else
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Failed to update profile Guid %u", guid);
        }
    } while (result->NextRow());

    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotAI: Finished updating MaxLevel, MinLevel, and CreatureNames for grind profiles");
}

// Helper function to split strings
std::vector<std::string> WorldBotAI::SplitString(const std::string& str, char delim)
{
    std::vector<std::string> result;
    std::istringstream iss(str);
    std::string token;
    while (std::getline(iss, token, delim))
    {
        result.push_back(token);
    }
    return result;
}

std::vector<uint32> WorldBotAI::SplitStringToUint32(const std::string& str, char delim)
{
    std::vector<uint32> result;
    std::istringstream iss(str);
    std::string token;
    while (std::getline(iss, token, delim))
    {
        try {
            result.push_back(std::stoul(token));
        }
        catch (const std::exception& e) {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Error converting string to uint32: %s", e.what());
        }
    }
    return result;
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
        true, // implemented
        1,  // Minimum level
        60   // Maximum level
        });
}
