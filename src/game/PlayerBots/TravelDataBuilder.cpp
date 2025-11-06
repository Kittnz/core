#include "TravelDataBuilder.h"
#include "Log.h"
#include <fstream>

TravelDataBuilder::TravelDataBuilder()
    : m_nodeGenerator(nullptr)
    , m_pathGenerator(nullptr)
    , m_generateGridNodes(false)
    , m_gridSize(100.0f)
{
    m_nodeGenerator = new TravelNodeGenerator();
}

TravelDataBuilder::~TravelDataBuilder()
{
    delete m_pathGenerator;
    delete m_nodeGenerator;
}

bool TravelDataBuilder::BuildCompleteDataset(const std::string& outputFile)
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "=== Starting Complete Travel Data Generation ===");
    
    if (!Phase1_GenerateNodes())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Phase 1 failed: Node generation");
        return false;
    }
    
    if (!Phase2_ValidateNodes())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Phase 2 failed: Node validation");
        return false;
    }
    
    if (!Phase3_GenerateLinks())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Phase 3 failed: Link generation");
        return false;
    }
    
    if (!Phase4_GeneratePaths())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Phase 4 failed: Path generation");
        return false;
    }
    
    if (!Phase5_CalculateDistances())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Phase 5 failed: Distance calculation");
        return false;
    }
    
    if (!Phase6_Export(outputFile))
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Phase 6 failed: Export");
        return false;
    }
    
    PrintStatistics();
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "=== Travel Data Generation Complete ===");
    return true;
}

bool TravelDataBuilder::Phase1_GenerateNodes()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "=== Phase 1: Generating Nodes ===");
    
    m_nodeGenerator->GenerateNodesFromCreatures();
    m_nodeGenerator->GenerateNodesFromGameObjects();
    m_nodeGenerator->GenerateNodesFromAreaTriggers();
    m_nodeGenerator->GenerateFlightPaths();
    m_nodeGenerator->GenerateTransportLinks();
    
    // Generate nodes at creature spawn clusters for grinding
    m_nodeGenerator->GenerateNodesFromGrindSpots();
    
    // Optional: Grid sampling
    if (m_generateGridNodes)
    {
        if (m_mapIds.empty())
        {
            // Default maps: Eastern Kingdoms and Kalimdor
            m_nodeGenerator->GenerateNodesFromGridSampling(0, m_gridSize);
            m_nodeGenerator->GenerateNodesFromGridSampling(1, m_gridSize);
        }
        else
        {
            for (uint32 mapId : m_mapIds)
            {
                m_nodeGenerator->GenerateNodesFromGridSampling(mapId, m_gridSize);
            }
        }
    }
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Phase 1 Complete: %u nodes generated", 
             m_nodeGenerator->GetNodeCount());
    return true;
}

bool TravelDataBuilder::Phase2_ValidateNodes()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "=== Phase 2: Validating Nodes ===");
    
    m_nodeGenerator->ValidateNodeTerrain();
    m_nodeGenerator->FilterDuplicateNodes(8.0f);
    m_nodeGenerator->PrioritizeNodes();
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Phase 2 Complete: %u validated nodes", m_nodeGenerator->GetNodeCount());
    return m_nodeGenerator->GetNodeCount() > 0;
}

bool TravelDataBuilder::Phase3_GenerateLinks()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "=== Phase 3: Generating Links ===");
    
    // First pass: Generate standard walking paths between nearby nodes
    m_nodeGenerator->GenerateWalkingPaths();
    
    // Second pass: Use creature spawn locations to bridge long-distance gaps
    m_nodeGenerator->GenerateCreatureBasedWaypoints();
    
    // Optimize the network by removing useless links
    m_nodeGenerator->OptimizeNodeNetwork();
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Phase 3 Complete: %u links generated", 
             m_nodeGenerator->GetLinkCount());
    return m_nodeGenerator->GetLinkCount() > 0;
}

bool TravelDataBuilder::Phase4_GeneratePaths()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "=== Phase 4: Generating Detailed Paths ===");
    
    if (m_pathGenerator)
        delete m_pathGenerator;
    
    m_pathGenerator = new TravelPathGenerator(m_nodeGenerator);
    m_pathGenerator->GenerateDetailedPaths();
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Phase 4 Complete");
    return true;
}

bool TravelDataBuilder::Phase5_CalculateDistances()
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "=== Phase 5: Calculating Distances ===");
    
    if (!m_pathGenerator)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Path generator not initialized");
        return false;
    }
    
    m_nodeGenerator->CalculateLinkDistances(m_pathGenerator);
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Phase 5 Complete");
    return true;
}

bool TravelDataBuilder::Phase6_Export(const std::string& outputFile)
{
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "=== Phase 6: Exporting to %s ===", outputFile.c_str());
    
    std::ofstream file(outputFile);
    if (!file.is_open())
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "Failed to open output file: %s", outputFile.c_str());
        return false;
    }
    
    file << "-- Auto-generated Travel Node Data\n";
    file << "-- Generated by WorldBot Travel Data Builder\n\n";
    
    m_nodeGenerator->ExportToSQL(file);
    
    if (m_pathGenerator)
    {
        m_pathGenerator->ExportPathsToSQL(file);
    }
    
    file.close();
    
    sLog.Out(LOG_BASIC, LOG_LVL_MINIMAL, "Phase 6 Complete: Data exported to %s", outputFile.c_str());
    return true;
}

void TravelDataBuilder::SetGenerateGridNodes(bool enable, float gridSize)
{
    m_generateGridNodes = enable;
    m_gridSize = gridSize;
}

void TravelDataBuilder::SetMapsToGenerate(const std::vector<uint32>& mapIds)
{
    m_mapIds = mapIds;
}

void TravelDataBuilder::PrintStatistics() const
{
    m_nodeGenerator->PrintGenerationStats();
}
