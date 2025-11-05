#ifndef _TRAVEL_DATA_BUILDER_H
#define _TRAVEL_DATA_BUILDER_H

#include "TravelNodeGenerator.h"
#include "TravelPathGenerator.h"

class TravelDataBuilder
{
public:
    TravelDataBuilder();
    ~TravelDataBuilder();
    
    // Main generation function
    bool BuildCompleteDataset(const std::string& outputFile = "travel_data_generated.sql");
    
    // Individual phases (can be called separately for testing)
    bool Phase1_GenerateNodes();
    bool Phase2_ValidateNodes();
    bool Phase3_GenerateLinks();
    bool Phase4_GeneratePaths();
    bool Phase5_CalculateDistances();
    bool Phase6_Export(const std::string& outputFile);
    
    // Configuration
    void SetGenerateGridNodes(bool enable, float gridSize = 100.0f);
    void SetMapsToGenerate(const std::vector<uint32>& mapIds);
    
    // Statistics
    void PrintStatistics() const;
    
private:
    TravelNodeGenerator* m_nodeGenerator;
    TravelPathGenerator* m_pathGenerator;
    
    bool m_generateGridNodes;
    float m_gridSize;
    std::vector<uint32> m_mapIds;
};

#endif // _TRAVEL_DATA_BUILDER_H
