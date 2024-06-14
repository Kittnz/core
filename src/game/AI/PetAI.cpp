/*
 * Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
 * Copyright (C) 2009-2011 MaNGOSZero <https://github.com/mangos/zero>
 * Copyright (C) 2011-2016 Nostalrius <https://nostalrius.org>
 * Copyright (C) 2016-2017 Elysium Project <https://github.com/elysium-project>
 *
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

#include "PetAI.h"
#include "Errors.h"
#include "Pet.h"
#include "Player.h"
#include "Spell.h"
#include "SpellMgr.h"
#include "ScriptMgr.h"
#include "Creature.h"
#include "Util.h"
#include "Group.h"
#include "SpellAuraDefines.h"

int PetAI::Permissible(Creature const* creature)
{
    if (creature->IsPet())
        return PERMIT_BASE_SPECIAL;

    return PERMIT_BASE_NO;
}

PetAI::PetAI(Creature* c) : CreatureAI(c)
{
    // Warlock imp has no melee attack
    m_bMeleeAttack = (c->GetEntry() != 416);
}

bool PetAI::NeedToStopAttacking() const
{
    // This is needed for charmed creatures, as once their target was reset other effects can trigger threat
    if (m_creature->IsCharmed() && m_creature->GetVictim() == m_creature->GetCharmer())
        return true;

    // Stop attacking when player is mounted
    if (m_creature->IsPet() && !((Pet*)m_creature)->IsEnabled())
        return true;

    Unit* pOwner = m_creature->GetCharmerOrOwnerOrSelf();

    // Turtle: Abort chase if enemy turns invisible. This is not blizzlike for vanilla.
    if (!m_creature->GetVictim()->IsVisibleForOrDetect(m_creature, m_creature, true) &&
        !(pOwner && pOwner->IsPlayer() && static_cast<Player*>(pOwner)->IsInVisibleList(m_creature->GetVictim())))
        return true;

    Creature* pOwnerCreature = pOwner->ToCreature();

    // Prevent creature pets from chasing forever
    if (pOwnerCreature && !pOwnerCreature->IsInCombat())
    {
        if (pOwnerCreature->IsAlive())
        {
            if (pOwnerCreature->IsInEvadeMode())
                return true;
        }
        else
        {
            if (m_creature->IsOutOfThreatArea(m_creature->GetVictim()))
                return true;
        }
    }

    return !m_creature->IsValidAttackTarget(m_creature->GetVictim());
}

void PetAI::StopAttacking()
{
    if (!m_creature->IsAlive())
    {
        m_creature->GetMotionMaster()->Clear();
        m_creature->GetMotionMaster()->MoveIdle();
        m_creature->CombatStop();
        m_creature->GetHostileRefManager().deleteReferences();
        return;
    }

    if (m_creature->GetCharmerOrOwnerGuid().IsCreature())
    {
        m_creature->DeleteThreatList();
        m_creature->CombatStop(true);
    }
    else
    {
        m_creature->AttackStop();
        m_creature->InterruptNonMeleeSpells(false);
    }

    m_creature->GetCharmInfo()->SetIsCommandAttack(false);
    ClearCharmInfoFlags();
    HandleReturnMovement();
}

void PetAI::MoveInLineOfSight(Unit* pWho)
{
    if (m_creature->GetVictim())
        return;

    if (!m_creature->GetCharmInfo())
        return;

    if (m_creature->GetCharmInfo()->IsReturning())
        return;

    // Turtle: Checked inside CanInitiateAttack on vmangos.
    if (!m_creature->HasReactState(REACT_AGGRESSIVE))
        return;

    if (m_creature->GetDistanceZ(pWho) > CREATURE_Z_ATTACK_RANGE)
        return;

    // World of Warcraft Client Patch 1.8.0 (2005-10-11)
    // - Guardians and pets in aggressive mode no longer attack civilians.
    if (pWho->IsCreature() && static_cast<Creature*>(pWho)->IsCivilian())
        return;

    if (m_creature->CanInitiateAttack() && m_creature->IsValidAttackTarget(pWho))
    {
        float const attackRadius = m_creature->GetAttackDistance(pWho);
        if (m_creature->IsWithinDistInMap(pWho, attackRadius, true, SizeFactor::None) &&
            m_creature->IsHostileTo(pWho) && m_creature->IsWithinLOSInMap(pWho))
            AttackStart(pWho);
    }
}

void PetAI::UpdateAI(uint32 const diff)
{
    if (!m_creature->IsAlive() || !m_creature->GetCharmInfo() || m_creature->HasUnitState(UNIT_STAT_CAN_NOT_REACT))
        return;

    // part of it must run during eyes of the Beast to update melee hits
    bool playerControlled = m_creature->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_POSSESSED);

    // First checking if we have some taunt on us
    Unit* tauntTarget = !playerControlled ? m_creature->GetTauntTarget() : nullptr;
    if (tauntTarget)
        DoAttack(tauntTarget, true);
    else if (m_creature->GetVictim() && m_creature->GetCharmerOrOwnerGuid().IsCreature() && !m_creature->GetThreatManager().isThreatListEmpty())
    {
        // May need to change target based on threat if we are NPC pet.
        if (Unit* pTarget = m_creature->GetThreatManager().getHostileTarget())
            if (pTarget != m_creature->GetVictim() && !pTarget->HasAuraPetShouldAvoidBreaking())
                DoAttack(pTarget, true);
    }

    if (m_creature->GetVictim() && m_creature->GetVictim()->IsAlive())
    {
        if (NeedToStopAttacking())
        {
            StopAttacking();
            return;
        }

        if (m_bMeleeAttack)
            DoMeleeAttackIfReady();
    }
    else if (!playerControlled)
        HandleReturnMovement();

    // End of possessed pet updates
    if (playerControlled)
        return;

    // Creature could have died upon attacking (thorns aura for example), and lost charm aura. Abort.
    if (!m_creature->IsAlive() || !m_creature->GetCharmInfo() || m_creature->HasUnitState(UNIT_STAT_CAN_NOT_REACT))
        return;

    // Autocast (casted only in combat or persistent spells in any state)
    if (m_uiCastingDelay >= BATCHING_INTERVAL)
    {
        if (!m_creature->IsNonMeleeSpellCasted(false))
            UpdateSpells();

        m_uiCastingDelay -= BATCHING_INTERVAL;
    }
    else
        m_uiCastingDelay += diff;

    // Update speed as needed to prevent dropping too far behind and despawning
    m_creature->UpdateSpeed(MOVE_RUN, false);
    m_creature->UpdateSpeed(MOVE_WALK, false);
}

void PetAI::UpdateSpells()
{
    Unit* owner = m_creature->GetCharmerOrOwner();
    typedef std::vector<std::pair<Unit*, Spell*> > TargetSpellList;
    TargetSpellList targetSpellStore;

    for (uint8 i = 0; i < m_creature->GetPetAutoSpellSize(); ++i)
    {
        uint32 spellId = m_creature->GetPetAutoSpellOnPos(i);
        if (!spellId)
            continue;

        SpellEntry const* spellInfo = sSpellMgr.GetSpellEntry(spellId);
        if (!spellInfo)
            continue;

        if (m_creature->GetGlobalCooldownMgr().HasGlobalCooldown(spellInfo))
            continue;

        // check spell cooldown
        if (m_creature->HasSpellCooldown(spellInfo->Id))
            continue;

        if (spellInfo->IsPositiveSpell())
        {
            if (!spellInfo->IsNonCombatSpell()) // Can be used in combat.
            {
                /*
                Spells handled here:
                    Dash (1850), Dive (23145), Furious Howl (24604), Tainted Blood (19478)
                    Blood Pact (6307), Fire Shield (11771), Sacrifice ...
                    Consume Shadows (17767)
                */

                // Warlock Sacrifice: do not auto cast if not in combat
                bool castOnlyInCombat = spellInfo->HasEffect(SPELL_EFFECT_INSTAKILL);

                if (!castOnlyInCombat)
                {
                    int32 duration = spellInfo->GetDuration();
                    int32 cooldown = spellInfo->GetRecoveryTime();
                    // Keep this spell for when we will be in combat.
                    if (cooldown >= 0 && duration >= 0 && cooldown > duration)
                        castOnlyInCombat = true;
                }
                // 19478 - Tainted Blood, rank 1 enUS
                if (spellInfo->SpellIconID == 153)
                    castOnlyInCombat = true;
                // 2947 - Fire Shield, rank 1 enUS
                // When set to auto-cast, the Imp will cast this on any party members within 30 yds if they receive a melee attack.
                if (spellInfo->IsFitToFamily<SPELLFAMILY_WARLOCK, CF_WARLOCK_IMP_BUFFS>() && spellInfo->SpellVisual == 289)
                    castOnlyInCombat = false;
                // Furious Howl: in combat only
                if (spellInfo->HasAura(SPELL_AURA_MOD_DAMAGE_DONE))
                    castOnlyInCombat = true;
                if (castOnlyInCombat && !m_creature->GetVictim())
                    continue;
            }

            Spell* spell = new Spell(m_creature, spellInfo, false);
            bool spellUsed = false;

            // Some spells can target enemy or friendly (DK Ghoul's Leap)
            // Check for enemy first (pet then owner)
            Unit* target = m_creature->GetAttackerForHelper();
            if (!target && owner)
                target = owner->GetAttackerForHelper();

            if (target)
            {
                if (CanAttack(target) && spell->CanAutoCast(target))
                {
                    targetSpellStore.push_back(std::make_pair(target, spell));
                    spellUsed = true;
                }
            }



            // No enemy, check friendly
            if (!spellUsed)
            {
                std::vector<Unit*> alliesToCheck{ m_creature };
                if (owner)
                    alliesToCheck.emplace_back(owner);


                if (Player* pPlayer = owner->ToPlayer())
                {
                    if (Group* pGroup = pPlayer->GetGroup())
                    {
                        for (GroupReference* itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
                        {
                            Player* pAlly = itr->getSource();
                            if (!pAlly || !pGroup->SameSubGroup(pPlayer, pAlly))
                                continue;

                            alliesToCheck.push_back(pAlly);
                        }
                    }

                    for (const auto& ally : alliesToCheck)
                    {
                        if (spell->CanAutoCast(ally))
                        {
                            targetSpellStore.push_back(std::make_pair(ally, spell));
                            spellUsed = true;
                            break;
                        }

                        if (ally->GetObjectGuid() != pPlayer->GetObjectGuid())
                        {
                            if (Unit* pAllyPet = ally->GetPet())
                            {
                                if (spell->CanAutoCast(pAllyPet))
                                {
                                    targetSpellStore.push_back(std::make_pair(pAllyPet, spell));
                                    spellUsed = true;
                                    break;
                                }
                            }
                        }
                    }
                }
            }

            // No valid targets at all
            if (!spellUsed)
                spell->Delete();
        }
        else if (m_creature->GetVictim() && CanAttack(m_creature->GetVictim()) && !spellInfo->IsNonCombatSpell())
        {
            Spell* spell = new Spell(m_creature, spellInfo, false);
            if (spell->CanAutoCast(m_creature->GetVictim()))
                targetSpellStore.push_back(std::make_pair(m_creature->GetVictim(), spell));
            else
                spell->Delete();
        }
    }

    //found units to cast on to
    if (!targetSpellStore.empty())
    {
        uint32 index = urand(0, targetSpellStore.size() - 1);

        Spell* spell  = targetSpellStore[index].second;
        Unit*  target = targetSpellStore[index].first;

        targetSpellStore.erase(targetSpellStore.begin() + index);

        SpellCastTargets targets;
        targets.setUnitTarget(target);

        if (!m_creature->HasInArc(target))
        {
            m_creature->SetInFront(target);
            if (target->GetTypeId() == TYPEID_PLAYER)
                m_creature->SendCreateUpdateToPlayer((Player*)target);

            if (owner && owner->GetTypeId() == TYPEID_PLAYER)
                m_creature->SendCreateUpdateToPlayer((Player*)owner);
        }

        if (((Creature*)m_creature)->IsPet())
            ((Pet*)m_creature)->CheckLearning(spell->m_spellInfo->Id);

        // 10% chance to play special pet attack talk, else growl
        // actually this only seems to happen on special spells, fire shield for imp, torment for voidwalker, but it's stupid to check every spell
        if (((Creature*)m_creature)->IsPet() && (((Pet*)m_creature)->getPetType() == SUMMON_PET) && (m_creature != target) && (urand(0, 100) < 10))
            m_creature->SendPetTalk((uint32)PET_TALK_SPECIAL_SPELL);
        else
            m_creature->SendPetAIReaction();

        spell->prepare(std::move(targets));
    }

    // deleted cached Spell objects
    for (const auto& itr : targetSpellStore)
        itr.second->Delete();
}

