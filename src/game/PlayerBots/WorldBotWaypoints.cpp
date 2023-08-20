#include "WorldBotAI.h"
#include "WorldBotWaypoints.h"
#include "WorldPacket.h"
#include "Player.h"
#include "MotionMaster.h"
#include "Spell.h"
#include "Battlegrounds/BattleGround.h"
#include "BattleGroundAV.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "CellImpl.h"
#include "GridSearchers.h"

std::vector<Waypoints> myWaypoints;
WorldBotPath* paths = new WorldBotPath();

enum GameObjectsAB
{
    GO_AB_ALLIANCE_BANNER    = 180058,
    GO_AB_CONTESTED_BANNER1  = 180059,
    GO_AB_HORDE_BANNER       = 180060,
    GO_AB_CONTESTED_BANNER2  = 180061,
    GO_AB_STABLE_BANNER      = 180087,
    GO_AB_BLACKSMITH_BANNER  = 180088,
    GO_AB_FARM_BANNER        = 180089,
    GO_AB_LUMBER_MILL_BANNER = 180090,
    GO_AB_GOLD_MINE_BANNER   = 180091
};

enum GameObjectsAV
{
    GO_AV_HORDE_BANNER1     = 178364,
    GO_AV_HORDE_BANNER2     = 178943,
    GO_AV_ALLIANCE_BANNER1  = 178365,
    GO_AV_ALLIANCE_BANNER2  = 178925,
    GO_AV_CONTESTED_BANNER1 = 178940, // usable by horde
    GO_AV_CONTESTED_BANNER2 = 179286, // usable by horde
    GO_AV_CONTESTED_BANNER3 = 179287, // usable by alliance
    GO_AV_CONTESTED_BANNER4 = 179435, // usable by alliance
    GO_AV_SNOWFALL_BANNER   = 180418
};

enum CreaturesAV
{
    NPC_AV_GALVANGAR = 11947,
    NPC_AV_BALINDA   = 11949
};

enum GameObjectsWS
{
    GO_WS_SILVERWING_FLAG = 179830,
    GO_WS_WARSONG_FLAG    = 179831
};

enum AreaTriggersWS
{
    AT_SILVERWING_FLAG = 3646,
    AT_WARSONG_FLAG    = 3647
};

void WSG_AtAllianceFlag(WorldBotAI* pAI)
{
    if (GameObject* pFlag = pAI->me->FindNearestGameObject(GO_WS_SILVERWING_FLAG, 25.0f))
    {
        if (pFlag->isSpawned())
        {
            if (pAI->me->GetTeam() == HORDE)
            {
                if (pAI->me->IsWithinDistInMap(pFlag, INTERACTION_DISTANCE))
                {
                    pAI->ClearPath();
                    WorldPacket data(CMSG_GAMEOBJ_USE);
                    data << pFlag->GetObjectGuid();
                    pAI->me->GetSession()->HandleGameObjectUseOpcode(data);
                    return;
                }
                else
                {
                    pAI->ClearPath();
                    ObjectGuid guid = pFlag->GetObjectGuid();
                    pAI->me->GetMotionMaster()->MovePoint(0, pFlag->GetPositionX(), pFlag->GetPositionY(), 353.0f);
                    pAI->me->m_Events.AddLambdaEventAtOffset([pAI, guid]
                    {
                        WorldPacket data(CMSG_GAMEOBJ_USE);
                        data << guid;
                        pAI->me->GetSession()->HandleGameObjectUseOpcode(data);
                    }, 2000);
                return;
                }
            }
            else if (pAI->me->HasAura(AURA_WARSONG_FLAG))
            {
                pAI->ClearPath();
                pAI->me->GetMotionMaster()->MovePoint(0, pFlag->GetPositionX(), pFlag->GetPositionY(), 353.0f);
                return;
            }
        }
    }

    pAI->MoveToNextPoint();
}

void WSG_AtHordeFlag(WorldBotAI* pAI)
{
    if (GameObject* pFlag = pAI->me->FindNearestGameObject(GO_WS_WARSONG_FLAG, 25.0f))
    {
        if (pFlag->isSpawned())
        {
            if (pAI->me->GetTeam() == ALLIANCE)
            {
                if (pAI->me->IsWithinDistInMap(pFlag, INTERACTION_DISTANCE))
                {
                    pAI->ClearPath();
                    WorldPacket data(CMSG_GAMEOBJ_USE);
                    data << pFlag->GetObjectGuid();
                    pAI->me->GetSession()->HandleGameObjectUseOpcode(data);
                    return;
                }
                else
                {
                    pAI->ClearPath();
                    ObjectGuid guid = pFlag->GetObjectGuid();
                    pAI->me->GetMotionMaster()->MovePoint(0, pFlag->GetPositionX(), pFlag->GetPositionY(), pFlag->GetPositionZ());
                    pAI->me->m_Events.AddLambdaEventAtOffset([pAI, guid]
                    {
                        WorldPacket data(CMSG_GAMEOBJ_USE);
                        data << guid;
                        pAI->me->GetSession()->HandleGameObjectUseOpcode(data);
                    }, 2000);
                    return;
                }
            }
            else if (pAI->me->HasAura(AURA_SILVERWING_FLAG))
            {
                pAI->ClearPath();
                pAI->me->GetMotionMaster()->MovePoint(0, pFlag->GetPositionX(), pFlag->GetPositionY(), pFlag->GetPositionZ());
                return;
            }
        }
    }

    pAI->MoveToNextPoint();
}

void WSG_AtAllianceGraveyard(WorldBotAI* pAI)
{
    if ((pAI->me->GetTeam() == ALLIANCE) && !pAI->me->IsMounted() && urand(0, 1))
    {
        pAI->ClearPath();
        pAI->DoGraveyardJump();
    }
    else
        pAI->MoveToNextPoint();
}

void WSG_AtHordeGraveyard(WorldBotAI* pAI)
{
    if ((pAI->me->GetTeam() == HORDE) && !pAI->me->IsMounted() && urand(0, 1))
    {
        pAI->ClearPath();
        pAI->DoGraveyardJump();
    }
    else
        pAI->MoveToNextPoint();
}

#define SPELL_CAPTURE_BANNER 21651

std::vector<uint32> const vFlagsAV = { GO_AV_HORDE_BANNER1 , GO_AV_HORDE_BANNER2 , GO_AV_ALLIANCE_BANNER1 , GO_AV_ALLIANCE_BANNER2 ,
                                       GO_AV_CONTESTED_BANNER1 , GO_AV_CONTESTED_BANNER2 , GO_AV_CONTESTED_BANNER3 ,
                                       GO_AV_CONTESTED_BANNER4 , GO_AV_SNOWFALL_BANNER };

std::vector<uint32> const vFlagsAB = { GO_AB_ALLIANCE_BANNER , GO_AB_CONTESTED_BANNER1 , GO_AB_HORDE_BANNER , GO_AB_CONTESTED_BANNER2 ,
                                       GO_AB_STABLE_BANNER, GO_AB_BLACKSMITH_BANNER, GO_AB_FARM_BANNER, GO_AB_LUMBER_MILL_BANNER,
                                       GO_AB_GOLD_MINE_BANNER };

