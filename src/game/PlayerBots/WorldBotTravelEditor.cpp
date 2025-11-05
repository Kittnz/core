#include "WorldBotTravelEditor.h"
#include "MotionMaster.h"
#include "MoveSplineInit.h"
#include "MoveSpline.h"
#include "Database/DatabaseEnv.h"
#include "Log.h"
#include "TravelDataBuilder.h"

WorldBotTravelEditor* WorldBotTravelEditor::instance()
{
    static WorldBotTravelEditor instance;
    return &instance;
}

bool WorldBotTravelEditor::AddNode(Player* player, float x, float y, float z, uint32 mapId, const std::string& name, uint32 type)
{
    uint32 nodeId = 0;
    // Generate a new unique node ID
    std::unique_ptr<QueryResult> result = WorldDatabase.Query("SELECT MAX(id) FROM ai_playerbot_travelnode");
    if (result)
    {
        nodeId = (*result)[0].GetUInt32() + 1;
    }

    bool success = WorldDatabase.PExecute(
        "INSERT INTO ai_playerbot_travelnode (id, name, map_id, x, y, z, linked) "
        "VALUES (%u, '%s', %u, %f, %f, %f, %u)",
        nodeId, name.c_str(), mapId, x, y, z, type
    );

    if (success)
    {
        sWorldBotTravelSystem.LoadTravelNodes(); // Reload nodes
        player->GetSession()->SendNotification("Node added successfully with ID: %u", nodeId);
        return true;
    }

    return false;
}

bool WorldBotTravelEditor::EditNode(uint32 nodeId, const std::string& property, const std::string& value)
{
    std::string query = "UPDATE ai_playerbot_travelnode SET " + property + " = '";

    if (property == "x" || property == "y" || property == "z")
        query += std::to_string(std::stof(value));
    else if (property == "map_id" || property == "linked")
        query += std::to_string(std::stoi(value));
    else
        query += value;

    query += "' WHERE id = " + std::to_string(nodeId);

    bool success = WorldDatabase.Execute(query.c_str());
    if (success)
    {
        sWorldBotTravelSystem.LoadTravelNodes(); // Reload nodes
        return true;
    }

    return false;
}

bool WorldBotTravelEditor::DeleteNode(uint32 nodeId)
{
    bool success = WorldDatabase.PExecute("DELETE FROM ai_playerbot_travelnode WHERE id = %u", nodeId);
    if (success)
    {
        // Also delete all links associated with this node
        WorldDatabase.PExecute("DELETE FROM ai_playerbot_travelnode_link WHERE node_id = %u OR to_node_id = %u", nodeId, nodeId);
        sWorldBotTravelSystem.LoadTravelNodes(); // Reload nodes
        sWorldBotTravelSystem.LoadTravelNodeLinks(); // Reload links
        return true;
    }

    return false;
}

bool WorldBotTravelEditor::AddLink(uint32 fromNodeId, uint32 toNodeId, uint32 type, float distance, float swimDistance, uint32 extraCost)
{
    bool success = WorldDatabase.PExecute(
        "INSERT INTO ai_playerbot_travelnode_link (node_id, to_node_id, type, distance, swim_distance, extra_cost) "
        "VALUES (%u, %u, %u, %f, %f, %u)",
        fromNodeId, toNodeId, type, distance, swimDistance, extraCost
    );

    if (success)
    {
        sWorldBotTravelSystem.LoadTravelNodeLinks(); // Reload links
        return true;
    }

    return false;
}

bool WorldBotTravelEditor::EditLink(uint32 fromNodeId, uint32 toNodeId, const std::string& property, const std::string& value)
{
    std::string query = "UPDATE ai_playerbot_travelnode_link SET " + property + " = '";

    if (property == "distance" || property == "swim_distance")
        query += std::to_string(std::stof(value));
    else if (property == "type" || property == "extra_cost")
        query += std::to_string(std::stoi(value));
    else
        query += value;

    query += "' WHERE node_id = " + std::to_string(fromNodeId) + " AND to_node_id = " + std::to_string(toNodeId);

    bool success = WorldDatabase.Execute(query.c_str());
    if (success)
    {
        sWorldBotTravelSystem.LoadTravelNodeLinks(); // Reload links
        return true;
    }

    return false;
}

