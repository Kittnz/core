#include "WorldBotAI.h"
#include "WorldBotTravelSystem.h"
#include "WorldBotChat.h"
#include "BattleGround.h"
#include "Player.h"
#include "Log.h"
#include "MotionMaster.h"
#include "ObjectMgr.h"
#include "PlayerBotMgr.h"
#include "WorldPacket.h"
#include "Spell.h"
#include "SpellAuras.h"
#include "Chat.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "TargetedMovementGenerator.h"
#include "Channel.h"
#include "ChannelMgr.h"
#include "MasterPlayer.h"
#include "Object.h"
#include <regex>
#include <random>

#define WB_UPDATE_INTERVAL 500
#define WB_MIN_FOLLOW_DIST 3.0f
#define WB_MAX_FOLLOW_DIST 6.0f
#define WB_MIN_FOLLOW_ANGLE 0.0f
#define WB_MAX_FOLLOW_ANGLE 6.0f

#define GO_WSG_DROPPED_SILVERWING_FLAG 179785
#define GO_WSG_DROPPED_WARSONG_FLAG 179786
#define GO_WSG_SILVERWING_FLAG 179830
#define GO_WSG_WARSONG_FLAG 179831

extern std::vector<WorldBotsAreaPOI> myAreaPOI;

static bool IsPhysicalDamageClass(uint8 playerClass)
{
    switch (playerClass)
    {
        case CLASS_WARRIOR:
        case CLASS_PALADIN:
        case CLASS_ROGUE:
        case CLASS_HUNTER:
        case CLASS_SHAMAN:
        case CLASS_DRUID:
            return true;
    }
    return false;
}

static bool IsRangedDamageClass(uint8 playerClass)
{
    switch (playerClass)
    {
        case CLASS_HUNTER:
        case CLASS_PRIEST:
        case CLASS_SHAMAN:
        case CLASS_MAGE:
        case CLASS_WARLOCK:
        case CLASS_DRUID:
            return true;
    }
    return false;
}

static bool IsMeleeWeaponClass(uint8 playerClass)
{
    switch (playerClass)
    {
        case CLASS_WARRIOR:
        case CLASS_PALADIN:
        case CLASS_ROGUE:
        case CLASS_SHAMAN:
            return true;
    }
    return false;
}

static bool IsMeleeDamageClass(uint8 playerClass)
{
    switch (playerClass)
    {
        case CLASS_WARRIOR:
        case CLASS_PALADIN:
        case CLASS_ROGUE:
        case CLASS_SHAMAN:
        case CLASS_DRUID:
            return true;
    }
    return false;
}

void WorldBotAI::AddPremadeGearAndSpells()
{
    bool useWorldBotLoader = sWorld.getConfig(CONFIG_BOOL_WORLDBOT_LOADER);
    if (!useWorldBotLoader)
    {
        std::vector<uint32> vSpecs;
        for (const auto& itr : sObjectMgr.GetPlayerPremadeSpecTemplates())
        {
            if (itr.second.requiredClass == me->GetClass())
                vSpecs.push_back(itr.first);
        }

        if (!vSpecs.empty())
            sObjectMgr.ApplyPremadeSpecTemplateToPlayer(SelectRandomContainerElement(vSpecs), me);

        std::vector<uint32> vGear;
        for (const auto& itr : sObjectMgr.GetPlayerPremadeGearTemplates())
        {
            if (itr.second.requiredClass == me->GetClass())
                vGear.push_back(itr.first);
        }
        if (!vGear.empty())
            sObjectMgr.ApplyPremadeGearTemplateToPlayer(SelectRandomContainerElement(vGear), me);
    }
    else
    {
        std::vector<uint32> vSpecs;
        for (const auto& itr : sObjectMgr.GetPlayerPremadeSpecTemplates())
        {
            if (itr.second.requiredClass == me->GetClass())
                vSpecs.push_back(itr.first);
        }

        if (!vSpecs.empty())
            sObjectMgr.ApplyPremadeSpecTemplateToPlayerWorldBot(SelectRandomContainerElement(vSpecs), me);
    }

    switch (me->GetClass())
    {
        case CLASS_HUNTER:
        {
            if (Item* pItem = me->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_RANGED))
            {
                if (pItem->GetProto()->SubClass == ITEM_SUBCLASS_WEAPON_GUN)
                    me->StoreNewItemInBestSlots(WB_ITEM_BULLET, 200);
                else
                    me->StoreNewItemInBestSlots(WB_ITEM_ARROW, 200);
            }
            break;
        }
    }
}

uint32 WorldBotAI::GetMountSpellId() const
{
    if (me->GetLevel() >= 60)
    {
        if (me->GetClass() == CLASS_PALADIN)
            return WB_SPELL_MOUNT_60_PALADIN;
        if (me->GetClass() == CLASS_WARLOCK)
            return WB_SPELL_MOUNT_60_WARLOCK;

        switch (me->GetRace())
        {
            case RACE_HUMAN:
                return WB_SPELL_MOUNT_60_HUMAN;
            case RACE_NIGHTELF:
                return WB_SPELL_MOUNT_60_NELF;
            case RACE_DWARF:
                return WB_SPELL_MOUNT_60_DWARF;
            case RACE_GNOME:
                return WB_SPELL_MOUNT_60_GNOME;
            case RACE_TROLL:
                return WB_SPELL_MOUNT_60_TROLL;
            case RACE_ORC:
                return WB_SPELL_MOUNT_60_ORC;
            case RACE_TAUREN:
                return WB_SPELL_MOUNT_60_TAUREN;
            case RACE_UNDEAD:
                return WB_SPELL_MOUNT_60_UNDEAD;
        }
    }
    else if (me->GetLevel() >= 40)
    {
        if (me->GetClass() == CLASS_PALADIN)
            return WB_SPELL_MOUNT_40_PALADIN;
        if (me->GetClass() == CLASS_WARLOCK)
            return WB_SPELL_MOUNT_40_WARLOCK;

        switch (me->GetRace())
        {
            case RACE_HUMAN:
                return WB_SPELL_MOUNT_40_HUMAN;
            case RACE_NIGHTELF:
                return WB_SPELL_MOUNT_40_NELF;
            case RACE_DWARF:
                return WB_SPELL_MOUNT_40_DWARF;
            case RACE_GNOME:
                return WB_SPELL_MOUNT_40_GNOME;
            case RACE_TROLL:
                return WB_SPELL_MOUNT_40_TROLL;
            case RACE_ORC:
                return WB_SPELL_MOUNT_40_ORC;
            case RACE_TAUREN:
                return WB_SPELL_MOUNT_40_TAUREN;
            case RACE_UNDEAD:
                return WB_SPELL_MOUNT_40_UNDEAD;
        }
    }

    return 0;
}