void AtFlag(WorldBotAI* pAI, std::vector<uint32> const& vFlagIds)
{
    if (Player* pFriend = pAI->me->FindNearestFriendlyPlayer(INTERACTION_DISTANCE))
    {
        if (pFriend->GetCurrentSpell(CURRENT_GENERIC_SPELL) &&
            pFriend->GetCurrentSpell(CURRENT_GENERIC_SPELL)->m_spellInfo->Id == SPELL_CAPTURE_BANNER)
        {
            pAI->ClearPath();
            pAI->StartNewPathFromBeginning();
            return;
        }
    }

    for (const auto& bannerId : vFlagIds)
    {
        if (GameObject* pGo = pAI->me->FindNearestGameObject(bannerId, INTERACTION_DISTANCE))
        {
            if (pGo->isSpawned() && (pAI->me->GetReactionTo(pGo) >= REP_NEUTRAL))
            {
                if (pAI->me->IsMounted())
                    pAI->me->RemoveSpellsCausingAura(SPELL_AURA_MOUNTED);

                if (pAI->me->IsInDisallowedMountForm())
                    pAI->me->RemoveSpellsCausingAura(SPELL_AURA_MOD_SHAPESHIFT);

                pAI->ClearPath();
                pAI->me->CastSpell(pGo, SPELL_CAPTURE_BANNER, false);
                return;
            }
        }
    }
    
    pAI->MoveToNextPoint();
}

void AB_AtFlag(WorldBotAI* pAI)
{
    AtFlag(pAI, vFlagsAB);
}

void AV_AtFlag(WorldBotAI* pAI)
{
    AtFlag(pAI, vFlagsAV);
}

void AtCaveExit(WorldBotAI* pAI)
{
    pAI->me->StopMoving();

    if (pAI->UseMount())
    {
        pAI->ClearPath();
        return;
    }

    pAI->MoveToNextPoint();
}

void MoveToNextPointSpecial(WorldBotAI* pAI)
{
    if (!pAI->m_currentPath)
        return;

    uint32 const lastPointInPath = pAI->m_movingInReverse ? 0 : ((*pAI->m_currentPath).size() - 1);

    if ((pAI->m_currentPoint == lastPointInPath) ||
        pAI->me->IsInCombat() || !pAI->me->IsAlive())
    {
        // Path is over.
        pAI->ClearPath();
        return;
    }

    if (pAI->m_movingInReverse)
        pAI->m_currentPoint--;
    else
        pAI->m_currentPoint++;

    WorldBotWaypoint& nextPoint = pAI->m_currentPath->at(pAI->m_currentPoint);

    pAI->me->GetMotionMaster()->MovePoint(pAI->m_currentPoint, nextPoint.x + frand(-1, 1), nextPoint.y + frand(-1, 1), nextPoint.z, MOVE_NONE);
}

uint32 GetRandomTaxiNode(uint32 mapid, Team team)
{
    std::vector<uint32> nodeIds;
    for (uint32 i = 1; i < sObjectMgr.GetMaxTaxiNodeId(); ++i)
    {
        TaxiNodesEntry const* node = sObjectMgr.GetTaxiNodeEntry(i);
        if (node)
        {
            if (node->map_id == mapid)
            {
                if (node->MountCreatureID[team == ALLIANCE ? 1 : 0])
                    nodeIds.push_back(node->ID);
            }
        }
    }

    uint32 id = 0;
    id = SelectRandomContainerElement(nodeIds);
    return id;
}

void TaxiToOtherZone(WorldBotAI* pAI)
{
    pAI->me->StopMoving();
    pAI->ClearPath();
    std::vector<uint32> nodes;
    uint32 node_local = sObjectMgr.GetNearestTaxiNode(pAI->me->GetPositionX(), pAI->me->GetPositionY(), pAI->me->GetPositionZ(), pAI->me->GetMapId(), pAI->me->GetTeam());
    uint32 node_random = GetRandomTaxiNode(pAI->me->GetMapId(), pAI->me->GetTeam());

    if (node_random != node_local)
    {
        nodes.push_back(node_local);
        nodes.push_back(node_random);
        pAI->me->ActivateTaxiPathTo(nodes, nullptr, true);
    }
}

void QueueForBG(WorldBotAI* pAI)
{
    // Make world bot a battle bot
    if (!pAI->m_isBattleBot)
    {
        std::vector<uint8> bgIds;
        if (pAI->me->GetLevel() >= 10)
            bgIds.push_back(BATTLEGROUND_QUEUE_WS);

        if (pAI->me->GetLevel() >= 20)
            bgIds.push_back(BATTLEGROUND_QUEUE_AB);

        if (pAI->me->GetLevel() >= 51)
            bgIds.push_back(BATTLEGROUND_QUEUE_AV);

        if (bgIds.empty())
        {
            pAI->m_isBattleBot = false;
            pAI->m_battlegroundId = 0;
            pAI->MoveToNextPoint();
            return;
        }

        pAI->m_isBattleBot = true;
        uint8 bgId = 0;
        bgId = SelectRandomContainerElement(bgIds);
        pAI->m_battlegroundId = bgId;
    }
    pAI->MoveToNextPoint();
}

void QueueForWS(WorldBotAI* pAI)
{
    // Make bot queue for wsg
    if (!pAI->m_isBattleBot)
    {
        uint8 bgId = 0;
        if (pAI->me->GetLevel() >= 10)
            bgId = BATTLEGROUND_QUEUE_WS;
        else
        {
            pAI->MoveToNextPoint();
            return;
        }
        pAI->m_isBattleBot = true;
        pAI->m_battlegroundId = bgId;
    }
    pAI->MoveToNextPoint();
}

void QueueForAB(WorldBotAI* pAI)
{
    // Make world bot a battle bot
    if (!pAI->m_isBattleBot)
    {
        uint8 bgId = 0;
        if (pAI->me->GetLevel() >= 20)
            bgId = BATTLEGROUND_QUEUE_AB;
        else
        {
            pAI->MoveToNextPoint();
            return;
        }

        pAI->m_isBattleBot = true;
        pAI->m_battlegroundId = bgId;
    }
    pAI->MoveToNextPoint();
}

void QueueForAV(WorldBotAI* pAI)
{
    // Make world bot a battle bot
    if (!pAI->m_isBattleBot)
    {
        uint8 bgId = 0;
        if (pAI->me->GetLevel() >= 51)
            bgId = BATTLEGROUND_QUEUE_AV;
        else
        {
            pAI->MoveToNextPoint();
            return;
        }

        pAI->m_isBattleBot = true;
        pAI->m_battlegroundId = bgId;
    }
    pAI->MoveToNextPoint();
}

void HoldPosition(WorldBotAI* pAI)
{
    pAI->me->StopMoving();
    pAI->ClearPath();
    pAI->m_allowedToMove = false;
}

void TransportTeleportToUndercityFromOrgrimmar(WorldBotAI* pAI)
{
    pAI->me->TeleportTo(0, 2067.225f, 288.872f, 97.031f, 4.538f, TELE_TO_FORCE_MAP_CHANGE);
    pAI->MoveToNextPoint();
}

void TransportTeleportToOrgrimmarFromUndercity(WorldBotAI* pAI)
{
    pAI->me->TeleportTo(1, 1321.816f, -4651.534f, 53.858f, 0.214f, TELE_TO_FORCE_MAP_CHANGE);
    pAI->MoveToNextPoint();
}

void TransportTeleportToOrgrimmarFromGromgol(WorldBotAI* pAI)
{
    pAI->me->TeleportTo(1, 1360.486f, -4639.038f, 53.838f, 3.795f, TELE_TO_FORCE_MAP_CHANGE);
    pAI->MoveToNextPoint();
}