bool WorldBotTravelEditor::DeleteLink(uint32 fromNodeId, uint32 toNodeId)
{
    bool success = WorldDatabase.PExecute(
        "DELETE FROM ai_playerbot_travelnode_link WHERE node_id = %u AND to_node_id = %u",
        fromNodeId, toNodeId
    );

    if (success)
    {
        sWorldBotTravelSystem.LoadTravelNodeLinks(); // Reload links
        return true;
    }

    return false;
}

std::vector<TravelPath> WorldBotTravelEditor::GeneratePath(Player* player, uint32 startNodeId, uint32 endNodeId)
{
    std::vector<TravelPath> path;
    const TravelNode* startNode = sWorldBotTravelSystem.GetNode(startNodeId);
    const TravelNode* endNode = sWorldBotTravelSystem.GetNode(endNodeId);

    if (!startNode || !endNode)
    {
        player->GetSession()->SendNotification("Invalid start or end node.");
        return path;
    }

    // Save the player's original position
    float origX = player->GetPositionX();
    float origY = player->GetPositionY();
    float origZ = player->GetPositionZ();
    float origO = player->GetOrientation();

    // Temporarily move the player to the start node (without sending updates to the client)
    player->NearTeleportTo(startNode->x, startNode->y, startNode->z, player->GetOrientation(), true);

    // Create a MoveSplineInit object
    Movement::MoveSplineInit init(*player, "WorldBotTravelEditor::GeneratePath");
    init.MoveTo(endNode->x, endNode->y, endNode->z);
    init.SetWalk(false);
    init.SetVelocity(player->GetSpeed(MOVE_RUN));

    // Launch the movement calculation
    Movement::MoveSpline& moveSpline = *player->movespline;
    init.Launch();

    // Extract the path points
    int32 lastTime = 0;
    while (lastTime < moveSpline.Duration())
    {
        Movement::Location loc = moveSpline.ComputePosition();
        TravelPath pathPoint;
        pathPoint.x = loc.x;
        pathPoint.y = loc.y;
        pathPoint.z = loc.z;
        pathPoint.mapId = player->GetMapId();
        // You might need to set other TravelPath properties here
        path.push_back(pathPoint);

        lastTime += 200; // Sample every 200ms
        moveSpline.updateState(lastTime);
    }

    // Add the final position
    TravelPath finalPoint;
    finalPoint.x = endNode->x;
    finalPoint.y = endNode->y;
    finalPoint.z = endNode->z;
    finalPoint.mapId = endNode->mapId;
    // Set other properties of finalPoint if needed
    path.push_back(finalPoint);

    // Reset the player's position
    player->NearTeleportTo(origX, origY, origZ, origO, true);

    // Clear the temporary movement
    player->GetMotionMaster()->Initialize();

    return path;
}

bool WorldBotTravelEditor::SaveGeneratedPath(uint32 startNodeId, uint32 endNodeId, const std::vector<TravelPath>& path)
{
    if (path.empty())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotTravelEditor: Cannot save empty path");
        return false;
    }

    // First, ensure the start and end nodes exist in ai_playerbot_travelnode
    for (uint32 nodeId : {startNodeId, endNodeId})
    {
        const TravelNode* node = sWorldBotTravelSystem.GetNode(nodeId);
        if (!node)
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotTravelEditor: Node %u not found", nodeId);
            CharacterDatabase.RollbackTransaction();
            return false;
        }

        CharacterDatabase.PExecute("INSERT IGNORE INTO ai_playerbot_travelnode (id, name, map_id, x, y, z, linked) VALUES (%u, '%s', %u, %f, %f, %f, %u)", node->id, node->name.c_str(), node->mapId, node->x, node->y, node->z, node->linked );
    }

    // Add or update the link in ai_playerbot_travelnode_link
    float totalDistance = 0.0f;
    for (size_t i = 1; i < path.size(); ++i)
    {
        totalDistance += sWorldBotTravelSystem.GetDistance3D(path[i - 1].x, path[i - 1].y, path[i - 1].z,
            path[i].x, path[i].y, path[i].z);
    }

    CharacterDatabase.PExecute("REPLACE INTO ai_playerbot_travelnode_link (node_id, to_node_id, type, distance, swim_distance, extra_cost) VALUES (%u, %u, %u, %f, 0, 0)", startNodeId, endNodeId, static_cast<uint32>(TravelNodePathType::Walk), totalDistance );

    // Delete existing path points
    CharacterDatabase.PExecute("DELETE FROM ai_playerbot_travelnode_path WHERE node_id = %u AND to_node_id = %u", startNodeId, endNodeId);

    // Insert the new path points
    for (size_t i = 0; i < path.size(); ++i)
    {
        const TravelPath& point = path[i];
        CharacterDatabase.PExecute("INSERT INTO ai_playerbot_travelnode_path (node_id, to_node_id, nr, map_id, x, y, z) VALUES (%u, %u, %u, %u, %f, %f, %f)", startNodeId, endNodeId, i, point.mapId, point.x, point.y, point.z );
    }

    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelEditor: Successfully saved path from node %u to %u with %zu points", startNodeId, endNodeId, path.size());
    return true;
}

