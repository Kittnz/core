#include "Object.h"
#include "Player.h"
#include "BattleGround.h"
#include "BattleGroundSV.h"
#include "Creature.h"
#include "GameObject.h"
#include "ObjectMgr.h"
#include "BattleGroundMgr.h"
#include "WorldPacket.h"
#include "Language.h"
#include "MapManager.h"
#include "World.h"

BattleGroundSV::BattleGroundSV()
{
    m_StartMessageIds[BG_STARTING_EVENT_FIRST] = 0;
    m_StartMessageIds[BG_STARTING_EVENT_SECOND] = LANG_BG_SV_START_ONE_MINUTE;
    m_StartMessageIds[BG_STARTING_EVENT_THIRD] = LANG_BG_SV_START_HALF_MINUTE;
    m_StartMessageIds[BG_STARTING_EVENT_FOURTH] = LANG_BG_SV_HAS_BEGUN;

    m_BgObjects.resize(BG_SV_OBJECT_MAX);
    m_BgCreatures.resize(BG_SV_CREATURE_MAX);
}

BattleGroundSV::~BattleGroundSV()
{
}

void BattleGroundSV::Update(uint32 diff)
{
    if (GetStatus() == STATUS_IN_PROGRESS)
    {
        uint8 controlledNodesCount[BG_TEAMS_COUNT] = { 0, 0 };

        for (uint8 node = 0; node < BG_SV_DYNAMIC_NODES_COUNT; ++node)
        {
            // 2 sec delay to spawn new banner instead previous despawned one
            if (m_BannerTimers[node].timer)
            {
                if (m_BannerTimers[node].timer > diff)
                    m_BannerTimers[node].timer -= diff;
                else
                {
                    m_BannerTimers[node].timer = 0;
                    CreateBanner(node, m_BannerTimers[node].type, m_BannerTimers[node].teamIndex, false);
                }
            }

            // 1-minute to occupy a tower from contested state
            if (m_NodeTimers[node])
            {
                if (m_NodeTimers[node] > diff)
                    m_NodeTimers[node] -= diff;
                else
                {
                    m_NodeTimers[node] = 0;
                    // Change from contested to occupied !
                    uint8 teamIndex = m_Nodes[node] - 1;
                    m_prevNodes[node] = m_Nodes[node];
                    m_Nodes[node] += 2;
                    // burn current contested banner
                    DelBanner(node, BG_SV_NODE_TYPE_CONTESTED, teamIndex);
                    // create new occupied banner
                    CreateBanner(node, BG_SV_NODE_TYPE_OCCUPIED, teamIndex, true);
                    NodeOccupied(node, (teamIndex == 0) ? ALLIANCE : HORDE);

                    // Message to chatlog
                    if (teamIndex == 0)
                    {
                        SendMessage2ToAll(LANG_BG_SV_NODE_TAKEN, CHAT_MSG_BG_SYSTEM_ALLIANCE, nullptr, LANG_BG_ALLY, GetTowerNameId(node));
                        PlaySoundToAll(BG_SV_SOUND_NODE_CAPTURED_ALLIANCE);
                    }
                    else
                    {
                        SendMessage2ToAll(LANG_BG_SV_NODE_TAKEN, CHAT_MSG_BG_SYSTEM_HORDE, nullptr, LANG_BG_HORDE, GetTowerNameId(node));
                        PlaySoundToAll(BG_SV_SOUND_NODE_CAPTURED_HORDE);
                    }
                }
            }

            if (node >= BG_SV_HERALD_POINT)
                continue;

            for (uint8 team = 0; team < BG_TEAMS_COUNT; ++team)
                if (m_Nodes[node] == team + BG_SV_NODE_TYPE_OCCUPIED)
                    ++controlledNodesCount[team];
        }

        // Accumulate sparks
        for (uint8 team = 0; team < BG_TEAMS_COUNT; ++team)
        {
            uint8 nodesCount = controlledNodesCount[team];

            if (!nodesCount)
                continue;

            m_lastTick[team] += diff;

            if (m_lastTick[team] > 1*MINUTE*IN_MILLISECONDS)
            {
                m_lastTick[team] -= 1 * MINUTE * IN_MILLISECONDS;
                m_resources[team] += BG_SV_CaptureNodesSparkTicks[nodesCount];
            }
        }
    }

    // Execute this at the end, since it can delete the BattleGround object!
    BattleGround::Update(diff);
}