void TransportTeleportToGromgolFromOrgrimmar(WorldBotAI* pAI)
{
    pAI->me->TeleportTo(0, -12447.757f, 217.080f, 31.560f, 5.643f, TELE_TO_FORCE_MAP_CHANGE);
    pAI->MoveToNextPoint();
}

void TransportTeleportToGromgolFromUndercity(WorldBotAI* pAI)
{
    pAI->me->TeleportTo(0, -12410.208f, 208.049f, 31.592f, 3.145f, TELE_TO_FORCE_MAP_CHANGE);
    pAI->MoveToNextPoint();
}

void TransportTeleportToUndercityFromGromgol(WorldBotAI* pAI)
{
    pAI->me->TeleportTo(0, 2057.466f, 238.967f, 99.767f, 1.347f, TELE_TO_FORCE_MAP_CHANGE);
    pAI->MoveToNextPoint();
}

void TransportTeleportToMenethilHarborFromTheramoreIsle(WorldBotAI* pAI)
{
    pAI->me->TeleportTo(0, -3894.395f, -600.468f, 5.495f, 5.118f, TELE_TO_FORCE_MAP_CHANGE);
    pAI->MoveToNextPoint();
}

void TransportTeleportToTheramoreIsleFromMenethilHarbor(WorldBotAI* pAI)
{
    pAI->me->TeleportTo(1, -4002.525f, -4727.977f, 5.009f, 0.781f, TELE_TO_FORCE_MAP_CHANGE);
    pAI->MoveToNextPoint();
}

void TransportTeleportToRatchetFromBootyBay(WorldBotAI* pAI)
{
    pAI->me->TeleportTo(1, -996.670f, -3828.736f, 5.583f, 1.075f, TELE_TO_FORCE_MAP_CHANGE);
    pAI->MoveToNextPoint();
}

void TransportTeleportToBootyBayFromRatchet(WorldBotAI* pAI)
{
    pAI->me->TeleportTo(0, -14281.021f, 566.528f, 7.0141f, 4.326f, TELE_TO_FORCE_MAP_CHANGE);
    pAI->MoveToNextPoint();
}

void AddToTransport(WorldBotAI* pAI)
{
    GameObject* p_GameObject = nullptr;

    /*
    https://github.com/vmangos/core/commit/1b3e1b594056274c18e827dc7b4c1706f1e846ba#diff-38c0f8987d9ce268af8c9b65e9d6ecc9e6a6f87736ab434b2fec92eed2ce35d6
    
    MaNGOS::NearestGameObjectEntryInObjectRangeCheck go_check(*pAI->me, uiEntry, fMaxSearchRange);
    MaNGOS::GameObjectLastSearcher<MaNGOS::NearestGameObjectEntryInObjectRangeCheck> searcher(p_GameObject, go_check);

    Cell::VisitGridObjects(pSource, searcher, fMaxSearchRange);

    if (p_GameObject)
    {
        bool sendHeartbeat = false;

        if (GenericTransport* pMyTransport = me->GetTransport())
        {
            sendHeartbeat = true;
            pMyTransport->RemovePassenger(me);
            me->Relocate(pLeader->GetPositionX(), pLeader->GetPositionY(), pLeader->GetPositionZ());
        }

        if (GenericTransport* pHisTransport = pLeader->GetTransport())
        {
            sendHeartbeat = true;
            me->Relocate(pLeader->GetPositionX(), pLeader->GetPositionY(), pLeader->GetPositionZ());
            pHisTransport->AddPassenger(me);
        }

        if (sendHeartbeat)
            me->SendHeartBeat(false);


    }*/
}

void DualPoint(WorldBotAI* pAI)
{
    if (urand(0, 1))
    {

    }
}

void PopWorldBuff(WorldBotAI * pAI)
{

}

std::vector<RecordedMovementPacket> vAllianceGraveyardJumpPath_ =
{
    { MSG_MOVE_START_FORWARD, 0, 1, 1415.33f, 1554.79f, 343.156f, 2.34205f },
    { MSG_MOVE_START_TURN_LEFT, 187, 17, 1414.42f, 1555.73f, 343.121f, 2.34205f },
    { MSG_MOVE_HEARTBEAT, 500, 17, 1411.19f, 1556.42f, 343.355f, 3.52015f },
    { MSG_MOVE_STOP_TURN, 124, 1, 1410.44f, 1555.99f, 343.451f, 3.81232f },
    { MSG_MOVE_HEARTBEAT, 500, 1, 1407.7f, 1553.81f, 343.604f, 3.81232f },
    { MSG_MOVE_HEARTBEAT, 500, 1, 1404.96f, 1551.63f, 343.158f, 3.81232f },
    { MSG_MOVE_HEARTBEAT, 500, 1, 1402.22f, 1549.46f, 340.935f, 3.81232f },
    { MSG_MOVE_HEARTBEAT, 500, 8193, 1399.47f, 1547.28f, 338.344f, 3.81232f },
    { MSG_MOVE_HEARTBEAT, 500, 24577, 1396.73f, 1545.11f, 333.791f, 3.81232f },
    { MSG_MOVE_FALL_LAND, 402, 1, 1394.27f, 1543.15f, 326.633f, 3.81232f },
    { MSG_MOVE_HEARTBEAT, 500, 8193, 1391.53f, 1540.97f, 324.186f, 3.81232f },
    { MSG_MOVE_FALL_LAND, 197, 1, 1390.44f, 1540.12f, 321.966f, 3.81232f },
    { MSG_MOVE_STOP, 473, 0, 1387.85f, 1538.06f, 321.855f, 3.81232f },
};

std::vector<RecordedMovementPacket> vHordeGraveyardJumpPath_ =
{
    { MSG_MOVE_START_FORWARD, 0, 1, 1029.14f, 1387.49f, 340.836f, 6.23605f },
    { MSG_MOVE_HEARTBEAT, 500, 1, 1032.64f, 1387.33f, 340.57f, 6.23605f },
    { MSG_MOVE_HEARTBEAT, 500, 1, 1036.13f, 1387.16f, 340.638f, 6.23605f },
    { MSG_MOVE_START_TURN_LEFT, 154, 17, 1037.21f, 1387.11f, 340.699f, 6.23605f },
    { MSG_MOVE_STOP_TURN, 63, 1, 1037.65f, 1387.12f, 340.705f, 0.101309f },
    { MSG_MOVE_HEARTBEAT, 500, 1, 1041.13f, 1387.48f, 340.679f, 0.101309f },
    { MSG_MOVE_START_TURN_LEFT, 311, 17, 1043.3f, 1387.7f, 340.672f, 0.101309f },
    { MSG_MOVE_STOP_TURN, 93, 1, 1043.93f, 1387.83f, 340.67f, 0.320435f },
    { MSG_MOVE_HEARTBEAT, 500, 1, 1047.25f, 1388.93f, 340.558f, 0.320435f },
    { MSG_MOVE_HEARTBEAT, 500, 1, 1050.58f, 1390.04f, 340.305f, 0.320435f },
    { MSG_MOVE_START_TURN_LEFT, 451, 17, 1053.57f, 1391.03f, 340.038f, 0.320435f },
    { MSG_MOVE_STOP_TURN, 31, 1, 1053.78f, 1391.11f, 340.02f, 0.393477f },
    { MSG_MOVE_HEARTBEAT, 500, 1, 1057.01f, 1392.45f, 339.548f, 0.393477f },
    { MSG_MOVE_HEARTBEAT, 500, 8193, 1060.24f, 1393.79f, 337.843f, 0.393477f },
    { MSG_MOVE_HEARTBEAT, 500, 24577, 1063.47f, 1395.13f, 333.618f, 0.393477f },
    { MSG_MOVE_FALL_LAND, 497, 1, 1066.69f, 1396.47f, 324.635f, 0.393477f },
    { MSG_MOVE_START_TURN_LEFT, 297, 17, 1068.61f, 1397.26f, 324.331f, 0.393477f },
    { MSG_MOVE_STOP_TURN, 47, 1, 1068.9f, 1397.41f, 324.296f, 0.504218f },
    { MSG_MOVE_HEARTBEAT, 500, 1, 1071.97f, 1399.1f, 323.823f, 0.504218f },
    { MSG_MOVE_START_TURN_RIGHT, 124, 33, 1072.73f, 1399.52f, 323.799f, 0.504218f },
    { MSG_MOVE_STOP_TURN, 124, 1, 1073.54f, 1399.82f, 323.78f, 0.21205f },
    { MSG_MOVE_START_TURN_RIGHT, 219, 33, 1075.04f, 1400.14f, 323.761f, 0.21205f },
    { MSG_MOVE_STOP_TURN, 78, 1, 1075.58f, 1400.21f, 323.651f, 0.0282667f },
    { MSG_MOVE_STOP, 327, 0, 1077.87f, 1400.27f, 323.154f, 0.0282667f },
};

