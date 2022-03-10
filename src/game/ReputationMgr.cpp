#include "ReputationMgr.h"
#include "DBCStores.h"
#include "Player.h"
#include "WorldPacket.h"
#include "ObjectMgr.h"
#include <numeric>

const uint32 ReputationMgr::PointsInRank[MAX_REPUTATION_RANK] = { 36000, 3000, 3000, 3000, 6000, 12000, 21000, 1000 };

int32 ReputationMgr::GetRepPointsToRank(const ReputationRank rank)
{
    return (std::accumulate(PointsInRank, PointsInRank + rank, 0) - 42000);
}

ReputationRank ReputationMgr::ReputationToRank(const int32 standing)
{
    int32 limit{ (Reputation_Cap + 1) };

    for (auto i{ (MAX_REPUTATION_RANK - 1) }; i >= MIN_REPUTATION_RANK; --i)
    {
        limit -= PointsInRank[i];
        if (standing >= limit)
        {
            return ReputationRank(i);
        }
    }

    return MIN_REPUTATION_RANK;
}

FactionState const* ReputationMgr::GetState(FactionEntry const* factionEntry) const
{
    return ((factionEntry && factionEntry->CanHaveReputation()) ? GetState(RepListID(factionEntry->reputationListID)) : nullptr);
}

FactionState const* ReputationMgr::GetState(const RepListID id) const
{
    FactionStateList::const_iterator repItr{ m_factions.find(id) };

    return (repItr != m_factions.end() ? &repItr->second : nullptr);
}

int32 ReputationMgr::GetReputation(const uint32 faction_id) const
{
    FactionEntry const* factionEntry{ sObjectMgr.GetFactionEntry(faction_id) };

    if (!factionEntry)
    {
        sLog.outError("ReputationMgr::GetReputation: Can't get reputation of %s for unknown faction (faction id) #%u.", m_player->GetName(), faction_id);
        return 0;
    }

    return GetReputation(factionEntry);
}

int32 ReputationMgr::GetReputation(FactionEntry const* factionEntry) const
{
    if (!factionEntry)
        return 0;

    if (FactionState const* state{ GetState(factionEntry) })
    {
        return (GetBaseReputation(factionEntry) + state->Standing);
    }

    return 0;
}

int32 ReputationMgr::GetBaseReputation(FactionEntry const* factionEntry) const
{
    if (!factionEntry)
        return 0;

    const uint32 raceMask{ m_player->GetRaceMask() };
    const uint32 classMask{ m_player->GetClassMask() };

    const int idx{ static_cast<int>(factionEntry->GetIndexFitTo(raceMask, classMask)) };

    return (idx >= 0 ? factionEntry->BaseRepValue[idx] : 0);
}

ReputationRank ReputationMgr::GetRank(FactionEntry const* factionEntry) const
{
    const int32 reputation{ GetReputation(factionEntry) };

    return ReputationToRank(reputation);
}

ReputationRank ReputationMgr::GetBaseRank(FactionEntry const* factionEntry) const
{
    const int32 reputation{ GetBaseReputation(factionEntry) };

    return ReputationToRank(reputation);
}

ReputationRank const* ReputationMgr::GetForcedRankIfAny(FactionTemplateEntry const* factionTemplateEntry) const
{
    if (!factionTemplateEntry)
        return nullptr;

    ForcedReactions::const_iterator forceItr{ m_forcedReactions.find(factionTemplateEntry->faction) };

    return (forceItr != m_forcedReactions.end() ? &forceItr->second : nullptr);
}

void ReputationMgr::ApplyForceReaction(const uint32 faction_id, const ReputationRank rank, const bool apply)
{
    (apply ? m_forcedReactions[faction_id] = rank : m_forcedReactions.erase(faction_id));
}

uint32 ReputationMgr::GetDefaultStateFlags(FactionEntry const* factionEntry) const
{
    if (!factionEntry)
        return 0;

    const uint32 raceMask{ m_player->GetRaceMask() };
    const uint32 classMask{ m_player->GetClassMask() };

    const int idx{ static_cast<int>(factionEntry->GetIndexFitTo(raceMask, classMask)) };

    return (idx >= 0 ? factionEntry->ReputationFlags[idx] : 0);
}

