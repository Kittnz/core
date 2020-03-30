#include "BattleBotAI.h"
#include "BattleBotWaypoints.h"
#include "Player.h"
#include "Log.h"
#include "MotionMaster.h"
#include "ObjectMgr.h"
#include "PlayerBotMgr.h"
#include "WorldPacket.h"
#include "Spell.h"
#include "SpellAuras.h"
#include "Chat.h"
#include "Battlegrounds/BattleGround.h"
#include "BattleGroundWS.h"
#include <random>

void WSG_AtAllianceFlag(BattleBotAI* pAI)
{
    if (GameObject* pFlag = pAI->me->FindNearestGameObject(GO_SILVERWING_FLAG, 25.0f))
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
                pAI->me->m_Events.AddLambdaEventAtOffset([pAI]
                {
                    WorldPacket data(CMSG_AREATRIGGER);
                    data << uint32(AT_SILVERWING_FLAG);
                    pAI->me->GetSession()->HandleAreaTriggerOpcode(data);
                }, 2000);
                return;
            }
        }
    }
    
    pAI->MoveToNextPoint();
}

void WSG_AtHordeFlag(BattleBotAI* pAI)
{
    if (GameObject* pFlag = pAI->me->FindNearestGameObject(GO_WARSONG_FLAG, 25.0f))
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
                pAI->me->m_Events.AddLambdaEventAtOffset([pAI]
                {
                    WorldPacket data(CMSG_AREATRIGGER);
                    data << uint32(AT_WARSONG_FLAG);
                    pAI->me->GetSession()->HandleAreaTriggerOpcode(data);
                }, 2000);
                return;
            }
        }
    }

    pAI->MoveToNextPoint();
}

void WSG_AtAllianceGraveyard(BattleBotAI* pAI)
{
    if ((pAI->me->GetTeam() == ALLIANCE) && urand(0, 1))
    {
        pAI->ClearPath();
        pAI->DoGraveyardJump();
    }
    else
        pAI->MoveToNextPoint();
}

void WSG_AtHordeGraveyard(BattleBotAI* pAI)
{
    if ((pAI->me->GetTeam() == HORDE) && urand(0, 1))
    {
        pAI->ClearPath();
        pAI->DoGraveyardJump();
    }
    else
        pAI->MoveToNextPoint();
}

void AB_AtFlag(BattleBotAI* pAI)
{
    if (pAI->me->GetTeam() == ALLIANCE)
    {
        GameObject* gBanner = NULL;
        GameObject* gHordeBanner = pAI->me->FindNearestGameObject(GO_HORDE_BANNER, 25.0f);
        if (gHordeBanner)
            gBanner = gHordeBanner;
        GameObject* gHordeBanner2 = pAI->me->FindNearestGameObject(GO_HORDE_BANNER2, 25.0f);
        if (gHordeBanner2)
            gBanner = gHordeBanner2;
        GameObject* gContestedBanner = pAI->me->FindNearestGameObject(GO_CONTESTED_BANNER, 25.0f);
        if (gContestedBanner)
            gBanner = gContestedBanner;
        GameObject* gContestedBanner2 = pAI->me->FindNearestGameObject(GO_CONTESTED_BANNER2, 25.0f);
        if (gContestedBanner2)
            gBanner = gContestedBanner2;
        GameObject* gNeutralBanner = pAI->me->FindNearestGameObject(GO_NEUTRAL_BANNER, 25.0f);
        if (gNeutralBanner)
            gBanner = gNeutralBanner;
        GameObject* gFarmBanner = pAI->me->FindNearestGameObject(GO_FARM_BANNER, 25.0f);
        if (gFarmBanner)
            gBanner = gFarmBanner;

        if (gBanner)
        {
            if (gBanner->isSpawned())
            {
                if (pAI->me->IsWithinDistInMap(gBanner, INTERACTION_DISTANCE))
                {
                    pAI->ClearPath();
                    WorldPacket data(CMSG_GAMEOBJ_USE);
                    data << gBanner->GetObjectGuid();
                    pAI->me->GetSession()->HandleGameObjectUseOpcode(data);
                    return;
                }
                else
                {
                    pAI->ClearPath();
                    ObjectGuid guid = gBanner->GetObjectGuid();
                    pAI->me->GetMotionMaster()->MovePoint(0, gBanner->GetPositionX(), gBanner->GetPositionY(), gBanner->GetPositionZ());
                    pAI->me->m_Events.AddLambdaEventAtOffset([pAI, guid]
                        {
                            WorldPacket data(CMSG_GAMEOBJ_USE);
                            data << guid;
                            pAI->me->GetSession()->HandleGameObjectUseOpcode(data);
                        }, 2000);
                    return;
                }                    
            }
        }
    }
    else
    {
        GameObject* gBanner = NULL;
        GameObject* gAllianceBanner = pAI->me->FindNearestGameObject(GO_ALLIANCE_BANNER, 25.0f);
        if (gAllianceBanner)
            gBanner = gAllianceBanner;
        GameObject* gAllianceBanner2 = pAI->me->FindNearestGameObject(GO_ALLIANCE_BANNER2, 25.0f);
        if (gAllianceBanner2)
            gBanner = gAllianceBanner2;
        GameObject* gContestedBanner = pAI->me->FindNearestGameObject(GO_CONTESTED_BANNER, 25.0f);
        if (gContestedBanner)
            gBanner = gContestedBanner;
        GameObject* gContestedBanner2 = pAI->me->FindNearestGameObject(GO_CONTESTED_BANNER2, 25.0f);
        if (gContestedBanner2)
            gBanner = gContestedBanner2;
        GameObject* gNeutralBanner = pAI->me->FindNearestGameObject(GO_NEUTRAL_BANNER, 25.0f);
        if (gNeutralBanner)
            gBanner = gNeutralBanner;
        GameObject* gFarmBanner = pAI->me->FindNearestGameObject(GO_FARM_BANNER, 25.0f);
        if (gFarmBanner)
            gBanner = gFarmBanner;

        if (gBanner)
        {
            if (gBanner->isSpawned())
            {
                if (pAI->me->IsWithinDistInMap(gBanner, INTERACTION_DISTANCE))
                {
                    pAI->ClearPath();
                    WorldPacket data(CMSG_GAMEOBJ_USE);
                    data << gBanner->GetObjectGuid();
                    pAI->me->GetSession()->HandleGameObjectUseOpcode(data);
                    return;
                }
                else
                {
                    pAI->ClearPath();
                    ObjectGuid guid = gBanner->GetObjectGuid();
                    pAI->me->GetMotionMaster()->MovePoint(0, gBanner->GetPositionX(), gBanner->GetPositionY(), gBanner->GetPositionZ());
                    pAI->me->m_Events.AddLambdaEventAtOffset([pAI, guid]
                        {
                            WorldPacket data(CMSG_GAMEOBJ_USE);
                            data << guid;
                            pAI->me->GetSession()->HandleGameObjectUseOpcode(data);
                        }, 2000);
                    return;
                }
            }
        }
    }

    pAI->MoveToNextPoint();
}

std::vector<RecordedMovementPacket> vAllianceGraveyardJumpPath =
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

std::vector<RecordedMovementPacket> vHordeGraveyardJumpPath =
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