bool WorldBotAI::UseMount()
{
    if (me->IsMounted())
        return false;

    if (me->IsMoving())
        return false;

    if (me->GetDisplayId() != me->GetNativeDisplayId())
        return false;

    if (m_isDualBot)
        return false;

    // make sure rogues stealth in bg's, they don't have to be in the world
    if (me->GetClass() == CLASS_ROGUE && me->InBattleGround())
        return false;

    if (BattleGround* bg = me->GetBattleGround())
        if (bg->GetStatus() == STATUS_WAIT_JOIN)
            return false;

    if (me->HasAura(AURA_WARSONG_FLAG) ||
        me->HasAura(AURA_SILVERWING_FLAG))
        return false;

    if (me->HasAura(SPELL_AURA_MOD_STEALTH))
        return false;

    uint32 spellId = GetMountSpellId();
    if (!spellId)
        return false; 

    if (me->CastSpell(me, spellId, false) == SPELL_CAST_OK)
        return true;

    return false;
}

Player* WorldBotAI::GetPartyLeader() const
{
    Group* pGroup = me->GetGroup();
    if (!pGroup)
        return nullptr;

    if (Player* originalLeader = ObjectAccessor::FindPlayerNotInWorld(m_leaderGuid))
    {
        if (me->InBattleGround() == originalLeader->InBattleGround())
        {
            // In case the original spawner is not in the same group as the bots anymore.
            if (pGroup != originalLeader->GetGroup())
                return nullptr;

            // In case the current leader is the bot itself and it's not inside a Battleground.
            ObjectGuid currentLeaderGuid = pGroup->GetLeaderGuid();
            if (currentLeaderGuid == me->GetObjectGuid() && !me->InBattleGround())
                return nullptr;
        }

        return originalLeader;
    }
    return nullptr;
}

bool WorldBotAI::IsValidDistancingTarget(Unit* pTarget, Unit* pEnemy)
{
    if (pTarget->IsInWorld() && pTarget->IsAlive() &&
        pTarget->GetMap() == me->GetMap())
    {
        float const distance = me->GetDistance(pTarget);
        if (distance >= 15.0f && distance <= 30.0f &&
            pTarget->GetDistance(pEnemy) >= 15.0f)
            return true;
    }

    return false;
}

Unit* WorldBotAI::GetDistancingTarget(Unit* pEnemy)
{
    if (Player* pLeader = GetPartyLeader())
        if (IsValidDistancingTarget(pLeader, pEnemy))
            return pLeader;

    Unit* pNonTank = nullptr;
    Group* pGroup = me->GetGroup();
    for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
    {
        if (Player* pMember = itr->getSource())
        {
            if (pMember == me)
                continue;

            if (IsValidDistancingTarget(pMember, pEnemy))
            {
                if (IsTankingForm(pMember->GetShapeshiftForm()) || IsWearingShield(pMember))
                    return pMember;
                else
                    pNonTank = pMember;
            }
        }
    }

    return pNonTank;
}

bool WorldBotAI::RunAwayFromTarget(Unit* pEnemy)
{
    if (Unit* pTarget = GetDistancingTarget(pEnemy))
    {
        me->MonsterMove(pTarget->GetPositionX(), pTarget->GetPositionY(), pTarget->GetPositionZ());
        return true;
    }

    return me->GetMotionMaster()->MoveDistance(pEnemy, 15.0f);
}

bool WorldBotAI::DrinkAndEat()
{
    if (m_isBuffing)
        return false;

    if (me->IsMounted())
        return false;

    if (me->GetVictim())
        return false;

    bool const needToEat = me->GetHealthPercent() < 100.0f && !(me->GetBattleGround() && me->GetBattleGround()->GetStatus() == STATUS_WAIT_JOIN);
    bool const needToDrink = (me->GetPowerType() == POWER_MANA) && (me->GetPowerPercent(POWER_MANA) < 100.0f);

    if (!needToEat && !needToDrink)
        return false;

    // Do not stop while carrying flag.
    if (me->HasAura(AURA_WARSONG_FLAG) ||
        me->HasAura(AURA_SILVERWING_FLAG))
        return false;

    bool const isEating = me->HasAura(WB_SPELL_FOOD);
    bool const isDrinking = me->HasAura(WB_SPELL_DRINK);

    if (!isEating && needToEat)
    {
        if (me->GetMotionMaster()->GetCurrentMovementGeneratorType())
        {
            ClearPath();
            StopMoving();
        }
        if (SpellEntry const* pSpellEntry = sSpellMgr.GetSpellEntry(WB_SPELL_FOOD))
        {
            me->CastSpell(me, pSpellEntry, true);
            me->RemoveSpellCooldown(*pSpellEntry);
        }
        return true;
    }

    if (!isDrinking && needToDrink)
    {
        if (me->GetMotionMaster()->GetCurrentMovementGeneratorType())
        {
            ClearPath();
            StopMoving();
        }
        if (SpellEntry const* pSpellEntry = sSpellMgr.GetSpellEntry(WB_SPELL_DRINK))
        {
            me->CastSpell(me, pSpellEntry, true);
            me->RemoveSpellCooldown(*pSpellEntry);
        }
        return true;
    }

    return needToEat || needToDrink;
}

float WorldBotAI::GetMaxAggroDistanceForMap() const
{
    if (!me->GetBattleGround() ||
        me->GetBattleGround()->GetTypeID() != BATTLEGROUND_AV)
        return 50.0f;
    
    return 30.0f;
}