std::vector<WorldBotPath*> vPaths_Map_Warsong_Gulch;
std::vector<WorldBotPath*> vPaths_Map_Arathi_Basin;
std::vector<WorldBotPath*> vPaths_Map_Alterac_Valley;
std::vector<WorldBotPath*> vPaths_Map_Eastern_Kingdoms;
std::vector<WorldBotPath*> vPaths_Map_Kalimdor;
std::vector<WorldBotPath*> vPaths_NoReverseAllowed;
extern std::vector<WorldBotPath*> vPaths_Grind;

void WorldBotAI::LoadGrindingDBWaypoints()
{
    float x, y, z = 0.f;
    uint32 guid, maxlevel, lastGuidPoint = 0;
    std::string filename, name, faction, race, mapid, hotspots, entrytarget = "";

    QueryResult* result = WorldDatabase.PQuery("SELECT Guid, FileName, Name, Faction, Race, MapId, HotSpots, EntryTarget, MaxLevel FROM worldbot_easy_quest_profiles WHERE `QuestId` = '' AND QuestType = 'KillAndLoot' AND MapId != 2 AND HotSpots != '' ORDER BY Guid ASC;");

    if (result)
    {
        do
        {
            auto fields = result->Fetch();

            guid = fields[0].GetUInt32();
            filename = fields[1].GetString();
            name = fields[2].GetString();
            faction = fields[3].GetString();
            race = fields[4].GetString();
            mapid = fields[5].GetString();
            hotspots = fields[6].GetString();
            entrytarget = fields[7].GetString();
            maxlevel = fields[8].GetUInt32();

            std::string delimiter = "), (";
            std::string token = hotspots.substr(0, hotspots.find(delimiter)); // token is "scott"
            size_t pos = 0;
            while ((pos = hotspots.find(delimiter)) != std::string::npos) {
                token = hotspots.substr(0, pos);
                std::cout << token << std::endl;
                hotspots.erase(0, pos + delimiter.length());
            }

            /*Waypoints wpoint;
            wpoint.guid = guid;
            wpoint.id = 0;
            wpoint.x = x;
            wpoint.y = y;
            wpoint.z = z;
            wpoint.func = "func";
            wpoint.area = "area";
            wpoint.zone = "zone";
            wpoint.map = mapid;
            wpoint.reverse = 0;
            wpoint.chance = 100;
            wpoint.faction = "faction";
            wpoint.minlevel = 0;
            wpoint.comment = "comment";
            myWaypoints.push_back(wpoint);*/

        } while (result->NextRow());
    }
    else
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBot: unable to load worldbot waypoints.");
        return;
    }

    delete result;

    /*uint32 lastGuid = -1;
    for (auto v : myWaypoints)
    {
        uint32 guid = v.guid;
        WorldBotPath* path = new WorldBotPath();

        if (guid != lastGuid)
        {
            for (auto v_ : myWaypoints)
            {
                uint32 guid_ = v_.guid;
                uint32 id_ = v_.id;
                std::string func_ = v_.func;
                uint32 chance_ = v_.chance;
                uint32 faction_ = v_.faction;
                uint32 minlevel_ = v_.minlevel;
                std::string comment_ = v_.comment;

                if (guid_ == guid)
                {
                    WorldBotWaypointFunc tempFunc{};
                    if (func_.empty())
                        tempFunc = nullptr;
                    else
                    {
                        if (func_ == "MoveToNextPointSpecial")
                            tempFunc = &MoveToNextPointSpecial;

                        if (func_ == "WSG_AtAllianceFlag")
                            tempFunc = &WSG_AtAllianceFlag;

                        if (func_ == "WSG_AtHordeFlag")
                            tempFunc = &WSG_AtHordeFlag;

                        if (func_ == "WSG_AtAllianceGraveyard")
                            tempFunc = &WSG_AtAllianceGraveyard;

                        if (func_ == "WSG_AtHordeGraveyard")
                            tempFunc = &WSG_AtHordeGraveyard;

                        if (func_ == "AB_AtFlag")
                            tempFunc = &AB_AtFlag;

                        if (func_ == "AV_AtFlag")
                            tempFunc = &AV_AtFlag;

                        if (func_ == "AtCaveExit")
                            tempFunc = &AtCaveExit;

                        if (func_ == "TaxiToOtherZone")
                            tempFunc = &TaxiToOtherZone;

                        if (func_ == "QueueForBG")
                            tempFunc = &QueueForBG;

                        if (func_ == "QueueForWS")
                            tempFunc = &QueueForWS;

                        if (func_ == "QueueForAB")
                            tempFunc = &QueueForAB;

                        if (func_ == "QueueForAV")
                            tempFunc = &QueueForAV;

                        if (func_ == "HoldPosition")
                            tempFunc = &HoldPosition;

                        if (func_ == "TransportTeleportToUndercityFromOrgrimmar")
                            tempFunc = &TransportTeleportToUndercityFromOrgrimmar;

                        if (func_ == "TransportTeleportToOrgrimmarFromUndercity")
                            tempFunc = &TransportTeleportToOrgrimmarFromUndercity;

                        if (func_ == "TransportTeleportToOrgrimmarFromGromgol")
                            tempFunc = &TransportTeleportToOrgrimmarFromGromgol;

                        if (func_ == "TransportTeleportToGromgolFromOrgrimmar")
                            tempFunc = &TransportTeleportToGromgolFromOrgrimmar;

                        if (func_ == "TransportTeleportToGromgolFromUndercity")
                            tempFunc = &TransportTeleportToGromgolFromUndercity;

                        if (func_ == "TransportTeleportToUndercityFromGromgol")
                            tempFunc = &TransportTeleportToUndercityFromGromgol;

                        if (func_ == "TransportTeleportToMenethilHarborFromTheramoreIsle")
                            tempFunc = &TransportTeleportToMenethilHarborFromTheramoreIsle;

                        if (func_ == "TransportTeleportToTheramoreIsleFromMenethilHarbor")
                            tempFunc = &TransportTeleportToTheramoreIsleFromMenethilHarbor;

                        if (func_ == "TransportTeleportToRatchetFromBootyBay")
                            tempFunc = &TransportTeleportToRatchetFromBootyBay;

                        if (func_ == "TransportTeleportToBootyBayFromRatchet")
                            tempFunc = &TransportTeleportToBootyBayFromRatchet;

                    }
                    path->push_back(WorldBotWaypoint({ v_.x, v_.y, v_.z, v_.map, tempFunc, v_.reverse, chance_, faction_, minlevel_, comment_ }));
                }
            }

            lastGuid = v.guid;

            switch (v.map)
            {
            case MAP_EASTERN_KINGDOMS:
            {
                vPaths_Map_Eastern_Kingdoms.push_back(path);
                break;
            }
            case MAP_KALIMDOR:
            {
                vPaths_Map_Kalimdor.push_back(path);
                break;
            }
            case MAP_AV:
            {
                vPaths_Map_Alterac_Valley.push_back(path);
                break;
            }
            case MAP_AB:
            {
                vPaths_Map_Arathi_Basin.push_back(path);
                break;
            }
            case MAP_WS:
            {
                vPaths_Map_Warsong_Gulch.push_back(path);
                break;
            }
            default:
                break;
            }

            if (v.reverse == 1)
            {
                vPaths_NoReverseAllowed.push_back(path);
            }
        }
    }*/
}