// Horde Flag Room to Horde Graveyard
BattleBotPath vPath_WSG_HordeFlagRoom_to_HordeGraveyard =
{
    { 933.331f, 1433.72f, 345.536f, &WSG_AtHordeFlag },
    { 944.859f, 1423.05f, 345.437f, nullptr },
    { 966.691f, 1422.53f, 345.223f, nullptr },
    { 979.588f, 1422.84f, 345.46f, nullptr },
    { 997.806f, 1422.52f, 344.623f, nullptr },
    { 1008.53f, 1417.02f, 343.206f, nullptr },
    { 1016.42f, 1402.33f, 341.352f, nullptr },
    { 1029.14f, 1387.49f, 340.836f, &WSG_AtHordeGraveyard },
};
// Horde Graveyard to Horde Tunnel
BattleBotPath vPath_WSG_HordeGraveyard_to_HordeTunnel =
{
    { 1029.14f, 1387.49f, 340.836f, nullptr },
    { 1034.95f, 1392.62f, 340.856f, nullptr },
    { 1038.21f, 1406.43f, 341.562f, nullptr },
    { 1043.87f, 1426.9f, 339.197f, nullptr },
    { 1054.53f, 1441.47f, 339.725f, nullptr },
    { 1056.33f, 1456.03f, 341.463f, nullptr },
    { 1057.39f, 1469.98f, 342.148f, nullptr },
    { 1057.67f, 1487.55f, 342.537f, nullptr },
    { 1048.7f, 1505.37f, 341.117f, nullptr },
    { 1042.19f, 1521.69f, 338.003f, nullptr },
    { 1050.01f, 1538.22f, 332.43f, nullptr },
    { 1068.15f, 1548.1f, 321.446f, nullptr },
    { 1088.14f, 1538.45f, 316.398f, nullptr },
    { 1101.26f, 1522.79f, 314.918f, nullptr },
    { 1114.67f, 1503.18f, 312.947f, nullptr },
    { 1126.45f, 1487.4f, 314.136f, nullptr },
    { 1124.37f, 1462.28f, 315.853f, nullptr },
};
// Horde Tunnel to Horde Flag Room
BattleBotPath vPath_WSG_HordeTunnel_to_HordeFlagRoom =
{
    { 1124.37f, 1462.28f, 315.853f, nullptr },
    { 1106.87f, 1462.13f, 316.558f, nullptr },
    { 1089.44f, 1461.04f, 316.332f, nullptr },
    { 1072.07f, 1459.46f, 317.449f, nullptr },
    { 1051.09f, 1459.89f, 323.126f, nullptr },
    { 1030.1f, 1459.58f, 330.204f, nullptr },
    { 1010.76f, 1457.49f, 334.896f, nullptr },
    { 1005.47f, 1448.19f, 335.864f, nullptr },
    { 999.974f, 1458.49f, 335.632f, nullptr },
    { 982.632f, 1459.18f, 336.127f, nullptr },
    { 965.049f, 1459.15f, 338.076f, nullptr },
    { 944.526f, 1459.0f, 344.207f, nullptr },
    { 937.479f, 1451.12f, 345.553f, nullptr },
    { 933.331f, 1433.72f, 345.536f, &WSG_AtHordeFlag },
};
// Horde Tunnel to Alliance Tunnel 1
BattleBotPath vPath_WSG_HordeTunnel_to_AllianceTunnel_1 =
{
    { 1124.37f, 1462.28f, 315.853f, nullptr },
    { 1135.07f, 1462.43f, 315.569f, nullptr },
    { 1152.2f, 1465.51f, 311.056f, nullptr },
    { 1172.62f, 1470.34f, 306.812f, nullptr },
    { 1193.1f, 1475.0f, 305.155f, nullptr },
    { 1212.99f, 1477.94f, 306.929f, nullptr },
    { 1233.88f, 1476.29f, 308.015f, nullptr },
    { 1250.52f, 1470.94f, 309.8f, nullptr },
    { 1266.09f, 1465.75f, 312.242f, nullptr },
    { 1283.31f, 1463.55f, 311.819f, nullptr },
    { 1297.11f, 1461.2f, 315.485f, nullptr },
    { 1314.31f, 1460.76f, 317.926f, nullptr },
    { 1329.8f, 1461.24f, 320.267f, nullptr },
    { 1348.02f, 1461.06f, 323.167f, nullptr },
};
// Horde Tunnel to Alliance Tunnel 2
BattleBotPath vPath_WSG_HordeTunnel_to_AllianceTunnel_2 =
{
    { 1124.37f, 1462.28f, 315.853f, nullptr },
    { 1138.61f, 1452.12f, 312.988f, nullptr },
    { 1154.35f, 1442.42f, 310.728f, nullptr },
    { 1171.29f, 1438.04f, 307.462f, nullptr },
    { 1185.03f, 1435.43f, 309.484f, nullptr },
    { 1202.24f, 1432.26f, 310.193f, nullptr },
    { 1219.48f, 1429.2f, 310.301f, nullptr },
    { 1235.94f, 1429.97f, 309.727f, nullptr },
    { 1249.3f, 1434.12f, 312.37f, nullptr },
    { 1265.88f, 1439.71f, 314.373f, nullptr },
    { 1282.87f, 1443.85f, 314.907f, nullptr },
    { 1300.06f, 1447.16f, 316.737f, nullptr },
    { 1313.79f, 1449.86f, 317.651f, nullptr },
    { 1329.76f, 1457.36f, 320.37f, nullptr },
    { 1348.02f, 1461.06f, 323.167f, nullptr },
};
// Horde GY Jump to Horde Tunnel
BattleBotPath vPath_WSG_HordeGYJump_to_HordeTunnel =
{
    { 1077.87f, 1400.27f, 323.153f, nullptr },
    { 1088.42f, 1402.68f, 319.605f, nullptr },
    { 1104.34f, 1409.4f, 315.304f, nullptr },
    { 1115.4f, 1418.91f, 313.772f, nullptr },
    { 1122.83f, 1430.74f, 312.765f, nullptr },
    { 1125.26f, 1442.56f, 313.996f, nullptr },
    { 1124.37f, 1462.28f, 315.853f, nullptr },
};
// Horde GY Jump to Alliance Tunnel
BattleBotPath vPath_WSG_HordeGYJump_to_AllianceTunnel =
{
    { 1077.87f, 1400.27f, 323.153f, nullptr },
    { 1091.57f, 1397.37f, 317.739f, nullptr },
    { 1113.14f, 1398.07f, 314.937f, nullptr },
    { 1133.88f, 1401.36f, 314.333f, nullptr },
    { 1151.25f, 1403.39f, 310.679f, nullptr },
    { 1172.17f, 1405.13f, 308.046f, nullptr },
    { 1192.63f, 1409.01f, 306.914f, nullptr },
    { 1212.59f, 1415.38f, 308.805f, nullptr },
    { 1228.5f, 1422.68f, 309.404f, nullptr },
    { 1242.89f, 1431.01f, 310.664f, nullptr },
    { 1259.33f, 1436.99f, 314.488f, nullptr },
    { 1276.1f, 1442.0f, 314.162f, nullptr },
    { 1299.13f, 1450.26f, 317.148f, nullptr },
    { 1315.54f, 1456.24f, 318.449f, nullptr },
    { 1330.63f, 1460.27f, 320.435f, nullptr },
    { 1348.02f, 1461.06f, 323.167f, nullptr },
};
// Alliance Flag Room to Alliance Graveyard
BattleBotPath vPath_WSG_AllianceFlagRoom_to_AllianceGraveyard =
{
    { 1519.53f, 1481.87f, 352.024f, &WSG_AtAllianceFlag },
    { 1508.27f, 1493.17f, 352.005f, nullptr },
    { 1490.78f, 1493.51f, 352.141f, nullptr },
    { 1469.79f, 1494.13f, 351.774f, nullptr },
    { 1453.65f, 1494.39f, 350.614f, nullptr },
    { 1443.51f, 1501.75f, 348.317f, nullptr },
    { 1443.33f, 1517.78f, 345.534f, nullptr },
    { 1443.55f, 1533.4f, 343.148f, nullptr },
    { 1441.47f, 1548.12f, 342.752f, nullptr },
    { 1433.79f, 1552.67f, 342.763f, nullptr },
    { 1422.88f, 1552.37f, 342.751f, nullptr },
    { 1415.33f, 1554.79f, 343.156f, &WSG_AtAllianceGraveyard },
};
// Alliance Graveyard to Alliance Tunnel
BattleBotPath vPath_WSG_AllianceGraveyard_to_AllianceTunnel =
{
    { 1415.33f, 1554.79f, 343.156f, nullptr },
    { 1428.29f, 1551.79f, 342.751f, nullptr },
    { 1441.51f, 1545.79f, 342.757f, nullptr },
    { 1441.15f, 1530.35f, 343.712f, nullptr },
    { 1435.53f, 1517.29f, 346.698f, nullptr },
    { 1424.81f, 1499.24f, 349.486f, nullptr },
    { 1416.31f, 1483.94f, 348.536f, nullptr },
    { 1408.83f, 1468.4f, 347.648f, nullptr },
    { 1404.64f, 1449.79f, 347.279f, nullptr },
    { 1405.34f, 1432.33f, 345.792f, nullptr },
    { 1406.38f, 1416.18f, 344.755f, nullptr },
    { 1400.22f, 1401.87f, 340.496f, nullptr },
    { 1385.96f, 1394.15f, 333.829f, nullptr },
    { 1372.38f, 1390.75f, 328.722f, nullptr },
    { 1362.93f, 1390.02f, 327.034f, nullptr },
    { 1357.91f, 1398.07f, 325.674f, nullptr },
    { 1354.17f, 1411.56f, 324.327f, nullptr },
    { 1351.44f, 1430.38f, 323.506f, nullptr },
    { 1350.36f, 1444.43f, 323.388f, nullptr },
    { 1348.02f, 1461.06f, 323.167f, nullptr },
};
// Alliance Tunnel to Alliance Flag Room
BattleBotPath vPath_WSG_AllianceTunnel_to_AllianceFlagRoom =
{
    { 1348.02f, 1461.06f, 323.167f, nullptr },
    { 1359.8f, 1461.49f, 324.527f, nullptr },
    { 1372.47f, 1461.61f, 324.354f, nullptr },
    { 1389.08f, 1461.12f, 325.913f, nullptr },
    { 1406.57f, 1460.48f, 330.615f, nullptr },
    { 1424.04f, 1459.57f, 336.029f, nullptr },
    { 1442.5f, 1459.7f, 342.024f, nullptr },
    { 1449.59f, 1469.14f, 342.65f, nullptr },
    { 1458.03f, 1458.43f, 342.746f, nullptr },
    { 1469.4f, 1458.14f, 342.794f, nullptr },
    { 1489.06f, 1457.86f, 342.794f, nullptr },
    { 1502.27f, 1457.52f, 347.589f, nullptr },
    { 1512.87f, 1457.81f, 352.039f, nullptr },
    { 1517.53f, 1468.79f, 352.033f, nullptr },
    { 1519.53f, 1481.87f, 352.024f, &WSG_AtAllianceFlag },
};
// Alliance GY Jump to Alliance Tunnel
BattleBotPath vPath_WSG_AllianceGYJump_to_AllianceTunnel =
{
    { 1387.85f, 1538.06f, 321.854f, nullptr },
    { 1376.87f, 1529.48f, 321.66f, nullptr },
    { 1369.76f, 1521.76f, 318.544f, nullptr },
    { 1360.97f, 1508.68f, 320.007f, nullptr },
    { 1355.78f, 1495.7f, 323.959f, nullptr },
    { 1351.58f, 1482.36f, 324.189f, nullptr },
    { 1348.02f, 1461.06f, 323.167f, nullptr },
};
// Alliance GY Jump to Horde Tunnel
BattleBotPath vPath_WSG_AllianceGYJump_to_HordeTunnel =
{
    { 1387.85f, 1538.06f, 321.855f, nullptr },
    { 1377.58f, 1535.88f, 321.053f, nullptr },
    { 1363.98f, 1532.59f, 319.913f, nullptr },
    { 1353.94f, 1529.5f, 316.643f, nullptr },
    { 1340.71f, 1524.94f, 315.246f, nullptr },
    { 1330.75f, 1521.6f, 314.868f, nullptr },
    { 1320.73f, 1518.48f, 316.097f, nullptr },
    { 1307.28f, 1514.6f, 318.134f, nullptr },
    { 1297.12f, 1511.95f, 318.073f, nullptr },
    { 1283.61f, 1508.28f, 316.707f, nullptr },
    { 1273.51f, 1505.39f, 314.615f, nullptr },
    { 1263.49f, 1502.27f, 311.343f, nullptr },
    { 1250.22f, 1497.81f, 309.106f, nullptr },
    { 1237.31f, 1492.4f, 307.577f, nullptr },
    { 1224.04f, 1487.97f, 306.302f, nullptr },
    { 1213.89f, 1485.29f, 305.739f, nullptr },
    { 1203.69f, 1482.8f, 306.177f, nullptr },
    { 1190.05f, 1479.62f, 303.89f, nullptr },
    { 1179.83f, 1477.22f, 303.686f, nullptr },
    { 1169.65f, 1474.65f, 305.842f, nullptr },
    { 1156.05f, 1471.33f, 310.002f, nullptr },
    { 1142.54f, 1467.68f, 311.727f, nullptr },
    { 1135.4f, 1465.54f, 315.622f, nullptr },
    { 1124.37f, 1462.28f, 315.853f, nullptr },
};
// Horde GY Jump to Alliance Flag Room through Side Entrance
BattleBotPath vPath_WSG_HordeGYJump_to_AllianceFlagRoom =
{
    { 1077.87f, 1400.27f, 323.153f, nullptr },
    { 1084.45f, 1388.76f, 319.724f, nullptr },
    { 1088.27f, 1371.39f, 319.17f, nullptr },
    { 1090.71f, 1350.54f, 316.097f, nullptr },
    { 1098.71f, 1332.2f, 317.792f, nullptr },
    { 1109.45f, 1320.92f, 318.267f, nullptr },
    { 1123.49f, 1311.38f, 317.472f, nullptr },
    { 1145.46f, 1302.64f, 317.741f, nullptr },
    { 1168.4f, 1288.85f, 318.053f, nullptr },
    { 1186.49f, 1284.27f, 316.972f, nullptr },
    { 1199.4f, 1286.83f, 317.377f, nullptr },
    { 1215.89f, 1304.02f, 312.822f, nullptr },
    { 1232.18f, 1324.73f, 312.345f, nullptr },
    { 1247.16f, 1329.97f, 315.095f, nullptr },
    { 1269.9f, 1335.18f, 311.879f, nullptr },
    { 1289.97f, 1341.28f, 318.625f, nullptr },
    { 1305.99f, 1347.63f, 321.123f, nullptr },
    { 1325.81f, 1361.58f, 319.39f, nullptr },
    { 1337.48f, 1371.68f, 318.706f, nullptr },
    { 1342.62f, 1390.03f, 321.435f, nullptr },
    { 1352.23f, 1397.97f, 325.547f, nullptr },
    { 1366.38f, 1385.61f, 328.196f, nullptr },
    { 1382.67f, 1380.56f, 332.371f, nullptr },
    { 1395.17f, 1393.12f, 336.183f, nullptr },
    { 1409.03f, 1411.5f, 344.626f, nullptr },
    { 1405.12f, 1438.81f, 346.533f, nullptr },
    { 1409.95f, 1460.93f, 347.687f, nullptr },
    { 1430.87f, 1461.08f, 353.992f, nullptr },
    { 1449.36f, 1459.44f, 358.499f, nullptr },
    { 1471.4f, 1458.48f, 362.557f, nullptr },
    { 1488.64f, 1464.01f, 362.454f, nullptr },
    { 1488.75f, 1474.6f, 358.79f, nullptr },
    { 1490.44f, 1485.99f, 352.112f, nullptr },
    { 1502.97f, 1493.87f, 352.199f, nullptr },
    { 1519.53f, 1481.87f, 352.024f, &WSG_AtAllianceFlag },
};
// Alliance GY Jump to Horde Flag Room through Side Entrance
BattleBotPath vPath_WSG_AllianceGYJump_to_HordeFlagRoom =
{
    { 1387.85f, 1538.06f, 321.855f, nullptr },
    { 1370.13f, 1549.33f, 321.122f, nullptr },
    { 1346.7f, 1564.64f, 316.708f, nullptr },
    { 1324.23f, 1574.24f, 317.11f, nullptr },
    { 1304.03f, 1576.06f, 314.625f, nullptr },
    { 1277.44f, 1569.2f, 312.201f, nullptr },
    { 1249.2f, 1555.53f, 309.172f, nullptr },
    { 1229.95f, 1558.21f, 306.936f, nullptr },
    { 1209.65f, 1573.56f, 308.95f, nullptr },
    { 1189.93f, 1587.73f, 309.608f, nullptr },
    { 1173.76f, 1592.66f, 309.805f, nullptr },
    { 1147.86f, 1590.75f, 310.37f, nullptr },
    { 1124.1f, 1579.89f, 314.881f, nullptr },
    //{ 1102.61f, 1573.98f, 315.804f, nullptr },
    { 1091.28f, 1558.56f, 316.451f, nullptr },
    { 1092.6f, 1547.71f, 316.709f, nullptr },
    { 1086.22f, 1541.5f, 316.924f, nullptr },
    { 1071.64f, 1548.25f, 319.88f, nullptr },
    { 1054.86f, 1544.78f, 328.415f, nullptr },
    { 1043.08f, 1528.67f, 336.984f, nullptr },
    { 1043.21f, 1512.43f, 339.099f, nullptr },
    { 1050.71f, 1485.48f, 342.852f, nullptr },
    { 1042.67f, 1461.07f, 342.305f, nullptr },
    { 1023.13f, 1457.49f, 345.535f, nullptr },
    { 992.797f, 1458.42f, 354.84f, nullptr },
    { 967.257f, 1458.84f, 356.131f, nullptr },
    { 964.566f, 1450.29f, 354.865f, nullptr },
    { 963.586f, 1432.46f, 345.206f, nullptr },
    { 953.017f, 1423.3f, 345.835f, nullptr },
    { 933.331f, 1433.72f, 345.536f, &WSG_AtHordeFlag },
};
// Horde Tunnel Middle to Horde Base Roof
BattleBotPath vPath_WSG_HordeTunnelMiddle_to_HordeBaseRoof =
{
    { 948.488f, 1459.834f, 343.066f, nullptr },
    { 981.948f, 1459.07f, 336.154f, nullptr },
    { 981.768f, 1480.46f, 335.976f, nullptr },
    { 974.664f, 1495.9f, 340.837f, nullptr },
    { 964.661f, 1510.21f, 347.509f, nullptr },
    { 951.188f, 1520.99f, 356.377f, nullptr },
    { 937.37f, 1513.27f, 362.589f, nullptr },
    { 935.947f, 1499.58f, 364.199f, nullptr },
    { 935.9f, 1482.08f, 366.396f, nullptr },
    { 937.564f, 1462.81f, 367.287f, nullptr },
    { 945.871f, 1458.65f, 367.287f, nullptr },
    { 956.972f, 1459.48f, 367.291f, nullptr },
    { 968.317f, 1459.71f, 367.291f, nullptr },
    { 979.934f, 1454.58f, 367.078f, nullptr },
    { 979.99f, 1442.87f, 367.093f, nullptr },
    { 978.632f, 1430.71f, 367.125f, nullptr },
    { 970.395f, 1422.32f, 367.289f, nullptr },
    { 956.338f, 1425.09f, 367.293f, nullptr },
    { 952.778f, 1433.0f, 367.604f, nullptr },
    { 952.708f, 1445.01f, 367.604f, nullptr },
};
// Alliance Tunnel Middle to Alliance Base Roof
BattleBotPath vPath_WSG_AllianceTunnelMiddle_to_AllianceBaseRoof =
{
    { 1496.578f, 1457.900f, 344.442f, nullptr },
    { 1471.86f, 1456.65f, 342.794f, nullptr },
    { 1470.93f, 1440.5f, 342.794f, nullptr },
    { 1472.24f, 1427.49f, 342.06f, nullptr },
    { 1476.86f, 1412.46f, 341.426f, nullptr },
    { 1484.42f, 1396.69f, 346.117f, nullptr },
    { 1490.7f, 1387.59f, 351.861f, nullptr },
    { 1500.79f, 1382.98f, 357.784f, nullptr },
    { 1511.08f, 1391.29f, 364.444f, nullptr },
    { 1517.85f, 1403.18f, 370.336f, nullptr },
    { 1517.99f, 1417.59f, 371.636f, nullptr },
    { 1517.07f, 1431.56f, 372.106f, nullptr },
    { 1516.66f, 1445.55f, 372.939f, nullptr },
    { 1514.23f, 1457.37f, 373.689f, nullptr },
    { 1503.73f, 1457.67f, 373.684f, nullptr },
    { 1486.24f, 1457.8f, 373.718f, nullptr },
    { 1476.78f, 1460.35f, 373.711f, nullptr },
    { 1477.37f, 1470.83f, 373.709f, nullptr },
    { 1477.5f, 1484.83f, 373.715f, nullptr },
    { 1480.53f, 1495.26f, 373.721f, nullptr },
    { 1492.61f, 1494.72f, 373.721f, nullptr },
    { 1499.37f, 1489.02f, 373.718f, nullptr },
    { 1500.63f, 1472.89f, 373.707f, nullptr },
};
// Alliance Base to Stables
BattleBotPath vPath_AB_AllianceBase_to_Stables =
{
    { 1285.67f, 1282.14f, -15.8466f, nullptr },
    { 1272.52f, 1267.83f, -21.7811f, nullptr },
    { 1250.44f, 1248.09f, -33.3028f, nullptr },
    { 1232.56f, 1233.05f, -41.5241f, nullptr },
    { 1213.25f, 1224.93f, -47.5513f, nullptr },
    { 1189.29f, 1219.49f, -53.119f, nullptr },
    { 1177.17f, 1210.21f, -56.4593f, nullptr },
    { 1167.98f, 1202.9f, -56.4743f, &AB_AtFlag },
};
// Alliance Base to Gold Mine
BattleBotPath vPath_AB_AllianceBase_to_GoldMine =
{
    { 1285.67f, 1282.14f, -15.8466f, nullptr },
    { 1276.41f, 1267.11f, -20.775f, nullptr },
    { 1261.34f, 1241.52f, -31.2971f, nullptr },
    { 1244.91f, 1219.03f, -41.9658f, nullptr },
    { 1232.25f, 1184.41f, -50.3348f, nullptr },
    { 1226.89f, 1150.82f, -55.7935f, nullptr },
    { 1224.09f, 1120.38f, -57.0633f, nullptr },
    { 1220.03f, 1092.72f, -59.1744f, nullptr },
    { 1216.05f, 1060.86f, -67.2771f, nullptr },
    { 1213.77f, 1027.96f, -74.429f, nullptr },
    { 1208.56f, 998.394f, -81.9493f, nullptr },
    { 1197.42f, 969.73f, -89.9385f, nullptr },
    { 1185.23f, 944.531f, -97.2433f, nullptr },
    { 1166.29f, 913.945f, -107.214f, nullptr },
    { 1153.17f, 887.863f, -112.34f, nullptr },
    { 1148.89f, 871.391f, -111.96f, nullptr },
    { 1145.24f, 850.82f, -110.514f, &AB_AtFlag },
};
// Alliance Base to Lumber Mill
BattleBotPath vPath_AB_AllianceBase_to_LumberMill =
{
    { 1285.67f, 1282.14f, -15.8466f, nullptr },
    { 1269.13f, 1267.89f, -22.7764f, nullptr },
    { 1247.79f, 1249.77f, -33.2518f, nullptr },
    { 1226.29f, 1232.02f, -43.9193f, nullptr },
    { 1196.68f, 1230.15f, -50.4644f, nullptr },
    { 1168.72f, 1228.98f, -53.9329f, nullptr },
    { 1140.82f, 1226.7f, -53.6318f, nullptr },
    { 1126.85f, 1225.77f, -47.98f, nullptr },
    { 1096.5f, 1226.57f, -53.1769f, nullptr },
    { 1054.52f, 1226.14f, -49.2011f, nullptr },
    { 1033.52f, 1226.08f, -45.5968f, nullptr },
    { 1005.52f, 1226.08f, -43.2912f, nullptr },
    { 977.53f, 1226.68f, -40.16f, nullptr },
    { 957.242f, 1227.94f, -34.1487f, nullptr },
    { 930.689f, 1221.57f, -18.9588f, nullptr },
    { 918.202f, 1211.98f, -12.2494f, nullptr },
    { 880.329f, 1192.63f, 7.61168f, nullptr },
    { 869.965f, 1178.52f, 10.9678f, nullptr },
    { 864.74f, 1163.78f, 12.385f, nullptr },
    { 859.165f, 1148.84f, 11.5289f, &AB_AtFlag },
};
// Stables to Blacksmith
BattleBotPath vPath_AB_Stables_to_Blacksmith =
{
    { 1169.52f, 1198.71f, -56.2742f, nullptr },
    { 1166.93f, 1185.2f, -56.3634f, nullptr },
    { 1173.84f, 1170.6f, -56.4094f, nullptr },
    { 1186.7f, 1163.92f, -56.3961f, nullptr },
    { 1189.7f, 1150.68f, -55.8664f, nullptr },
    { 1185.18f, 1129.31f, -58.1044f, nullptr },
    { 1181.7f, 1108.6f, -62.1797f, nullptr },
    { 1177.92f, 1087.95f, -63.5768f, nullptr },
    { 1174.52f, 1067.23f, -64.402f, nullptr },
    { 1171.27f, 1051.09f, -65.0833f, nullptr },
    { 1163.22f, 1031.7f, -64.954f, nullptr },
    { 1154.25f, 1010.25f, -63.5299f, nullptr },
    { 1141.07f, 999.479f, -63.3713f, nullptr },
    { 1127.12f, 1000.37f, -60.628f, nullptr },
    { 1106.17f, 1001.66f, -61.7457f, nullptr },
    { 1085.64f, 1005.62f, -58.5932f, nullptr },
    { 1064.88f, 1008.65f, -52.3547f, nullptr },
    { 1044.16f, 1011.96f, -47.2647f, nullptr },
    { 1029.72f, 1014.88f, -45.3546f, nullptr },
    { 1013.94f, 1028.7f, -43.9786f, nullptr },
    { 990.89f, 1039.3f, -42.7659f, nullptr },
    { 978.269f, 1043.84f, -44.4588f, &AB_AtFlag },
};
// Horde Base to Farm
BattleBotPath vPath_AB_HordeBase_to_Farm =
{
    { 707.259f, 707.839f, -17.5318f, nullptr },
    { 712.063f, 712.928f, -20.1802f, nullptr },
    { 725.941f, 728.682f, -29.7536f, nullptr },
    { 734.715f, 739.591f, -35.2144f, nullptr },
    { 747.607f, 756.161f, -40.899f, nullptr },
    { 753.994f, 766.668f, -43.3049f, nullptr },
    { 758.715f, 787.106f, -46.7014f, nullptr },
    { 762.077f, 807.831f, -48.4721f, nullptr },
    { 764.132f, 821.68f, -49.656f, nullptr },
    { 767.947f, 839.274f, -50.8574f, nullptr },
    { 773.745f, 852.013f, -52.6226f, nullptr },
    { 785.123f, 869.103f, -54.2089f, nullptr },
    { 804.429f, 874.961f, -55.2691f, &AB_AtFlag },
};
// Horde Base to Gold Mine
BattleBotPath vPath_AB_HordeBase_to_GoldMine =
{
    { 707.259f, 707.839f, -17.5318f, nullptr },
    { 717.935f, 716.874f, -23.3941f, nullptr },
    { 739.195f, 732.483f, -34.5791f, nullptr },
    { 757.087f, 742.008f, -38.1123f, nullptr },
    { 776.946f, 748.775f, -42.7346f, nullptr },
    { 797.138f, 754.539f, -46.3237f, nullptr },
    { 817.37f, 760.167f, -48.9235f, nullptr },
    { 837.638f, 765.664f, -49.7374f, nullptr },
    { 865.092f, 774.738f, -51.9831f, nullptr },
    { 878.86f, 777.149f, -47.2361f, nullptr },
    { 903.911f, 780.212f, -53.1424f, nullptr },
    { 923.454f, 787.888f, -54.7937f, nullptr },
    { 946.218f, 798.93f, -59.0904f, nullptr },
    { 978.1f, 813.321f, -66.7268f, nullptr },
    { 1002.94f, 817.895f, -77.3119f, nullptr },
    { 1030.77f, 820.92f, -88.7717f, nullptr },
    { 1058.61f, 823.889f, -94.1623f, nullptr },
    { 1081.6f, 828.32f, -99.4137f, nullptr },
    { 1104.64f, 844.773f, -106.387f, nullptr },
    { 1117.56f, 853.686f, -110.716f, nullptr },
    { 1144.9f, 850.049f, -110.522f, &AB_AtFlag },
};
// Horde Base to Lumber Mill
BattleBotPath vPath_AB_HordeBase_to_LumberMill =
{
    { 707.259f, 707.839f, -17.5318f, nullptr },
    { 721.611f, 726.507f, -27.9646f, nullptr },
    { 733.846f, 743.573f, -35.8633f, nullptr },
    { 746.201f, 760.547f, -40.838f, nullptr },
    { 758.937f, 787.565f, -46.741f, nullptr },
    { 761.289f, 801.357f, -48.0037f, nullptr },
    { 764.341f, 822.128f, -49.6908f, nullptr },
    { 769.766f, 842.244f, -51.1239f, nullptr },
    { 775.322f, 855.093f, -53.1161f, nullptr },
    { 783.995f, 874.216f, -55.0822f, nullptr },
    { 789.917f, 886.902f, -56.2935f, nullptr },
    { 798.03f, 906.259f, -57.1162f, nullptr },
    { 803.183f, 919.266f, -57.6692f, nullptr },
    { 813.248f, 937.688f, -57.7106f, nullptr },
    { 820.412f, 958.712f, -56.1492f, nullptr },
    { 814.247f, 973.692f, -50.4602f, nullptr },
    { 807.697f, 985.502f, -47.2383f, nullptr },
    { 795.672f, 1002.69f, -44.9382f, nullptr },
    { 784.653f, 1020.77f, -38.6278f, nullptr },
    { 784.826f, 1037.34f, -31.5719f, nullptr },
    { 786.083f, 1051.28f, -24.0793f, nullptr },
    { 787.314f, 1065.23f, -16.8918f, nullptr },
    { 788.892f, 1086.17f, -6.42608f, nullptr },
    { 792.077f, 1106.53f, 4.81124f, nullptr },
    { 800.398f, 1119.48f, 8.5814f, nullptr },
    { 812.476f, 1131.1f, 10.439f, nullptr },
    { 829.704f, 1142.52f, 10.738f, nullptr },
    { 842.646f, 1143.51f, 11.9984f, nullptr },
    { 857.674f, 1146.16f, 11.529f, &AB_AtFlag },
};
// Farm to Blacksmith
BattleBotPath vPath_AB_Farm_to_Blacksmith =
{
    { 803.826f, 874.909f, -55.2547f, nullptr },
    { 808.763f, 887.991f, -57.4437f, nullptr },
    { 818.33f, 906.674f, -59.3554f, nullptr },
    { 828.634f, 924.972f, -60.5664f, nullptr },
    { 835.255f, 937.308f, -60.2915f, nullptr },
    { 845.244f, 955.78f, -60.4208f, nullptr },
    { 852.125f, 967.965f, -61.3135f, nullptr },
    { 863.232f, 983.109f, -62.6402f, nullptr },
    { 875.413f, 989.245f, -61.2916f, nullptr },
    { 895.765f, 994.41f, -63.6287f, nullptr },
    { 914.16f, 1001.09f, -58.37f, nullptr },
    { 932.418f, 1011.44f, -51.9225f, nullptr },
    { 944.244f, 1018.92f, -49.1438f, nullptr },
    { 961.55f, 1030.81f, -45.814f, nullptr },
    { 978.122f, 1043.87f, -44.4682f, &AB_AtFlag },
};
// Stables to Gold Mine
BattleBotPath vPath_AB_Stables_to_GoldMine =
{
    { 1169.52f, 1198.71f, -56.2742f, nullptr },
    { 1166.72f, 1183.58f, -56.3633f, nullptr },
    { 1172.14f, 1170.99f, -56.4735f, nullptr },
    { 1185.18f, 1164.02f, -56.4269f, nullptr },
    { 1193.98f, 1155.85f, -55.924f, nullptr },
    { 1201.51f, 1145.65f, -56.4733f, nullptr },
    { 1205.39f, 1134.81f, -56.2366f, nullptr },
    { 1207.57f, 1106.9f, -58.4748f, nullptr },
    { 1209.4f, 1085.98f, -63.4022f, nullptr },
    { 1212.68f, 1065.25f, -66.514f, nullptr },
    { 1216.42f, 1037.52f, -72.0457f, nullptr },
    { 1215.4f, 1011.56f, -78.3338f, nullptr },
    { 1209.8f, 992.293f, -83.2433f, nullptr },
    { 1201.23f, 973.121f, -88.5661f, nullptr },
    { 1192.16f, 954.183f, -94.2209f, nullptr },
    { 1181.88f, 935.894f, -99.5239f, nullptr },
    { 1169.86f, 918.68f, -105.588f, nullptr },
    { 1159.36f, 900.497f, -110.461f, nullptr },
    { 1149.32f, 874.429f, -112.142f, nullptr },
    { 1145.34f, 849.824f, -110.523f, &AB_AtFlag },
};
// Stables to Lumber Mill
BattleBotPath vPath_AB_Stables_to_LumberMill =
{
    { 1169.52f, 1198.71f, -56.2742f, nullptr },
    { 1169.33f, 1203.43f, -56.5457f, nullptr },
    { 1164.77f, 1208.73f, -56.1907f, nullptr },
    { 1141.52f, 1224.99f, -53.8204f, nullptr },
    { 1127.54f, 1224.82f, -48.2081f, nullptr },
    { 1106.56f, 1225.58f, -50.5154f, nullptr },
    { 1085.6f, 1226.54f, -53.1863f, nullptr },
    { 1064.6f, 1226.82f, -50.4381f, nullptr },
    { 1043.6f, 1227.27f, -46.5439f, nullptr },
    { 1022.61f, 1227.72f, -44.7157f, nullptr },
    { 1001.61f, 1227.62f, -42.6876f, nullptr },
    { 980.623f, 1226.93f, -40.4687f, nullptr },
    { 959.628f, 1227.1f, -35.3838f, nullptr },
    { 938.776f, 1226.34f, -23.5399f, nullptr },
    { 926.138f, 1217.21f, -16.2176f, nullptr },
    { 911.966f, 1205.99f, -9.69655f, nullptr },
    { 895.135f, 1198.85f, -0.546275f, nullptr },
    { 873.419f, 1189.27f, 9.3466f, nullptr },
    { 863.821f, 1181.72f, 9.76912f, nullptr },
    { 851.803f, 1166.3f, 10.4423f, nullptr },
    { 853.921f, 1150.92f, 11.543f, &AB_AtFlag },
};
// Farm to Gold Mine
BattleBotPath vPath_AB_Farm_to_GoldMine =
{
    { 803.826f, 874.909f, -55.2547f, nullptr },
    { 801.662f, 865.689f, -56.9445f, nullptr },
    { 806.433f, 860.776f, -57.5899f, nullptr },
    { 816.236f, 857.397f, -57.7029f, nullptr },
    { 826.717f, 855.846f, -57.9914f, nullptr },
    { 836.128f, 851.257f, -57.8321f, nullptr },
    { 847.933f, 843.837f, -58.1296f, nullptr },
    { 855.08f, 832.688f, -57.7373f, nullptr },
    { 864.513f, 813.663f, -57.574f, nullptr },
    { 864.229f, 797.762f, -54.2057f, nullptr },
    { 862.967f, 787.372f, -53.0276f, nullptr },
    { 864.163f, 776.33f, -52.0372f, nullptr },
    { 872.583f, 777.391f, -48.5342f, nullptr },
    { 893.575f, 777.922f, -49.1826f, nullptr },
    { 915.941f, 783.534f, -53.6598f, nullptr },
    { 928.105f, 789.929f, -55.4802f, nullptr },
    { 946.263f, 800.46f, -59.166f, nullptr },
    { 958.715f, 806.845f, -62.1494f, nullptr },
    { 975.79f, 811.913f, -65.9648f, nullptr },
    { 989.468f, 814.883f, -71.3089f, nullptr },
    { 1010.13f, 818.643f, -80.0817f, nullptr },
    { 1023.97f, 820.667f, -86.1114f, nullptr },
    { 1044.84f, 823.011f, -92.0583f, nullptr },
    { 1058.77f, 824.482f, -94.1937f, nullptr },
    { 1079.13f, 829.402f, -99.1207f, nullptr },
    { 1092.85f, 836.986f, -102.755f, nullptr },
    { 1114.75f, 851.21f, -109.782f, nullptr },
    { 1128.22f, 851.928f, -111.078f, nullptr },
    { 1145.14f, 849.895f, -110.523f, &AB_AtFlag },
};
// Farm to Lumber Mill
BattleBotPath vPath_AB_Farm_to_LumberMill =
{
    { 803.826f, 874.909f, -55.2547f, nullptr },
    { 802.874f, 894.28f, -56.4661f, nullptr },
    { 806.844f, 920.39f, -57.3157f, nullptr },
    { 814.003f, 934.161f, -57.6065f, nullptr },
    { 824.594f, 958.47f, -58.4916f, nullptr },
    { 820.434f, 971.184f, -53.201f, nullptr },
    { 808.339f, 987.79f, -47.5705f, nullptr },
    { 795.98f, 1004.76f, -44.9189f, nullptr },
    { 785.497f, 1019.18f, -39.2806f, nullptr },
    { 783.94f, 1032.46f, -33.5692f, nullptr },
    { 784.956f, 1053.41f, -22.8368f, nullptr },
    { 787.499f, 1074.25f, -12.4232f, nullptr },
    { 789.406f, 1088.11f, -5.28606f, nullptr },
    { 794.617f, 1109.17f, 6.1966f, nullptr },
    { 801.514f, 1120.77f, 8.81455f, nullptr },
    { 817.3f, 1134.59f, 10.6064f, nullptr },
    { 828.961f, 1142.98f, 10.7354f, nullptr },
    { 841.63f, 1147.75f, 11.6916f, nullptr },
    { 854.326f, 1150.55f, 11.537f, &AB_AtFlag },
};