void WorldBotTravelEditor::CheckPath(Player* player)
{
    uint32 issuesFound = 0;

    // Check for duplicate coordinates
    for (const auto& pathPair : sWorldBotTravelSystem.m_travelPaths)
    {
        const auto& path = pathPair.second;
        if (path.x == pathPair.first.first && path.y == pathPair.first.second && path.z == pathPair.first.second)
        {
            player->GetSession()->SendNotification("Duplicate coordinates found in path from node %u to %u",
                path.nodeId, path.toNodeId);
            issuesFound++;
        }
    }

    // Check for disconnected nodes
    std::set<uint32> connectedNodes;
    for (const auto& linkPair : sWorldBotTravelSystem.m_travelNodeLinks)
    {
        connectedNodes.insert(linkPair.second.nodeId);
        connectedNodes.insert(linkPair.second.toNodeId);
    }

    for (const auto& nodePair : sWorldBotTravelSystem.m_travelNodes)
    {
        if (connectedNodes.find(nodePair.first) == connectedNodes.end())
        {
            player->GetSession()->SendNotification("Disconnected node found: %u", nodePair.first);
            issuesFound++;
        }
    }

    player->GetSession()->SendNotification("Path check completed. %u issues found.", issuesFound);
}

void WorldBotTravelEditor::CheckAllTravelPaths()
{
    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "WorldBotTravelEditor: Checking all travel paths for issues...");

    const auto& travelPaths = sWorldBotTravelSystem.GetAllTravelPaths();
    const auto& travelNodes = sWorldBotTravelSystem.GetAllNodes();
    const auto& travelNodeLinks = sWorldBotTravelSystem.GetAllNodeLinks();

    std::unordered_map<std::string, std::vector<std::tuple<uint32, uint32, uint32>>> coordinateMap;
    std::vector<std::tuple<uint32, uint32, uint32>> duplicatePoints;
    uint32 totalPoints = 0;
    uint32 duplicatePointsCount = 0;
    std::unordered_map<uint32, std::unordered_set<uint32>> nodeConnections;
    std::unordered_map<std::string, uint32> uniqueDeleteStatements;

    // Additional checks
    std::unordered_set<uint32> nodesInPaths;
    std::unordered_map<uint32, std::vector<uint32>> pathSequences;
    std::unordered_set<uint32> nodesWithoutLinks;
    std::unordered_set<uint32> linksToNonexistentNodes;

    for (const auto& pathPair : travelPaths)
    {
        const TravelPath& path = pathPair.second;
        totalPoints++;

        std::string coordKey = std::to_string(path.mapId) + ":" +
            std::to_string(int(path.x * 100)) + ":" +
            std::to_string(int(path.y * 100)) + ":" +
            std::to_string(int(path.z * 100));

        if (!coordinateMap[coordKey].empty())
        {
            for (const auto& existingPoint : coordinateMap[coordKey])
            {
                duplicatePoints.emplace_back(std::get<0>(existingPoint), std::get<1>(existingPoint), path.nr);
                duplicatePointsCount++;

                std::string deleteKey = std::to_string(path.nodeId) + "_" + std::to_string(path.toNodeId) + "_" + std::to_string(path.nr);
                uniqueDeleteStatements[deleteKey]++;
            }
        }

        coordinateMap[coordKey].emplace_back(path.nodeId, path.toNodeId, path.nr);
        nodeConnections[path.nodeId].insert(path.toNodeId);

        // Additional checks
        nodesInPaths.insert(path.nodeId);
        nodesInPaths.insert(path.toNodeId);
        pathSequences[path.nodeId].push_back(path.nr);

        // Check if the nodes in the path exist in the nodes list
        if (travelNodes.find(path.nodeId) == travelNodes.end())
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Path references non-existent node: %u", path.nodeId);
        }
        if (travelNodes.find(path.toNodeId) == travelNodes.end())
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Path references non-existent node: %u", path.toNodeId);
        }

        // Check for extremely long paths
        float pathLength = std::sqrt(std::pow(path.x, 2) + std::pow(path.y, 2) + std::pow(path.z, 2));
        if (pathLength > 20000.0f) // Adjust this threshold as needed
        {
            sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "Unusually long path detected: from node %u to %u, length: %.2f", path.nodeId, path.toNodeId, pathLength);
        }
    }

    // Check for nodes without links
    for (const auto& nodePair : travelNodes)
    {
        if (travelNodeLinks.find(nodePair.first) == travelNodeLinks.end())
        {
            nodesWithoutLinks.insert(nodePair.first);
        }
    }

    // Check for links to non-existent nodes
    for (const auto& linkPair : travelNodeLinks)
    {
        if (travelNodes.find(linkPair.second.toNodeId) == travelNodes.end())
        {
            linksToNonexistentNodes.insert(linkPair.second.toNodeId);
        }
    }

    // Check for incorrect path sequences
    for (const auto& sequence : pathSequences)
    {
        std::vector<uint32> sortedSequence = sequence.second;
        std::sort(sortedSequence.begin(), sortedSequence.end());
        for (size_t i = 0; i < sortedSequence.size(); ++i)
        {
            if (sortedSequence[i] != i + 1)
            {
                sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Incorrect path sequence for node %u", sequence.first);
                break;
            }
        }
    }

    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotTravelEditor: Travel path check completed.");
    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "Total points checked: %u", totalPoints);
    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "Duplicate points found: %u", duplicatePointsCount);
    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "Nodes without links: %zu", nodesWithoutLinks.size());
    sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "Links to non-existent nodes: %zu", linksToNonexistentNodes.size());

    if (duplicatePointsCount > 0)
    {
        std::string fileName = "duplicate_points_delete_" + std::to_string(time(nullptr)) + ".sql";
        std::ofstream sqlFile(fileName);
        if (sqlFile.is_open())
        {
            // Generate SQL statements for unique deletes
            for (const auto& pair : uniqueDeleteStatements)
            {
                const std::string& key = pair.first;
                uint32 count = pair.second;

                std::istringstream iss(key);
                std::string nodeId, toNodeId, nr;
                std::getline(iss, nodeId, '_');
                std::getline(iss, toNodeId, '_');
                std::getline(iss, nr, '_');

                sqlFile << "DELETE FROM ai_playerbot_travelnode_path WHERE node_id = " << nodeId
                    << " AND to_node_id = " << toNodeId
                    << " AND nr = " << nr << "; -- Duplicate count: " << count << "\n";
            }

            sqlFile.close();
            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "SQL statements written to file: %s", fileName.c_str());

            // Execute SQL statements
            std::ifstream readSqlFile(fileName);
            if (readSqlFile.is_open())
            {
                std::string sqlStatement;
                while (std::getline(readSqlFile, sqlStatement))
                {
                    if (!sqlStatement.empty())
                    {
                        // Remove the comment before executing
                        size_t commentPos = sqlStatement.find("--");
                        if (commentPos != std::string::npos)
                        {
                            sqlStatement = sqlStatement.substr(0, commentPos);
                        }

                        if (WorldDatabase.Execute(sqlStatement.c_str()))
                        {
                            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "Executed SQL: %s", sqlStatement.c_str());
                        }
                        else
                        {
                            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Failed to execute SQL: %s", sqlStatement.c_str());
                        }
                    }
                }
                readSqlFile.close();
            }

            sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "Database updated. Reloading travel paths...");
            sWorldBotTravelSystem.ReloadTravelPaths();
        }
        else
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Failed to open file for writing SQL statements: %s", fileName.c_str());
        }
    }

    // Check for disconnected nodes
    std::unordered_set<uint32> allNodes;
    std::unordered_set<uint32> connectedNodes;
    for (const auto& connection : nodeConnections)
    {
        allNodes.insert(connection.first);
        allNodes.insert(connection.second.begin(), connection.second.end());
        connectedNodes.insert(connection.first);
        connectedNodes.insert(connection.second.begin(), connection.second.end());
    }

    std::vector<uint32> disconnectedNodes;
    for (uint32 node : allNodes)
    {
        if (connectedNodes.find(node) == connectedNodes.end())
        {
            disconnectedNodes.push_back(node);
        }
    }

    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "Disconnected nodes found: %zu", disconnectedNodes.size());
    for (uint32 node : disconnectedNodes)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "Disconnected node: %u", node);
    }

    // Check for one-way connections
    std::vector<std::pair<uint32, uint32>> oneWayConnections;
    for (const auto& connection : nodeConnections)
    {
        for (uint32 toNode : connection.second)
        {
            if (nodeConnections[toNode].find(connection.first) == nodeConnections[toNode].end())
            {
                oneWayConnections.emplace_back(connection.first, toNode);
            }
        }
    }

    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "One-way connections found: %zu", oneWayConnections.size());
    for (const auto& connection : oneWayConnections)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "One-way connection: %u -> %u", connection.first, connection.second);
    }

    sLog.Out(LOG_BASIC, LOG_LVL_DEBUG, "Unique delete statements generated: %zu", uniqueDeleteStatements.size());
}