void PetAI::KilledUnit(Unit* victim)
{
    // Called from Unit::Kill() in case where pet or owner kills something
    // if owner killed this victim, pet may still be attacking something else
    if (m_creature->GetVictim() && m_creature->GetVictim() != victim)
        return;

    // Clear target just in case. May help problem where health / focus / mana
    // regen gets stuck. Also resets attack command.
    // Can't use StopAttacking() because that activates movement handlers and ignores
    // next target selection
    m_creature->AttackStop();
    m_creature->InterruptNonMeleeSpells(false);
    m_creature->SendMeleeAttackStop(victim);  // Stops the pet's 'Attack' button from flashing

    // Before returning to owner, see if there are more things to attack
    Unit* nextTarget;
    ePetSelectTargetReason reason;
    std::tie(nextTarget, reason) = SelectNextTarget();
    if (nextTarget)
        AttackStart(nextTarget);
    else
    {
        switch (reason)
        {
            case PSTR_FAIL_DEFAULT:
            case PSTR_FAIL_NOT_ENABLED:
            case PSTR_FAIL_NO_OWNER:
            {
                if (m_creature->IsInCombat())
                    m_creature->CombatStop();
                HandleReturnMovement();
            }
        }
    }
}

void PetAI::AttackStart(Unit* target)
{
    // Overrides Unit::AttackStart to correctly evaluate Pet states

    // Check all pet states to decide if we can attack this target
    if (!CanAttack(target))
        return;

    // Only chase if not commanded to stay or if stay but commanded to attack
    DoAttack(target, (!m_creature->GetCharmInfo()->HasCommandState(COMMAND_STAY) || m_creature->GetCharmInfo()->IsCommandAttack()));
}