BattleBotPath vPath_AV_Horde_Cave_to_Tower_Point_Crossroads =
{
    { -885.928f, -536.612f, 55.1936f, nullptr },
    { -880.957f, -525.119f, 53.6791f, nullptr },
    { -839.408f, -499.746f, 49.7505f, nullptr },
    { -820.21f, -469.193f, 49.4085f,  nullptr },
    { -812.602f, -460.45f, 54.0872f,  nullptr },
    { -789.646f, -441.864f, 57.8833f, nullptr },
    { -776.405f, -432.056f, 61.9256f, nullptr },
    { -760.773f, -430.154f, 64.8376f, nullptr },
    { -734.801f, -419.622f, 67.5354f, nullptr },
    { -718.313f, -404.674f, 67.5994f, nullptr },
    { -711.436f, -362.86f, 66.7543f,  nullptr },
};

BattleBotPath vPath_AV_Tower_Point_Crossroads_to_Tower_Point_Bottom =
{
    { -711.436f, -362.86f, 66.7543f,  nullptr },
    { -713.433f, -357.847f, 66.6605f, nullptr },
    { -726.362f, -345.477f, 66.8089f, nullptr },
    { -748.788f, -344.154f, 66.7348f, nullptr },
    { -759.771f, -342.304f, 67.2223f, nullptr },
};