bool WorldBotAI::AttackStart(Unit* pVictim)
{
    m_isBuffing = false;

    if (me->IsMounted())
        me->RemoveSpellsCausingAura(SPELL_AURA_MOUNTED);

    if (me->Attack(pVictim, true))
    {
        ClearPath();
        StopMoving();

        if ((m_role == ROLE_RANGE_DPS || m_role == ROLE_HEALER) &&
            IsRangedDamageClass(me->GetClass()) &&
            me->GetPowerPercent(POWER_MANA) > 10.0f &&
            me->GetCombatDistance(pVictim) > 8.0f)
            me->SetCasterChaseDistance(25.0f);
        else if (me->HasDistanceCasterMovement())
            me->SetCasterChaseDistance(0.0f);

        me->GetMotionMaster()->MoveChase(pVictim, 1.0f, m_role == ROLE_MELEE_DPS ? 3.0f : 0.0f);
        return true;
    }

    return false;
}

bool WorldBotAI::ShouldIgnoreCombat() const
{
    if (m_battlegroundId == BATTLEGROUND_QUEUE_WS && !me->IsRooted() &&
        (me->HasAura(AURA_SILVERWING_FLAG) || me->HasAura(AURA_WARSONG_FLAG)))
        return true;
    return false;
}

Unit* WorldBotAI::SelectAttackTarget(Unit* pExcept) const
{
    // Ignore attackers while carrying flag, just keep running.
    if (ShouldIgnoreCombat())
        return nullptr;

    // 1. Check units we are currently in combat with.
    std::list<Unit*> targets;
    HostileReference* pReference = me->GetHostileRefManager().getFirst();

    while (pReference)
    {
        if (Unit* pTarget = pReference->getSourceUnit())
        {
            if (pTarget != pExcept &&
                IsValidHostileTarget(pTarget) &&
                me->IsWithinDist(pTarget, VISIBILITY_DISTANCE_NORMAL))
            {
                if (me->GetTeam() == HORDE)
                {
                    if (pTarget->HasAura(AURA_WARSONG_FLAG))
                        return pTarget;
                }
                else
                {   
                    if (pTarget->HasAura(AURA_SILVERWING_FLAG))
                        return pTarget;
                }

                targets.push_back(pTarget);
            }
        }
        pReference = pReference->next();
    }

    if (!targets.empty())
    {
        targets.sort([this](Unit* pUnit1, const Unit* pUnit2)
        {
            return me->GetDistance(pUnit1) < me->GetDistance(pUnit2);
        });

        return *targets.begin();
    }

    // 2. Find enemy player in range.
    std::list<Player*> players;
    me->GetAlivePlayerListInRange(me, players, VISIBILITY_DISTANCE_NORMAL);
    float const maxAggroDistance = GetMaxAggroDistanceForMap();

    for (const auto& pTarget : players)
    {
        if (pTarget == pExcept)
            continue;

        if (!IsValidHostileTarget(pTarget))
            continue;

        if (me->GetTeam() == HORDE)
        {
            if (pTarget->HasAura(AURA_WARSONG_FLAG))
                return pTarget;
        }
        else
        {
            if (pTarget->HasAura(AURA_SILVERWING_FLAG))
                return pTarget;
        }

        // Aggro weak enemies from further away.
        uint32 const aggroDistance = me->GetHealth() > pTarget->GetHealth() ? maxAggroDistance : 20.0f;
        if (!me->IsWithinDist(pTarget, aggroDistance))
            continue;

        if (me->GetDistanceZ(pTarget) > 10.0f)
            continue;

        if (me->IsWithinLOSInMap(pTarget))
            return pTarget;
    }

    // 3. Check party attackers.
    if (Group* pGroup = me->GetGroup())
    {
        for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
        {
            if (Unit* pMember = itr->getSource())
            {
                if (pMember == me)
                    continue;

                if (me->GetDistance(pMember) > 30.0f)
                    continue;

                if (Unit* pAttacker = pMember->GetAttackerForHelper())
                {
                    if (pAttacker != pExcept &&
                        IsValidHostileTarget(pAttacker) &&
                        me->IsWithinDist(pAttacker, maxAggroDistance * 2.0f) &&
                        me->GetDistanceZ(pAttacker) < 10.0f &&
                        me->IsWithinLOSInMap(pAttacker))
                        return pAttacker;
                }
            }
        }
    }

    // 4. Assist pet if its in combat.
    if (Pet* pPet = me->GetPet())
    {
        if (Unit* pPetAttacker = pPet->GetAttackerForHelper())
            return pPetAttacker;
    }

    return nullptr;
}

Unit* WorldBotAI::SelectFollowTarget() const
{
    std::list<Player*> players;
    me->GetAlivePlayerListInRange(me, players, VISIBILITY_DISTANCE_NORMAL);
    Player* pHealerFollowTarget = nullptr;

    for (const auto& pTarget : players)
    {
        if (pTarget == me)
            continue;

        if (me->GetTeam() != pTarget->GetTeam())
            continue;

        if (pTarget->IsGameMaster())
            continue;

        if (me->GetTeam() == ALLIANCE)
        {
            if (pTarget->HasAura(AURA_WARSONG_FLAG))
                return pTarget;
        }
        else
        {
            if (pTarget->HasAura(AURA_SILVERWING_FLAG))
                return pTarget;
        }

        if (m_role == ROLE_HEALER &&
           !IsHealerClass(pTarget->GetClass()) &&
           !IsStealthClass(pTarget->GetClass()) &&
           (pTarget->IsMounted() == me->IsMounted()) &&
           (me->GetDistance2d(pTarget) <= 20.0f) &&
           (me->GetDistanceZ(pTarget) <= 3.0f))
            pHealerFollowTarget = pTarget;
    }

    return pHealerFollowTarget;
}

void WorldBotAI::StopMoving()
{
    me->StopMoving();
    me->GetMotionMaster()->Clear();
    me->GetMotionMaster()->MoveIdle();
}

void WorldBotAI::ClearPath()
{
    m_currentPath.clear();  // Clear all elements from the path
    m_currentPathIndex = 0; // Reset the current position in the path
}

// not used
void WorldBotAI::SendGroupAcceptPacket()
{
    // Auto accept a group invite
    WorldPacket data(CMSG_GROUP_ACCEPT);
    me->GetSession()->HandleGroupAcceptOpcode(data);
}