void BattleGroundSV::StartingEventCloseDoors()
{
    // despawn all banners
    for (uint8 obj = BG_SV_OBJECT_BANNER_NEUTRAL; obj < BG_SV_DYNAMIC_NODES_COUNT * 5; ++obj)
        SpawnBGObject(m_BgObjects[obj], RESPAWN_ONE_DAY);
    // despawn all buffs
    for (uint8 i = 0; i < 6 * 3; ++i)
        SpawnBGObject(m_BgObjects[BG_SV_OBJECT_SPEEDBUFF + i], RESPAWN_ONE_DAY);
    // despawn all chests
    for (uint8 i = 0; i < 6; ++i)
        SpawnBGObject(m_BgObjects[BG_SV_OBJECT_CHEST + i], RESPAWN_ONE_DAY);
}

void BattleGroundSV::StartingEventOpenDoors()
{
    OpenDoorEvent(BG_EVENT_DOOR);

    // spawn neutral banners
    for (uint8 banner = BG_SV_OBJECT_BANNER_NEUTRAL, i = 0; i < BG_SV_DYNAMIC_NODES_COUNT; banner += 5, ++i)
        SpawnBGObject(m_BgObjects[banner], RESPAWN_IMMEDIATELY);

    // spawn random buffs
    /*for (uint8 i = 0; i < 6; ++i)
    {
        uint8 buff = urand(0, 2);
        SpawnBGObject(m_BgObjects[BG_SV_OBJECT_SPEEDBUFF + buff + i * 3], RESPAWN_IMMEDIATELY);
    }*/

    // spawn chests
    for (uint8 i = 0; i < 6; ++i)
        SpawnBGObject(m_BgObjects[BG_SV_OBJECT_CHEST + i], RESPAWN_IMMEDIATELY);
}

void BattleGroundSV::AddPlayer(Player *plr)
{
    BattleGround::AddPlayer(plr);

    //create score and add it to map, default values are set in constructor
    BattleGroundSVScore* sc = new BattleGroundSVScore;
    m_PlayerScores[plr->GetObjectGuid()] = sc;
}

void BattleGroundSV::RemovePlayer(Player* plr, ObjectGuid /*guid*/)
{
    if (plr)
    {
        uint32 sparkCount = plr->GetItemCount(81390);
        plr->DestroyItemCount(81390, sparkCount, true, false, true);
    }
    else
    {
        // here DB queries
    }
}

void BattleGroundSV::UpdateTeamScore(Team team)
{
}

void BattleGroundSV::HandleAreaTrigger(Player *Source, uint32 Trigger)
{
    // this is wrong way to implement these things. On official it done by gameobject spell cast.
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;
}

void BattleGroundSV::HandleKillUnit(Creature* creature, Player* killer)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;

    // Kill one leader
    if (creature->GetEntry() == NPC_MARSHAL_GREYWALL)
        EndBattleGround(HORDE);
    else if (creature->GetEntry() == NPC_WARLORD_BLACKSKULL)
        EndBattleGround(ALLIANCE);
}