void ReputationMgr::SendForceReactions()
{
    WorldPacket data;
    data.Initialize(SMSG_SET_FORCED_REACTIONS, ((4 + m_forcedReactions.size()) * (4 + 4)));
    data << static_cast<uint32>(m_forcedReactions.size());

    for (const auto& itr : m_forcedReactions)
    {
        data << static_cast<uint32>(itr.first);  // faction_id (Faction.dbc)
        data << static_cast<uint32>(itr.second); // reputation rank
    }

    m_player->SendDirectMessage(&data);
}

void ReputationMgr::SendState(FactionState const* faction)
{
    if (!faction)
        return;

    uint32 count{ 1 };

    WorldPacket data(SMSG_SET_FACTION_STANDING, (16)); // last check 2.4.0
    size_t p_count{ data.wpos() };
    data << static_cast<uint32>(count); // Placeholder

    data << static_cast<uint32>(faction->ReputationListID);
    data << static_cast<uint32>(faction->Standing);

    for (auto& m_faction : m_factions)
    {
        FactionState& subFaction{ m_faction.second };
        if (subFaction.needSend)
        {
            subFaction.needSend = false;
            if (subFaction.ReputationListID != faction->ReputationListID)
            {
                data << static_cast<uint32>(subFaction.ReputationListID);
                data << static_cast<uint32>(subFaction.Standing);

                ++count;
            }
        }
    }

    data.put<uint32>(p_count, count);
    m_player->SendDirectMessage(&data);
}

void ReputationMgr::SendInitialReputations()
{
    const uint8 factionCount{ 64 };
    WorldPacket data(SMSG_INITIALIZE_FACTIONS, (4 + (factionCount * 5)));
    data << static_cast<uint32>(factionCount);

    RepListID a = 0;

    for (auto& m_faction : m_factions)
    {
        // Fill in absent fields
        for (; a != m_faction.first; ++a)
        {
            data << static_cast<uint8>(0x00);
            data << static_cast<uint32>(0x00000000);
        }

        // Fill in encountered data
        data << static_cast<uint8>(m_faction.second.Flags);
        data << static_cast<uint32>(m_faction.second.Standing);

        m_faction.second.needSend = false;

        ++a;
    }

    // Fill in absent fields
    for (; a != /*factionCount*/ 69; ++a)
    {
        data << static_cast<uint8>(0x00);
        data << static_cast<uint32>(0x00000000);
    }

    m_player->SendDirectMessage(&data);
}

void ReputationMgr::SendVisible(FactionState const* faction) const
{
    if (!faction)
        return;

    if (m_player->GetSession()->PlayerLoading())
        return;

    // Make faction visible in reputation list at client
    WorldPacket data(SMSG_SET_FACTION_VISIBLE, 4);
    data << faction->ReputationListID;

    m_player->SendDirectMessage(&data);
}

void ReputationMgr::Initialize()
{
    m_factions.clear();

    for (auto const& itr : sObjectMgr.GetFactionMap())
    {
        FactionEntry const *factionEntry = &itr.second;

        if (factionEntry && factionEntry->CanHaveReputation())
        {
            FactionState newFaction{};
            newFaction.ID = factionEntry->ID;
            newFaction.ReputationListID = factionEntry->reputationListID;
            newFaction.Standing = 0;

            // Dirty hack for Cenarion Circle faction
            newFaction.Flags = (newFaction.ID == 609 ? (GetDefaultStateFlags(factionEntry) - FACTION_FLAG_AT_WAR) : GetDefaultStateFlags(factionEntry));

            newFaction.needSend = true;
            newFaction.needSave = true;

            m_factions[newFaction.ReputationListID] = newFaction;
        }
    }
}

bool ReputationMgr::SetReputation(FactionEntry const* factionEntry, const int32 standing, const bool incremental, const bool noSpillover)
{
    if (!factionEntry)
        return false;

    bool res{ false };

    // If spillover definition exists in DB
    if (const RepSpilloverTemplate * repTemplate{ sObjectMgr.GetRepSpilloverTemplate(factionEntry->ID) })
    {
        for (uint32 i{ 0 }; i < MAX_SPILLOVER_FACTIONS; ++i)
        {
            if (!noSpillover && repTemplate->faction[i])
            {
                if (m_player->GetReputationRank(repTemplate->faction[i]) <= ReputationRank(repTemplate->faction_rank[i]))
                {
                    // Bonuses are already given, so just modify standing by rate
                    const int32 spilloverRep{ static_cast<int>(standing * repTemplate->faction_rate[i]) };
                    SetOneFactionReputation(sObjectMgr.GetFactionEntry(repTemplate->faction[i]), spilloverRep, incremental);
                }
            }
        }
    }

    // Spillover done, update faction itself
    FactionStateList::const_iterator faction{ m_factions.find(RepListID(factionEntry->reputationListID)) };
    if (faction != m_factions.end())
    {
        res = SetOneFactionReputation(factionEntry, standing, incremental);
        // Only this faction gets reported to client, even if it has no own visible standing
        SendState(&faction->second);
    }

    return res;
}