void PetAI::OwnerAttackedBy(Unit* attacker)
{
    // Called when owner takes damage. This function helps keep pets from running off
    //  simply due to owner gaining aggro.
    if (!attacker)
        return;

    // If owner attacked by fire, attacker=owner. Don't attack our owner !
    if (!m_creature->IsValidAttackTarget(attacker))
        return;

    // Pet desactive (monture)
    if (m_creature->IsPet() && !((Pet*)m_creature)->IsEnabled())
        return;

    // Passive pets don't do anything
    if (m_creature->HasReactState(REACT_PASSIVE))
        return;

    // In crowd control
    if (m_creature->HasUnitState(UNIT_STAT_CAN_NOT_REACT))
        return;

    // Prevent pet from disengaging from current target
    if (m_creature->GetVictim() && m_creature->GetVictim()->IsAlive())
        return;

    // Continue to evaluate and attack if necessary
    AttackStart(attacker);
}

void PetAI::OwnerAttacked(Unit* target)
{
    // Called when owner attacks something.

    // Target might be nullptr if called from spell with invalid cast targets
    if (!target)
        return;

    // The owner attacking a mob while the pet is currently not in combat
    // will not make the pet attack that target too. Tested on classic.
    // Defensive pet should not engage until it or its owner is damaged by
    // the enemy, and Aggressive pet aggroes based on proximity.
    if (!m_creature->IsInCombat() && m_creature->GetCharmerOrOwnerGuid().IsPlayer())
        return;

    if (!m_creature->IsValidAttackTarget(target))
        return;

    // Pet desactive (monture)
    if (m_creature->IsPet() && !((Pet*)m_creature)->IsEnabled())
        return;

    // Passive pets don't do anything
    if (m_creature->HasReactState(REACT_PASSIVE))
        return;

    // In crowd control
    if (m_creature->HasUnitState(UNIT_STAT_CAN_NOT_REACT))
        return;

    // Prevent pet from disengaging from current target
    if (m_creature->GetVictim() && m_creature->GetVictim()->IsAlive())
        return;

    // Continue to evaluate and attack if necessary
    AttackStart(target);
}