bool BattleGroundSV::SetupBattleGround()
{
    /*doors*/
    /*banners*/
    for (uint8 i = 0; i < BG_SV_DYNAMIC_NODES_COUNT; ++i)
    {
        if (!AddObject(BG_SV_OBJECT_BANNER_NEUTRAL + 5 * i, BG_SV_OBJECTID_BANNER_0, BG_SV_NodePositions[i].x, BG_SV_NodePositions[i].y, BG_SV_NodePositions[i].z, BG_SV_NodePositions[i].o, 0, 0, sin(BG_SV_NodePositions[i].o / 2), cos(BG_SV_NodePositions[i].o / 2))
            || !AddObject(BG_SV_OBJECT_BANNER_CONT_A + 5 * i, BG_SV_OBJECTID_BANNER_CONT_A, BG_SV_NodePositions[i].x, BG_SV_NodePositions[i].y, BG_SV_NodePositions[i].z, BG_SV_NodePositions[i].o, 0, 0, sin(BG_SV_NodePositions[i].o / 2), cos(BG_SV_NodePositions[i].o / 2))
            || !AddObject(BG_SV_OBJECT_BANNER_CONT_H + 5 * i, BG_SV_OBJECTID_BANNER_CONT_H, BG_SV_NodePositions[i].x, BG_SV_NodePositions[i].y, BG_SV_NodePositions[i].z, BG_SV_NodePositions[i].o, 0, 0, sin(BG_SV_NodePositions[i].o / 2), cos(BG_SV_NodePositions[i].o / 2))
            || !AddObject(BG_SV_OBJECT_BANNER_ALLY + 5 * i, BG_SV_OBJECTID_BANNER_A, BG_SV_NodePositions[i].x, BG_SV_NodePositions[i].y, BG_SV_NodePositions[i].z, BG_SV_NodePositions[i].o, 0, 0, sin(BG_SV_NodePositions[i].o / 2), cos(BG_SV_NodePositions[i].o / 2))
            || !AddObject(BG_SV_OBJECT_BANNER_HORDE + 5 * i, BG_SV_OBJECTID_BANNER_H, BG_SV_NodePositions[i].x, BG_SV_NodePositions[i].y, BG_SV_NodePositions[i].z, BG_SV_NodePositions[i].o, 0, 0, sin(BG_SV_NodePositions[i].o / 2), cos(BG_SV_NodePositions[i].o / 2)))
        {
            sLog.outError("BatteGroundSV: Failed to spawn banners. Battleground not created!");
            return false;
        }
    }
    /*buffs*/
    //for (uint8 i = 0; i < 6; ++i)
    //{
    //    if (!AddObject(BG_SV_OBJECT_SPEEDBUFF + 3 * i, BG_SV_OBJECTID_SPEEDBUFF, BG_SV_BuffPositions[i].x, BG_SV_BuffPositions[i].y, BG_SV_BuffPositions[i].z, BG_SV_BuffPositions[i].o, 0, 0, sin(BG_SV_BuffPositions[i].o / 2), cos(BG_SV_BuffPositions[i].o / 2))
    //        || !AddObject(BG_SV_OBJECT_REGENBUFF + 3 * i, BG_SV_OBJECTID_REGENBUFF, BG_SV_BuffPositions[i].x, BG_SV_BuffPositions[i].y, BG_SV_BuffPositions[i].z, BG_SV_BuffPositions[i].o, 0, 0, sin(BG_SV_BuffPositions[i].o / 2), cos(BG_SV_BuffPositions[i].o / 2))
    //        || !AddObject(BG_SV_OBJECT_BERSERKBUFF + 3 * i, BG_SV_OBJECTID_BERSERKERBUFF, BG_SV_BuffPositions[i].x, BG_SV_BuffPositions[i].y, BG_SV_BuffPositions[i].z, BG_SV_BuffPositions[i].o, 0, 0, sin(BG_SV_BuffPositions[i].o / 2), cos(BG_SV_BuffPositions[i].o / 2)))
    //    {
    //        sLog.outError("BatteGroundSV: Failed to spawn buffs. Battleground not created!");
    //        return false;
    //    }
    //}
    /*chests*/
    for (uint8 i = 0; i < 6; ++i)
    {
        if (!AddObject(BG_SV_OBJECT_CHEST + i, BG_SV_OBJECTID_CHEST, BG_SV_BuffPositions[i].x, BG_SV_BuffPositions[i].y, BG_SV_BuffPositions[i].z, BG_SV_BuffPositions[i].o, 0, 0, sin(BG_SV_BuffPositions[i].o / 2), cos(BG_SV_BuffPositions[i].o / 2)))
        {
            sLog.outError("BatteGroundSV: Failed to spawn chests. Battleground not created!");
            return false;
        }
    }
    /*spiritguides*/
    if (!AddCreature(13116, BG_SV_CREATURE_SPIRITGUIDE_A, BG_SV_SpiritGuidePos[0].x, BG_SV_SpiritGuidePos[0].y, BG_SV_SpiritGuidePos[0].z, BG_SV_SpiritGuidePos[0].o)
        || !AddCreature(13117, BG_SV_CREATURE_SPIRITGUIDE_H, BG_SV_SpiritGuidePos[1].x, BG_SV_SpiritGuidePos[1].y, BG_SV_SpiritGuidePos[1].z, BG_SV_SpiritGuidePos[1].o))
    {
        sLog.outError("BatteGroundSV: Failed to spawn spiritguides. Battleground not created!");
        return false;
    }
    /*herald*/
    Creature* herald = AddCreature(NPC_HERALD, BG_SV_CREATURE_HERALD, BG_SV_HeraldPos.x, BG_SV_HeraldPos.y, BG_SV_HeraldPos.z, BG_SV_HeraldPos.o);
    if (!herald)
    {
        sLog.outError("BatteGroundSV: Failed to spawn herald. Battleground not created!");
        return false;
    }
    herald->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
    /*human leader*/
    //if (!AddCreature(NPC_MARSHAL_GREYWALL, BG_SV_CREATURE_HUMAN_LEADER, BG_SV_LeaderPos[0].x, BG_SV_LeaderPos[0].y, BG_SV_LeaderPos[0].z, BG_SV_LeaderPos[0].o, TEAM_ALLIANCE, 10 * MINUTE * IN_MILLISECONDS))
    //{
    //    sLog.outError("BatteGroundSV: Failed to spawn human leader. Battleground not created!");
    //    return false;
    //}
    ///*human leader guards*/
    //for (uint8 i = 0; i < 6; ++i)
    //{
    //    if (!AddCreature(BG_SV_LeaderGuardsPos[0][i].entry, BG_SV_CREATURE_LEADER_GUARDS_A + i, BG_SV_LeaderGuardsPos[0][i].x, BG_SV_LeaderGuardsPos[0][i].y, BG_SV_LeaderGuardsPos[0][i].z, BG_SV_LeaderGuardsPos[0][i].o, TEAM_ALLIANCE, 10 * MINUTE * IN_MILLISECONDS))
    //    {
    //        sLog.outError("BatteGroundSV: Failed to spawn human guards. Battleground not created!");
    //        return false;
    //    }
    //}
    ///*orc leader*/
    //if (!AddCreature(NPC_WARLORD_BLACKSKULL, BG_SV_CREATURE_ORC_LEADER, BG_SV_LeaderPos[1].x, BG_SV_LeaderPos[1].y, BG_SV_LeaderPos[1].z, BG_SV_LeaderPos[1].o, TEAM_HORDE, 10 * MINUTE * IN_MILLISECONDS))
    //{
    //    sLog.outError("BatteGroundSV: Failed to spawn orc leader. Battleground not created!");
    //    return false;
    //}
    ///*orc leader guards*/
    //for (uint8 i = 0; i < 6; ++i)
    //{
    //    if (!AddCreature(BG_SV_LeaderGuardsPos[1][i].entry, BG_SV_CREATURE_LEADER_GUARDS_H + i, BG_SV_LeaderGuardsPos[1][i].x, BG_SV_LeaderGuardsPos[1][i].y, BG_SV_LeaderGuardsPos[1][i].z, BG_SV_LeaderGuardsPos[1][i].o, TEAM_HORDE, 10 * MINUTE * IN_MILLISECONDS))
    //    {
    //        sLog.outError("BatteGroundSV: Failed to spawn orc guards. Battleground not created!");
    //        return false;
    //    }
    //}
    /*fights*/
    //for (uint8 i = 0; i < 4; ++i)
    //{
    //    if (!AddCreature(NPC_HUMAN_FOOTMAN, BG_SV_CREATURE_HUMAN_ARMY + i, BG_SV_LeaderGuardsPos[1][i].x, BG_SV_LeaderGuardsPos[1][i].y, BG_SV_LeaderGuardsPos[1][i].z, BG_SV_LeaderGuardsPos[1][i].o, TEAM_ALLIANCE, 5 * MINUTE * IN_MILLISECONDS)
    //        || !AddCreature(NPC_ORC_GRUNT, BG_SV_CREATURE_ORC_ARMY + i, BG_SV_LeaderGuardsPos[1][i].x, BG_SV_LeaderGuardsPos[1][i].y, BG_SV_LeaderGuardsPos[1][i].z, BG_SV_LeaderGuardsPos[1][i].o, TEAM_HORDE, 5 * MINUTE * IN_MILLISECONDS))
    //    {
    //        sLog.outError("BatteGroundSV: Failed to spawn army. Battleground not created!");
    //        return false;
    //    }
    //}

    return true;
}