bool ReputationMgr::SetOneFactionReputation(FactionEntry const* factionEntry, int32 standing, const bool incremental)
{
    if (!factionEntry)
        return false;

    FactionStateList::iterator itr{ m_factions.find(RepListID(factionEntry->reputationListID)) };
    if (itr != m_factions.end())
    {
        FactionState& faction{ itr->second };
        const int32 BaseRep{ GetBaseReputation(factionEntry) };

        if (incremental)
        {
            standing += faction.Standing + BaseRep;
        }

        if (standing > Reputation_Cap)
        {
            standing = Reputation_Cap;
        }
        else if (standing < Reputation_Bottom)
        {
            standing = Reputation_Bottom;
        }

        const ReputationRank rankOld{ ReputationToRank(faction.Standing + BaseRep) };
        const ReputationRank rankNew{ ReputationToRank(standing) };

        faction.Standing = standing - BaseRep;
        faction.needSend = true;
        faction.needSave = true;

        SetVisible(&faction);

        if (rankNew != rankOld)
        {
            // Server alters "At war" flag on two occasions:
            // When reputation dips to "Hostile": Forced tick and now locked for manual changes
            if ((rankNew < REP_UNFRIENDLY) && (rankNew < rankOld) && (rankOld > REP_HOSTILE))
            {
                SetAtWar(&itr->second, true);
            }
            // When reputation improves to "Neutral": Untick by id, can be manually overriden for eligible factions
            else if ((rankNew > REP_UNFRIENDLY) && (rankNew > rankOld) && (rankOld < REP_NEUTRAL))
            {
                SetAtWar(RepListID(factionEntry->reputationListID), false);
            }
        }

        m_player->ReputationChanged(factionEntry);

        if (rankNew > rankOld)
            return true;
    }

    return false;
}

void ReputationMgr::SetVisible(FactionTemplateEntry const* factionTemplateEntry)
{
    if (!factionTemplateEntry || !factionTemplateEntry->faction)
        return;

    if (FactionEntry const* factionEntry{ sObjectMgr.GetFactionEntry(factionTemplateEntry->faction) })
        SetVisible(factionEntry);
}

void ReputationMgr::SetVisible(FactionEntry const* factionEntry)
{
    if (!factionEntry || !factionEntry->CanHaveReputation())
        return;

    FactionStateList::iterator itr{ m_factions.find(RepListID(factionEntry->reputationListID)) };
    if (itr == m_factions.end())
        return;

    SetVisible(&itr->second);
}

void ReputationMgr::SetVisible(FactionState* faction)
{
    if (!faction)
        return;

    // Always invisible or hidden faction can't be make visible
    if (faction->Flags & (FACTION_FLAG_INVISIBLE_FORCED | FACTION_FLAG_HIDDEN))
        return;

    // Already set
    if (faction->Flags & FACTION_FLAG_VISIBLE)
        return;

    faction->Flags |= FACTION_FLAG_VISIBLE;
    faction->needSend = true;
    faction->needSave = true;

    SendVisible(faction);
}

bool ReputationMgr::SetAtWar(const RepListID repListID, const bool on)
{
    FactionStateList::iterator itr{ m_factions.find(repListID) };
    if (itr == m_factions.end())
        return false;

    // Always invisible or hidden faction can't change war state
    if (itr->second.Flags & (FACTION_FLAG_INVISIBLE_FORCED | FACTION_FLAG_HIDDEN))
        return false;

    return SetAtWar(&itr->second, on);
}

bool ReputationMgr::SetAtWar(FactionState* faction, const bool atWar)
{
    if (!faction)
        return false;

    // Already set
    if (((faction->Flags & FACTION_FLAG_AT_WAR) != 0) && atWar)
        return false;

    // Not allow declare war to faction unless already hated or less
    if (atWar && (faction->Flags & FACTION_FLAG_PEACE_FORCED) != 0 && ReputationToRank(faction->Standing) > REP_HATED)
        return false;

    if (atWar)
    {
        faction->Flags |= FACTION_FLAG_AT_WAR;
    }
    else
    {
        faction->Flags &= ~static_cast<uint32>(FACTION_FLAG_AT_WAR);
    }

    faction->needSend = true;
    faction->needSave = true;

    return true;
}