std::pair<Unit*, ePetSelectTargetReason> PetAI::SelectNextTarget() const
{
    // Provides next target selection after current target death.
    // This function should only be called internally by the AI
    // Targets are not evaluated here for being valid targets, that is done in _CanAttack()

    // Pet desactive (monture)
    if (m_creature->IsPet() && !((Pet*)m_creature)->IsEnabled())
        return std::make_pair(nullptr, PSTR_FAIL_NOT_ENABLED);

    // Passive pets don't do next target selection
    if (m_creature->HasReactState(REACT_PASSIVE))
        return std::make_pair(nullptr, PSTR_FAIL_PASSIVE);

    // Not sure why we wouldn't have an owner but just in case...
    Unit* owner = m_creature->GetCharmerOrOwner();
    if (!owner)
        return std::make_pair(nullptr, PSTR_FAIL_NO_OWNER);
    
    if (Creature const* pOwnerCreature = owner->ToCreature())
    {
        // Owner is creature and is evading. We must not re-aggro.
        if (pOwnerCreature->IsInEvadeMode())
            return std::make_pair(nullptr, PSTR_FAIL_NOT_ENABLED);

        // Check for valid targets on threat list if we are NPC pet.
        if (!m_creature->GetThreatManager().isThreatListEmpty())
            if (Unit* pTarget = m_creature->GetThreatManager().getHostileTarget())
                if (!pTarget->HasAuraPetShouldAvoidBreaking())
                    return std::make_pair(pTarget, PSTR_SUCCESS_THREAT_LIST);
    }
    else
    {
        for (auto const& pAttacker : m_creature->GetAttackers())
        {
            if (m_creature->GetCharmInfo()->IsAtStay() && !m_creature->CanReachWithMeleeAutoAttack(pAttacker))
                continue;

            if (pAttacker->IsInCombat() && m_creature->IsValidAttackTarget(pAttacker))
                return std::make_pair(pAttacker, PSTR_SUCCESS_SELF_ATTACKER);
        }
    }

    if (owner->IsInCombat())
    {
        if (Unit* pVictim = owner->GetVictim())
        {
            if (!pVictim->HasAuraPetShouldAvoidBreaking() && 
               (!m_creature->GetCharmInfo()->IsAtStay() || m_creature->CanReachWithMeleeAutoAttack(pVictim)))
                return std::make_pair(pVictim, PSTR_SUCCESS_OWNER_VICTIM);
        }

        // Check owner attackers
        for (auto const& pAttacker : owner->GetAttackers())
        {
            if (m_creature->GetCharmInfo()->IsAtStay() && !m_creature->CanReachWithMeleeAutoAttack(pAttacker))
                continue;

            if (pAttacker->IsInCombat() && m_creature->IsValidAttackTarget(pAttacker))
                return std::make_pair(pAttacker, PSTR_SUCCESS_OWNER_ATTACKER);
        }
    }

    // Default - no valid targets
    return std::make_pair(nullptr, PSTR_FAIL_DEFAULT);
}