void WorldBotAI::LoadDBWaypoints()
{
    float x, y, z = 0.f;
    uint32 guid, id, area, zone, map, reverse, chance, minlevel, faction, lastGuidPoint = 0;
    std::string func, comment = "";

    QueryResult* result = WorldDatabase.PQuery("SELECT guid, id, x, y, z, func, area, zone, map, reverse, chance, faction, minlevel, comments FROM worldbot_waypoints ORDER BY guid, id ASC;");

    if (result)
    {
        do
        {
            auto fields = result->Fetch();

            guid = fields[0].GetUInt32();
            id = fields[1].GetUInt32();
            x = fields[2].GetFloat();
            y = fields[3].GetFloat();
            z = fields[4].GetFloat();
            func = fields[5].GetString();
            area = fields[6].GetUInt32();
            zone = fields[7].GetUInt32();
            map = fields[8].GetUInt32();
            reverse = fields[9].GetUInt32();
            chance = fields[10].GetUInt32();
            faction = fields[11].GetUInt32();
            minlevel = fields[12].GetUInt32();
            comment = fields[13].GetString();

            Waypoints wpoint;
            wpoint.guid = guid;
            wpoint.id = id;
            wpoint.x = x;
            wpoint.y = y;
            wpoint.z = z;
            wpoint.func = func;
            wpoint.area = area;
            wpoint.zone = zone;
            wpoint.map = map;
            wpoint.reverse = reverse;
            wpoint.chance = chance;
            wpoint.faction = faction;
            wpoint.minlevel = minlevel;
            wpoint.comment = comment;
            myWaypoints.push_back(wpoint);
        }
        while (result->NextRow());
    }
    else
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBot: unable to load worldbot waypoints.");
        return;
    }

    delete result;
    
    uint32 lastGuid = -1;
    for (auto v : myWaypoints)
    {
        uint32 guid = v.guid;
        WorldBotPath* path = new WorldBotPath();

        if (guid != lastGuid)
        {
            for (auto v_ : myWaypoints)
            {
                uint32 guid_ = v_.guid;
                uint32 id_ = v_.id;
                std::string func_ = v_.func;
                uint32 chance_ = v_.chance;
                uint32 faction_ = v_.faction;
                uint32 minlevel_ = v_.minlevel;
                std::string comment_ = v_.comment;

                if (guid_ == guid)
                {
                    WorldBotWaypointFunc tempFunc{};
                    if (func_.empty())
                        tempFunc = nullptr;
                    else
                    {
                        if (func_ == "MoveToNextPointSpecial")
                            tempFunc = &MoveToNextPointSpecial;

                        if (func_ == "WSG_AtAllianceFlag")
                            tempFunc = &WSG_AtAllianceFlag;

                        if (func_ == "WSG_AtHordeFlag")
                            tempFunc = &WSG_AtHordeFlag;

                        if (func_ == "WSG_AtAllianceGraveyard")
                            tempFunc = &WSG_AtAllianceGraveyard;

                        if (func_ == "WSG_AtHordeGraveyard")
                            tempFunc = &WSG_AtHordeGraveyard;

                        if (func_ == "AB_AtFlag")
                            tempFunc = &AB_AtFlag;

                        if (func_ == "AV_AtFlag")
                            tempFunc = &AV_AtFlag;

                        if (func_ == "AtCaveExit")
                            tempFunc = &AtCaveExit;

                        if (func_ == "TaxiToOtherZone")
                            tempFunc = &TaxiToOtherZone;

                        if (func_ == "QueueForBG")
                            tempFunc = &QueueForBG;

                        if (func_ == "QueueForWS")
                            tempFunc = &QueueForWS;

                        if (func_ == "QueueForAB")
                            tempFunc = &QueueForAB;

                        if (func_ == "QueueForAV")
                            tempFunc = &QueueForAV;

                        if (func_ == "HoldPosition")
                            tempFunc = &HoldPosition;

                        if (func_ == "TransportTeleportToUndercityFromOrgrimmar")
                            tempFunc = &TransportTeleportToUndercityFromOrgrimmar;

                        if (func_ == "TransportTeleportToOrgrimmarFromUndercity")
                            tempFunc = &TransportTeleportToOrgrimmarFromUndercity;

                        if (func_ == "TransportTeleportToOrgrimmarFromGromgol")
                            tempFunc = &TransportTeleportToOrgrimmarFromGromgol;

                        if (func_ == "TransportTeleportToGromgolFromOrgrimmar")
                            tempFunc = &TransportTeleportToGromgolFromOrgrimmar;

                        if (func_ == "TransportTeleportToGromgolFromUndercity")
                            tempFunc = &TransportTeleportToGromgolFromUndercity;

                        if (func_ == "TransportTeleportToUndercityFromGromgol")
                            tempFunc = &TransportTeleportToUndercityFromGromgol;

                        if (func_ == "TransportTeleportToMenethilHarborFromTheramoreIsle")
                            tempFunc = &TransportTeleportToMenethilHarborFromTheramoreIsle;

                        if (func_ == "TransportTeleportToTheramoreIsleFromMenethilHarbor")
                            tempFunc = &TransportTeleportToTheramoreIsleFromMenethilHarbor;

                        if (func_ == "TransportTeleportToRatchetFromBootyBay")
                            tempFunc = &TransportTeleportToRatchetFromBootyBay;

                        if (func_ == "TransportTeleportToBootyBayFromRatchet")
                            tempFunc = &TransportTeleportToBootyBayFromRatchet;

                    }
                    path->push_back(WorldBotWaypoint({ v_.x, v_.y, v_.z, v_.map, tempFunc, v_.reverse, chance_, faction_, minlevel_, comment_ }));
                }
            }

            lastGuid = v.guid;

            switch (v.map)
            {
                case MAP_EASTERN_KINGDOMS:
                {
                    vPaths_Map_Eastern_Kingdoms.push_back(path);
                    break;
                }
                case MAP_KALIMDOR:
                {
                    vPaths_Map_Kalimdor.push_back(path);
                    break;
                }
                case MAP_AV:
                {
                    vPaths_Map_Alterac_Valley.push_back(path);
                    break;
                }
                case MAP_AB:
                {
                    vPaths_Map_Arathi_Basin.push_back(path);
                    break;
                }
                case MAP_WS:
                {
                    vPaths_Map_Warsong_Gulch.push_back(path);
                    break;
                }
                default:
                    break;
            }

            if (v.reverse == 1)
            {
                vPaths_NoReverseAllowed.push_back(path);
            }
        }
    }
}