void WorldBotAI::OnPacketReceived(WorldPacket const* packet)
{
    //printf("WorldBotAI: Bot received %s\n", LookupOpcodeName(packet->GetOpcode()));
    ASSERT(botEntry);

    switch (packet->GetOpcode())
    {
        case SMSG_LEARNED_SPELL:
        case SMSG_SUPERCEDED_SPELL:
        case SMSG_REMOVED_SPELL:
        {
            if (m_initialized)
                m_resetSpellData = true;
            return;
        }
        case MSG_PVP_LOG_DATA:
        {
            if (!me)
                return;

            uint8 ended = *((uint8*)(*packet).contents());
            if (ended)
            {
                m_battlegroundId = 0;
                m_isBattleBot = false;
                std::unique_ptr<WorldPacket> data = std::make_unique<WorldPacket>(CMSG_LEAVE_BATTLEFIELD);
#if SUPPORTED_CLIENT_BUILD > CLIENT_BUILD_1_8_4
                * data << uint32(me->GetMapId());
#endif
                me->GetSession()->QueuePacket(std::move(data));
            }
            return;
        }
        case SMSG_GROUP_INVITE:
        {
            if (!me)
                return;

            std::unique_ptr<WorldPacket> data = std::make_unique<WorldPacket>(CMSG_GROUP_ACCEPT);
#if SUPPORTED_CLIENT_BUILD > CLIENT_BUILD_1_8_4
            * data << uint32(me->GetMapId());
#endif
            me->GetSession()->QueuePacket(std::move(data));

            break;
        }
        case SMSG_GROUP_LIST:
        {
            // If there isn't any group anymore, return the bot to find a path nearby
            Group* pGroup = me->GetGroup();
            if (!pGroup)
            {
                if (!me->IsStopped())
                {
                    me->StopMoving();
                    me->GetMotionMaster()->Clear();
                    me->GetMotionMaster()->MoveIdle();

                }
                UpdateWaypointMovement();
            }
            break;
        }
        case SMSG_MESSAGECHAT:
        {
            WorldPacket packet(*packet);
            packet.rpos(0);
            uint8 msgtype, chatTag;
            uint32 lang, textLen, unused;
            ObjectGuid guid1, guid2;
            std::string name, chanName, message, chanOrDest;
            packet >> msgtype >> lang;

            switch (msgtype)
            {
                case CHAT_MSG_SAY:
                case CHAT_MSG_PARTY:
                case CHAT_MSG_YELL:
                    packet >> guid1;
                    packet >> guid2;
                    packet >> textLen >> message >> chatTag;
                    sWorldBotChat.HandleChatMessage(me, msgtype, guid1, message, "");
                    break;
                case CHAT_MSG_WHISPER:
                    packet >> guid1;
                    packet >> textLen >> message >> chatTag;
                    sWorldBotChat.HandleChatMessage(me, msgtype, guid1, message, "");
                    break;
                case CHAT_MSG_CHANNEL:
                    packet >> chanName >> unused >> guid1 >> unused;
                    packet >> message;
                    sWorldBotChat.HandleChatMessage(me, msgtype, guid1, message, chanName);
                    break;
                default:
                    break;
            }

            break;
        }
        case SMSG_DUEL_REQUESTED:
        {
            m_isDualBot = true;
            m_isDualBotGetReady = true;
            m_isDualBotReady = false;
            m_isDualBotInProgress = false;
            /*uint64 dualFlagGuid = *((uint64*)(*packet).contents());
            uint64 casterGuid = *((uint64*)(*packet).contents());*/
            break;
        }
        case SMSG_DUEL_COMPLETE:
        {
            m_isDualBot = false;
            UpdateWaypointMovement();
            break;
        }
    }

    CombatBotBaseAI::OnPacketReceived(packet);
}

void WorldBotAI::OnPlayerLogin()
{
    if (!m_initialized)
        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
}

void WorldBotAI::ShowCurrentPath()
{
    if (m_showPath)
    {
        sWorldBotTravelSystem.ShowCurrentPath(me, m_currentPath, m_currentPathIndex, m_currentPath[m_currentPathIndex].nodeId);
    }
}

void WorldBotAI::UpdateWaypointMovement()
{
    if (me->IsMoving() || !me->IsStopped() || me->HasUnitState(UNIT_STAT_CAN_NOT_MOVE))
        return;

    if (!m_currentPath.empty())
    {
        const TravelPath& lastPoint = m_currentPath.back();
        float distanceToDestination = sWorldBotTravelSystem.GetDistance3D(*me, lastPoint);

        if (distanceToDestination <= 5.0f)  // 5.0f is an arbitrary small distance
        {
            // Bot has reached its destination
            OnPathComplete();
            return;
        }

        if (sWorldBotTravelSystem.ResumePath(me, m_currentPath, m_currentPathIndex, m_isSpecificDestinationPath, m_isRunningToCorpse))
        {
            //sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: %s resuming current path", me->GetName());
            MoveToNextPoint();
            return;
        }
        else
        {
            sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: %s unable to resume current path", me->GetName());
        }
    }

    if (m_isRunningToCorpse)
    {
        if (Corpse* corpse = me->GetCorpse())
        {
            StartNewPathToSpecificDestination(corpse->GetPositionX(), corpse->GetPositionY(), corpse->GetPositionZ(), corpse->GetMapId(), true);
        }
        else
        {
            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: %s is running to corpse but corpse not found", me->GetName());
            m_isRunningToCorpse = false;
        }
    }
    else if (m_isSpecificDestinationPath)
    {
        sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: %s lost specific destination path and cannot resume", me->GetName());
        m_isSpecificDestinationPath = false;
    }

    if (!m_isRunningToCorpse && !m_isSpecificDestinationPath)
    {
        StartNewPathToNode();
    }
}

void WorldBotAI::OnJustDied()
{
    ClearPath();
    if (me->GetMotionMaster()->GetCurrentMovementGeneratorType())
        StopMoving();
}

void WorldBotAI::OnJustRevived()
{
    SummonPetIfNeeded();
    /*if (!me->SelectRandomUnfriendlyTarget(nullptr, 30.0f))
        DoGraveyardJump();*/
}

void WorldBotAI::TeleportResurrect()
{
    Corpse* corpse = me->GetCorpse();
    if (corpse)
    {
        me->TeleportPositionRelocation(corpse->GetPosition());
        me->ResurrectPlayer(0.5f);
        me->SpawnCorpseBones();
        me->CastSpell(me, WB_SPELL_HONORLESS_TARGET, true);
        m_isRunningToCorpse = false;
        //m_wasDead = false;
    }

    if (me->GetDeathState() == ALIVE)
        m_isRunningToCorpse = false;
}