void PetAI::HandleReturnMovement()
{
    // Handles moving the pet back to stay or owner

    // Prevent activating movement when under control of spells
    // such as "Eyes of the Beast"
    if (m_creature->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_POSSESSED))
        return;

    if (m_creature->GetCharmInfo()->HasCommandState(COMMAND_STAY))
    {
        if (!m_creature->GetCharmInfo()->IsAtStay() && !m_creature->GetCharmInfo()->IsReturning())
        {
            // Return to previous position where stay was clicked
            float x, y, z;

            m_creature->GetCharmInfo()->GetStayPosition(x, y, z);
            ClearCharmInfoFlags();
            m_creature->GetCharmInfo()->SetIsReturning(true);
            m_creature->GetMotionMaster()->Clear(false);
            m_creature->GetMotionMaster()->MovePoint(m_creature->GetGUIDLow(), x, y, z, MOVE_PATHFINDING);
        }
    }
    else // COMMAND_FOLLOW
    {
        if (!m_creature->GetCharmInfo()->IsFollowing() && !m_creature->GetCharmInfo()->IsReturning())
        {
            ClearCharmInfoFlags();
            m_creature->GetCharmInfo()->SetIsReturning(true);
            m_creature->GetMotionMaster()->Clear(false);
            m_creature->GetMotionMaster()->MoveFollow(m_creature->GetCharmerOrOwner(), PET_FOLLOW_DIST,
                                                      m_creature->IsPet() ? static_cast<Pet*>(m_creature)->GetFollowAngle() : PET_FOLLOW_ANGLE);
        }
    }
}