void WorldBotAI::MovementInform(uint32 movementType, uint32 data)
{
    if (movementType == POINT_MOTION_TYPE)
    { 
        if (m_currentPath && m_currentPath->at(data).pFunc)
            (*m_currentPath->at(data).pFunc)(this);
        else
            MoveToNextPoint();

        ActivateNearbyAreaTrigger();
    }
}

void WorldBotAI::MoveToNextPoint()
{
    if (!m_currentPath)
        return;

    if (!m_isBattleBot)
    {
        if (!m_allowedToMove)
            return;
    }

    uint32 const lastPointInPath = m_movingInReverse ? 0 : ((*m_currentPath).size() - 1);

    if ((m_currentPoint == lastPointInPath) ||
        me->IsInCombat() || !me->IsAlive())
    {
        // Path is over.
        ClearPath();
        return;
    }

    if (m_movingInReverse)
        m_currentPoint--;
    else
        m_currentPoint++;


    WorldBotWaypoint& nextPoint = m_currentPath->at(m_currentPoint);

    me->GetMotionMaster()->MovePoint(m_currentPoint, nextPoint.x + frand(-2, 2), nextPoint.y + frand(-2, 2), nextPoint.z, MOVE_PATHFINDING);
}

void WorldBotAI::StartNewGrindPath()
{
    WorldBotPath* pClosestPath = nullptr;
    uint32 closestPoint = 0;
    float closestDistance = FLT_MAX;

    std::vector<WorldBotPath*> const* vPaths;
    vPaths = &vPaths_Grind;

    for (const auto& pPath : *vPaths)
    {
        for (uint32 i = 0; i < pPath->size(); i++)
        {
            WorldBotWaypoint& waypoint = ((*pPath)[i]);
            float const distanceToPoint = me->GetDistance(waypoint.x, waypoint.y, waypoint.z);
            if (distanceToPoint < closestDistance)
            {
                pClosestPath = pPath;
                closestPoint = i;
                closestDistance = distanceToPoint;
            }
        }
    }

    if (!pClosestPath)
        return;

    m_currentPath = pClosestPath;
    m_movingInReverse = false;
    m_currentPoint = closestPoint - 1;

    MoveToNextPoint();
}


bool WorldBotAI::StartNewPathFromBeginning()
{
    struct AvailablePath
    {
        AvailablePath(WorldBotPath* pPath_, bool reverse_, uint32 chance_, uint32 faction_, uint32 minlevel_, std::string comment_) : pPath(pPath_), reverse(reverse_), chance(chance_), faction(faction_), minlevel(minlevel_), comment(comment_) {}
        WorldBotPath* pPath = nullptr;
        bool reverse = false;
        uint32 chance = 100;
        uint32 faction = 0;
        uint32 minlevel = 1;
        std::string comment = "";
    };

    std::vector<AvailablePath> availablePaths;

    std::vector<WorldBotPath*> const* vPaths;

    switch (me->GetMapId())
    {
        case MAP_EASTERN_KINGDOMS:
        {
            vPaths = &vPaths_Map_Eastern_Kingdoms;
            break;
        }
        case MAP_KALIMDOR:
        {
            vPaths = &vPaths_Map_Kalimdor;
            break;
        }
        case MAP_AV:
        {
            vPaths = &vPaths_Map_Alterac_Valley;
            break;
        }
        case MAP_AB:
        {
            vPaths = &vPaths_Map_Arathi_Basin;
            break;
        }
        case MAP_WS:
        {
            vPaths = &vPaths_Map_Warsong_Gulch;
            break;
        }
        default:
            return false;
    }

    for (const auto& pPath : *vPaths)
    {   
        WorldBotWaypoint* pStart = &((*pPath)[0]);

        if (me->GetDistance(pStart->x, pStart->y, pStart->z) < INSPECT_DISTANCE)
            availablePaths.emplace_back(AvailablePath(pPath, false, pStart->chance, pStart->faction, pStart->minlevel, pStart->comment));

        // Some paths are not allowed backwards.
        if (std::find(vPaths_NoReverseAllowed.begin(), vPaths_NoReverseAllowed.end(), pPath) != vPaths_NoReverseAllowed.end())
            continue;

        WorldBotWaypoint* pEnd = &((*pPath)[(*pPath).size() - 1]);

        if (me->GetDistance(pEnd->x, pEnd->y, pEnd->z) < INSPECT_DISTANCE)
            availablePaths.emplace_back(AvailablePath(pPath, true, pEnd->chance, pEnd->faction, pEnd->minlevel, pEnd->comment));
    }

    if (availablePaths.empty() == false)
    {
        for (int i = availablePaths.size() - 1; i >= 0; i--)
        {
            //availablePaths.at(i).reverse

            // chance
            uint32 rnd = urand(0, 99);
            uint32 chance = availablePaths.at(i).chance;
            bool reverse = availablePaths.at(i).reverse;

            if (chance <= rnd)
            {
                availablePaths.erase(availablePaths.begin() + i);
                continue;
            }

            // faction
            uint32 team = me->GetTeam();
            uint32 faction = availablePaths.at(i).faction;
            if (faction == 1)
                faction = ALLIANCE;

            if (faction == 2)
                faction = HORDE;

            if (faction != 0)
            {
                if (team == faction)
                {
                    availablePaths.erase(availablePaths.begin() + i);
                    continue;
                }
            }

            // minlevel
            uint32 level = me->GetLevel();
            uint32 minlevel = availablePaths.at(i).minlevel;
            if (level <= minlevel)
            {
                availablePaths.erase(availablePaths.begin() + i);
                continue;
            }
        }
    }

    if (availablePaths.empty())
        return false;

    AvailablePath const* chosenPath = &SelectRandomContainerElement(availablePaths);
    m_currentPath = chosenPath->pPath;
    m_movingInReverse = chosenPath->reverse;

    m_currentPoint = m_movingInReverse ? m_currentPath->size() - 1 : 0;
    MoveToNextPoint();
    return true;
}

void WorldBotAI::StartNewPathFromAnywhere()
{
    WorldBotPath* pClosestPath = nullptr;
    uint32 closestPoint = 0;
    float closestDistance = FLT_MAX;

    std::vector<WorldBotPath*> const* vPaths;
    switch (me->GetMapId())
    {
        case MAP_EASTERN_KINGDOMS:
        {
            vPaths = &vPaths_Map_Eastern_Kingdoms;
            break;
        }
        case MAP_KALIMDOR:
        {
            vPaths = &vPaths_Map_Kalimdor;
            break;
        }
        case MAP_AV:
        {
            vPaths = &vPaths_Map_Alterac_Valley;
            break;
        }
        case MAP_AB:
        {
            vPaths = &vPaths_Map_Arathi_Basin;
            break;
        }
        case MAP_WS:
        {
            vPaths = &vPaths_Map_Warsong_Gulch;
            break;
        }
        default:
            return;
    }

    for (const auto& pPath : *vPaths)
    {
        for (uint32 i = 0; i < pPath->size(); i++)
        {
            WorldBotWaypoint& waypoint = ((*pPath)[i]);
            float const distanceToPoint = me->GetDistance(waypoint.x, waypoint.y, waypoint.z);
            if (distanceToPoint < closestDistance)
            {
                pClosestPath = pPath;
                closestPoint = i;
                closestDistance = distanceToPoint;
            }
        }
    }

    if (!pClosestPath)
        return;

    m_currentPath = pClosestPath;
    m_movingInReverse = false;
    m_currentPoint = closestPoint-1;

    MoveToNextPoint();
}

