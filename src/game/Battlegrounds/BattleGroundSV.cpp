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
    m_StartMessageIds[BG_STARTING_EVENT_FIRST]  = 0;
    m_StartMessageIds[BG_STARTING_EVENT_SECOND] = LANG_ARENA_THIRTY_SECONDS;
    m_StartMessageIds[BG_STARTING_EVENT_THIRD]  = LANG_ARENA_FIFTEEN_SECONDS;
    m_StartMessageIds[BG_STARTING_EVENT_FOURTH] = LANG_ARENA_BEGUN;

    m_StartDelayTimes[BG_STARTING_EVENT_FIRST] = BG_START_DELAY_35S;
    m_StartDelayTimes[BG_STARTING_EVENT_SECOND] = BG_START_DELAY_30S;
    m_StartDelayTimes[BG_STARTING_EVENT_THIRD] = BG_START_DELAY_15S;
    m_StartDelayTimes[BG_STARTING_EVENT_FOURTH] = BG_START_DELAY_NONE;
}

BattleGroundSV::~BattleGroundSV()
{
}

void BattleGroundSV::Update(uint32 diff)
{
    // Execute this at the end, since it can delete the BattleGround object!
    BattleGround::Update(diff);
}

void BattleGroundSV::StartingEventCloseDoors()
{
    if (GetStatus() != STATUS_WAIT_JOIN)
        return;

    // Plummet visibility distance so you cannot see enemy players until the match begins.
    // May be better to just update visibility code instead of this...
    // 40 is roughly to the middle of the map -- perfect area to not be able to see other team.
    GetBgMap()->SetVisibilityDistance(45.0f);
}

void BattleGroundSV::StartingEventOpenDoors()
{
    // Reset visibility distance back to normal.
    GetBgMap()->InitVisibilityDistance();
    OpenDoorEvent(BG_EVENT_DOOR);

    // Loop through players in BG and reset their health and mana again. This is due to the lack of Preparation spell in vanilla.
    // Notice we do not reset cooldowns here, like on AddPlayer() due to potential abuse.
    for (auto& itr : GetPlayers())
    {
        if (Player* plr = sObjectMgr.GetPlayer(itr.first))
        {
            plr->SetHealth(plr->GetMaxHealth());

            if (plr->getPowerType() == POWER_MANA)
                plr->SetPower(POWER_MANA, plr->GetMaxPower(POWER_MANA));
        }
    }
}

void BattleGroundSV::AddPlayer(Player *plr)
{
    BattleGround::AddPlayer(plr);
    //create score and add it to map, default values are set in constructor
    BattleGroundSVScore* sc = new BattleGroundSVScore;

    m_PlayerScores[plr->GetObjectGuid()] = sc;

    // When player is added, call this function to restore full hp/mana and reset cooldowns.
    plr->RemoveAllSpellCooldown();
}

void BattleGroundSV::RemovePlayer(Player* /*plr*/, ObjectGuid /*guid*/)
{
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

bool BattleGroundSV::SetupBattleGround()
{
    /*doors
    for (int i = 0; i < BG_SV_NODES_MAX; ++i)
    {
        if (!AddObject(ARENA_OBJECT_DOOR + 3 * i, DOOR_ENTRY, ARENA_SV_DoorPositions[i][0], ARENA_SV_DoorPositions[i][1], ARENA_SV_DoorPositions[i][2], ARENA_SV_DoorPositions[i][3], 0, 0, sin(ARENA_SV_DoorPositions[i][3] / 2), cos(ARENA_SV_DoorPositions[i][3] / 2), RESPAWN_ONE_DAY)
            || !AddObject(ARENA_OBJECT_DOOR + 3 * i + 1, DOOR_ENTRY, ARENA_SV_DoorPositions[i][0], ARENA_SV_DoorPositions[i][1], ARENA_SV_DoorPositions[i][2], ARENA_SV_DoorPositions[i][3], 0, 0, sin(ARENA_SV_DoorPositions[i][3] / 2), cos(ARENA_SV_DoorPositions[i][3] / 2), RESPAWN_ONE_DAY))
            sLog.outErrorDb("BatteGroundSV: Failed to spawn door objects!");
    }
    */

    return true;
}

void BattleGroundSV::Reset()
{
    //call parent's class reset
    BattleGround::Reset();

    for (uint32 i = 0; i < BG_TEAMS_COUNT; ++i)
    {
        m_TeamScores[i] = 0;
    }
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

    // Applied above but remove here instead.
    player->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SKINNABLE);
}

void BattleGroundSV::UpdatePlayerScore(Player *Source, uint32 type, uint32 value)
{
    BattleGroundScoreMap::iterator itr = m_PlayerScores.find(Source->GetObjectGuid());
    if (itr == m_PlayerScores.end())                        // player not found
        return;

    BattleGround::UpdatePlayerScore(Source, type, value);
        
    if (type == SCORE_DEATHS)
    {
        switch (Source->GetTeam())
        {
            case ALLIANCE:
                m_AllianceDeaths++;
                break;
            case HORDE:
                m_HordeDeaths++;
                break;
        }

        // If both all team members are dead on either side, end arena.
        if (m_AllianceDeaths >= GetMaxPlayersPerTeam())
            EndBattleGround(HORDE);
        else if (m_HordeDeaths >= GetMaxPlayersPerTeam())
            EndBattleGround(ALLIANCE);
    }
}

WorldSafeLocsEntry const* BattleGroundSV::GetClosestGraveYard(Player* player)
{
    return nullptr;
}

void BattleGroundSV::FillInitialWorldStates(WorldPacket& data, uint32& count)
{
}