bool WorldBotTravelEditor::GenerateTravelNodes(Player* player, const std::string& args)
{
    player->GetSession()->SendNotification("Starting travel node generation...");
    player->GetSession()->SendNotification("This may take several minutes, please wait...");
    
    TravelDataBuilder builder;
    
    // Parse arguments for options
    bool generateGrid = args.find("grid") != std::string::npos;
    
    if (generateGrid)
    {
        builder.SetGenerateGridNodes(true, 100.0f);
        player->GetSession()->SendNotification("Grid sampling enabled with 100 yard spacing");
    }
    
    // Check for specific maps
    std::vector<uint32> mapIds;
    size_t mapPos = args.find("map");
    if (mapPos != std::string::npos)
    {
        std::istringstream iss(args.substr(mapPos + 3));
        uint32 mapId;
        while (iss >> mapId)
        {
            mapIds.push_back(mapId);
        }
        
        if (!mapIds.empty())
        {
            builder.SetMapsToGenerate(mapIds);
            player->GetSession()->SendNotification("Generating nodes for %u specific maps", static_cast<uint32>(mapIds.size()));
        }
    }
    
    // Run the generation
    if (builder.BuildCompleteDataset("travel_nodes_generated.sql"))
    {
        player->GetSession()->SendNotification("Travel node generation complete!");
        player->GetSession()->SendNotification("Output file: travel_nodes_generated.sql");
        player->GetSession()->SendNotification("Please reload the travel system to use the new data");
        return true;
    }
    else
    {
        player->GetSession()->SendNotification("Travel node generation FAILED. Check server logs for details.");
        return false;
    }
}

bool WorldBotTravelEditor::ReloadTravelSystem(Player* player)
{
    player->GetSession()->SendNotification("Reloading travel node data...");
    
    sWorldBotTravelSystem.LoadTravelNodes();
    sWorldBotTravelSystem.LoadTravelNodeLinks();
    sWorldBotTravelSystem.LoadTravelPaths();
    
    player->GetSession()->SendNotification("Travel system reloaded successfully");
    player->GetSession()->SendNotification("Nodes: %u, Links: %u, Paths: %u", 
                                          static_cast<uint32>(sWorldBotTravelSystem.m_travelNodes.size()),
                                          static_cast<uint32>(sWorldBotTravelSystem.m_travelNodeLinks.size()),
                                          static_cast<uint32>(sWorldBotTravelSystem.m_travelPaths.size()));
    return true;
}