BattleBotPath vPath_AV_TowerPoint_Bottom_to_Tower_Point_Flag =
{
    { -759.771f, -342.304f, 67.2223f, nullptr },
    { -762.995f, -350.399f, 68.6696f, nullptr },
    { -770.643f, -369.422f, 68.3921f, nullptr },
    { -766.399f, -370.279f, 68.3841f, nullptr },
    { -762.111f, -359.985f, 72.7541f, nullptr },
    { -771.674f, -357.679f, 76.4728f, nullptr },
    { -773.29f, -365.392f, 79.265f, nullptr },
    { -766.322f, -366.861f, 81.7915f, nullptr },
    { -764.283f, -357.713f, 84.3558f, nullptr },
    { -770.88f, -360.017f, 84.3558f, nullptr },
    { -779.395f, -356.52f, 84.343f, nullptr },
    { -779.845f, -363.948f, 88.1177f, nullptr },
    { -776.861f, -370.506f, 90.8708f, nullptr },
    { -767.838f, -373.057f, 90.899f, nullptr },
    { -759.796f, -367.106f, 90.8399f, nullptr },
    { -760.609f, -358.f, 90.8949f, nullptr },
    { -764.209f, -355.919f, 90.8164f, nullptr },
    { -767.259f, -361.822f, 90.8959f, nullptr },
};