void ReputationMgr::SetInactive(const RepListID repListID, const bool on)
{
    FactionStateList::iterator itr{ m_factions.find(repListID) };
    if (itr == m_factions.end())
        return;

    SetInactive(&itr->second, on);
}

void ReputationMgr::SetInactive(FactionState* faction, const bool inactive)
{
    // Always invisible or hidden faction can't be inactive
    if (inactive && ((faction->Flags & (FACTION_FLAG_INVISIBLE_FORCED | FACTION_FLAG_HIDDEN)) || !(faction->Flags & FACTION_FLAG_VISIBLE)))
        return;

    // Already set
    if (((faction->Flags & FACTION_FLAG_INACTIVE) != 0) == inactive)
        return;

    if (inactive)
    {
        faction->Flags |= FACTION_FLAG_INACTIVE;
    }
    else
    {
        faction->Flags &= ~FACTION_FLAG_INACTIVE;
    }

    faction->needSend = true;
    faction->needSave = true;
}

void ReputationMgr::LoadFromDB(QueryResult* result)
{
    // Set initial reputations (so everything is nifty before DB data load)
    Initialize();

    if (result)
    {
        do
        {
            Field const* fields{ result->Fetch() };

            FactionEntry const* factionEntry{ sObjectMgr.GetFactionEntry(fields[0].GetUInt32()) };
            if (factionEntry && factionEntry->CanHaveReputation())
            {
                FactionState* faction{ &m_factions[factionEntry->reputationListID] };

                // Update standing to current
                faction->Standing = static_cast<int32>(fields[1].GetUInt32());

                const uint32 dbFactionFlags{ fields[2].GetUInt32() };

                if (dbFactionFlags & FACTION_FLAG_VISIBLE)
                    SetVisible(faction);                    // Have internal checks for forced invisibility

                if (dbFactionFlags & FACTION_FLAG_INACTIVE)
                    SetInactive(faction, true);             // Have internal checks for visibility requirement

                if (dbFactionFlags & FACTION_FLAG_AT_WAR)   // DB at war
                {
                    SetAtWar(faction, true);                // Have internal checks for FACTION_FLAG_PEACE_FORCED
                }
                else                                        // DB not at war
                {
                    // Allow remove if visible (and then not FACTION_FLAG_INVISIBLE_FORCED or FACTION_FLAG_HIDDEN)
                    if (faction->Flags & FACTION_FLAG_VISIBLE)
                    {
                        SetAtWar(faction, false);           // Have internal checks for FACTION_FLAG_PEACE_FORCED
                    }
                }

                // Set atWar for hostile
                ForcedReactions::const_iterator forceItr{ m_forcedReactions.find(factionEntry->ID) };
                if (forceItr != m_forcedReactions.end())
                {
                    if (forceItr->second <= REP_HOSTILE)
                    {
                        SetAtWar(faction, true);
                    }
                }
                else if (GetRank(factionEntry) <= REP_HOSTILE)
                {
                    SetAtWar(faction, true);
                }

                // Reset changed flag if values similar to saved in DB
                if (faction->Flags == dbFactionFlags)
                {
                    faction->needSend = false;
                    faction->needSave = false;
                }
            }
        } while (result->NextRow());
    }
}

void ReputationMgr::SaveToDB()
{
    static SqlStatementID delRep;
    static SqlStatementID insRep;

    SqlStatement stmtDel{ CharacterDatabase.CreateStatement(delRep, "DELETE FROM `character_reputation` WHERE `guid` = ? AND `faction` = ?") };
    SqlStatement stmtIns{ CharacterDatabase.CreateStatement(insRep, "INSERT INTO `character_reputation` (`guid`, `faction`, `standing`, `flags`) VALUES (?, ?, ?, ?)") };

    for (auto& m_faction : m_factions)
    {
        FactionState& faction = m_faction.second;
        if (faction.needSave)
        {
            stmtDel.PExecute(m_player->GetGUIDLow(), faction.ID);
            stmtIns.PExecute(m_player->GetGUIDLow(), faction.ID, faction.Standing, faction.Flags);
            faction.needSave = false;
        }
    }
}