template<class A, class B>
float GetDistance3D(A const& from, B const& to)
{
    float dx = from.x - to.x;
    float dy = from.y - to.y;
    float dz = from.z - to.z;
    float dist = sqrt((dx * dx) + (dy * dy) + (dz * dz));
    return (dist > 0 ? dist : 0);
}

bool WorldBotAI::StartNewPathToPosition(Position const& targetPosition, std::vector<WorldBotPath*> const& vPaths)
{
    WorldBotPath* pClosestPath = nullptr;
    uint32 closestPoint = 0;
    float closestDistanceToTarget = FLT_MAX;
    bool reverse = false;

    for (const auto& pPath : vPaths)
    {
        WorldBotWaypoint& lastPoint = ((*pPath)[pPath->size() - 1]);
        float const distanceFromPathEndToTarget = GetDistance3D(lastPoint, targetPosition);
        if (closestDistanceToTarget > distanceFromPathEndToTarget)
        {
            float closestDistanceFromMeToPoint = FLT_MAX;

            for (uint32 i = 0; i < pPath->size(); i++)
            {
                WorldBotWaypoint& waypoint = ((*pPath)[i]);
                float const distanceFromMeToPoint = me->GetDistance(waypoint.x, waypoint.y, waypoint.z);
                if (distanceFromMeToPoint < 50.0f && closestDistanceFromMeToPoint > distanceFromMeToPoint)
                {
                    reverse = false;
                    pClosestPath = pPath;
                    closestPoint = i;
                    closestDistanceToTarget = distanceFromPathEndToTarget;
                    closestDistanceFromMeToPoint = distanceFromMeToPoint;
                }
            }
        }
        
        if (std::find(vPaths_NoReverseAllowed.begin(), vPaths_NoReverseAllowed.end(), pPath) != vPaths_NoReverseAllowed.end())
            continue;

        WorldBotWaypoint& firstPoint = ((*pPath)[0]);
        float const distanceFromPathBeginToTarget = GetDistance3D(firstPoint, targetPosition);
        if (closestDistanceToTarget > distanceFromPathBeginToTarget)
        {
            float closestDistanceFromMeToPoint = FLT_MAX;

            for (uint32 i = 0; i < pPath->size(); i++)
            {
                WorldBotWaypoint& waypoint = ((*pPath)[i]);
                float const distanceFromMeToPoint = me->GetDistance(waypoint.x, waypoint.y, waypoint.z);
                if (distanceFromMeToPoint < 50.0f && closestDistanceFromMeToPoint > distanceFromMeToPoint)
                {
                    reverse = true;
                    pClosestPath = pPath;
                    closestPoint = i;
                    closestDistanceToTarget = distanceFromPathBeginToTarget;
                    closestDistanceFromMeToPoint = distanceFromMeToPoint;
                }
            }
        }
    }

    if (!pClosestPath)
        return false;

    // Prevent picking last point of path.
    // It means we are already there.
    if (reverse)
    {
        if (closestPoint == 0)
            return false;
    }
    else
    {
        if (closestPoint == pClosestPath->size() - 1)
            return false;
    }

    m_currentPath = pClosestPath;
    m_movingInReverse = reverse;
    m_currentPoint = m_movingInReverse ? closestPoint + 1 : closestPoint - 1;
    MoveToNextPoint();
    return true;
}

static std::pair<uint32, uint32> AV_HordeAttackObjectives[] =
{
    // Attack
    { BG_AV_STONEHEARTH_BUNKER, ALLIANCE_CONTROLLED },
    { BG_AV_STONEHEARTH_GY, ALLIANCE_CONTROLLED },
    { BG_AV_ICEWING_BUNKER, ALLIANCE_CONTROLLED },
    { BG_AV_STORMPIKE_GY, ALLIANCE_CONTROLLED },
    { BG_AV_DUN_BALDAR_SOUTH_BUNKER, ALLIANCE_CONTROLLED },
    { BG_AV_DUN_BALDAR_NORTH_BUNKER, ALLIANCE_CONTROLLED },
    { BG_AV_STORMPIKE_AID_STATION_GY, ALLIANCE_CONTROLLED }
};

static std::pair<uint32, uint32> AV_HordeDefendObjectives[] =
{
    // Defend
    { BG_AV_FROSTWOLF_GY, ALLIANCE_ASSAULTED },
    { BG_AV_EAST_FROSTWOLF_TOWER, ALLIANCE_ASSAULTED },
    { BG_AV_WEST_FROSTWOLF_TOWER, ALLIANCE_ASSAULTED },
    { BG_AV_TOWER_POINT_TOWER, ALLIANCE_ASSAULTED },
    { BG_AV_ICEBLOOD_TOWER, ALLIANCE_ASSAULTED },
};

static std::pair<uint32, uint32> AV_AllianceAttackObjectives[] =
{
    // Attack
    { BG_AV_ICEBLOOD_TOWER, HORDE_CONTROLLED },
    { BG_AV_ICEBLOOD_GY, HORDE_CONTROLLED },
    { BG_AV_TOWER_POINT_TOWER, HORDE_CONTROLLED },
    { BG_AV_FROSTWOLF_GY, HORDE_CONTROLLED },
    { BG_AV_EAST_FROSTWOLF_TOWER, HORDE_CONTROLLED },
    { BG_AV_WEST_FROSTWOLF_TOWER, HORDE_CONTROLLED },
    { BG_AV_FROSTWOLF_RELIEF_HUT_GY, HORDE_CONTROLLED },
};

static std::pair<uint32, uint32> AV_AllianceDefendObjectives[] =
{
    // Defend
    { BG_AV_STORMPIKE_GY, HORDE_ASSAULTED },
    { BG_AV_DUN_BALDAR_SOUTH_BUNKER, HORDE_ASSAULTED },
    { BG_AV_DUN_BALDAR_NORTH_BUNKER, HORDE_ASSAULTED },
    { BG_AV_ICEWING_BUNKER, HORDE_ASSAULTED },
    { BG_AV_STONEHEARTH_BUNKER, HORDE_ASSAULTED },
};