BattleBotPath vPath_AV_Tower_Point_Bottom_to_Frostwolf_Graveyard_Flag =
{
    { -759.771f, -342.304f, 67.2223f, nullptr },
    { -764.971f, -339.278f, 67.6875f, nullptr },
    { -773.394f, -335.633f, 66.4157f, nullptr },
    { -796.758f, -340.437f, 61.5754f, nullptr },
    { -828.745f, -348.592f, 50.1022f, nullptr },
    { -846.826f, -355.181f, 50.0754f, nullptr },
    { -869.897f, -359.01f, 50.9404f, nullptr },
    { -888.679f, -365.688f, 49.3732f, nullptr },
    { -908.082f, -381.24f, 48.9888f, nullptr },
    { -934.234f, -388.41f, 48.9912f, nullptr },
    { -960.683f, -395.321f, 49.028f, nullptr },
    { -970.161f, -397.02f, 49.2312f, nullptr },
    { -993.784f, -397.619f, 50.0896f, nullptr },
    { -1018.82f, -393.742f, 50.703f, nullptr },
    { -1047.38f, -380.337f, 51.1403f, nullptr },
    { -1066.7f, -361.097f, 51.3909f, nullptr },
    { -1079.61f, -345.548f, 55.1131f, nullptr },
};

BattleBotPath vPath_AV_Frostwolf_Graveyard_to_Frostwolf_Graveyard_Flag =
{
    { -1089.6f, -268.375f, 57.038f, nullptr },
    { -1087.23f, -285.712f, 56.625f, nullptr },
    { -1084.83f, -307.023f, 56.5773f, nullptr },
    { -1082.81f, -327.926f, 54.863f, nullptr },
    { -1082.08f, -333.784f, 54.885f, nullptr },
    { -1079.61f, -345.548f, 55.1131f, nullptr },
};

