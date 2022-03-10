#pragma once

#include "Common.h"
#include "SharedDefines.h"
#include "DBCStructure.h"
#include <map>

enum FactionFlags
{
    FACTION_FLAG_VISIBLE          = 0x01, // Makes visible in client (set or can be set at interaction with target of this faction)
    FACTION_FLAG_AT_WAR           = 0x02, // Enable AtWar-button in client. player controlled (except opposition team always war state), Flag only set on initial creation
    FACTION_FLAG_HIDDEN           = 0x04, // Hidden faction from reputation pane in client (player can gain reputation, but this update not sent to client)
    FACTION_FLAG_INVISIBLE_FORCED = 0x08, // Always overwrite FACTION_FLAG_VISIBLE and hide faction in rep.list, used for hide opposite team factions
    FACTION_FLAG_PEACE_FORCED     = 0x10, // Always overwrite FACTION_FLAG_AT_WAR, used for prevent war with own team factions
    FACTION_FLAG_INACTIVE         = 0x20, // Player controlled, state stored in characters.data ( CMSG_SET_FACTION_INACTIVE )
    FACTION_FLAG_RIVAL            = 0x40  // Flag for the two competing outland factions
};

typedef uint32 RepListID;
struct FactionState
{
    uint32 ID;
    RepListID ReputationListID;
    uint32 Flags;
    int32  Standing;
    bool needSend;
    bool needSave;
};

typedef std::map<RepListID,FactionState> FactionStateList;
typedef std::pair<FactionStateList::const_iterator,FactionStateList::const_iterator> FactionStateListPair;

typedef std::map<uint32,ReputationRank> ForcedReactions;

class Player;
class QueryResult;

class ReputationMgr
{
public:
    explicit ReputationMgr(Player* owner) : m_player(owner) {}
    ~ReputationMgr() {}

    void SaveToDB();
    void LoadFromDB(QueryResult* result);

    static ReputationRank ReputationToRank(const int32 standing);
    static int32 GetRepPointsToRank(const ReputationRank rank);

    FactionStateList const& GetStateList() const { return m_factions; }

    FactionState const* GetState(FactionEntry const* factionEntry) const;
    FactionState const* GetState(const RepListID id) const;

    int32 GetReputation(const uint32 faction_id) const;
    int32 GetReputation(FactionEntry const* factionEntry) const;
    int32 GetBaseReputation(FactionEntry const* factionEntry) const;

    ReputationRank GetRank(FactionEntry const* factionEntry) const;
    ReputationRank GetBaseRank(FactionEntry const* factionEntry) const;

    ReputationRank const* GetForcedRankIfAny(FactionTemplateEntry const* factionTemplateEntry) const;

    bool SetReputation(FactionEntry const* factionEntry, const int32 standing) { return SetReputation(factionEntry, standing, false); }
    bool ModifyReputation(FactionEntry const* factionEntry, const int32 standing, const bool noSpillover = false) { return SetReputation(factionEntry, standing, true, noSpillover); }

    void SetVisible(FactionTemplateEntry const* factionTemplateEntry);
    void SetVisible(FactionEntry const* factionEntry);
    bool SetAtWar(const RepListID repListID, bool on);
    void SetInactive(const RepListID repListID, bool on);

    void ApplyForceReaction(const uint32 faction_id, const ReputationRank rank, const bool apply);

    void SendInitialReputations();
    void SendForceReactions();
    void SendState(FactionState const* faction);

    static const uint32 PointsInRank[MAX_REPUTATION_RANK];
    static constexpr uint32 Reputation_Cap{ 42999 };
    static constexpr int32 Reputation_Bottom{ -42000 };

private:
    void Initialize();
    uint32 GetDefaultStateFlags(const FactionEntry* factionEntry) const;
    bool SetReputation(FactionEntry const* factionEntry, const int32 standing, const bool incremental, const bool noSpillover = false);
    bool SetOneFactionReputation(FactionEntry const* factionEntry, int32 standing, const bool incremental);
    void SetVisible(FactionState* faction);
    bool SetAtWar(FactionState* faction, const bool atWar);
    void SetInactive(FactionState* faction, const bool inactive);
    void SendVisible(FactionState const* faction) const;

    Player* m_player;
    FactionStateList m_factions;
    ForcedReactions m_forcedReactions;
};
