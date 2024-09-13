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

#ifndef MANGOS_POPULATION_BOT_BASE_H
#define MANGOS_POPULATION_BOT_BASE_H

#include "CombatBotBaseAI.h"
#include "BattleBotWaypoints.h"
#include "Group.h"
#include "ObjectAccessor.h"

class PlayerBotWorldPopulationAI : public CombatBotBaseAI
{
public:
    PlayerBotWorldPopulationAI(Player* pLeader, Player* pClone, CombatBotRoles role, uint8 race, uint8 class_, uint8 level, uint32 mapId, uint32 instanceId, float x, float y, float z, float o)
        : CombatBotBaseAI(), m_race(race), m_class(class_), m_level(level), m_mapId(mapId), m_instanceId(instanceId), m_x(x), m_y(y), m_z(z), m_o(o)
    {
        m_role = role;
        m_leaderGuid = pLeader->GetObjectGuid();
        m_cloneGuid = pClone ? pClone->GetObjectGuid() : ObjectGuid();
        m_updateTimer.Reset(2000);
    }
    PlayerBotWorldPopulationAI(Player* pLeader, uint32 mapId, uint32 instanceId, float x, float y, float z, float o)
        : CombatBotBaseAI(), m_mapId(mapId), m_instanceId(instanceId), m_x(x), m_y(y), m_z(z), m_o(o)
    {
        m_role = ROLE_INVALID;
        m_leaderGuid = pLeader->GetObjectGuid();
        m_updateTimer.Reset(2000);
    }
    PlayerBotWorldPopulationAI()
        : CombatBotBaseAI(), m_mapId(0), m_instanceId(0), m_x(0), m_y(0), m_z(0), m_o(0)
    {
        m_role = ROLE_INVALID;
        m_leaderGuid = ObjectGuid();
        m_cloneGuid = ObjectGuid();
        m_updateTimer.Reset(2000);
    }
    void OnPlayerLogin() override;
    void OnBotEntryLoad(PlayerBotEntry* entry) override;
    virtual void UpdateAI(const uint32 /*diff*/) override;

    bool RandomMovementOrAction();
    bool TeleportToSpawnLocation();

    void OnPacketReceived(WorldPacket const* packet) final;

    void CloneFromPlayer(Player const* pPlayer);
    void AddToPlayerGroup();

    bool CanTryToCastSpell(Unit const* pTarget, SpellEntry const* pSpellEntry) const final;
    Player* GetPartyLeader() const;
    bool AttackStart(Unit* pVictim);
    float GetMaxAggroDistanceForMap() const;
    bool ShouldIgnoreCombat() final;
    Unit* SelectAttackTargetGroup(Player* pLeader) const;
    Unit* SelectAttackTargetSolo(Unit* pExcept);
    Unit* SelectPartyAttackTarget() const;
    Unit* SelectFollowTarget() const;
    Player* SelectResurrectionTarget() const;
    Player* SelectShieldTarget() const;
    Unit* GetMarkedTarget(RaidTargetIcon mark) const;
    bool CanUseCrowdControl(SpellEntry const* pSpellEntry, Unit* pTarget) const;
    bool DrinkAndEat();
    bool CheckForUnreachableTarget();
    bool ShouldAutoRevive() const;
    bool IsValidDistancingTarget(Unit* pTarget, Unit* pEnemy);
    Unit* GetDistancingTarget(Unit* pEnemy);
    bool RunAwayFromTarget(Unit* pEnemy);
    bool CrowdControlMarkedTargets();
    bool EnterCombatDruidForm();
    bool ShouldEnterStealth() const;
    bool EnterStealthIfNeeded(SpellEntry const* pStealthSpell);

    void OnJustRevived();
    void OnJustDied();
    void OnEnterBattleGround();
    void OnLeaveBattleGround();

    void UpdateInCombatAI() final;
    void UpdateOutOfCombatAI() final;

    void UpdateFlagCarrierAI();
    void UpdateBattleGroundAI();

    void UpdateInCombatAI_Paladin_Pve() final;
    void UpdateOutOfCombatAI_Paladin_Pve() final;
    void UpdateInCombatAI_Shaman_Pve() final;
    void UpdateOutOfCombatAI_Shaman_Pve() final;
    void UpdateInCombatAI_Hunter_Pve() final;
    void UpdateOutOfCombatAI_Hunter_Pve() final;
    void UpdateInCombatAI_Mage_Pve() final;
    void UpdateOutOfCombatAI_Mage_Pve() final;
    void UpdateInCombatAI_Priest_Pve() final;
    void UpdateOutOfCombatAI_Priest_Pve() final;
    void UpdateInCombatAI_Warlock_Pve() final;
    void UpdateOutOfCombatAI_Warlock_Pve() final;
    void UpdateInCombatAI_Warrior_Pve() final;
    void UpdateOutOfCombatAI_Warrior_Pve() final;
    void UpdateInCombatAI_Rogue_Pve() final;
    void UpdateOutOfCombatAI_Rogue_Pve() final;
    void UpdateInCombatAI_Druid_Pve() final;
    void UpdateOutOfCombatAI_Druid_Pve() final;

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

    std::vector<RaidTargetIcon> m_marksToCC;
    std::vector<RaidTargetIcon> m_marksToFocus;
    ShortTimeTracker m_updateTimer;
    ObjectGuid m_leaderGuid;
    ObjectGuid m_cloneGuid;
    uint8 m_battlegroundId = BATTLEGROUND_QUEUE_NONE;
    uint8 m_race = 0;
    uint8 m_class = 0;
    uint8 m_level = 0;
    uint32 m_mapId = 0;
    uint32 m_instanceId = 0;
    float m_x = 0.0f;
    float m_y = 0.0f;
    float m_z = 0.0f;
    float m_o = 0.0f;
    bool m_resetSpellData = false;
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
    void StopMoving();
    bool m_doingGraveyardJump = false;
    bool m_movingInReverse = false;
    uint32 m_currentPoint = 0;
    BattleBotPath* m_currentPath = nullptr;
    uint8 m_waitingSpot = BB_WSG_WAIT_SPOT_SPAWN;*/
};

#endif