void PetAI::DoAttack(Unit* target, bool chase)
{
    // Handles attack with or without chase and also resets flags
    // for next update / creature kill
    if (m_creature->Attack(target, m_bMeleeAttack))
    {
        // Play sound to let the player know the pet is attacking something it picked on its own
        if (m_creature->HasReactState(REACT_AGGRESSIVE) && !m_creature->GetCharmInfo()->IsCommandAttack())
            m_creature->SendPetAIReaction();

        // Imp pets have a small chance to say one of these texts on aggro.
        if ((m_creature->GetEntry() == 416 || m_creature->GetEntry() == 12922) && !m_creature->IsInCombat() && roll_chance_u(5))
            DoScriptText(PickRandomValue(746, 747, 749, 750, 751, 752, 753, 754), m_creature, target);

        if (chase)
        {
            bool oldCmdAttack = m_creature->GetCharmInfo()->IsCommandAttack(); // This needs to be reset after other flags are cleared
            ClearCharmInfoFlags();
            m_creature->GetCharmInfo()->SetIsCommandAttack(oldCmdAttack); // For passive pets commanded to attack so they will use spells
            m_creature->GetMotionMaster()->Clear();
            if (!m_bMeleeAttack)
                m_creature->SetCasterChaseDistance(25.0f);
            m_creature->GetMotionMaster()->MoveChase(target);
        }
        else // (Stay && ((Aggressive || Defensive) && In Melee Range)))
        {
            ClearCharmInfoFlags();
            m_creature->GetCharmInfo()->SetIsAtStay(true);
            m_creature->GetMotionMaster()->Clear();
            m_creature->GetMotionMaster()->MoveIdle();
        }

        if (m_creature->GetCharmerOrOwnerGuid().IsCreature())
        {
            // Creature pet should instantly enter combat with target
            m_creature->AddThreat(target);
            m_creature->SetInCombatWith(target);
            target->SetInCombatWith(m_creature);

            // Make sure creature owner enters combat too
            if (Creature* pOwner = ToCreature(m_creature->GetCharmerOrOwner()))
            {
                if (pOwner->IsAlive() && !pOwner->HasUnitState(UNIT_STAT_CAN_NOT_REACT) &&
                    pOwner->IsValidAttackTarget(target, false))
                    pOwner->EnterCombatWithTarget(target);
            }
        }
    }
}

void PetAI::MovementInform(uint32 moveType, uint32 data)
{
    // Receives notification when pet reaches stay or follow owner
    switch (moveType)
    {
        case POINT_MOTION_TYPE:
        {
            // Pet is returning to where stay was clicked. data should be
            // pet's GUIDLow since we set that as the waypoint ID
            if (data == m_creature->GetGUIDLow() && m_creature->GetCharmInfo()->IsReturning())
            {
                ClearCharmInfoFlags();
                m_creature->GetCharmInfo()->SetIsAtStay(true);
                m_creature->GetMotionMaster()->Clear();
                m_creature->GetMotionMaster()->MoveIdle();
            }
            break;
        }
        case FOLLOW_MOTION_TYPE:
        {
            // If data is owner's GUIDLow then we've reached follow point,
            // otherwise we're probably chasing a creature
            if (m_creature->GetCharmInfo() && m_creature->GetCharmInfo()->IsReturning() && data == m_creature->GetCharmerOrOwnerGuid().GetCounter())
            {
                ClearCharmInfoFlags();
                m_creature->GetCharmInfo()->SetIsFollowing(true);
            }
            break;
        }
        default:
            break;
    }
}

