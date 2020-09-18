#ifndef __BATTLEGROUNDSV_H
#define __BATTLEGROUNDSV_H

#include "BattleGround.h"

#define BG_SV_NODES_MAX 2
#define DOOR_ENTRY 180636
enum SVArenaNodes {
    ARENA_OBJECT_DOOR = 0,
};

const float ARENA_SV_DoorPositions[BG_SV_NODES_MAX][4] = {
    { -117.381f, 149.775f, -40.384f, 0.0340097f },     // alliance
    { -76.9176f, 149.735f, -40.384f, 3.144212f },      // horde
};

class BattleGroundSVScore : public BattleGroundScore
{
public:
    BattleGroundSVScore() {};
    virtual ~BattleGroundSVScore() {};
private:
};

class BattleGroundSV : public BattleGround
{
    friend class BattleGroundMgr;

    public:
        /* Construction */
        BattleGroundSV();
        ~BattleGroundSV();
        void Update(uint32 diff);

        /* inherited from BattlegroundClass */
        virtual void AddPlayer(Player *plr);
        virtual void StartingEventCloseDoors();
        virtual void StartingEventOpenDoors();

        /* Battleground Events */
        void RemovePlayer(Player *plr, ObjectGuid guid);
        void HandleAreaTrigger(Player *Source, uint32 Trigger);
        void HandleKillPlayer(Player *player, Player *killer);
        virtual bool SetupBattleGround();
        virtual void Reset();
        void EndBattleGround(Team winner);
        virtual WorldSafeLocsEntry const* GetClosestGraveYard(Player* player);

        void UpdateTeamScore(Team team);
        void UpdatePlayerScore(Player *Source, uint32 type, uint32 value);
        virtual void FillInitialWorldStates(WorldPacket& data, uint32& count);

        /* Scorekeeping */
        uint32 GetTeamScore(Team team) const { return m_TeamScores[GetTeamIndexByTeamId(team)]; }
        void AddPoint(Team team, uint32 Points = 1) { m_TeamScores[GetTeamIndexByTeamId(team)] += Points; }
        void SetTeamPoint(Team team, uint32 Points = 0) { m_TeamScores[GetTeamIndexByTeamId(team)] = Points; }
        void RemovePoint(Team team, uint32 Points = 1) { m_TeamScores[GetTeamIndexByTeamId(team)] -= Points; }
    private:
        uint32 m_AllianceDeaths = 0;
        uint32 m_HordeDeaths = 0;
};
#endif