void BattleGroundSV::Reset()
{
    //call parent's class reset
    BattleGround::Reset();

    for (uint32 i = 0; i < BG_TEAMS_COUNT; ++i)
    {
        m_TeamScores[i] = 0;
        m_lastTick[i] = 0;
    }

    for (uint8 i = 0; i < BG_SV_DYNAMIC_NODES_COUNT; ++i)
    {
        m_Nodes[i] = 0;
        m_prevNodes[i] = 0;
        m_NodeTimers[i] = 0;
        m_BannerTimers[i].timer = 0;
    }

    generalsActive = false;

    for (uint8 i = 0; i < BG_SV_CREATURE_MAX; ++i)
        if (m_BgCreatures[i])
            DelCreature(i);
}

void BattleGroundSV::EndBattleGround(Team winner)
{
    BattleGround::EndBattleGround(winner);
}

void BattleGroundSV::HandleKillPlayer(Player *player, Player *killer)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;

    BattleGround::HandleKillPlayer(player, killer);
}

void BattleGroundSV::EventPlayerClickedOnFlag(Player* source, GameObject* /*target_obj*/)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;

    uint8 node = BG_SV_HUMAN_TOWER;
    while ((node < BG_SV_DYNAMIC_NODES_COUNT) && (!source->IsWithinDist3d(BG_SV_NodePositions[node].x, BG_SV_NodePositions[node].y, BG_SV_NodePositions[node].z, 10)))
        ++node;

    // this means our player isn't close to any of banners - maybe cheater ??
    if (node == BG_SV_DYNAMIC_NODES_COUNT)
        return;

    BattleGroundTeamIndex teamIndex = GetTeamIndexByTeamId(source->GetTeam());

    // Check if player really could use this banner, not cheated
    if (!(m_Nodes[node] == 0 || teamIndex == m_Nodes[node] % 2))
        return;

    source->RemoveAurasWithInterruptFlags(AURA_INTERRUPT_FLAG_ENTER_PVP_COMBAT);
    uint32 sound = 0;
    // If node is neutral, change to contested
    if (m_Nodes[node] == BG_SV_NODE_TYPE_NEUTRAL)
    {
        m_prevNodes[node] = m_Nodes[node];
        m_Nodes[node] = teamIndex + 1;
        // burn current neutral banner
        DelBanner(node, BG_SV_NODE_TYPE_NEUTRAL, 0);
        // create new contested banner
        CreateBanner(node, BG_SV_NODE_TYPE_CONTESTED, teamIndex, true);
        m_NodeTimers[node] = BG_SV_FLAG_CAPTURING_TIME;

        if (teamIndex == 0)
            SendMessage2ToAll(LANG_BG_SV_NODE_CLAIMED, CHAT_MSG_BG_SYSTEM_ALLIANCE, source, GetTowerNameId(node), LANG_BG_ALLY);
        else
            SendMessage2ToAll(LANG_BG_SV_NODE_CLAIMED, CHAT_MSG_BG_SYSTEM_HORDE, source, GetTowerNameId(node), LANG_BG_HORDE);

        sound = BG_SV_SOUND_NODE_CLAIMED;
    }
    // If node is contested
    else if ((m_Nodes[node] == BG_SV_NODE_STATUS_ALLY_CONTESTED) || (m_Nodes[node] == BG_SV_NODE_STATUS_HORDE_CONTESTED))
    {
        // If last state is NOT occupied, change node to enemy-contested
        if (m_prevNodes[node] < BG_SV_NODE_TYPE_OCCUPIED)
        {
            m_prevNodes[node] = m_Nodes[node];
            m_Nodes[node] = teamIndex + BG_SV_NODE_TYPE_CONTESTED;
            // burn current contested banner
            DelBanner(node, BG_SV_NODE_TYPE_CONTESTED, !teamIndex);
            // create new contested banner
            CreateBanner(node, BG_SV_NODE_TYPE_CONTESTED, teamIndex, true);
            m_NodeTimers[node] = BG_SV_FLAG_CAPTURING_TIME;

            if (teamIndex == BG_TEAM_ALLIANCE)
                SendMessage2ToAll(LANG_BG_SV_NODE_ASSAULTED, CHAT_MSG_BG_SYSTEM_ALLIANCE, source, GetTowerNameId(node));
            else
                SendMessage2ToAll(LANG_BG_SV_NODE_ASSAULTED, CHAT_MSG_BG_SYSTEM_HORDE, source, GetTowerNameId(node));
        }
        // If contested, change back to occupied
        else
        {
            m_prevNodes[node] = m_Nodes[node];
            m_Nodes[node] = teamIndex + BG_SV_NODE_TYPE_OCCUPIED;
            // burn current contested banner
            DelBanner(node, BG_SV_NODE_TYPE_CONTESTED, !teamIndex);
            // create new occupied banner
            CreateBanner(node, BG_SV_NODE_TYPE_OCCUPIED, teamIndex, true);
            m_NodeTimers[node] = 0;
            NodeOccupied(node, (teamIndex == BG_TEAM_ALLIANCE) ? ALLIANCE : HORDE);

            if (teamIndex == BG_TEAM_ALLIANCE)
                SendMessage2ToAll(LANG_BG_SV_NODE_DEFENDED, CHAT_MSG_BG_SYSTEM_ALLIANCE, source, GetTowerNameId(node));
            else
                SendMessage2ToAll(LANG_BG_SV_NODE_DEFENDED, CHAT_MSG_BG_SYSTEM_HORDE, source, GetTowerNameId(node));
        }
        sound = (teamIndex == TEAM_ALLIANCE) ? BG_SV_SOUND_NODE_ASSAULTED_ALLIANCE : BG_SV_SOUND_NODE_ASSAULTED_HORDE;
    }
    // If node is occupied, change to enemy-contested
    else
    {
        m_prevNodes[node] = m_Nodes[node];
        m_Nodes[node] = teamIndex + BG_SV_NODE_TYPE_CONTESTED;
        // burn current occupied banner
        DelBanner(node, BG_SV_NODE_TYPE_OCCUPIED, !teamIndex);
        // create new contested banner
        CreateBanner(node, BG_SV_NODE_TYPE_CONTESTED, teamIndex, true);
        m_NodeTimers[node] = BG_SV_FLAG_CAPTURING_TIME;
        NodeDeOccupied(node);

        if (teamIndex == BG_TEAM_ALLIANCE)
            SendMessage2ToAll(LANG_BG_AB_NODE_ASSAULTED, CHAT_MSG_BG_SYSTEM_ALLIANCE, source, GetTowerNameId(node));
        else
            SendMessage2ToAll(LANG_BG_AB_NODE_ASSAULTED, CHAT_MSG_BG_SYSTEM_HORDE, source, GetTowerNameId(node));

        sound = (teamIndex == TEAM_ALLIANCE) ? BG_SV_SOUND_NODE_ASSAULTED_ALLIANCE : BG_SV_SOUND_NODE_ASSAULTED_HORDE;
    }

    // If node is occupied again, send "X has taken the Y" msg.
    if (m_Nodes[node] >= BG_SV_NODE_TYPE_OCCUPIED)
    {
        if (teamIndex == BG_TEAM_ALLIANCE)
            SendMessage2ToAll(LANG_BG_AB_NODE_TAKEN, CHAT_MSG_BG_SYSTEM_ALLIANCE, nullptr, LANG_BG_ALLY, GetTowerNameId(node));
        else
            SendMessage2ToAll(LANG_BG_AB_NODE_TAKEN, CHAT_MSG_BG_SYSTEM_HORDE, nullptr, LANG_BG_HORDE, GetTowerNameId(node));
    }

    PlaySoundToAll(sound);
}