std::vector<BattleBotPath*> vPaths_WS =
{
    &vPath_WSG_HordeFlagRoom_to_HordeGraveyard,
    &vPath_WSG_HordeGraveyard_to_HordeTunnel,
    &vPath_WSG_HordeTunnel_to_HordeFlagRoom,
    &vPath_WSG_HordeTunnel_to_AllianceTunnel_1,
    &vPath_WSG_HordeTunnel_to_AllianceTunnel_2,
    &vPath_WSG_HordeGYJump_to_HordeTunnel,
    &vPath_WSG_HordeGYJump_to_AllianceTunnel,
    &vPath_WSG_AllianceFlagRoom_to_AllianceGraveyard,
    &vPath_WSG_AllianceGraveyard_to_AllianceTunnel,
    &vPath_WSG_AllianceTunnel_to_AllianceFlagRoom,
    &vPath_WSG_AllianceGYJump_to_AllianceTunnel,
    &vPath_WSG_AllianceGYJump_to_HordeTunnel,
    &vPath_WSG_HordeGYJump_to_AllianceFlagRoom,
    &vPath_WSG_AllianceGYJump_to_HordeFlagRoom,
    &vPath_WSG_HordeTunnelMiddle_to_HordeBaseRoof,
    &vPath_WSG_AllianceTunnelMiddle_to_AllianceBaseRoof,
};