void WorldBotAI::OnEnterBattleGround()
{
    BattleGround* bg = me->GetBattleGround();
    if (!bg)
        return;

    if (bg->GetStatus() != STATUS_WAIT_JOIN)
        return;

    SummonPetIfNeeded();

    if (me->GetBattleGround()->GetTypeID() == BATTLEGROUND_WS)
    {
        m_waitingSpot = urand(MB_WSG_WAIT_SPOT_SPAWN, MB_WSG_WAIT_SPOT_RIGHT);
        if (m_waitingSpot == MB_WSG_WAIT_SPOT_RIGHT)
        {
            if (me->GetTeam() == HORDE)
                me->GetMotionMaster()->MovePoint(0, WS_WAITING_POS_HORDE_1.x, WS_WAITING_POS_HORDE_1.y, WS_WAITING_POS_HORDE_1.z, MOVE_PATHFINDING, 0, WS_WAITING_POS_HORDE_1.o);
            else
                me->GetMotionMaster()->MovePoint(0, WS_WAITING_POS_ALLIANCE_1.x, WS_WAITING_POS_ALLIANCE_1.y, WS_WAITING_POS_ALLIANCE_1.z, MOVE_PATHFINDING, 0, WS_WAITING_POS_ALLIANCE_1.o);
        }
        else if (m_waitingSpot == MB_WSG_WAIT_SPOT_LEFT)
        {
            if (me->GetTeam() == HORDE)
                me->GetMotionMaster()->MovePoint(0, WS_WAITING_POS_HORDE_2.x, WS_WAITING_POS_HORDE_2.y, WS_WAITING_POS_HORDE_2.z, MOVE_PATHFINDING, 0, WS_WAITING_POS_HORDE_2.o);
            else
                me->GetMotionMaster()->MovePoint(0, WS_WAITING_POS_ALLIANCE_2.x, WS_WAITING_POS_ALLIANCE_2.y, WS_WAITING_POS_ALLIANCE_2.z, MOVE_PATHFINDING, 0, WS_WAITING_POS_ALLIANCE_2.o);
        }
    }
    else if (me->GetBattleGround()->GetTypeID() == BATTLEGROUND_AB)
    {
        if (me->GetTeam() == HORDE)
            me->GetMotionMaster()->MovePoint(0, AB_WAITING_POS_HORDE.x + frand(-2.0f, 2.0f), AB_WAITING_POS_HORDE.y + frand(-2.0f, 2.0f), AB_WAITING_POS_HORDE.z, MOVE_PATHFINDING, 0, AB_WAITING_POS_HORDE.o);
        else
            me->GetMotionMaster()->MovePoint(0, AB_WAITING_POS_ALLIANCE.x + frand(-2.0f, 2.0f), AB_WAITING_POS_ALLIANCE.y + frand(-2.0f, 2.0f), AB_WAITING_POS_ALLIANCE.z, MOVE_PATHFINDING, 0, AB_WAITING_POS_ALLIANCE.o);
    }
    else if (me->GetBattleGround()->GetTypeID() == BATTLEGROUND_AV)
    {
        if (me->GetTeam() == HORDE)
            me->GetMotionMaster()->MovePoint(0, AV_WAITING_POS_HORDE.x + frand(-2.0f, 2.0f), AV_WAITING_POS_HORDE.y + frand(-2.0f, 2.0f), AV_WAITING_POS_HORDE.z, MOVE_PATHFINDING, 0, AV_WAITING_POS_HORDE.o);
        else
            me->GetMotionMaster()->MovePoint(0, AV_WAITING_POS_ALLIANCE.x + frand(-2.0f, 2.0f), AV_WAITING_POS_ALLIANCE.y + frand(-2.0f, 2.0f), AV_WAITING_POS_ALLIANCE.z, MOVE_PATHFINDING, 0, AV_WAITING_POS_ALLIANCE.o);
    }
}

void WorldBotAI::OnLeaveBattleGround()
{
    ClearPath();
    if (me->GetMotionMaster()->GetCurrentMovementGeneratorType())
        StopMoving();
}

bool WorldBotAI::CheckForUnreachableTarget()
{
    if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() == CHASE_MOTION_TYPE &&
       !me->GetMotionMaster()->GetCurrent()->IsReachable())
    {
        if (Unit* pTarget = static_cast<ChaseMovementGenerator<Player> const*>(me->GetMotionMaster()->GetCurrent())->GetTarget())
        {
            if (!me->CanReachWithMeleeAutoAttack(pTarget))
            {
                if (!me->IsWithinDist(pTarget, VISIBILITY_DISTANCE_NORMAL))
                {
                    me->AttackStop(false);
                    StopMoving();
                    return true;
                }

                if (pTarget->IsCreature() && !me->IsMoving())
                {
                    // Cheating to prevent getting stuck because of bad mmaps.
                    me->NearTeleportTo(pTarget->GetPosition());
                    return true;
                }

                if (me->GetDistanceZ(pTarget) > 10.0f)
                {
                    me->AttackStop(false);
                    StopMoving();
                    return true;
                }
            }
        }
    }

    return false;
}