void BattleGroundSV::HandleLootItem(Player* looter, uint32 count)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;
}

void BattleGroundSV::StartFinalEvent()
{
    generalsActive = true;
    SendYellToAll(LANG_BG_SV_SUMMON_DRAGON, LANG_UNIVERSAL, m_BgCreatures[BG_SV_CREATURE_HERALD]);

    /*human leader*/
    Creature* humanLeader = AddCreature(NPC_MARSHAL_GREYWALL, BG_SV_CREATURE_HUMAN_LEADER, BG_SV_LeaderPos[0].x, BG_SV_LeaderPos[0].y, BG_SV_LeaderPos[0].z, BG_SV_LeaderPos[0].o, TEAM_ALLIANCE, 10 * MINUTE * IN_MILLISECONDS);
    if (humanLeader)
    {
        uint32 newHp = humanLeader->GetMaxHealth() * (GetTeamSparks(TEAM_ALLIANCE) > 1 ? GetTeamSparks(TEAM_ALLIANCE) : 1);
        humanLeader->SetHealth(newHp);
        humanLeader->SetMaxHealth(newHp);
    }

    /*human leader guards*/
    for (uint8 i = 0; i < 6; ++i)
        AddCreature(BG_SV_LeaderGuardsPos[0][i].entry, BG_SV_CREATURE_LEADER_GUARDS_A + i, BG_SV_LeaderGuardsPos[0][i].x, BG_SV_LeaderGuardsPos[0][i].y, BG_SV_LeaderGuardsPos[0][i].z, BG_SV_LeaderGuardsPos[0][i].o, TEAM_ALLIANCE, 10 * MINUTE * IN_MILLISECONDS);

    /*orc leader*/
    Creature* orcLeader = AddCreature(NPC_WARLORD_BLACKSKULL, BG_SV_CREATURE_ORC_LEADER, BG_SV_LeaderPos[1].x, BG_SV_LeaderPos[1].y, BG_SV_LeaderPos[1].z, BG_SV_LeaderPos[1].o, TEAM_HORDE, 10 * MINUTE * IN_MILLISECONDS);
    if (orcLeader)
    {
        uint32 newHp = orcLeader->GetMaxHealth() * (GetTeamSparks(TEAM_HORDE) > 1 ? GetTeamSparks(TEAM_HORDE) : 1);
        orcLeader->SetHealth(newHp);
        orcLeader->SetMaxHealth(newHp);
    }

    /*orc leader guards*/
    for (uint8 i = 0; i < 6; ++i)
        AddCreature(BG_SV_LeaderGuardsPos[1][i].entry, BG_SV_CREATURE_LEADER_GUARDS_H + i, BG_SV_LeaderGuardsPos[1][i].x, BG_SV_LeaderGuardsPos[1][i].y, BG_SV_LeaderGuardsPos[1][i].z, BG_SV_LeaderGuardsPos[1][i].o, TEAM_HORDE, 10 * MINUTE * IN_MILLISECONDS);
}

