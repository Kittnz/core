/*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*/

#ifndef MANGOS_BattleBotAI_H
#define MANGOS_BattleBotAI_H

#include "CombatBotBaseAI.h"
#include "BattleBotWaypoints.h"

class BattleBotAI : public CombatBotBaseAI
{
public:

    BattleBotAI(uint8 race, uint8 class_, uint8 level, uint32 mapId, uint32 instanceId, float x, float y, float z, float o, uint8 bgId, bool temporary)
        : CombatBotBaseAI(),  m_race(race), m_class(class_), m_level(level), m_mapId(mapId), m_instanceId(instanceId), m_x(x), m_y(y), m_z(z), m_o(o), m_battlegroundId(bgId), m_temporary(temporary)
    {
        m_updateTimer.Reset(2000);
    }
    bool OnSessionLoaded(PlayerBotEntry* entry, WorldSession* sess) override
    {
        return SpawnNewPlayer(sess, m_class, m_race, m_mapId, m_instanceId, m_x, m_y, m_z, m_o);
    }

    void OnPlayerLogin() final;
    void UpdateAI(uint32 const diff) final;
    void OnPacketReceived(WorldPacket const* packet) final;

    bool ShouldIgnoreCombat() final;
    bool DrinkAndEat();
    //bool UseMount();
    //uint32 GetMountSpellId() const;
    bool CheckForUnreachableTarget();
    float GetMaxAggroDistanceForMap() const;
    bool AttackStart(Unit* pVictim);
    Unit* SelectAttackTarget(Unit* pExcept = nullptr);
    Unit* SelectFollowTarget() const;

    void OnJustRevived();
    void OnJustDied();
    void OnEnterBattleGround();
    void OnLeaveBattleGround();

    void UpdateFlagCarrierAI();
    void UpdateBattleGroundAI();
    void UpdateInCombatAI() final;
    void UpdateOutOfCombatAI() final;

    void UpdateInCombatAI_Paladin_Pvp() final;
    void UpdateOutOfCombatAI_Paladin_Pvp() final;
    void UpdateInCombatAI_Shaman_Pvp() final;
    void UpdateOutOfCombatAI_Shaman_Pvp() final;
    void UpdateInCombatAI_Hunter_Pvp() final;
    void UpdateOutOfCombatAI_Hunter_Pvp() final;
    void UpdateInCombatAI_Mage_Pvp() final;
    void UpdateOutOfCombatAI_Mage_Pvp() final;
    void UpdateInCombatAI_Priest_Pvp() final;
    void UpdateOutOfCombatAI_Priest_Pvp() final;
    void UpdateInCombatAI_Warlock_Pvp() final;
    void UpdateOutOfCombatAI_Warlock_Pvp() final;
    void UpdateInCombatAI_Warrior_Pvp() final;
    void UpdateOutOfCombatAI_Warrior_Pvp() final;
    void UpdateInCombatAI_Rogue_Pvp() final;
    void UpdateOutOfCombatAI_Rogue_Pvp() final;
    void UpdateInCombatAI_Druid_Pvp() final;
    void UpdateOutOfCombatAI_Druid_Pvp() final;

    // required to use non abstract class
    virtual void UpdateInCombatAI_Paladin_Pve() override {};
    virtual void UpdateOutOfCombatAI_Paladin_Pve() override {};
    virtual void UpdateInCombatAI_Shaman_Pve() override {};
    virtual void UpdateOutOfCombatAI_Shaman_Pve() override {};
    virtual void UpdateInCombatAI_Hunter_Pve() override {};
    virtual void UpdateOutOfCombatAI_Hunter_Pve() override {};
    virtual void UpdateInCombatAI_Mage_Pve() override {};
    virtual void UpdateOutOfCombatAI_Mage_Pve() override {};
    virtual void UpdateInCombatAI_Priest_Pve() override {};
    virtual void UpdateOutOfCombatAI_Priest_Pve() override {};
    virtual void UpdateInCombatAI_Warlock_Pve() override {};
    virtual void UpdateOutOfCombatAI_Warlock_Pve() override {};
    virtual void UpdateInCombatAI_Warrior_Pve() override {};
    virtual void UpdateOutOfCombatAI_Warrior_Pve() override {};
    virtual void UpdateInCombatAI_Rogue_Pve() override {};
    virtual void UpdateOutOfCombatAI_Rogue_Pve() override {};
    virtual void UpdateInCombatAI_Druid_Pve() override {};
    virtual void UpdateOutOfCombatAI_Druid_Pve() override {};

    uint8 m_battlegroundId = 0;
    ShortTimeTracker m_updateTimer;
    uint8 m_race = 0;
    uint8 m_class = 0;
    uint8 m_level = 0;
    uint32 m_mapId = 0;
    uint32 m_instanceId = 0;
    float m_x = 0.0f;
    float m_y = 0.0f;
    float m_z = 0.0f;
    float m_o = 0.0f;
    bool m_temporary = false;
    bool m_wasDead = false;
    bool m_wasInBG = false;

    // Movement System
    /*void UpdateWaypointMovement();
    void DoGraveyardJump();
    void MoveToNextPoint();
    bool StartNewPathFromBeginning();
    void StartNewPathFromAnywhere();
    bool StartNewPathToObjective();
    bool StartNewPathToPosition(Position const& position, std::vector<BattleBotPath*> const& vPaths);
    void ClearPath();
    void StopMoving();*/
    /*bool m_doingGraveyardJump = false;
    bool m_movingInReverse = false;
    uint32 m_currentPoint = 0;
    BattleBotPath* m_currentPath = nullptr;
    uint8 m_waitingSpot = BB_WSG_WAIT_SPOT_SPAWN;*/
};

#endif