std::vector<BattleBotPath*> vPaths_AB =
{
    &vPath_AB_AllianceBase_to_Stables,
    &vPath_AB_AllianceBase_to_GoldMine,
    &vPath_AB_AllianceBase_to_LumberMill,
    &vPath_AB_Stables_to_Blacksmith,
    &vPath_AB_HordeBase_to_Farm,
    &vPath_AB_HordeBase_to_GoldMine,
    &vPath_AB_HordeBase_to_LumberMill,
    &vPath_AB_Farm_to_Blacksmith,
    &vPath_AB_Stables_to_GoldMine,
    &vPath_AB_Stables_to_LumberMill,
    &vPath_AB_Farm_to_GoldMine,
    &vPath_AB_Farm_to_LumberMill,
};

std::vector<BattleBotPath*> vPaths_AV =
{
    &vPath_AV_Horde_Cave_to_Tower_Point_Crossroads,
    &vPath_AV_Tower_Point_Crossroads_to_Tower_Point_Bottom,
    &vPath_AV_TowerPoint_Bottom_to_Tower_Point_Flag,
    &vPath_AV_Tower_Point_Bottom_to_Frostwolf_Graveyard_Flag,
    &vPath_AV_Frostwolf_Graveyard_to_Frostwolf_Graveyard_Flag,
};