void BattleGroundSV::CreateBanner(uint8 node, uint8 type, uint8 teamIndex, bool delay)
{
    // Just put it into the queue
    if (delay)
    {
        m_BannerTimers[node].timer = 2000;
        m_BannerTimers[node].type = type;
        m_BannerTimers[node].teamIndex = teamIndex;
        return;
    }

    uint8 obj = node * 5 + type + teamIndex;                         // will automaticly despawn other events
    SpawnBGObject(m_BgObjects[obj], RESPAWN_IMMEDIATELY);
}

void BattleGroundSV::DelBanner(uint8 node, uint8 type, uint8 teamIndex)
{
    uint8 obj = node * 5 + type + teamIndex;
    SpawnBGObject(m_BgObjects[obj], RESPAWN_ONE_DAY);
}

void BattleGroundSV::NodeOccupied(uint8 node, Team team)
{
    // trigger only for towers
    if (node >= BG_SV_HERALD_POINT)
        return;

    // handle team guards
    uint8 guardType = (node == 0) ? BG_SV_CREATURE_TOWER_GUARDS_A : BG_SV_CREATURE_TOWER_GUARDS_H;
    uint32 guardEntry = (team == ALLIANCE) ? NPC_HUMAN_ARCHER : NPC_ORC_SPEARMAN;

    for (uint8 i = 0; i < 5; ++i)
    {
        DelCreature(guardType+i);
        AddCreature(guardEntry, guardType+i, BG_SV_TowerGuardsPos[node][i].x, BG_SV_TowerGuardsPos[node][i].y, BG_SV_TowerGuardsPos[node][i].z, BG_SV_TowerGuardsPos[node][i].o, TEAM_NEUTRAL, 5*MINUTE*IN_MILLISECONDS);
    }
}