bool PetAI::CanAttack(Unit* target)
{
    // Evaluates whether a pet can attack a specific target based on CommandState, ReactState and other flags
    // IMPORTANT: The order in which things are checked is important, be careful if you add or remove checks

    // Hmmm...
    if (!target)
        return false;

    if (!m_creature->IsValidAttackTarget(target, false))
        return false;

    constexpr uint32 infernoId = 89, doomguardId = 11859;
    if ((m_creature->GetEntry() == infernoId || m_creature->GetEntry() == doomguardId)
        && target->IsPlayer() && target->ToPlayer()->IsHardcore())
        return false;

    if (!target->IsAlive())
    {
        // Clear target to prevent getting stuck on dead targets
        m_creature->AttackStop();
        m_creature->InterruptNonMeleeSpells(false);
        m_creature->SendMeleeAttackStop(target);
        return false;
    }

    // Pet desactive (monture)
    if (m_creature->IsPet() && !((Pet*)m_creature)->IsEnabled())
        return false;

    // Passive - passive pets can attack if told to
    if (m_creature->HasReactState(REACT_PASSIVE))
        return m_creature->GetCharmInfo()->IsCommandAttack();

    // Player's pet should not attack PvP flagged target unless told to
    if (!m_creature->IsPvP() && target->IsPvP() && m_creature->GetCharmerOrOwnerGuid().IsPlayer())
        return m_creature->GetCharmInfo()->IsCommandAttack();

    // CC - mobs under crowd control can be attacked if owner commanded
    if (target->HasAuraPetShouldAvoidBreaking())
        return m_creature->GetCharmInfo()->IsCommandAttack();

    // Returning - pets ignore attacks only if owner clicked follow
    if (m_creature->GetCharmInfo()->IsReturning())
        return !m_creature->GetCharmInfo()->IsCommandFollow();

    // Stay - can attack if target is within range or commanded to
    if (m_creature->GetCharmInfo()->HasCommandState(COMMAND_STAY))
        return (m_creature->CanReachWithMeleeAutoAttack(target) || m_creature->GetCharmInfo()->IsCommandAttack());

    //  Pets attacking something (or chasing) should only switch targets if owner tells them to
    if (m_creature->GetVictim() && m_creature->GetVictim() != target)
    {
        // Check if our owner selected this target and clicked "attack"
        Unit* owner = m_creature->GetCharmerOrOwner();
        Unit* ownerTarget = nullptr;
        if (owner)
        {
            if (Player* playerOwner = owner->ToPlayer())
                ownerTarget = playerOwner->GetSelectedUnit();
            else
                ownerTarget = owner->GetVictim();
        }

        if (ownerTarget && m_creature->GetCharmInfo()->IsCommandAttack())
            return (target->GetGUID() == ownerTarget->GetGUID());
    }

    // Follow
    if (m_creature->GetCharmInfo()->HasCommandState(COMMAND_FOLLOW))
        return !m_creature->GetCharmInfo()->IsReturning();

    // default, though we shouldn't ever get here
    return false;
}

void PetAI::ClearCharmInfoFlags()
{
    // Quick access to set all flags to FALSE

    CharmInfo* ci = m_creature->GetCharmInfo();

    if (ci)
    {
        ci->SetIsAtStay(false);
        ci->SetIsCommandAttack(false);
        ci->SetIsCommandFollow(false);
        ci->SetIsFollowing(false);
        ci->SetIsReturning(false);
    }
}

void PetAI::AttackedBy(Unit* attacker)
{
    // Called when pet takes damage. This function helps keep pets from running off
    //  simply due to gaining aggro.

    if (!attacker)
        return;

    if (!m_creature->IsValidAttackTarget(attacker))
        return;

    // Pet desactive (monture)
    if (m_creature->IsPet() && !((Pet*)m_creature)->IsEnabled())
        return;

    // Passive pets don't do anything
    if (m_creature->HasReactState(REACT_PASSIVE))
        return;

    // Prevent pet from disengaging from current target
    if (m_creature->GetVictim() && m_creature->GetVictim()->IsAlive())
        return;

    // Continue to evaluate and attack if necessary
    AttackStart(attacker);
}