bool WorldBotAI::BGStartNewPathToObjective()
{
    BattleGround* bg = me->GetBattleGround();
    if (!bg)
        return false;

    switch (bg->GetTypeID())
    {
        case BATTLEGROUND_AV:
        {
            // Alliance and Horde code is intentionally different.
            // Horde bots are more united and always go together.
            // Alliance bots can pick random objective.

            if (me->GetTeam() == HORDE)
            {
                // End Boss
                if (!bg->IsActiveEvent(BG_AV_DUN_BALDAR_SOUTH_BUNKER, ALLIANCE_CONTROLLED) &&
                    !bg->IsActiveEvent(BG_AV_DUN_BALDAR_NORTH_BUNKER, ALLIANCE_CONTROLLED) &&
                    !bg->IsActiveEvent(BG_AV_ICEWING_BUNKER, ALLIANCE_CONTROLLED) &&
                    !bg->IsActiveEvent(BG_AV_STONEHEARTH_BUNKER, ALLIANCE_CONTROLLED) &&
                    !bg->IsActiveEvent(BG_AV_STORMPIKE_AID_STATION_GY, ALLIANCE_CONTROLLED))
                {
                    if (Creature* pVanndar = me->GetMap()->GetCreature(bg->GetSingleCreatureGuid(BG_AV_BOSS_A, 0)))
                        return StartNewPathToPosition(pVanndar->GetPosition(), vPaths_Map_Alterac_Valley);
                }

                // Only go to Snowfall Graveyard if already close to it.
                if (bg->IsActiveEvent(BG_AV_SNOWFALL_GY, ALLIANCE_ASSAULTED) || bg->IsActiveEvent(BG_AV_SNOWFALL_GY, ALLIANCE_CONTROLLED) || bg->IsActiveEvent(BG_AV_SNOWFALL_GY, NEUTRAL_CONTROLLED))
                {
                    if (GameObject* pGO = me->GetMap()->GetGameObject(bg->GetSingleGameObjectGuid(BG_AV_SNOWFALL_GY, NEUTRAL_CONTROLLED)))
                        if (me->IsWithinDist(pGO, VISIBILITY_DISTANCE_LARGE))
                            return StartNewPathToPosition(pGO->GetPosition(), vPaths_Map_Alterac_Valley);  
                }

                if (!bg->IsActiveEvent(BG_AV_NodeEventCaptainDead_A, 0))
                {
                    if (Creature* pBalinda = me->GetMap()->GetCreature(bg->GetSingleCreatureGuid(BG_AV_CAPTAIN_A, 0)))
                        return StartNewPathToPosition(pBalinda->GetPosition(), vPaths_Map_Alterac_Valley);
                }

                for (const auto& objective : AV_HordeDefendObjectives)
                {
                    if (bg->IsActiveEvent(objective.first, ALLIANCE_ASSAULTED))
                    {
                        if (GameObject* pGO = me->GetMap()->GetGameObject(bg->GetSingleGameObjectGuid(objective.first, objective.second)))
                            if (me->IsWithinDist(pGO, VISIBILITY_DISTANCE_LARGE))
                                return StartNewPathToPosition(pGO->GetPosition(), vPaths_Map_Alterac_Valley);
                    }
                }

                for (const auto& objective : AV_HordeAttackObjectives)
                {
                    if (bg->IsActiveEvent(objective.first, ALLIANCE_ASSAULTED) || bg->IsActiveEvent(objective.first, ALLIANCE_CONTROLLED) || bg->IsActiveEvent(objective.first, NEUTRAL_CONTROLLED))
                    {
                        if (GameObject* pGO = me->GetMap()->GetGameObject(bg->GetSingleGameObjectGuid(objective.first, objective.second)))
                            return StartNewPathToPosition(pGO->GetPosition(), vPaths_Map_Alterac_Valley);
                    }
                }
            }
            else // ALLIANCE
            {
                // End boss
                if (!bg->IsActiveEvent(BG_AV_ICEBLOOD_TOWER, HORDE_CONTROLLED) &&
                    !bg->IsActiveEvent(BG_AV_TOWER_POINT_TOWER, HORDE_CONTROLLED) &&
                    !bg->IsActiveEvent(BG_AV_EAST_FROSTWOLF_TOWER, HORDE_CONTROLLED) &&
                    !bg->IsActiveEvent(BG_AV_WEST_FROSTWOLF_TOWER, HORDE_CONTROLLED) &&
                    !bg->IsActiveEvent(BG_AV_FROSTWOLF_RELIEF_HUT_GY, HORDE_CONTROLLED))
                {
                    if (Creature* pDrek = me->GetMap()->GetCreature(bg->GetSingleCreatureGuid(BG_AV_BOSS_H, 0)))
                        return StartNewPathToPosition(pDrek->GetPosition(), vPaths_Map_Alterac_Valley);
                }

                // Only go to Snowfall Graveyard if already close to it.
                if (bg->IsActiveEvent(BG_AV_SNOWFALL_GY, HORDE_ASSAULTED) || bg->IsActiveEvent(BG_AV_SNOWFALL_GY, HORDE_CONTROLLED) || bg->IsActiveEvent(BG_AV_SNOWFALL_GY, NEUTRAL_CONTROLLED))
                {
                    if (GameObject* pGO = me->GetMap()->GetGameObject(bg->GetSingleGameObjectGuid(BG_AV_SNOWFALL_GY, NEUTRAL_CONTROLLED)))
                        if (me->IsWithinDist(pGO, VISIBILITY_DISTANCE_LARGE))
                            return StartNewPathToPosition(pGO->GetPosition(), vPaths_Map_Alterac_Valley);
                }
                
                // Chance to defend.
                if (roll_chance_u(25))
                {
                    for (const auto& objective : AV_AllianceDefendObjectives)
                    {
                        if (bg->IsActiveEvent(objective.first, HORDE_ASSAULTED))
                        {
                            if (GameObject* pGO = me->GetMap()->GetGameObject(bg->GetSingleGameObjectGuid(objective.first, objective.second)))
                                return StartNewPathToPosition(pGO->GetPosition(), vPaths_Map_Alterac_Valley);
                        }
                    }
                }

                // Attack closest objective.
                WorldObject* pAttackObjectiveObject = nullptr;
                float attackObjectiveDistance = FLT_MAX;

                if (!bg->IsActiveEvent(BG_AV_NodeEventCaptainDead_H, 0))
                {
                    if (Creature* pGalvangar = me->GetMap()->GetCreature(bg->GetSingleCreatureGuid(BG_AV_CAPTAIN_H, 0)))
                    {
                        pAttackObjectiveObject = pGalvangar;
                        attackObjectiveDistance = me->GetDistance(pGalvangar);
                    }
                }

                for (const auto& objective : AV_AllianceAttackObjectives)
                {
                    if (bg->IsActiveEvent(objective.first, HORDE_ASSAULTED) || bg->IsActiveEvent(objective.first, HORDE_CONTROLLED) || bg->IsActiveEvent(objective.first, NEUTRAL_CONTROLLED))
                    {
                        if (GameObject* pGO = me->GetMap()->GetGameObject(bg->GetSingleGameObjectGuid(objective.first, objective.second)))
                        {
                            float const distance = me->GetDistance(pGO);
                            if (attackObjectiveDistance > distance)
                            {
                                pAttackObjectiveObject = pGO;
                                attackObjectiveDistance = distance;
                            }
                        }
                    }
                }

                if (pAttackObjectiveObject)
                    return StartNewPathToPosition(pAttackObjectiveObject->GetPosition(), vPaths_Map_Alterac_Valley);
            }
            break;
        }
        case BATTLEGROUND_WS:
        {
            if (me->HasAura(AURA_WARSONG_FLAG))
                return StartNewPathToPosition(WS_FLAG_POS_ALLIANCE, vPaths_Map_Warsong_Gulch);
            if (me->HasAura(AURA_SILVERWING_FLAG))
                return StartNewPathToPosition(WS_FLAG_POS_HORDE, vPaths_Map_Warsong_Gulch);
            break;
        }
    }

    return false;
}

bool WorldBotAI::StartNewPathToObjectiveForTask(uint8 currentTaskID)
{
    if (m_currentPath)
		return false;



    return false;
}

void WorldBotAI::ClearPath()
{
    m_currentPath = nullptr;
    m_currentPoint = 0;
    m_movingInReverse = false;
}