void BattleGroundSV::NodeDeOccupied(uint8 node)
{
    // trigger only for towers
    if (node >= BG_SV_HERALD_POINT)
        return;

    // handle team guards
    uint8 guardType = (node == 0) ? BG_SV_CREATURE_TOWER_GUARDS_A : BG_SV_CREATURE_TOWER_GUARDS_H;
    for (uint8 i = 0; i < 5; ++i)
        DelCreature(guardType+i);
}

uint32 BattleGroundSV::GetTowerNameId(uint8 node)
{
    switch (node)
    {
        case BG_SV_HUMAN_TOWER:
            return LANG_BG_SV_HUMAN_TOWER;
        case BG_SV_ORC_TOWER:
            return LANG_BG_SV_ORC_TOWER;
        case BG_SV_HERALD_POINT:
            return LANG_BG_SV_ORC_TOWER;
        default:
            MANGOS_ASSERT(0);
    }
    return 0;
}

Team BattleGroundSV::GetHeraldControlledTeam()
{
    uint8 nodeStatus = m_Nodes[BG_SV_HERALD_POINT];

    if (nodeStatus == BG_SV_NODE_STATUS_ALLY_OCCUPIED)
        return ALLIANCE;
    else if (nodeStatus == BG_SV_NODE_STATUS_HORDE_OCCUPIED)
        return HORDE;

    return TEAM_NONE;
}

void BattleGroundSV::UpdatePlayerScore(Player *Source, uint32 type, uint32 value)
{
    BattleGroundScoreMap::iterator itr = m_PlayerScores.find(Source->GetObjectGuid());
    if (itr == m_PlayerScores.end())                        // player not found
        return;

    BattleGround::UpdatePlayerScore(Source, type, value);
}

WorldSafeLocsEntry const* BattleGroundSV::GetClosestGraveYard(Player* player)
{
    uint32 baseEntry = player->GetTeam() == ALLIANCE ? SV_BASE_HUMAN : SV_BASE_ORC;
    uint32 graveEntry = player->GetTeam() == ALLIANCE ? SV_GRAVEYARD_HUMAN : SV_GRAVEYARD_ORC;

    if (GetStatus() == STATUS_IN_PROGRESS)
        return sWorldSafeLocsStore.LookupEntry(graveEntry);

    return sWorldSafeLocsStore.LookupEntry(baseEntry);
}

void BattleGroundSV::FillInitialWorldStates(WorldPacket& data, uint32& count)
{
}