std::vector<BattleBotPath*> vPaths_NoReverseAllowed =
{
    &vPath_AB_AllianceBase_to_Stables,
    &vPath_AB_AllianceBase_to_GoldMine,
    &vPath_AB_AllianceBase_to_LumberMill,
    &vPath_AB_HordeBase_to_Farm,
    &vPath_AB_HordeBase_to_GoldMine,
    &vPath_AB_HordeBase_to_LumberMill,
    &vPath_AV_Horde_Cave_to_Tower_Point_Crossroads,
    &vPath_AV_Frostwolf_Graveyard_to_Frostwolf_Graveyard_Flag,
};

void BattleBotAI::MovementInform(uint32 movementType, uint32 data)
{
    if (movementType == POINT_MOTION_TYPE)
    { 
        if (m_currentPath && m_currentPath->at(data).pFunc)
            (*m_currentPath->at(data).pFunc)(this);
        else
            MoveToNextPoint();
    }
}

void BattleBotAI::MoveToNextPoint()
{
    if (!m_currentPath)
        return;

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

    BattleBotWaypoint& nextPoint = m_currentPath->at(m_currentPoint);

    me->GetMotionMaster()->MovePoint(m_currentPoint, nextPoint.x + frand(-1, 1), nextPoint.y + frand(-1, 1), nextPoint.z, MOVE_PATHFINDING);
}

bool BattleBotAI::StartNewPathFromBeginning()
{
    struct AvailablePath
    {
        AvailablePath(BattleBotPath* pPath_, bool reverse_) : pPath(pPath_), reverse(reverse_) {}
        BattleBotPath* pPath = nullptr;
        bool reverse = false;
    };
    std::vector<AvailablePath> availablePaths;

    std::vector<BattleBotPath*> vPaths;
    switch (me->GetBattleGround()->GetTypeID())
    {
        case BATTLEGROUND_AB:
        {
            vPaths = vPaths_AB;
            break;
        }
        case BATTLEGROUND_AV:
        {
            vPaths = vPaths_AV;
            break;
        }
        case BATTLEGROUND_WS:
        {
            vPaths = vPaths_WS;
            break;
        }
        default:
            break;
    }

    for (const auto& pPath : vPaths)
    {
        BattleBotWaypoint* pStart = &((*pPath)[0]);
        if (me->GetDistance(pStart->x, pStart->y, pStart->z) < INTERACTION_DISTANCE)
            availablePaths.emplace_back(AvailablePath(pPath, false));

        // Some paths are not allowed backwards.
        if (std::find(vPaths_NoReverseAllowed.begin(), vPaths_NoReverseAllowed.end(), pPath) != vPaths_NoReverseAllowed.end())
            continue;

        BattleBotWaypoint* pEnd = &((*pPath)[(*pPath).size() - 1]);
        if (me->GetDistance(pEnd->x, pEnd->y, pEnd->z) < INTERACTION_DISTANCE)
            availablePaths.emplace_back(AvailablePath(pPath, true));
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

void BattleBotAI::StartNewPathFromAnywhere()
{
    BattleBotPath* pClosestPath = nullptr;
    uint32 closestPoint = 0;
    float closestDistance = FLT_MAX;

    std::vector<BattleBotPath*> vPaths;
    switch (me->GetBattleGround()->GetTypeID())
    {
    case BATTLEGROUND_AB:
    {
        vPaths = vPaths_AB;
        break;
    }
    case BATTLEGROUND_AV:
    {
        vPaths = vPaths_AV;
        break;
    }
    case BATTLEGROUND_WS:
    {
        vPaths = vPaths_WS;
        break;
    }
    default:
        break;
    }

    for (const auto& pPath : vPaths)
    {
        for (uint32 i = 0; i < pPath->size(); i++)
        {
            BattleBotWaypoint& waypoint = ((*pPath)[i]);
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

void BattleBotAI::ClearPath()
{
    m_currentPath = nullptr;
    m_currentPoint = 0;
    m_movingInReverse = false;
}