void WorldBotAI::UpdateAI(uint32 const diff)
{
    // General AI timer
    m_updateTimer.Update(diff);
    if (m_updateTimer.Passed())
        m_updateTimer.Reset(WB_UPDATE_INTERVAL);
    else
        return;

    // Movement timer
    m_updateMoveTimer.Update(diff);
    if (m_updateMoveTimer.Passed())
    {
        if (!m_allowedToMove)
        {
            m_allowedToMove = true;
            MoveToNextPoint();
        }

        uint32 rand = urand(5000, 30000); // hold position for 5 to 30 seconds
        m_updateMoveTimer.Reset(rand);
    }

    // Chat timer
    /*m_updateChatTimer.Update(diff);
    if (m_updateChatTimer.Passed())
    {
        // say / yell chat
        if (!m_chatSayYellPlayerRespondsQueue.empty())
        {
            for (auto& itr : m_chatSayYellPlayerRespondsQueue)
            {
                HandleChat(me, itr.m_type, itr.m_guid1, itr.m_guid2, itr.m_msg, itr.m_chanName);
            }
            m_chatSayYellPlayerRespondsQueue.clear();
        }

        // whisper chat
        if (!m_chatWhisperPlayerRespondsQueue.empty())
        {
            for (auto& itr : m_chatWhisperPlayerRespondsQueue)
            {
                HandleChat(me, itr.m_type, itr.m_guid1, itr.m_guid2, itr.m_msg, itr.m_chanName);
            }
            m_chatWhisperPlayerRespondsQueue.clear();
        }

        // general chat
        if (!m_chatGeneralRespondsQueue.empty())
        {
            for (auto& itr : m_chatGeneralRespondsQueue)
            {
                HandleGeneralChat(me, itr.m_type, itr.m_guid1, itr.m_guid2, itr.m_msg, itr.m_chanName);
            }
            m_chatGeneralRespondsQueue.clear();
        }

        // trade chat
        if (!m_chatTradeRespondsQueue.empty())
        {
            for (auto& itr : m_chatTradeRespondsQueue)
            {
                HandleTradeChat(me, itr.m_type, itr.m_guid1, itr.m_guid2, itr.m_msg, itr.m_chanName);
            }
            m_chatTradeRespondsQueue.clear();
        }

        // lfg
        if (!m_chatLFGRespondsQueue.empty())
        {
            for (auto& itr : m_chatLFGRespondsQueue)
            {
                HandleLFGChat(me, itr.m_type, itr.m_guid1, itr.m_guid2, itr.m_msg, itr.m_chanName);
            }
            m_chatLFGRespondsQueue.clear();
        }

        // world chat
        if (!m_chatWorldRespondsQueue.empty())
        {
            for (auto& itr : m_chatWorldRespondsQueue)
            {
                HandleWorldChat(me, itr.m_type, itr.m_guid1, itr.m_guid2, itr.m_msg, itr.m_chanName);
            }
            m_chatWorldRespondsQueue.clear();
        }

        m_updateChatTimer.Reset(2000);
    }*/

    m_updateChatTimer.Update(diff);
    if (m_updateChatTimer.Passed())
    {
        m_updateChatTimer.Reset(urand(30000, 120000)); // Random time between 30 seconds and 2 minutes
        sWorldBotChat.SendChatMessage(me);
    }

    if (!me->IsInWorld() || me->IsBeingTeleported())
        return;

    if (!m_initialized)
    {
        ResetSpellData();
        AddPremadeGearAndSpells();
        AutoAssignRole();
        PopulateSpellData();
        AddAllSpellReagents();
        me->InitTalentForLevel();
        me->UpdateSkillsToMaxSkillsForLevel();
        me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
        SummonPetIfNeeded();
        me->SetHealthPercent(100.0f);
        me->SetPowerPercent(me->GetPowerType(), 100.0f);
        me->SetTaxiCheater(true);
        me->SetMoney(10000000); // 1000g for taxis etc
        me->DurabilityRepairAll(false, 0);
        //AutoEquipGear(1);

        // Make the bot join the world channel for chat
        ChatHandler(me).HandleChannelJoinCommand("General");
        ChatHandler(me).HandleChannelJoinCommand("Trade");
        ChatHandler(me).HandleChannelJoinCommand("Lfg");
        ChatHandler(me).HandleChannelJoinCommand("World");

        // random hide helm and cloak
        if (urand(0, 1))
        {
            me->ToggleFlag(PLAYER_FLAGS, PLAYER_FLAGS_HIDE_HELM);
            me->ToggleFlag(PLAYER_FLAGS, PLAYER_FLAGS_HIDE_CLOAK);
        }

        // Identify task by name
        std::string name = me->GetName();
        if (name.find("bank") != std::string::npos)
            currentTaskID = TASK_BANKER;

        // Choose a TASK todo
        if (currentTaskID == TASK_NONE)
        {
			currentTaskID = TASK_GRIND;
		}

        /*uint32 rtask = urand(0, 1);
        if (rtask == 1)
            currentTaskID = TASK_ROAM;
        else
        currentTaskID = TASK_EXPLORE;*/

        uint32 newzone, newarea;
        me->GetZoneAndAreaId(newzone, newarea);
        me->UpdateZone(newzone, newarea);

        m_initialized = true;
        return;
    }

    // Reset bot spell data on learning new spells. 
    if (m_resetSpellData)
    {
        ResetSpellData();
        PopulateSpellData();
        m_resetSpellData = false;
    }

    // Corpse Running
    if (m_isRunningToCorpse)
    {
        m_corpseRunTimer.Update(diff);
        if (m_corpseRunTimer.Passed())
        {
            sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBotAI: %s corpse run timed out, teleporting to resurrect", me->GetName());
            TeleportResurrect();
            return;
        }
    }

    // dual bot
    if (m_isDualBot)
    {
        if (m_isDualBotGetReady == true)
        {
            ClearPath();
            if (!me->IsStopped())
                me->StopMoving();

            DrinkAndEat();

            if (me->GetHealthPercent() > 90.0f)
                m_isDualBotReady = true;
        }

        if (m_isDualBotReady == true && m_isDualBotInProgress == false)
        {
            m_isDualBotGetReady = false;
            m_isDualBotReady = false;

            me->Yell("get ready here i come!", LANG_UNIVERSAL);

            // accept dual
            WorldPacket data(CMSG_DUEL_ACCEPTED);
            data << me->GetObjectGuid();
            me->GetSession()->HandleDuelAcceptedOpcode(data);

            // in progress
            m_isDualBotInProgress = true;

            // opponent
            Player* plTarget = me->duel->opponent;

            // move 25 feet away
            const float distance = me->GetDistance(plTarget);
            if (distance < 25.0f)
                me->GetMotionMaster()->MoveDistance(plTarget, frand(5,25));

            // attack target
            AttackStart(plTarget);
        }
    }

    // party bot
    Group* pGroup = me->GetGroup();
    Player* pLeader;
    if (pGroup)
        pLeader = GetPartyLeader();
    else
        pLeader = nullptr;

    // battle bot
    if (m_isBattleBot)
    {
        if (!me->InBattleGround())
        {
            if (m_wasInBG)
            {
                m_wasInBG = false;
                OnLeaveBattleGround();
                return;
            }

            if (m_receivedBgInvite)
            {
                SendBattlefieldPortPacket();
                m_receivedBgInvite = false;
                return;
            }

            if (!me->InBattleGroundQueue())
            {
                switch (m_battlegroundId)
                {
                case BATTLEGROUND_QUEUE_AV:
                    ChatHandler(me).HandleGoAlteracCommand("");
                    break;
                case BATTLEGROUND_QUEUE_WS:
                    ChatHandler(me).HandleGoWarsongCommand("");
                    break;
                case BATTLEGROUND_QUEUE_AB:
                    ChatHandler(me).HandleGoArathiCommand("");
                    break;
                default:
                    sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBot: Invalid BG queue type!");
                    //botEntry->requestRemoval = true;
                    m_isBattleBot = false;
                    return;
                }

                SendBattlemasterJoinPacket(m_battlegroundId);
                return;
            }

            // Remain idle until we can join battleground.
            return;
        }
        else
        {
            if (!m_wasInBG)
            {
                m_wasInBG = true;
                OnEnterBattleGround();
                return;
            }
        }
    }

    // bot is dead
    if (me->IsDead())
    {
        if (!m_wasDead)
        {
            m_wasDead = true;
            OnJustDied();
            return;
        }
        
        if (me->InBattleGround())
        {
            if (me->GetDeathState() == CORPSE)
            {
                me->BuildPlayerRepop();
                me->RepopAtGraveyard();
            }
        }
        else
        {
            if (me->GetDeathState() == CORPSE)
            {
                // Release spirit if we haven't already
                me->BuildPlayerRepop();
                me->RepopAtGraveyard();
                return;
            }

            if (me->GetDeathState() == DEAD)
            {
                if (!m_isRunningToCorpse)
                {
                    if (Corpse* corpse = me->GetCorpse())
                    {
                        if (StartNewPathToSpecificDestination(corpse->GetPositionX(), corpse->GetPositionY(), corpse->GetPositionZ(), corpse->GetMapId(), true))
                        {
                            m_isRunningToCorpse = true;
                        }
                        else
                        {
                            sLog.Out(LOG_BASIC, LOG_LVL_ERROR, "WorldBotAI: Unable to find path for a corpse run for bot %s, teleporting instead and resurrect.", me->GetName());
                            TeleportResurrect();
                        }
                    }
                }
                UpdateWaypointMovement();
            }
        }
        return;
    }
    else
    {
        if (m_wasDead)
        {
            m_wasDead = false;
            m_isRunningToCorpse = false;
            OnJustRevived();
            return;
        }
    }

    if (pGroup && pLeader && !me->InBattleGround())
    {
        if (pLeader->IsTaxiFlying())
        {
            if (me->GetMotionMaster()->GetCurrentMovementGeneratorType())
                me->GetMotionMaster()->MoveIdle();
            return;
        }
    }

    if (me->HasUnitState(UNIT_STAT_FEIGN_DEATH) && me->HasAuraType(SPELL_AURA_FEIGN_DEATH) &&
        !me->IsInCombat() && (!me->GetPet() || !me->GetPet()->IsInCombat()) &&
        !me->SelectRandomUnfriendlyTarget(nullptr, 20.0f, false, true))
        me->RemoveSpellsCausingAura(SPELL_AURA_FEIGN_DEATH);

    if (me->HasUnitState(UNIT_STAT_CAN_NOT_REACT_OR_LOST_CONTROL))
        return;

    if (me->GetCurrentSpell(CURRENT_AUTOREPEAT_SPELL))
    {
        // Stop auto shot if no target.
        if (!me->GetVictim())
            me->InterruptSpell(CURRENT_AUTOREPEAT_SPELL, true);
        else if (me->GetClass() == CLASS_HUNTER)
        {
            if (me->GetCombatDistance(me->GetVictim()) < 8.0f)
                me->InterruptSpell(CURRENT_AUTOREPEAT_SPELL, true);
            else
                UpdateInCombatAI_Hunter();
        }

        return;
    }

    if (me->IsNonMeleeSpellCasted(false, false, true))
        return;

    if (me->GetTargetGuid() == me->GetObjectGuid())
        me->ClearTarget();

    Unit* pVictim = me->GetVictim();

    if (pGroup && pLeader && !me->InBattleGround())
    {
        if (m_role != ROLE_HEALER)
        {
            if (!pVictim || !IsValidHostileTarget(pVictim))
            {
                if (Unit* pVictim = SelectAttackTarget(pLeader))
                {
                    AttackStart(pVictim);
                    return;
                }
            }

            if (pVictim && !me->HasInArc(pVictim, 2 * M_PI_F / 3) && !me->IsMoving())
            {
                me->SetInFront(pVictim);
                me->SendMovementPacket(MSG_MOVE_SET_FACING, false);
            }
        }
    }

    if (!me->IsInCombat() && me->GetLevel() <= 5)
    {
        if (DrinkAndEat())
        {
            if (me->IsMounted())
                me->RemoveSpellsCausingAura(SPELL_AURA_MOUNTED);
            return;
        }

        if (pGroup && pLeader && !me->InBattleGround() && !me->IsTaxiFlying())
        {
            // Teleport to leader if too far away.
            if (!me->IsWithinDistInMap(pLeader, 100.0f))
            {
                if (!me->IsStopped())
                    me->StopMoving();
                me->GetMotionMaster()->Clear();
                me->GetMotionMaster()->MoveIdle();
                char name[128] = {};
                strcpy(name, pLeader->GetName());
                ChatHandler(me).HandleGonameCommand(name);
                return;
            }
        }
    }

    if (me->GetStandState() != UNIT_STAND_STATE_STAND)
        me->SetStandState(UNIT_STAND_STATE_STAND);

    if (m_isBattleBot)
        UpdateBattleGroundAI();

    if (!me->IsInCombat()/* && me->GetLevel() != 1*/)
    {
        if (pGroup && pLeader && !me->InBattleGround() && !m_isDualBot)
        {
            // Mount if leader is mounted and we don't have a target.
            if (pLeader->IsMounted())
            {
                if (!me->IsMounted())
                {
                    // Leave shapeshift before mounting.
                    if (me->IsInDisallowedMountForm() &&
                        me->GetDisplayId() != me->GetNativeDisplayId() &&
                        me->HasAuraType(SPELL_AURA_MOD_SHAPESHIFT))
                        me->RemoveSpellsCausingAura(SPELL_AURA_MOD_SHAPESHIFT);

                    UseMount();
                }
            }
            else if (me->IsMounted())
                me->RemoveSpellsCausingAura(SPELL_AURA_MOUNTED);
        }

        if (CheckForUnreachableTarget())
            return;

        UpdateOutOfCombatAI();

        if (m_isBuffing)
            return;

        // Can enter combat from UpdateOutOfCombatAI().
        if (me->IsInCombat())
            return;

        if (me->IsNonMeleeSpellCasted())
            return;

        if (!pVictim || !IsValidHostileTarget(pVictim))
        {
            if (pVictim = SelectAttackTarget(pVictim))
            {
                AttackStart(pVictim);
                return;
            }

            if (m_isBattleBot)
            {
                if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() != FOLLOW_MOTION_TYPE)
                {
                    if (Unit* pFollowTarget = SelectFollowTarget())
                    {
                        ClearPath();
                        me->GetMotionMaster()->MoveFollow(pFollowTarget, frand(3.0f, 5.0f), frand(0.0f, 3.0f));
                        return;
                    }
                }
                else if (FollowMovementGenerator<Player> const* pMoveGen = dynamic_cast<FollowMovementGenerator<Player> const*>(me->GetMotionMaster()->GetCurrent()))
                {
                    Unit* pTarget = pMoveGen->GetTarget();
                    if (!pTarget || !pTarget->IsAlive() || !pTarget->IsWithinDist(me, VISIBILITY_DISTANCE_NORMAL))
                    {
                        StopMoving();
                        return;
                    }
                }
            }

            if (!pGroup && UseMount())
                return;

            if (pGroup && pLeader && !me->InBattleGround())
            {
                if (!me->IsMoving())
                {
                    if (!pVictim)
                    {
                        if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() != FOLLOW_MOTION_TYPE)
                            me->GetMotionMaster()->MoveFollow(pLeader, urand(WB_MIN_FOLLOW_DIST, WB_MAX_FOLLOW_DIST), frand(WB_MIN_FOLLOW_ANGLE, WB_MAX_FOLLOW_ANGLE));
                        return;
                    }
                    else
                    {
                        if (!me->HasUnitState(UNIT_STAT_MELEE_ATTACKING) &&
                            (m_role == ROLE_MELEE_DPS || m_role == ROLE_TANK) &&
                            IsValidHostileTarget(pVictim) &&
                            AttackStart(pVictim))
                            return;

                        if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() == FOLLOW_MOTION_TYPE)
                            me->GetMotionMaster()->MoveChase(pVictim);
                    }
                }
                return;
            }
            else
            {
                UpdateWaypointMovement();
            }
        }

        UpdateWaypointMovement();
        return;
    }

    if (ShouldIgnoreCombat())
    {
        UpdateWaypointMovement();
        return;
    }

    if (!pVictim || pVictim->IsDead() || pVictim->HasBreakableByDamageCrowdControlAura() || 
        !pVictim->IsWithinDist(me, VISIBILITY_DISTANCE_NORMAL))
    {
        if (pVictim = SelectAttackTarget(pVictim))
        {
            AttackStart(pVictim);
            return;
        }

        if (me->GetVictim() &&
           (me != me->GetVictim()->GetVictim()))
        {
            me->AttackStop(false);
            if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() == CHASE_MOTION_TYPE)
                StopMoving();
            return;
        }
    }
    else
    {
        if (!me->HasInArc(pVictim, 2 * M_PI_F / 3) && !me->IsMoving())
        {
            me->SetInFront(pVictim);
            me->SendMovementPacket(MSG_MOVE_SET_FACING, false);
        }

        if (!me->HasUnitState(UNIT_STAT_MELEE_ATTACKING) &&
           (m_role != ROLE_HEALER) &&
            IsValidHostileTarget(pVictim) &&
            AttackStart(pVictim))
            return;
    }

    if (me->IsInCombat())
        UpdateInCombatAI();
}

void WorldBotAI::UpdateBattleGroundAI()
{
    BattleGround* bg = me->GetBattleGround();
    if (!bg)
        return;

    switch (bg->GetTypeID())
    {
        case BATTLEGROUND_WS:
        {
            // Pick up dropped flags.
            if (GameObject* pGo = me->FindNearestGameObject(GO_WSG_DROPPED_SILVERWING_FLAG, INTERACTION_DISTANCE))
                pGo->Use(me);
            if (GameObject* pGo = me->FindNearestGameObject(GO_WSG_DROPPED_WARSONG_FLAG, INTERACTION_DISTANCE))
                pGo->Use(me);

            // Pick up stationary flags from bases.
            if (me->GetTeam() == HORDE)
            {
                if (GameObject* pGo = me->FindNearestGameObject(GO_WSG_SILVERWING_FLAG, INTERACTION_DISTANCE))
                    pGo->Use(me);
            }
            else
            {
                if (GameObject* pGo = me->FindNearestGameObject(GO_WSG_WARSONG_FLAG, INTERACTION_DISTANCE))
                    pGo->Use(me);
            }
            break;
        }
    }
}

bool WorldBotAI::TaskDestination()
{
    bool succes = false;
    if (currentTaskID == TASK_EXPLORE)
    {
        if (hasPoiDestination)
            succes = false;
        else
            SetExploreDestination();

        // create position
        Position const dest_loc = { DestCoordinatesX, DestCoordinatesY, DestCoordinatesZ, 0.0f };

        // move to position
        if (DestMap == 0)
        {
            //StartNewPathToPosition(dest_loc, vPaths_Map_Eastern_Kingdoms);

        }
        else if (DestMap == 1)
        {
            //StartNewPathToPosition(dest_loc, vPaths_Map_Kalimdor);
        }

        hasPoiDestination = true;
            
        // debug
        sLog.Out(LOG_BASIC, LOG_LVL_BASIC, "WorldBot: %s moving to poi: %s xyz: %f %f %f", me->GetName(), DestName.c_str(), DestCoordinatesX, DestCoordinatesY, DestCoordinatesZ);

        succes = true;
    }
    return succes;
}

void WorldBotAI::SetExploreDestination()
{
    // get random poi
    int mapId = me->GetMapId();

    std::random_shuffle(myAreaPOI.begin(), myAreaPOI.end());
    for (auto& poi : myAreaPOI)
    {
        if (poi.map == 0 || poi.map == 1)
        {
            if (poi.map == mapId)
            {
                DestName = poi.name;
                DestCoordinatesX = poi.pos_x;
                DestCoordinatesY = poi.pos_y;
                DestCoordinatesZ = poi.pos_z;
                DestMap = poi.map;
                hasPoiDestination = true;
                break;
            }
        }
    }
}
