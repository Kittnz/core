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

#include "Spell.h"
#include "Database/DatabaseEnv.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "Opcodes.h"
#include "Log.h"
#include "UpdateMask.h"
#include "World.h"
#include "ObjectMgr.h"
#include "SpellMgr.h"
#include "SpellEntry.h"
#include "Player.h"
#include "Pet.h"
#include "DynamicObject.h"
#include "Group.h"
#include "UpdateData.h"
#include "MapManager.h"
#include "ObjectAccessor.h"
#include "CellImpl.h"
#include "Policies/SingletonImp.h"
#include "SharedDefines.h"
#include "LootMgr.h"
#include "VMapFactory.h"
#include "BattleGround.h"
#include "Util.h"
#include "Chat.h"
#include "PathFinder.h"
#include "CharacterDatabaseCache.h"
#include "GameObjectAI.h"
#include "ZoneScript.h"
#include "Unit.h"

using namespace Spells;

#define SPELL_CHANNEL_UPDATE_INTERVAL (1 * IN_MILLISECONDS)

extern pEffect SpellEffects[TOTAL_SPELL_EFFECTS];

bool IsQuestTameSpell(uint32 spellId)
{
    SpellEntry const *spellproto = sSpellMgr.GetSpellEntry(spellId);
    if (!spellproto)
        return false;

    return spellproto->Effect[EFFECT_INDEX_0] == SPELL_EFFECT_THREAT
           && spellproto->Effect[EFFECT_INDEX_1] == SPELL_EFFECT_APPLY_AURA && spellproto->EffectApplyAuraName[EFFECT_INDEX_1] == SPELL_AURA_DUMMY;
}

SpellCastTargets::SpellCastTargets()
{
    m_unitTarget = nullptr;
    m_itemTarget = nullptr;
    m_GOTarget   = nullptr;

    m_itemTargetEntry  = 0;

    m_srcX = m_srcY = m_srcZ = m_destX = m_destY = m_destZ = 0.0f;
    m_targetMask = 0;
}

SpellCastTargets::~SpellCastTargets()
{
}

void SpellCastTargets::setUnitTarget(Unit *target)
{
    if (!target)
        return;

    m_destX = target->GetPositionX();
    m_destY = target->GetPositionY();
    m_destZ = target->GetPositionZ();
    m_unitTarget = target;
    m_unitTargetGUID = target->GetObjectGuid();
    m_targetMask |= TARGET_FLAG_UNIT;
}

void SpellCastTargets::setDestination(float x, float y, float z)
{
    m_destX = x;
    m_destY = y;
    m_destZ = z;
    m_targetMask |= TARGET_FLAG_DEST_LOCATION;
}

void SpellCastTargets::setSource(float x, float y, float z)
{
    m_srcX = x;
    m_srcY = y;
    m_srcZ = z;
    m_targetMask |= TARGET_FLAG_SOURCE_LOCATION;
}

void SpellCastTargets::setGOTarget(GameObject *target)
{
    m_GOTarget = target;
    m_GOTargetGUID = target->GetObjectGuid();
    //    m_targetMask |= TARGET_FLAG_OBJECT;
}

void SpellCastTargets::setItemTarget(Item* item)
{
    if (!item)
        return;

    m_itemTarget = item;
    m_itemTargetGUID = item->GetObjectGuid();
    m_itemTargetEntry = item->GetEntry();
    m_targetMask |= TARGET_FLAG_ITEM;
}

void SpellCastTargets::setTradeItemTarget(Player* caster)
{
    m_itemTargetGUID = ObjectGuid(uint64(TRADE_SLOT_NONTRADED));
    m_itemTargetEntry = 0;
    m_targetMask |= TARGET_FLAG_TRADE_ITEM;

    Update(caster);
}

void SpellCastTargets::setCorpseTarget(Corpse* corpse)
{
    m_CorpseTargetGUID = corpse->GetObjectGuid();
}

void SpellCastTargets::Update(WorldObject* pCaster)
{
    m_GOTarget   = m_GOTargetGUID ? pCaster->GetMap()->GetGameObject(m_GOTargetGUID) : nullptr;
    m_unitTarget = m_unitTargetGUID ?
                   (m_unitTargetGUID == pCaster->GetObjectGuid() ? pCaster->ToUnit() : ObjectAccessor::GetUnit(*pCaster, m_unitTargetGUID)) :
                   nullptr;

    m_itemTarget = nullptr;
    if (Player* pPlayer = pCaster->ToPlayer())
    {
        if (m_targetMask & TARGET_FLAG_ITEM)
            m_itemTarget = pPlayer->GetItemByGuid(m_itemTargetGUID);
        else if (m_targetMask & TARGET_FLAG_TRADE_ITEM)
        {
            if (TradeData* pTrade = pPlayer->GetTradeData())
                if (m_itemTargetGUID.GetRawValue() < TRADE_SLOT_COUNT)
                    m_itemTarget = pTrade->GetTraderData()->GetItem(TradeSlots(m_itemTargetGUID.GetRawValue()));
        }

        if (m_itemTarget)
            m_itemTargetEntry = m_itemTarget->GetEntry();
    }
}

void SpellCastTargets::read(ByteBuffer& data, Unit *caster)
{
    data >> m_targetMask;

    if (m_targetMask == TARGET_FLAG_SELF)
    {
        m_destX = caster->GetPositionX();
        m_destY = caster->GetPositionY();
        m_destZ = caster->GetPositionZ();
        m_unitTarget = caster;
        m_unitTargetGUID = caster->GetObjectGuid();
        return;
    }

    // TARGET_FLAG_UNK2 is used for non-combat pets, maybe other?
    if (m_targetMask & (TARGET_FLAG_UNIT | TARGET_FLAG_UNK2))
        data >> m_unitTargetGUID.ReadAsPacked();

    if (m_targetMask & (TARGET_FLAG_OBJECT | TARGET_FLAG_OBJECT_UNK))
        data >> m_GOTargetGUID.ReadAsPacked();

    if ((m_targetMask & (TARGET_FLAG_ITEM | TARGET_FLAG_TRADE_ITEM)) && caster->IsPlayer())
        data >> m_itemTargetGUID.ReadAsPacked();

    if (m_targetMask & TARGET_FLAG_SOURCE_LOCATION)
    {
        data >> m_srcX >> m_srcY >> m_srcZ;
        if (!MaNGOS::IsValidMapCoord(m_srcX, m_srcY, m_srcZ))
            throw ByteBufferException(false, data.rpos(), 0, data.size());
    }

    if (m_targetMask & TARGET_FLAG_DEST_LOCATION)
    {
        data >> m_destX >> m_destY >> m_destZ;
        if (!MaNGOS::IsValidMapCoord(m_destX, m_destY, m_destZ))
            throw ByteBufferException(false, data.rpos(), 0, data.size());
    }

    if (m_targetMask & TARGET_FLAG_STRING)
        data >> m_strTarget;

    if (m_targetMask & (TARGET_FLAG_CORPSE | TARGET_FLAG_PVP_CORPSE))
        data >> m_CorpseTargetGUID.ReadAsPacked();

    // find real units/GOs
    Update(caster);
}

void SpellCastTargets::write(ByteBuffer& data) const
{
    data << uint16(m_targetMask);

    if (m_targetMask & (TARGET_FLAG_UNIT | TARGET_FLAG_PVP_CORPSE | TARGET_FLAG_OBJECT | TARGET_FLAG_CORPSE | TARGET_FLAG_UNK2))
    {
        if (m_targetMask & TARGET_FLAG_UNIT)
        {
            if (m_unitTarget)
                data << m_unitTarget->GetPackGUID();

            else
                data << uint8(0);
        }
        else if (m_targetMask & (TARGET_FLAG_OBJECT | TARGET_FLAG_OBJECT_UNK))
        {
            if (m_GOTarget)
                data << m_GOTarget->GetPackGUID();

            else
                data << uint8(0);
        }
        else if (m_targetMask & (TARGET_FLAG_CORPSE | TARGET_FLAG_PVP_CORPSE))
            data << m_CorpseTargetGUID.WriteAsPacked();
        else
            data << uint8(0);
    }

    if (m_targetMask & (TARGET_FLAG_ITEM | TARGET_FLAG_TRADE_ITEM))
    {
        if (m_itemTarget)
            data << m_itemTarget->GetPackGUID();

        else
            data << uint8(0);
    }

    if (m_targetMask & TARGET_FLAG_SOURCE_LOCATION)
        data << m_srcX << m_srcY << m_srcZ;

    if (m_targetMask & TARGET_FLAG_DEST_LOCATION)
        data << m_destX << m_destY << m_destZ;

    if (m_targetMask & TARGET_FLAG_STRING)
        data << m_strTarget;
}

Spell::Spell(Unit* caster, SpellEntry const *info, bool triggered, ObjectGuid originalCasterGUID, SpellEntry const* triggeredBy, Unit* victim, SpellEntry const* triggeredByParent, bool bInCanIgnoreLOS /*= false*/):
    m_spellInfo(info), m_triggeredBySpellInfo(triggeredBy), m_triggeredByParentSpellInfo(triggeredByParent), m_caster(caster), m_casterUnit(caster), m_IsTriggeredSpell(triggered),
	m_IsIgnoreLOS(bInCanIgnoreLOS)
{
    MANGOS_ASSERT(caster != nullptr && info != nullptr);
    //MANGOS_ASSERT(info == sSpellMgr.GetSpellEntry(info->Id) && "`info` must be pointer to a sSpellMgr element");

    // Get data for type of attack
    m_attackType = m_spellInfo->GetWeaponAttackType();
    m_spellSchoolMask = info->GetSpellSchoolMask(); // Can be override for some spell (wand shoot for example)

    // Wand case
    if (m_attackType == RANGED_ATTACK)
        if (!!(caster->GetClassMask() & CLASSMASK_WAND_USERS) && caster->IsPlayer())
            m_spellSchoolMask = GetSchoolMask(caster->GetWeaponDamageSchool(RANGED_ATTACK));

    m_originalCasterGUID = originalCasterGUID ? originalCasterGUID : caster->GetObjectGuid();

    UpdateOriginalCasterPointer();

    for (int i = 0; i < MAX_EFFECT_INDEX; ++i)
        m_currentBasePoints[i] = m_spellInfo->CalculateSimpleValue(SpellEffectIndex(i));

    m_TriggerSpells.clear();
    m_preCastSpells.clear();

    // Auto Shot & Shoot
    m_autoRepeat = m_spellInfo->IsAutoRepeatRangedSpell();

    // Determine reflection
    m_canReflect = victim ? m_spellInfo->IsReflectableSpell(caster, victim) : m_spellInfo->IsReflectableSpell();

    CleanupTargetList();
}

Spell::Spell(GameObject* caster, SpellEntry const *info, bool triggered, ObjectGuid originalCasterGUID, SpellEntry const* triggeredBy, Unit* victim, SpellEntry const* triggeredByParent, bool bCanIgnoreLOS /*= false*/):
    m_spellInfo(info), m_triggeredBySpellInfo(triggeredBy), m_triggeredByParentSpellInfo(triggeredByParent), m_caster(caster), m_casterGo(caster), m_IsTriggeredSpell(triggered),
	m_IsIgnoreLOS(bCanIgnoreLOS)
{
    MANGOS_ASSERT(caster != nullptr && info != nullptr);
   // MANGOS_ASSERT(info == sSpellMgr.GetSpellEntry(info->Id) && "`info` must be pointer to a sSpellMgr element");

    // Get data for type of attack
    m_attackType = m_spellInfo->GetWeaponAttackType();
    m_spellSchoolMask = info->GetSpellSchoolMask(); // Can be override for some spell (wand shoot for example)
    m_originalCasterGUID = originalCasterGUID ? originalCasterGUID : caster->GetObjectGuid();

    UpdateOriginalCasterPointer();

    for (int i = 0; i < MAX_EFFECT_INDEX; ++i)
        m_currentBasePoints[i] = m_spellInfo->CalculateSimpleValue(SpellEffectIndex(i));

    m_TriggerSpells.clear();
    m_preCastSpells.clear();

    // Auto Shot & Shoot
    m_autoRepeat = m_spellInfo->IsAutoRepeatRangedSpell();

    // Determine reflection
    m_canReflect = victim ? m_spellInfo->IsReflectableSpell(caster, victim) : m_spellInfo->IsReflectableSpell();

    CleanupTargetList();
}

Spell::~Spell()
{
    m_destroyed = true;
}

template<typename T>
WorldObject* Spell::FindCorpseUsing()
{
    if (!m_casterUnit)
        return nullptr;

    // non-standard target selection
    SpellRangeEntry const* srange = sSpellRangeStore.LookupEntry(m_spellInfo->rangeIndex);
    float max_range = GetSpellMaxRange(srange);

    WorldObject* result = nullptr;

    T u_check(m_casterUnit, max_range);
    MaNGOS::WorldObjectSearcher<T> searcher(result, u_check);

    Cell::VisitGridObjects(m_casterUnit, searcher, max_range);

    if (!result)
        Cell::VisitWorldObjects(m_casterUnit, searcher, max_range);

    return result;
}

void Spell::FillTargetMap()
{
    // TODO: ADD the correct target FILLS!!!!!!

    for (int i = 0; i < MAX_EFFECT_INDEX; ++i)
    {
        // not call for empty effect.
        // Also some spells use not used effect targets for store targets for dummy effect in triggered spells
        if (m_spellInfo->Effect[i] == SPELL_EFFECT_NONE)
            continue;

        // targets for TARGET_LOCATION_SCRIPT_NEAR_CASTER (A) and TARGET_UNIT_SCRIPT_NEAR_CASTER
        // for TARGET_GAMEOBJECT_SCRIPT_NEAR_CASTER (A) all is checked in Spell::CheckCast and in Spell::CheckItem
        // filled in Spell::CheckCast call
        if (m_spellInfo->EffectImplicitTargetA[i] == TARGET_LOCATION_SCRIPT_NEAR_CASTER ||
                m_spellInfo->EffectImplicitTargetA[i] == TARGET_UNIT_SCRIPT_NEAR_CASTER ||
                m_spellInfo->EffectImplicitTargetA[i] == TARGET_GAMEOBJECT_SCRIPT_NEAR_CASTER ||
                (m_spellInfo->EffectImplicitTargetB[i] == TARGET_UNIT_SCRIPT_NEAR_CASTER && m_spellInfo->EffectImplicitTargetA[i] != TARGET_UNIT_CASTER))
            continue;

        // TODO: find a way so this is not needed?
        // for area auras always add caster as target (needed for totems for example)
        if (IsAreaAuraEffect(m_spellInfo->Effect[i]) && m_casterUnit)
            AddUnitTarget(m_casterUnit, SpellEffectIndex(i));
        // If same target already filled, use it
        // Example: AoE fear has effects speedup and modfear, with maxtargets = 1
        // We dont want to apply speedup to the first, fear to the second.
        if (m_spellInfo->MaxAffectedTargets > 1)
        {
            bool targetsCopied = false;
            for (int j = 0; j < i; ++j)
            {
                // Check if same target, but handle i.e. AreaAuras different
                if (m_spellInfo->EffectImplicitTargetA[i] == m_spellInfo->EffectImplicitTargetA[j] &&
                        m_spellInfo->EffectImplicitTargetB[i] == m_spellInfo->EffectImplicitTargetB[j] &&
                        m_spellInfo->Effect[j] != SPELL_EFFECT_NONE &&
                        !IsAreaAuraEffect(m_spellInfo->Effect[i]) &&
                        !IsAreaAuraEffect(m_spellInfo->Effect[j]))
                {
                    targetsCopied = true;
                    // Copy targets from effect j to effect i
                    for (TargetList::iterator ihit = m_UniqueTargetInfo.begin(); ihit != m_UniqueTargetInfo.end(); ++ihit)
                        if (ihit->effectMask & (1 << j))
                        {
                            if (Unit* unit = m_caster->GetMap()->GetUnit(ihit->targetGUID))
                                AddUnitTarget(unit, SpellEffectIndex(i)); // Will not invalidate the iterator, since it updates the current Target.
                            else // Failed. Better do the computation once again.
                            {
                                for (ihit = m_UniqueTargetInfo.begin(); ihit != m_UniqueTargetInfo.end(); ++ihit)
                                    ihit->effectMask &= ~(1 << i);
                                targetsCopied = false;
                                break;
                            }
                        }
                    break;
                }
            }
            if (targetsCopied)
                continue;
        }

        UnitList tmpUnitMap;

        // TargetA/TargetB dependent from each other, we not switch to full support this dependences
        // but need it support in some know cases
        switch (m_spellInfo->EffectImplicitTargetA[i])
        {
            case TARGET_NONE:
                switch (m_spellInfo->EffectImplicitTargetB[i])
                {
                    case TARGET_NONE:
                        SetTargetMap(SpellEffectIndex(i), TARGET_LOCATION_CASTER_DEST, tmpUnitMap);
                        break;
                    default:
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetB[i], tmpUnitMap);
                        break;
                }
                break;
            case TARGET_UNIT_CASTER:
                switch (m_spellInfo->EffectImplicitTargetB[i])
                {
                    case TARGET_NONE:
                        // Arcane Missiles have strange targeting for auras
                        if (m_spellInfo->IsFitToFamily<SPELLFAMILY_MAGE, CF_MAGE_ARCANE_MISSILES_CHANNEL>())
                        {
                            if (Unit* pUnitTarget = m_caster->SelectMagnetTarget(m_targets.getUnitTarget(), this, SpellEffectIndex(i)))
                            {
                                if (m_caster->IsValidAttackTarget(pUnitTarget))
                                    tmpUnitMap.push_back(pUnitTarget);
                            }
                        }
                        else
                            SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetA[i], tmpUnitMap);
                        break;
                    case TARGET_LOCATION_CASTER_DEST:
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetA[i], tmpUnitMap);
                        break;
                    case TARGET_ENUM_UNITS_SCRIPT_AOE_AT_SRC_LOC:         // use B case that not dependent from from A in fact
                        if ((m_targets.m_targetMask & TARGET_FLAG_DEST_LOCATION) == 0)
                            m_targets.setDestination(m_caster->GetPositionX(), m_caster->GetPositionY(), m_caster->GetPositionZ());
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetB[i], tmpUnitMap);
                        break;
                    default:
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetA[i], tmpUnitMap);
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetB[i], tmpUnitMap);
                        break;
                }
                break;
            case TARGET_LOCATION_CASTER_DEST:
                switch (m_spellInfo->EffectImplicitTargetB[i])
                {
                    case 0:
                    case TARGET_LOCATION_CASTER_DEST:
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetA[i], tmpUnitMap);
                        break;
                    // dest point setup required
                    case TARGET_ENUM_UNITS_SCRIPT_AOE_AT_SRC_LOC:
                    case TARGET_ENUM_UNITS_SCRIPT_AOE_AT_DEST_LOC:
                    case TARGET_ENUM_UNITS_ENEMY_AOE_AT_SRC_LOC:
                    case TARGET_ENUM_UNITS_ENEMY_AOE_AT_DEST_LOC:
                    case TARGET_ENUM_UNITS_ENEMY_AOE_AT_DYNOBJ_LOC:
                    case TARGET_ENUM_UNITS_FRIEND_AOE_AT_DEST_LOC:
                        // triggered spells get dest point from default target set, ignore it
                        if (!(m_targets.m_targetMask & TARGET_FLAG_DEST_LOCATION) || m_IsTriggeredSpell)
                            if (WorldObject* castObject = GetCastingObject())
                                m_targets.setDestination(castObject->GetPositionX(), castObject->GetPositionY(), castObject->GetPositionZ());
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetB[i], tmpUnitMap);
                        break;
                    // target pre-selection required
                    case TARGET_LOCATION_CASTER_HOME_BIND:
                    case TARGET_LOCATION_DATABASE:
                    case TARGET_LOCATION_CASTER_SRC:
                    case TARGET_LOCATION_SCRIPT_NEAR_CASTER:
                    case TARGET_LOCATION_CASTER_TARGET_POSITION:
                    case TARGET_LOCATION_UNIT_POSITION:
                        // need some target for processing
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetA[i], tmpUnitMap);
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetB[i], tmpUnitMap);
                        break;
                    default:
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetB[i], tmpUnitMap);
                        break;
                }
                break;
            case TARGET_LOCATION_CASTER_SRC:
                switch (m_spellInfo->EffectImplicitTargetB[i])
                {
                    case TARGET_ENUM_UNITS_ENEMY_AOE_AT_SRC_LOC:
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetA[i], tmpUnitMap);
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetB[i], tmpUnitMap);
                        switch (m_spellInfo->Id)
                        {
                            case 5246:
                            {
                                // Exception: Intimidating Shout
                                // The AoE fear does not apply to spell main target (that is stunned by another aura)
                                for (UnitList::iterator itr = tmpUnitMap.begin(); itr != tmpUnitMap.end();)
                                {
                                    if (*itr == m_targets.getUnitTarget())
                                        itr = tmpUnitMap.erase(itr);
                                    else
                                        ++itr;
                                }
                                break;
                            }
                            case 25676:                                         // Drain Mana
                            case 25754:
                            case 26457:
                            case 26559:
                                // Avoid targeting players with no mana
                                for (UnitList::iterator itr = tmpUnitMap.begin(); itr != tmpUnitMap.end();)
                                {
                                    if ((*itr)->GetPowerType() != POWER_MANA || (*itr)->GetPowerPercent(POWER_MANA) < 1.0f)
                                        itr = tmpUnitMap.erase(itr);
                                    else
                                        ++itr;
                                }
                                break;
                            case 27831:
                            {
                                // Shadow Bolt volley which should only target players with the Shadow Mark debuff
                                for (UnitList::iterator itr = tmpUnitMap.begin(); itr != tmpUnitMap.end();)
                                {
                                    if (!(*itr)->HasAura(27825)) // Shadow Mark
                                        itr = tmpUnitMap.erase(itr);
                                    else
                                        ++itr;
                                }
                                break;
                            }
                            case 29484:
                            {
                                // Maexxna Web Spray should not hit players under Web Wrap or Petrification
                                for (UnitList::iterator itr = tmpUnitMap.begin(); itr != tmpUnitMap.end();)
                                {
                                    if ((*itr)->HasAura(17624) || (*itr)->HasAura(28622))
                                        itr = tmpUnitMap.erase(itr);
                                    else
                                        ++itr;
                                }
                                break;
                            }
                        }
                        break;
                    case TARGET_LOCATION_UNIT_MINION_POSITION:
                    case TARGET_LOCATION_CASTER_FRONT_RIGHT:
                    case TARGET_LOCATION_CASTER_BACK_RIGHT:
                    case TARGET_LOCATION_CASTER_BACK_LEFT:
                    case TARGET_LOCATION_CASTER_FRONT_LEFT:
                    case TARGET_LOCATION_CASTER_FRONT:
                    case TARGET_LOCATION_CASTER_BACK:
                    case TARGET_LOCATION_CASTER_LEFT:
                    case TARGET_LOCATION_CASTER_RIGHT:
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetB[i], tmpUnitMap);
                        break;
                    case 0:
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetA[i], tmpUnitMap);
                        if (m_casterUnit)
                            tmpUnitMap.push_back(m_casterUnit);
                        else if (m_casterGo)
                            AddGOTarget(m_casterGo, SpellEffectIndex(i));
                        break;
                    default:
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetA[i], tmpUnitMap);
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetB[i], tmpUnitMap);
                        break;
                }
                break;
            case TARGET_LOCATION_DATABASE:
                switch (m_spellInfo->EffectImplicitTargetB[i])
                {
                    case 0:
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetA[i], tmpUnitMap);

                        // need some target for processing
                        SetTargetMap(SpellEffectIndex(i), TARGET_LOCATION_CASTER_DEST, tmpUnitMap);
                        break;
                    case TARGET_ENUM_UNITS_SCRIPT_AOE_AT_SRC_LOC:         // All 17/7 pairs used for dest teleportation, A processed in effect code
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetB[i], tmpUnitMap);
                        break;
                    default:
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetA[i], tmpUnitMap);
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetB[i], tmpUnitMap);
                        break;
                }
                break;
            case TARGET_LOCATION_UNIT_POSITION:
                switch (m_spellInfo->EffectImplicitTargetB[i])
                {
                    case 0:
                    case TARGET_LOCATION_CASTER_DEST:
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetA[i], tmpUnitMap);
                        if (Unit* currentTarget = m_targets.getUnitTarget())
                            tmpUnitMap.push_back(currentTarget);
                        break;
                    default:
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetA[i], tmpUnitMap);
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetB[i], tmpUnitMap);
                        break;
                }
                break;
            case TARGET_ENUM_UNITS_ENEMY_AOE_AT_SRC_LOC:
                if ((m_targets.m_targetMask & TARGET_FLAG_SOURCE_LOCATION) && !(m_targets.m_targetMask & TARGET_FLAG_DEST_LOCATION))
                    m_targets.setDestination(m_targets.m_srcX, m_targets.m_srcY, m_targets.m_srcZ);
                SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetA[i], tmpUnitMap);
                break;
            default:
                switch (m_spellInfo->EffectImplicitTargetB[i])
                {
                    case TARGET_NONE:
                    case TARGET_LOCATION_CASTER_DEST:
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetA[i], tmpUnitMap);
                        break;
                    case TARGET_LOCATION_SCRIPT_NEAR_CASTER:         // B case filled in CheckCast but we need fill unit list base at A case
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetA[i], tmpUnitMap);
                        break;
                    default:
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetA[i], tmpUnitMap);
                        SetTargetMap(SpellEffectIndex(i), m_spellInfo->EffectImplicitTargetB[i], tmpUnitMap);
                        break;
                }
                break;
        }

        for (UnitList::iterator itr = tmpUnitMap.begin(); itr != tmpUnitMap.end();)
        {
            if (!CheckTarget(*itr, SpellEffectIndex(i)))
            {
                itr = tmpUnitMap.erase(itr);
                continue;
            }
            else
                ++itr;
        }

        for (const auto iunit : tmpUnitMap)
            AddUnitTarget(iunit, SpellEffectIndex(i));
    }
}

void Spell::prepareDataForTriggerSystem()
{
    //==========================================================================================
    // Now fill data for trigger system, need know:
    // an spell trigger another or not ( m_canTrigger )
    // Create base triggers flags for Attacker and Victim ( m_procAttacker and  m_procVictim)
    //==========================================================================================
    // Fill flag can spell trigger or not
    // TODO: possible exist spell attribute for this
    m_canTrigger = false;
    m_procAttacker = PROC_FLAG_NONE;
    m_procVictim = PROC_FLAG_NONE;

    if (m_spellInfo->AttributesEx3 & SPELL_ATTR_EX3_CANT_TRIGGER_PROC)
        m_canTrigger = false;         // Explicitly not allowed to trigger
    else if (m_CastItem)
        m_canTrigger = false;         // Do not trigger from item cast spell
    else if (m_originalCasterGUID.IsGameObject())   // Do not trigger anything if the spell is casted by using a game object (eg. Lightwell)
        m_canTrigger = false;
    else if (!m_IsTriggeredSpell)
        m_canTrigger = true;          // Normal cast - can trigger
    else if (!m_triggeredByAuraSpell)
        m_canTrigger = true;          // Triggered from SPELL_EFFECT_TRIGGER_SPELL - can trigger
    else if (m_spellInfo->HasAttribute(SPELL_ATTR_EX2_TRIGGERED_CAN_TRIGGER_PROC) || m_spellInfo->HasAttribute(SPELL_ATTR_EX3_TRIGGERED_CAN_TRIGGER_SPECIAL))
        m_canTrigger = true;          // Spells with these special attributes can trigger even if triggeredByAuraSpell

    if (!m_canTrigger)                // Exceptions (some periodic triggers)
    {
        switch (m_spellInfo->SpellFamilyName)
        {
            case SPELLFAMILY_MAGE:
                // Arcane Missiles / Blizzard triggers need do it
                if (m_spellInfo->IsFitToFamilyMask(uint64(0x0000000000200080)))
                    m_canTrigger = true;
                break;
            case SPELLFAMILY_WARLOCK:
                // For Hellfire Effect / Rain of Fire triggers need do it
                if (m_spellInfo->IsFitToFamilyMask<CF_WARLOCK_RAIN_OF_FIRE, CF_WARLOCK_HELLFIRE>())
                    m_canTrigger = true;
                break;
            case SPELLFAMILY_HUNTER:
                // Hunter Explosive Trap Effect/Immolation Trap Effect/Frost Trap Aura Effect
                if (m_spellInfo->IsFitToFamilyMask<CF_HUNTER_FIRE_TRAP_EFFECTS, CF_HUNTER_FROST_TRAP_AURA>())
                    m_canTrigger = true;
                break;
            case SPELLFAMILY_PALADIN:
                // Seal of Command (example Vengeance proc) | SPELLFAMILY_PALADIN override in spell_mod
                if (m_spellInfo->Id == 20424)
                    m_canTrigger = true;
                // Seal of Righteousness
                else if (!m_spellInfo->SpellFamilyFlags && m_spellInfo->SpellIconID == 25)
                    m_canTrigger = true;
                // Holy Shock
                else if (m_spellInfo->IsFitToFamilyMask<CF_PALADIN_HOLY_SHOCK>())
                    m_canTrigger = true;
                // Eye for an Eye triggered spell
                else if (m_spellInfo->Id == 25997)
                    m_canTrigger = true;
                break;
            case SPELLFAMILY_PRIEST:
                // Touch of Weakness / Devouring Plague
                if (m_spellInfo->IsFitToFamilyMask<CF_PRIEST_TOUCH_OF_WEAKNESS, CF_PRIEST_DEVOURING_PLAGUE>())
                    m_canTrigger = true;
                break;
            default:
                break;
        }
    }

    // Get data for type of attack and fill base info for trigger
    switch (m_spellInfo->DmgClass)
    {
        case SPELL_DAMAGE_CLASS_MELEE:
            m_procAttacker = PROC_FLAG_SUCCESSFUL_MELEE_SPELL_HIT;
            if (m_attackType == OFF_ATTACK)
                m_procAttacker |= PROC_FLAG_SUCCESSFUL_OFFHAND_HIT;
            m_procVictim   = PROC_FLAG_TAKEN_MELEE_SPELL_HIT;
            if (IsNextMeleeSwingSpell())
            {
                m_procAttacker |= PROC_FLAG_SUCCESSFUL_MELEE_HIT;
                m_procVictim |= PROC_FLAG_TAKEN_MELEE_HIT;
            }
            break;
        case SPELL_DAMAGE_CLASS_RANGED:
            // Auto attack
            if (m_spellInfo->AttributesEx2 & SPELL_ATTR_EX2_AUTOREPEAT_FLAG)
            {
                m_procAttacker = PROC_FLAG_SUCCESSFUL_RANGED_HIT;
                m_procVictim   = PROC_FLAG_TAKEN_RANGED_HIT;
            }
            else // Ranged spell attack
            {
                // If blind or Expose Weakness, don't add proc flags for typical ranged abilities
                // proc none
                if (m_spellInfo->Id == 2094 || m_spellInfo->Id == 23577)
                {
                    m_procAttacker = PROC_FLAG_NONE;
                    m_procVictim = PROC_FLAG_NONE;
                }
                else
                {
                    m_procAttacker = PROC_FLAG_SUCCESSFUL_RANGED_SPELL_HIT;
                    m_procVictim   = PROC_FLAG_TAKEN_RANGED_SPELL_HIT;
                }

                if (m_spellInfo->IsAreaOfEffectSpell())
                    m_procAttacker |= PROC_FLAG_SUCCESSFUL_AOE;
            }
            break;
        default:
        {
            bool aoe = m_spellInfo->IsAreaOfEffectSpell();
            bool positive = m_spellInfo->IsPositiveSpell();
            // Some spells should be categorized as AoE
            // Hellfire regularly triggers an AoE spell.
            if (m_spellInfo->IsFitToFamily<SPELLFAMILY_WARLOCK, CF_WARLOCK_HELLFIRE>() && m_spellInfo->SpellIconID == 937)
                aoe = true;

            // Check for positive spell. 'Positive' spells include various things such as buffs, but
            // they shouldn't proc with PROC_FLAG_SUCCESSFUL_POSITIVE_SPELL. Note that some spells
            // with SPELL_EFFECT_DISPEL are negative, such as Purge.
            if (positive)
            {
                if (m_spellInfo->IsHealSpell())
                {
                    m_procAttacker = PROC_FLAG_SUCCESSFUL_POSITIVE_SPELL;
                    m_procVictim = PROC_FLAG_TAKEN_POSITIVE_SPELL;
                }
                else
                {
                    m_procAttacker = PROC_FLAG_SUCCESSFUL_NONE_POSITIVE_SPELL;
                    m_procVictim = PROC_FLAG_TAKEN_NONE_POSITIVE_SPELL;
                }

                if (m_spellInfo->IsDispel())
                    m_procAttacker |= PROC_FLAG_SUCCESSFUL_CURE_SPELL_CAST;

                if (aoe)
                    m_procAttacker |= PROC_FLAG_SUCCESSFUL_AOE;

                if (m_spellInfo->IsSpellAppliesPeriodicAura())
                {
                    m_procAttacker |= PROC_FLAG_SUCCESSFUL_PERIODIC_SPELL_HIT;
                    m_procVictim |= PROC_FLAG_TAKEN_PERIODIC_SPELL_HIT;
                }

                // Always proc with PROC_FLAG_SUCCESSFUL_SPELL_CAST if not AoE or triggered spell
                if (!aoe && !IsTriggered())
                {
                    m_procAttacker |= PROC_FLAG_SUCCESSFUL_SPELL_CAST;
                    if (m_powerCost > 0 && m_spellInfo->powerType == POWER_MANA)
                        m_procAttacker |= PROC_FLAG_SUCCESSFUL_MANA_SPELL_CAST;
                }
            }
            // Wands auto attack
            else if (m_spellInfo->AttributesEx2 & SPELL_ATTR_EX2_AUTOREPEAT_FLAG)
            {
                m_procAttacker = PROC_FLAG_SUCCESSFUL_RANGED_HIT;
                m_procVictim   = PROC_FLAG_TAKEN_RANGED_HIT;
            }
            else                                           // Negative spell
            {
                if (m_spellInfo->DmgClass == SPELL_DAMAGE_CLASS_MAGIC)
                {
                    m_procAttacker = PROC_FLAG_SUCCESSFUL_NEGATIVE_SPELL_HIT;
                    m_procVictim = PROC_FLAG_TAKEN_NEGATIVE_SPELL_HIT;
                }
                else
                {
                    m_procAttacker = PROC_FLAG_SUCCESSFUL_NONE_SPELL_HIT;
                    m_procVictim = PROC_FLAG_TAKEN_NONE_SPELL_HIT;
                }

                if (aoe)
                    m_procAttacker |= PROC_FLAG_SUCCESSFUL_AOE;

                if (m_spellInfo->IsSpellAppliesPeriodicAura())
                {
                    m_procAttacker |= PROC_FLAG_SUCCESSFUL_PERIODIC_SPELL_HIT;
                    m_procVictim |= PROC_FLAG_TAKEN_PERIODIC_SPELL_HIT;
                }

                if (!aoe && !IsTriggered())
                {
                    m_procAttacker |= PROC_FLAG_SUCCESSFUL_SPELL_CAST;
                    if (m_powerCost > 0 && m_spellInfo->powerType == POWER_MANA)
                        m_procAttacker |= PROC_FLAG_SUCCESSFUL_MANA_SPELL_CAST;
                }
            }
            break;
        }
    }

    // some negative spells have positive effects to another or same targets
    // avoid triggering negative hit for only positive targets
    m_negativeEffectMask = 0x0;
    for (int i = 0; i < MAX_EFFECT_INDEX; ++i)
    {
        if (!m_spellInfo->IsPositiveEffect(SpellEffectIndex(i)))
            m_negativeEffectMask |= (1 << i);

        // Self damage is a positive effect but should still trigger negative proc flags
        if (m_spellInfo->Effect[i] == SPELL_EFFECT_SCHOOL_DAMAGE && m_spellInfo->EffectImplicitTargetA[i] == TARGET_UNIT_CASTER)
            m_negativeEffectMask |= (1 << i);
    }

}

void Spell::CleanupTargetList()
{
    for (auto& itr : m_UniqueTargetInfo)
        itr.deleted = true;

    for (auto& itr : m_UniqueGOTargetInfo)
        itr.deleted = true;

    m_UniqueItemInfo.clear();
    m_delayMoment = 0;
}

void Spell::AddUnitTarget(Unit* pTarget, SpellEffectIndex effIndex)
{
    if (m_spellInfo->Effect[effIndex] == 0)
        return;

    if ((m_spellInfo->AttributesEx & SPELL_ATTR_EX_CANT_TARGET_SELF) && (m_spellInfo->EffectImplicitTargetA[effIndex] != TARGET_UNIT_CASTER) && (m_spellInfo->EffectImplicitTargetB[effIndex] != TARGET_UNIT_CASTER) && (pTarget->GetObjectGuid() == m_originalCasterGUID))
        return;

    // Check for effect immune skip if immuned
    bool immuned = pTarget->IsImmuneToSpellEffect(m_spellInfo, effIndex, pTarget == m_caster);

    ObjectGuid targetGUID = pTarget->GetObjectGuid();

    // Lookup target in already in list
    for (auto& ihit : m_UniqueTargetInfo)
    {
        if (ihit.deleted)
            continue;

        if (targetGUID == ihit.targetGUID)                 // Found in list
        {
            if (!immuned)
                ihit.effectMask |= 1 << effIndex;          // Add only effect mask if not immuned
            return;
        }
    }

    // This is new target calculate data for him

    // Get spell hit result on target
    TargetInfo targetInfo;
    targetInfo.targetGUID = targetGUID;                         // Store target GUID
    targetInfo.effectMask = immuned ? 0 : 1 << effIndex;        // Store index of effect if not immuned
    targetInfo.processed  = false;                              // Effects not apply on target
    targetInfo.deleted = false;
    targetInfo.HitInfo = 0x0;
    targetInfo.damage = 0;

    // Calculate hit result
    targetInfo.missCondition = m_caster->SpellHitResult(pTarget, m_spellInfo, effIndex, m_canReflect, this);

    // spell fly from visual cast object
    WorldObject* affectiveObject = GetAffectiveCasterObject();

    // Spell have speed - need calculate incoming time
    if (m_spellInfo->speed > 0.0f && affectiveObject && pTarget != affectiveObject)
    {
        // calculate spell incoming interval
        float dist = affectiveObject->GetDistance(pTarget->GetPositionX(), pTarget->GetPositionY(), pTarget->GetPositionZ());
        if (dist < 5.0f)
            dist = 5.0f;

        targetInfo.timeDelay = (uint64) floor(dist / m_spellInfo->speed * 1000.0f);

        // Calculate minimum incoming time
        if (m_delayMoment == 0 || m_delayMoment > targetInfo.timeDelay)
            m_delayMoment = targetInfo.timeDelay;
    }
    else if (m_delayed)
        m_delayMoment = targetInfo.timeDelay = sWorld.getConfig(CONFIG_UINT32_SPELLS_CCDELAY);
    else
        targetInfo.timeDelay = UI64LIT(0);

    // If target reflect spell back to caster
    if (targetInfo.missCondition == SPELL_MISS_REFLECT)
    {
        // Calculate reflected spell result on caster
        targetInfo.reflectResult = m_casterUnit ? m_casterUnit->SpellHitResult(m_casterUnit, m_spellInfo, effIndex, m_canReflect, this) : SPELL_MISS_IMMUNE;

        if (targetInfo.reflectResult == SPELL_MISS_REFLECT)     // Impossible reflect again, so simply deflect spell
            targetInfo.reflectResult = SPELL_MISS_PARRY;

        // Increase time interval for reflected spells by 1.5
        targetInfo.timeDelay += targetInfo.timeDelay >> 1;
    }
    else
        targetInfo.reflectResult = SPELL_MISS_NONE;

    // Add target to list
    m_UniqueTargetInfo.push_back(targetInfo);
}

void Spell::AddUnitTarget(ObjectGuid unitGuid, SpellEffectIndex effIndex)
{
    if (Unit* unit = m_caster->GetObjectGuid() == unitGuid ? m_casterUnit : ObjectAccessor::GetUnit(*m_caster, unitGuid))
        AddUnitTarget(unit, effIndex);
}

void Spell::CheckAtDelay(TargetInfo* pInf)
{
    Unit* pTarget = m_caster->GetObjectGuid() == pInf->targetGUID ? m_casterUnit : ObjectAccessor::GetUnit(*m_caster, pInf->targetGUID);
    if (!pTarget)
        return;

    for (int i = 0; i < 3; ++i)
    {
        uint32 effMask = 1 << i;
        if (pInf->effectMask & effMask)
        {
            if (pTarget->IsImmuneToSpellEffect(m_spellInfo, SpellEffectIndex(i), pTarget == m_caster))
                pInf->effectMask &= ~effMask;
        }
    }

    if (pTarget != m_caster && ((!m_spellInfo->IsPositiveSpell(m_caster, pTarget) &&
            pTarget->IsImmuneToDamage(m_spellInfo->GetSpellSchoolMask(), m_spellInfo)) || pTarget->IsImmuneToSpell(m_spellInfo, pTarget == m_caster)))
        pInf->missCondition = SPELL_MISS_IMMUNE;

    if (pTarget->IsCreature() && ((Creature*)pTarget)->IsInEvadeMode())
        pInf->missCondition = SPELL_MISS_EVADE;
}

void Spell::AddGOTarget(GameObject* pTarget, SpellEffectIndex effIndex)
{
    if (m_spellInfo->Effect[effIndex] == 0)
        return;

    ObjectGuid targetGUID = pTarget->GetObjectGuid();

    // Lookup target in already in list
    for (auto& ihit : m_UniqueGOTargetInfo)
    {
        if (ihit.deleted)
            continue;

        if (targetGUID == ihit.targetGUID)                 // Found in list
        {
            ihit.effectMask |= (1 << effIndex);            // Add only effect mask
            return;
        }
    }

    // This is new target calculate data for him

    GOTargetInfo targetInfo;
    targetInfo.targetGUID = targetGUID;
    targetInfo.effectMask = (1 << effIndex);
    targetInfo.processed  = false;                              // Effects not apply on target
    targetInfo.deleted    = false;

    // spell fly from visual cast object
    WorldObject* affectiveObject = GetAffectiveCasterObject();

    // Spell have speed - need calculate incoming time
    if (m_spellInfo->speed > 0.0f && affectiveObject && pTarget != affectiveObject)
    {
        // calculate spell incoming interval
        float dist = affectiveObject->GetDistance(pTarget->GetPositionX(), pTarget->GetPositionY(), pTarget->GetPositionZ());
        if (dist < 5.0f)
            dist = 5.0f;

        targetInfo.timeDelay = (uint64) floor(dist / m_spellInfo->speed * 1000.0f);

        if (m_delayMoment == 0 || m_delayMoment > targetInfo.timeDelay)
            m_delayMoment = targetInfo.timeDelay;
    }
    else if (m_delayed)
        m_delayMoment = targetInfo.timeDelay = sWorld.getConfig(CONFIG_UINT32_SPELLS_CCDELAY);
    else
        targetInfo.timeDelay = UI64LIT(0);

    // Add target to list
    m_UniqueGOTargetInfo.push_back(targetInfo);
}

void Spell::AddGOTarget(ObjectGuid goGuid, SpellEffectIndex effIndex)
{
    if (GameObject* go = m_caster->GetMap()->GetGameObject(goGuid))
        AddGOTarget(go, effIndex);
}

void Spell::AddItemTarget(Item* pitem, SpellEffectIndex effIndex)
{
    if (m_spellInfo->Effect[effIndex] == 0)
        return;

    // Lookup target in already in list
    for (auto& ihit : m_UniqueItemInfo)
    {
        if (pitem == ihit.item)                            // Found in list
        {
            ihit.effectMask |= (1 << effIndex);            // Add only effect mask
            return;
        }
    }

    // This is new target add data

    ItemTargetInfo target;
    target.item       = pitem;
    target.effectMask = (1 << effIndex);
    target.deleted    = false;

    m_UniqueItemInfo.push_back(target);
}

void Spell::DoAllEffectOnTarget(TargetInfo *target)
{
    ASSERT(target);

    // Arrive pour des sorts comme 11567, 20569, 10626
    if (target->processed)
        return;

    ASSERT(m_caster);

    target->processed = true;                               // Target checked in apply effects procedure

    // Get mask of effects for target
    uint32 mask = target->effectMask;

    Unit* unit = m_caster->GetObjectGuid() == target->targetGUID ? m_casterUnit : ObjectAccessor::GetUnit(*m_caster, target->targetGUID);
    if (!unit)
        return;

    if (getState() == SPELL_STATE_DELAYED && (WorldTimer::getMSTime() - target->timeDelay) <= unit->m_lastSanctuaryTime && !m_spellInfo->IsPositiveSpell())
        return;

    // Get original caster (if exist) and calculate damage/healing from him data
    WorldObject *pRealCaster = GetAffectiveCasterObject();
    WorldObject *pCaster = pRealCaster ? pRealCaster : m_caster;
    Unit* pUnitCaster = pCaster->ToUnit();
    Unit* pRealUnitCaster = ToUnit(pRealCaster);

    SpellMissInfo missInfo = target->missCondition;
    // Need init unitTarget by default unit (can changed in code on reflect)
    // Or on missInfo!=SPELL_MISS_NONE unitTarget undefined (but need in trigger subsystem)
    unitTarget = unit;
    m_spellAuraHolder = nullptr;

    // Reset damage/healing counter
    ResetEffectDamageAndHeal();

    // Fill base trigger info. If this is hitting multiple targets, attacker procs should
    // only apply on the first target aside from some special cases.
    uint32 procAttacker = m_procAttacker;
    uint32 procVictim   = m_procVictim;
    uint32 procEx       = PROC_EX_NONE;
    
    // Drop some attacker proc flags if this is a secondary target. Do not need to change
    // the victim proc flags.
    if (m_targetNum > 1) {
        // If this is a melee spell hit, strip the flag and apply a spell hit flag instead.
        // This is required to proc things like Deep Wounds on the victim when hitting 
        // multiple targets, but not proc additional melee-only beneficial auras on the 
        // attacker like Sweeping Strikes. Leave the victim proc flags responding to a melee
        // spell.
        if (procAttacker & PROC_FLAG_SUCCESSFUL_MELEE_SPELL_HIT) {
            procAttacker &= ~(PROC_FLAG_SUCCESSFUL_MELEE_SPELL_HIT);
            procAttacker |= PROC_FLAG_SUCCESSFUL_NEGATIVE_SPELL_HIT;
        }
        else if (procAttacker & (PROC_FLAG_SUCCESSFUL_SPELL_CAST | PROC_FLAG_SUCCESSFUL_MANA_SPELL_CAST)) {
            // Secondary target on a successful spell cast. Remove these flags so we're not
            // proccing beneficial auras multiple times. Also remove negative spell hit for
            // chain lightning + clearcasting. Leave positive effects
            // eg. Chain heal/lightning & Zandalarian Hero Charm
            procAttacker &= ~(PROC_FLAG_SUCCESSFUL_SPELL_CAST | PROC_FLAG_SUCCESSFUL_MANA_SPELL_CAST | 
                              PROC_FLAG_SUCCESSFUL_NEGATIVE_SPELL_HIT);
        }
        else if (procAttacker & (PROC_FLAG_SUCCESSFUL_AOE | PROC_FLAG_SUCCESSFUL_NEGATIVE_SPELL_HIT)) {
            // Do not allow secondary hits for negative aoe spells (such as Arcane Explosion) 
            // to proc beneficial abilities such as Clearcasting. Positive aoe spells can
            // still trigger, as in the case of prayer of healing and inspiration...
            procAttacker &= ~(PROC_FLAG_SUCCESSFUL_AOE | PROC_FLAG_SUCCESSFUL_NEGATIVE_SPELL_HIT);
        }
    }

    // drop proc flags in case target not affected negative effects in negative spell
    // for example caster bonus or animation,
    // except miss case where will assigned PROC_EX_* flags later
    if (((procAttacker | procVictim) & NEGATIVE_TRIGGER_MASK) &&
            !(target->effectMask & m_negativeEffectMask) && (missInfo == SPELL_MISS_NONE || missInfo == SPELL_MISS_REFLECT))
    {
        procAttacker = procAttacker & PROC_FLAG_SUCCESSFUL_SPELL_CAST;
        procVictim   = PROC_FLAG_NONE;
    }

    if (m_delayed)
    {
        // mark effects that were already handled in Spell::HandleDelayedSpellLaunch on spell launch as processed
        for (int32 i = 0; i < MAX_EFFECT_INDEX; ++i)
            if (m_spellInfo->IsEffectHandledOnDelayedSpellLaunch(SpellEffectIndex(i)))
                mask &= ~(1 << i);

        // maybe used in effects that are handled on hit
        m_damage += target->damage;
    }

    if (missInfo == SPELL_MISS_NONE)                        // In case spell hit target, do all effect on that target
        DoSpellHitOnUnit(unit, mask);
    if (missInfo == SPELL_MISS_REFLECT && target->reflectResult == SPELL_MISS_NONE)
    {
        if (m_casterUnit)
        {
            isReflected = true;
            DoSpellHitOnUnit(m_casterUnit, mask);
            unitTarget = m_casterUnit;
        }
    }
    else                                                    // in 1.12.1 we need explicit miss info
    {
        if (pRealCaster && !IsNeedSendToClient())
            pRealCaster->SendSpellMiss(unit, m_spellInfo->Id, missInfo);

        if (missInfo == SPELL_MISS_MISS || missInfo == SPELL_MISS_RESIST)
        {
            if (pRealUnitCaster && pRealUnitCaster != unit)
            {
                if (!m_spellInfo->IsPositiveSpell() && (m_caster->IsVisibleForOrDetect(unit, unit, false) || m_spellInfo->HasAttribute(SPELL_ATTR_EX_IS_PICKPOCKET)))
                {
                    bool combat = (m_spellInfo->Id != 3600) && !m_spellInfo->HasAttribute(SPELL_ATTR_EX3_NO_INITIAL_AGGRO);

                    // Pickpocket can cause back attack if failed
                    if (m_spellInfo->HasAttribute(SPELL_ATTR_EX_IS_PICKPOCKET))
                    {
                        pRealUnitCaster->RemoveSpellsCausingAura(SPELL_AURA_MOD_STEALTH);
                        combat = true;
                    }

                    if (combat)
                    {
                        if (!m_spellInfo->HasAura(SPELL_AURA_MOD_POSSESS))
                        {
                            if (!unit->IsInCombat())
                                unit->AttackedBy(pRealUnitCaster);

                            unit->AddThreat(pRealUnitCaster);
                            unit->SetInCombatWithAggressor(pRealUnitCaster);
                        }
                        
                        pRealUnitCaster->SetInCombatWithVictim(unit);
                    }
                    else if (m_spellInfo->HasAttribute(SPELL_ATTR_EX3_OUT_OF_COMBAT_ATTACK))
                    {
                        unit->SetOutOfCombatWithAggressor(pRealUnitCaster);
                        pRealUnitCaster->SetOutOfCombatWithVictim(unit);
                    }
                }
            }
        }
    }

    if (pRealUnitCaster)
    {
        if (m_spellInfo->AttributesEx & SPELL_ATTR_EX_REFUND_POWER)
        {
            // Restauration d'energie sur miss/dodge des sorts rapportant un CP.
            // Source : http://roguecrap.blogspot.co.uk/2006/03/energy-regeneration-oddities.html, + verifiable en video
            // Source for Parry: https://youtu.be/aDXXr3ad3is?t=3m07s
            if ((missInfo == SPELL_MISS_MISS || missInfo == SPELL_MISS_DODGE || missInfo == SPELL_MISS_PARRY) && m_spellInfo->powerType == POWER_ENERGY)
            {
                int32 regen = lroundf(m_powerCost * 0.82f);
                pRealUnitCaster->ModifyPower(POWER_ENERGY, regen);
            }
            // Warriors and Druids are refunded 80% of the rage cost on dodge/parry
            // http://blue.mmo-champion.com/topic/69365-18-02-05-kalgans-response-to-warriors/
            // https://youtu.be/YzPlictRoK8?t=1m45s
            else if ((missInfo == SPELL_MISS_PARRY || missInfo == SPELL_MISS_DODGE || missInfo == SPELL_MISS_MISS) && m_spellInfo->powerType == POWER_RAGE)
            {
                int32 regen = lroundf(m_powerCost * 0.82f);
                pRealUnitCaster->ModifyPower(POWER_RAGE, regen);
            }
        }
    }

    // All calculated do it!
    // Do healing and triggers
    if (m_healing)
    {
        bool crit = pRealCaster && pRealCaster->IsSpellCrit(unitTarget, m_spellInfo, m_spellSchoolMask, BASE_ATTACK, this);
        uint32 addhealth = m_healing;
        if (crit)
        {
            procEx |= PROC_EX_CRITICAL_HIT;
            addhealth = pCaster->SpellCriticalHealingBonus(m_spellInfo, addhealth, nullptr);
        }
        else
            procEx |= PROC_EX_NORMAL_HIT;

        // Do triggers for unit (reflect triggers passed on hit phase for correct drop charge)
        if (m_canTrigger)
        {
            // Some spell expected send main spell info to triggered system
            SpellEntry const* spellInfo = m_spellInfo;
            switch (m_spellInfo->Id)
            {
                //case 19968:                                 // Holy Light triggered heal
                case 19993:                                 // Flash of Light triggered heal
                {
                    // stored in unused spell effect basepoints in main spell code
                    uint32 spellid = m_currentBasePoints[EFFECT_INDEX_1];
                    spellInfo = sSpellMgr.GetSpellEntry(spellid);
                    procAttacker |= (PROC_FLAG_SUCCESSFUL_SPELL_CAST | PROC_FLAG_SUCCESSFUL_MANA_SPELL_CAST);
                }
            }

            pCaster->ProcDamageAndSpell(unitTarget, pRealCaster ? procAttacker : PROC_FLAG_NONE, procVictim, procEx, addhealth, m_attackType, spellInfo, this);
        }

        int32 gain = pCaster->DealHeal(unitTarget, addhealth, m_spellInfo, crit);

        float classThreatModifier = pUnitCaster && pUnitCaster->GetClass() == CLASS_PALADIN ? 0.25f : 0.5f;

        if (pRealUnitCaster)
            unitTarget->GetHostileRefManager().threatAssist(pRealUnitCaster, float(gain) * classThreatModifier * sSpellMgr.GetSpellThreatMultiplier(m_spellInfo), m_spellInfo);
    }
    // Do damage and triggers
    else if (m_damage && unitTarget->IsAlive())
    {
        // Fill base damage struct (unitTarget - is real spell target)
        SpellNonMeleeDamage damageInfo(pCaster, unitTarget, m_spellInfo->Id, GetFirstSchoolInMask(m_spellSchoolMask));
        damageInfo.spell = this;

        // World of Warcraft Client Patch 1.11.0 (2006-06-20)
        // - Fear: The calculations to determine if Fear effects should break due 
        //   to receiving damage have been changed.The old calculation used the
        //   base damage of the ability.The new calculation uses the final amount
        //   of damage dealt, after all modifiers.
        if (m_delayed)
        {
            damageInfo.damage = m_damage;
            damageInfo.HitInfo = target->HitInfo;
        }
        // Add bonuses and fill damageInfo struct
        else
        {
            // We need index of damage dealing effect for CalculateSpellDamage to use right bonus coefficient
            SpellEffectIndex damageEffectIndex = EFFECT_INDEX_0;

            for (uint8 effectNumber = 0; effectNumber < MAX_EFFECT_INDEX; ++effectNumber)
            {
                if ((mask & (1 << effectNumber)) &&
                    IsDirectDamageWithBonusEffect(m_spellInfo->Effect[effectNumber]))
                {
                    damageEffectIndex = SpellEffectIndex(effectNumber);
                    break;
                }
            }

            pCaster->CalculateSpellDamage(&damageInfo, m_damage, m_spellInfo, damageEffectIndex, m_attackType, this);
        }

        unitTarget->CalculateAbsorbResistBlock(pCaster, &damageInfo, m_spellInfo, BASE_ATTACK, this);
        m_absorbed = damageInfo.absorb;

        pCaster->DealDamageMods(damageInfo.target, damageInfo.damage, &damageInfo.absorb);
        
        // terribly ugly hack for Gluth Decimate to not be affected by any damage modifiers.
        // SPELL_ATTR_EX3_UNK29 is probably meant to make the spell ignore any damage modifiers,
        // but until implemented, this is the best we can do.
        if (m_spellInfo->Id == 28375)
        {
            damageInfo.damage = m_damage;
        }

        // Send log damage message to client
        pCaster->SendSpellNonMeleeDamageLog(&damageInfo);

        procEx = createProcExtendMask(&damageInfo, missInfo);
        procVictim |= PROC_FLAG_TAKEN_ANY_DAMAGE;

        // (HACK) trigger Vengeance on weapon crits for Paladins
        // item procs should probably trigger for all classes, e.g. Judgement of Wisdom, but many issues to test for first. Paladin exclusive for now.
        if (m_CastItem && m_casterUnit && m_casterUnit->GetClass() == CLASS_PALADIN && (procEx & PROC_EX_CRITICAL_HIT) && !(m_spellInfo->AttributesEx3 & SPELL_ATTR_EX3_CANT_TRIGGER_PROC))
            m_canTrigger = true;
        // JoR and JoC: Paladin melee spells trigger melee procs instead of magic
        if ((m_spellInfo->IsFitToFamilyMask<CF_PALADIN_JUDGEMENT_OF_RIGHTEOUSNESS>() && m_spellInfo->SpellIconID == 25) || 
            (m_spellInfo->SpellFamilyName == SPELLFAMILY_PALADIN && m_spellInfo->SpellIconID == 561 && m_spellInfo->SpellVisual == 0))
        {
            procAttacker = PROC_FLAG_SUCCESSFUL_MELEE_SPELL_HIT;
            procVictim = PROC_FLAG_TAKEN_MELEE_SPELL_HIT | PROC_FLAG_TAKEN_ANY_DAMAGE;
        }
        // Do triggers for unit (reflect triggers passed on hit phase for correct drop charge)
        if (m_canTrigger)
            pCaster->ProcDamageAndSpell(unitTarget, pRealCaster ? procAttacker : PROC_FLAG_NONE, procVictim, procEx, damageInfo.damage, m_attackType, m_spellInfo, this);
        
        if (m_caster->IsPlayer())
        {
            // trigger weapon enchants for weapon based spells; exclude spells that stop attack, because may break CC
            if (m_spellInfo->EquippedItemClass == ITEM_CLASS_WEAPON && !(m_spellInfo->Attributes & SPELL_ATTR_STOP_ATTACK_TARGET))
                ((Player*)m_caster)->CastItemCombatSpell(unitTarget, m_attackType);

            // trigger mainhand weapon procs for shield attacks (Shield Bash, Shield Slam) NOTE: vanilla only mechanic, patched out in 2.0.1
            else if (m_spellInfo->EquippedItemClass == ITEM_CLASS_ARMOR && m_spellInfo->EquippedItemSubClassMask & (1 << ITEM_SUBCLASS_ARMOR_SHIELD)
                && (m_spellInfo->SpellIconID == 280 || m_spellInfo->SpellIconID == 413))
                ((Player*)m_caster)->CastItemCombatSpell(unitTarget, BASE_ATTACK);

            // Bloodthirt triggers main hand despite not requiring weapon
            // Execute damage component triggers main hand
            else if ((m_spellInfo->SpellIconID == 38 && m_spellInfo->SpellVisual == 372) || //bloodthirst
                    m_spellInfo->Id == 20647) //execute (damage dealing component does not require weapon)
            {
                 ((Player*)m_caster)->CastItemCombatSpell(unitTarget, BASE_ATTACK);
            }

            // special Paladin cases - trigger weapon procs despite not having EquippedItemClass
            else if (m_spellInfo->SpellFamilyName == SPELLFAMILY_PALADIN)
            {
                // Seal of Command
                if (m_spellInfo->Id == 20424)
                    ((Player*)m_caster)->CastItemCombatSpell(unitTarget, BASE_ATTACK);
                // Judgement of Command
                else if (m_spellInfo->SpellIconID == 561)
                    ((Player*)m_caster)->CastItemCombatSpell(unitTarget, BASE_ATTACK);
                // Judgement of Righteousness
                else if (m_spellInfo->IsFitToFamilyMask<CF_PALADIN_JUDGEMENT_OF_RIGHTEOUSNESS>() && m_spellInfo->SpellIconID == 25)
                    ((Player*)m_caster)->CastItemCombatSpell(unitTarget, BASE_ATTACK);
            }
        }

        pCaster->DealSpellDamage(&damageInfo, true);

        // Courroux Naturel a 20% de chance de faire proc WF.
        if (m_spellInfo->Id == 17364 && pCaster->IsPlayer())
        {
            Player* pPlayer = pCaster->ToPlayer();
            Item *item = pPlayer->GetWeaponForAttack(BASE_ATTACK, true, true);
            if (item)
            {
                uint32 enchant_id = item->GetEnchantmentId(TEMP_ENCHANTMENT_SLOT);
                SpellItemEnchantmentEntry const *pEnchant = sSpellItemEnchantmentStore.LookupEntry(enchant_id);
                if (pEnchant && roll_chance_f(20.0f))
                    if (SpellEntry const *spellInfo = sSpellMgr.GetSpellEntry(pEnchant->spellid[0]))
                        if (spellInfo->IsFitToFamily<SPELLFAMILY_SHAMAN, CF_SHAMAN_WINDFURY_WEAPON>())
                            pPlayer->CastSpell(unitTarget, pEnchant->spellid[0], true, item);
            }
        }
    }
    else if (m_canTrigger && (procAttacker || procVictim))
    {
        // TODO: Allow all procs, and explicitly deny some rather than denying all and
        // explicitly allowing some
        bool foundDamageOrHealAura = false;
        // m_spellAuraHolder is nullptr for non-stacking periodic effects that are already
        // on the target - they simply refresh. However, they should still proc on
        // cast!
        if (m_spellInfo->IsSpellAppliesAura(target->effectMask))
        {
            for (int i = 0; i < MAX_EFFECT_INDEX && !foundDamageOrHealAura; ++i)
            {
                switch (m_spellInfo->EffectApplyAuraName[i])
                {
                    case SPELL_AURA_PERIODIC_DAMAGE:
                    case SPELL_AURA_PERIODIC_DAMAGE_PERCENT:
                    case SPELL_AURA_PERIODIC_LEECH:
                    case SPELL_AURA_PERIODIC_HEALTH_FUNNEL:
                    case SPELL_AURA_PERIODIC_HEAL:
                    case SPELL_AURA_OBS_MOD_HEALTH:
                    case SPELL_AURA_POWER_BURN_MANA:
                    case SPELL_AURA_SCHOOL_ABSORB:
                        foundDamageOrHealAura = true;
                        break;
                }
            }
        }
        // Sunder Armor triggers weapon proc as well as normal procs despite dealing no damage
        if (m_caster->IsPlayer() && m_spellInfo->IsFitToFamily<SPELLFAMILY_WARRIOR, CF_WARRIOR_SUNDER_ARMOR>() && missInfo == SPELL_MISS_NONE)
            ((Player*)m_caster)->CastItemCombatSpell(unitTarget, BASE_ATTACK);

        // Fill base damage struct (unitTarget - is real spell target)
        SpellNonMeleeDamage damageInfo(pCaster, unitTarget, m_spellInfo->Id, GetFirstSchoolInMask(m_spellSchoolMask));
        procEx = createProcExtendMask(&damageInfo, missInfo);
        // Do triggers for unit (reflect triggers passed on hit phase for correct drop charge)
        uint32 dmg = 0;
        // Sometime we need to manually set dmg != 0 (arcane projectile triggers a spell that deals damage)
        // Cant check SpellFamilyFlags & 0x40800 because some spells have strange SpellFamilyFlags=0x7FFFFFFF (sheep, ...)
        if (m_spellInfo->SpellFamilyName == SPELLFAMILY_MAGE && m_spellInfo->SpellFamilyFlags == 0x40800)
            dmg = 1;

        // Proc periodic casts now, so initial cast procs are triggered
        if (foundDamageOrHealAura)
            dmg = 1;

        // Proc for dispels (or "cures")
        if (m_spellInfo->IsDispel())
        {
            dmg = 1;
            // Override proc flags for offensive dispel
            if (pCaster->IsHostileTo(unitTarget))
            {
                procAttacker &= ~(PROC_FLAG_SUCCESSFUL_NONE_POSITIVE_SPELL | PROC_FLAG_SUCCESSFUL_CURE_SPELL_CAST);
                procAttacker |= PROC_FLAG_SUCCESSFUL_NEGATIVE_SPELL_HIT;

                procVictim &= ~PROC_FLAG_TAKEN_NONE_POSITIVE_SPELL;
                procVictim |= PROC_FLAG_TAKEN_NEGATIVE_SPELL_HIT;
            }
        }

        pCaster->ProcDamageAndSpell(unitTarget, pRealCaster ? procAttacker : PROC_FLAG_NONE, procVictim, procEx, dmg, m_attackType, m_spellInfo, this);
    }

    if (missInfo != SPELL_MISS_NONE)
        return;

    // Call scripted function for AI if this spell is casted upon a creature
    if (unit->IsCreature())
    {
        // cast at creature (or GO) quest objectives update at successful cast finished (+channel finished)
        // ignore pets or autorepeat/melee casts for speed (not exist quest for spells (hm... )
        if (pRealUnitCaster && !((Creature*)unit)->IsPet() && !IsAutoRepeat() && !IsNextMeleeSwingSpell() && !IsChannelActive())
            if (Player* p = pRealUnitCaster->GetCharmerOrOwnerPlayerOrPlayerItself())
                p->RewardPlayerAndGroupAtCast(unit, m_spellInfo->Id);

        if (m_casterUnit)
        {
            if (((Creature*)unit)->AI())
                ((Creature*)unit)->AI()->SpellHit(m_casterUnit, m_spellInfo);

            if (ZoneScript* pZoneScript = unit->GetZoneScript())
                pZoneScript->OnCreatureSpellHit(m_casterUnit, unit->ToCreature(), m_spellInfo);
        }
    }

    // Tell any pets to stop attacking the target on application of breakable crowd control spells
    if ((m_spellInfo->AuraInterruptFlags & AURA_INTERRUPT_FLAG_DAMAGE) && m_casterUnit && unit->HasAuraPetShouldAvoidBreaking(m_casterUnit))
    {
        // Tell any pets to stop attacking the target on application of breakable crowd control spells
        Unit::AttackerSet attackers = unit->GetAttackers();
        for (const auto attacker : attackers)
        {
            if (attacker->IsPet())
                attacker->AttackStop();
        }
    }

    // Call scripted function for AI if this spell is casted by a creature
    if (m_caster->IsCreature() && ((Creature*)m_caster)->AI())
        ((Creature*)m_caster)->AI()->SpellHitTarget(unit, m_spellInfo);
}

void Spell::DoSpellHitOnUnit(Unit *unit, uint32 effectMask)
{
    if (!unit)
        return;

    WorldObject* pRealCaster = GetAffectiveCasterObject();
    Unit* pRealUnitCaster = GetAffectiveCaster();

    if (!effectMask)
    {
        if (pRealUnitCaster && !unit->IsInCombat())
            unit->AttackedBy(pRealUnitCaster);

        return;
    }

    // Check mechanic resistance for each effect
    for (int eff = 0; eff < MAX_EFFECT_INDEX; ++eff)
        if (unit->IsEffectResist(m_spellInfo, eff))
        {
            if ((pRealUnitCaster && pRealUnitCaster->IsPlayer() && pRealUnitCaster->ToPlayer()->HasOption(PLAYER_CHEAT_UNRANDOMIZE)) ||
                (unit->IsPlayer() && unit->ToPlayer()->HasOption(PLAYER_CHEAT_UNRANDOMIZE)))
                break;
            effectMask &= ~(1 << eff);
            if (!effectMask)
                return;
        }

    // Recheck immune (only for delayed spells)
    if (m_caster != unit && m_spellInfo->speed && (unit->IsImmuneToDamage(m_spellInfo->GetSpellSchoolMask(), m_spellInfo) || unit->IsImmuneToSpell(m_spellInfo, unit == pRealUnitCaster)))
    {
        if (pRealCaster)
            pRealCaster->SendSpellMiss(unit, m_spellInfo->Id, SPELL_MISS_IMMUNE);

        ResetEffectDamageAndHeal();
        return;
    }

    if (pRealCaster && pRealCaster != unit)
    {
        // Recheck  UNIT_FLAG_NON_ATTACKABLE for delayed spells
        if (unit->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE) &&
                unit->GetCharmerOrOwnerGuid() != m_caster->GetObjectGuid())
        {
            pRealCaster->SendSpellMiss(unit, m_spellInfo->Id, SPELL_MISS_EVADE);
            ResetEffectDamageAndHeal();
            return;
        }

        if (!pRealCaster->IsFriendlyTo(unit))
        {
            if (m_damage) // Example: stealth.
                unit->RemoveAurasWithInterruptFlags(AURA_INTERRUPT_FLAG_HITBYSPELL);

            // not break stealth by cast targeting
            if (!(m_spellInfo->AttributesEx & SPELL_ATTR_EX_NOT_BREAK_STEALTH))
            {
                unit->RemoveSpellsCausingAura(SPELL_AURA_MOD_STEALTH);
                unit->RemoveNonPassiveSpellsCausingAura(SPELL_AURA_MOD_INVISIBILITY);
            }

            // for delayed spells ignore not visible explicit target
            if (m_delayed && unit == m_targets.getUnitTarget() &&
                    !unit->IsVisibleForOrDetect(m_caster, m_caster, false))
            {
                pRealCaster->SendSpellMiss(unit, m_spellInfo->Id, SPELL_MISS_EVADE);
                ResetEffectDamageAndHeal();
                return;
            }

            // can cause back attack (if detected), stealth removed at Spell::cast if spell break it
            if ((!m_spellInfo->IsPositiveSpell() || m_spellInfo->HasEffect(SPELL_EFFECT_DISPEL)) &&
                    !m_spellInfo->IsFitToFamily<SPELLFAMILY_ROGUE, CF_ROGUE_SAP>() && // Sap handled somewhere else. Without this, sap will remove stealth if the rogue is visible.
                    (m_spellInfo->Id == 6358 || // Exception to fix succubus seduction.
                     m_caster->IsVisibleForOrDetect(unit, unit, false)))
            {
                if (!m_spellInfo->HasAttribute(SPELL_ATTR_EX3_NO_INITIAL_AGGRO) && !IsTriggeredByAura())
                {
                    // use speedup check to avoid re-remove after above lines
                    if (m_spellInfo->AttributesEx & SPELL_ATTR_EX_NOT_BREAK_STEALTH)
                    {
                        unit->RemoveSpellsCausingAura(SPELL_AURA_MOD_STEALTH);
                        unit->RemoveNonPassiveSpellsCausingAura(SPELL_AURA_MOD_INVISIBILITY);
                    }

                    // caster can be detected but have stealth aura
                    if (m_casterUnit)
                    {
                        m_casterUnit->RemoveSpellsCausingAura(SPELL_AURA_MOD_STEALTH);
                        m_casterUnit->RemoveNonPassiveSpellsCausingAura(SPELL_AURA_MOD_INVISIBILITY);
                    }

                    if (pRealUnitCaster)
                    {
                        if (!m_spellInfo->HasAura(SPELL_AURA_MOD_POSSESS))
                        {
                            if (!unit->IsInCombat())
                                unit->AttackedBy(pRealUnitCaster);

                            unit->AddThreat(pRealUnitCaster);
                            unit->SetInCombatWithAggressor(pRealUnitCaster);
                        }

                        pRealUnitCaster->SetInCombatWithVictim(unit);
                    }
                }
                else if (m_spellInfo->HasAttribute(SPELL_ATTR_EX3_OUT_OF_COMBAT_ATTACK) && pRealUnitCaster)
                {
                    unit->SetOutOfCombatWithAggressor(pRealUnitCaster);
                    pRealUnitCaster->SetOutOfCombatWithVictim(unit);
                }
            }
            else if (pRealUnitCaster)
            {
                // make sure caster is flagged in pvp case
                pRealUnitCaster->SetOutOfCombatWithVictim(unit);
            }
        }
        else
        {
            // for delayed spells ignore negative spells (after m_duel end) for friendly targets
            if (m_delayed && !m_spellInfo->IsPositiveSpell() && m_casterUnit->GetMountID() != GNOMECAR_DISPLAYID && m_casterUnit->GetMountID() != GOBLINCAR_DISPLAYID) // here!
            {
                pRealCaster->SendSpellMiss(unit, m_spellInfo->Id, SPELL_MISS_EVADE);
                ResetEffectDamageAndHeal();
                return;
            }

            // World of Warcraft Client Patch (2004-11-07)
            // - Healing and buffing NPCs will not flag you for PvP unless those 
            //   NPCs are in combat.
            if (pRealUnitCaster)
            {
                if (unit->IsInCombat())
                {
                    if (!(m_spellInfo->AttributesEx3 & SPELL_ATTR_EX3_NO_INITIAL_AGGRO))
                    {
                        pRealUnitCaster->SetInCombatWithAssisted(unit);
                        unit->GetHostileRefManager().threatAssist(pRealUnitCaster, 0.0f, m_spellInfo);
                    }
                }
                else if (unit->IsPvP() && unit->IsPlayer())
                {
                    if (Player* pPlayer = pRealUnitCaster->GetCharmerOrOwnerPlayerOrPlayerItself())
                        pPlayer->UpdatePvP(true);
                }
            }
        }
    }

    // Get Data Needed for Diminishing Returns, some effects may have multiple auras, so this must be done on spell hit, not aura add
    m_diminishGroup = m_spellInfo->GetDiminishingReturnsGroup(m_triggeredByAuraSpell);
    m_diminishLevel = unit->GetDiminishing(m_diminishGroup);

    if (pRealUnitCaster)
        DEBUG_UNIT(pRealUnitCaster, DEBUG_DR, "[%u] Groupe DR : %u. Niveau : %u.", m_spellInfo->Id, m_diminishGroup, m_diminishLevel);

    // Increase Diminishing on unit, current informations for actually casts will use values above
    if ((GetDiminishingReturnsGroupType(m_diminishGroup) == DRTYPE_PLAYER && unit->IsPlayer()) ||
            GetDiminishingReturnsGroupType(m_diminishGroup) == DRTYPE_ALL)
        unit->IncrDiminishing(m_diminishGroup);

    // Apply additional spell effects to target
    CastPreCastSpells(unit);

    if (m_spellInfo->IsSpellAppliesAura(effectMask))
    {
        m_spellAuraHolder = CreateSpellAuraHolder(m_spellInfo, unit, pRealUnitCaster ? pRealUnitCaster : unit, m_caster, m_CastItem);
        m_spellAuraHolder->SetTriggered(IsTriggered());
        m_spellAuraHolder->setDiminishGroup(m_diminishGroup);
        m_spellAuraHolder->setDiminishLevel(m_diminishLevel);
    }
    else
        m_spellAuraHolder = nullptr;

    for (int effectNumber = 0; effectNumber < MAX_EFFECT_INDEX; ++effectNumber)
    {
        if (effectMask & (1 << effectNumber))
        {
            HandleEffects(unit, nullptr, nullptr, SpellEffectIndex(effectNumber), m_damageMultipliers[effectNumber]);
            if (m_applyMultiplierMask & (1 << effectNumber))
            {
                // Get multiplier
                float multiplier = m_spellInfo->DmgMultiplier[effectNumber];
                // Apply multiplier mods
               if (pRealUnitCaster)
                    if (Player* modOwner = pRealUnitCaster->GetSpellModOwner())
                        modOwner->ApplySpellMod(m_spellInfo->Id, SPELLMOD_EFFECT_PAST_FIRST, multiplier, this);

                m_damageMultipliers[effectNumber] *= multiplier;
            }
        }
    }

    // now apply all created auras
    if (m_spellAuraHolder)
    {
        // normally shouldn't happen
        if (!m_spellAuraHolder->IsEmptyHolder())
        {
            int32 duration = m_spellAuraHolder->GetAuraMaxDuration();
            int32 originalDuration = duration;

            if (duration > 0)
            {
                unit->ApplyDiminishingToDuration(m_diminishGroup, duration, m_caster, m_diminishLevel, isReflected);

                // Fully diminished
                if (duration == 0)
                {
                    delete m_spellAuraHolder;
                    m_spellAuraHolder = nullptr;

                    // Need to interrupt pet channeling spells or else they get stuck
                    if (m_caster && m_caster->IsControlledByPlayer() && m_spellInfo->IsChanneledSpell())
                    {
                        Spell *channeled = m_caster->GetCurrentSpell(CURRENT_CHANNELED_SPELL);
                        if (channeled && channeled->m_spellInfo->Id == m_spellInfo->Id && channeled->m_targets.getUnitTarget() == unit)
                            m_caster->InterruptSpell(CURRENT_CHANNELED_SPELL);
                    }
                    return;
                }
            }

            if (duration != originalDuration)
            {
                m_spellAuraHolder->SetAuraMaxDuration(duration);
                m_spellAuraHolder->SetAuraDuration(duration);
            }

            if (!unit->AddSpellAuraHolder(m_spellAuraHolder))
                m_spellAuraHolder = nullptr;
        }
        else
        {
            delete m_spellAuraHolder;
            m_spellAuraHolder = nullptr;
        }
    }
}

void Spell::DoAllEffectOnTarget(GOTargetInfo *target)
{
    if (target->processed)                                  // Check target
        return;
    target->processed = true;                               // Target checked in apply effects procedure

    uint32 effectMask = target->effectMask;
    if (!effectMask)
        return;

    GameObject* go = m_caster->GetMap()->GetGameObject(target->targetGUID);
    if (!go)
        return;

    for (int effectNumber = 0; effectNumber < MAX_EFFECT_INDEX; ++effectNumber)
        if (effectMask & (1 << effectNumber))
            HandleEffects(nullptr, nullptr, go, SpellEffectIndex(effectNumber));

    // cast at creature (or GO) quest objectives update at successful cast finished (+channel finished)
    // ignore autorepeat/melee casts for speed (not exist quest for spells (hm... )
    if (!IsAutoRepeat() && !IsNextMeleeSwingSpell() && !IsChannelActive() && m_casterUnit)
    {
        if (Player* p = m_casterUnit->GetCharmerOrOwnerPlayerOrPlayerItself())
            p->RewardPlayerAndGroupAtCast(go, m_spellInfo->Id);
    }
}

void Spell::DoAllEffectOnTarget(ItemTargetInfo *target)
{
    uint32 effectMask = target->effectMask;
    if (!target->item || !effectMask)
        return;

    for (int effectNumber = 0; effectNumber < MAX_EFFECT_INDEX; ++effectNumber)
        if (effectMask & (1 << effectNumber))
            HandleEffects(nullptr, target->item, nullptr, SpellEffectIndex(effectNumber));
}

void Spell::HandleDelayedSpellLaunch(TargetInfo *target)
{
    // Get mask of effects for target
    uint32 mask = target->effectMask;

    Unit* unit = m_caster->GetObjectGuid() == target->targetGUID ? m_casterUnit : ObjectAccessor::GetUnit(*m_caster, target->targetGUID);
    if (!unit)
        return;

    // Get original caster (if exist) and calculate damage/healing from him data
    WorldObject *pRealCaster = GetAffectiveCasterObject();
    WorldObject *pCaster = pRealCaster ? pRealCaster : m_caster;

    SpellMissInfo missInfo = target->missCondition;
    // Need init unitTarget by default unit (can changed in code on reflect)
    // Or on missInfo!=SPELL_MISS_NONE unitTarget undefined (but need in trigger subsystem)
    unitTarget = unit;

    // Reset damage/healing counter
    ResetEffectDamageAndHeal();

    // Fill base damage struct (unitTarget - is real spell target)
    SpellNonMeleeDamage damageInfo(pCaster, unitTarget, m_spellInfo->Id, GetFirstSchoolInMask(m_spellSchoolMask));

    if (unit && !pCaster->IsFriendlyTo(unit))
        unit->RemoveAurasWithInterruptFlags(AURA_INTERRUPT_FLAG_HITBYSPELL);

    if (missInfo == SPELL_MISS_NONE || (missInfo == SPELL_MISS_REFLECT && target->reflectResult == SPELL_MISS_NONE))
    {
        // we need index of damage dealing effect for CalculateSpellDamage to use right bonus coefficient
        SpellEffectIndex damageEffectIndex = EFFECT_INDEX_0;

        for (uint8 effectNumber = 0; effectNumber < MAX_EFFECT_INDEX; ++effectNumber)
        {
            if (mask & (1 << effectNumber))
            {
                if (IsDirectDamageWithBonusEffect(m_spellInfo->Effect[effectNumber]))
                    damageEffectIndex = SpellEffectIndex(effectNumber);

                if (m_spellInfo->IsEffectHandledOnDelayedSpellLaunch(SpellEffectIndex(effectNumber)))
                {
                    HandleEffects(unit, nullptr, nullptr, SpellEffectIndex(effectNumber), m_damageMultipliers[effectNumber]);
                    if (m_applyMultiplierMask & (1 << effectNumber))
                    {
                        // Get multiplier
                        float multiplier = m_spellInfo->DmgMultiplier[effectNumber];
                        // Apply multiplier mods
                        if (Unit* pRealUnitCaster = ToUnit(pRealCaster))
                            if (Player* modOwner = pRealUnitCaster->GetSpellModOwner())
                                modOwner->ApplySpellMod(m_spellInfo->Id, SPELLMOD_EFFECT_PAST_FIRST, multiplier, this);
                        m_damageMultipliers[effectNumber] *= multiplier;
                    }
                }
            }
        }

        if (m_damage > 0)
            pCaster->CalculateSpellDamage(&damageInfo, m_damage, m_spellInfo, damageEffectIndex, m_attackType, this);
    }

    target->damage = damageInfo.damage;
    target->HitInfo = damageInfo.HitInfo;
}

void Spell::InitializeDamageMultipliers()
{
    for (int32 i = 0; i < MAX_EFFECT_INDEX; ++i)
    {
        if (m_spellInfo->Effect[i] == 0)
            continue;

        uint32 EffectChainTarget = m_spellInfo->EffectChainTarget[i];
        if (Unit* realCaster = GetAffectiveCaster())
            if (Player* modOwner = realCaster->GetSpellModOwner())
                modOwner->ApplySpellMod(m_spellInfo->Id, SPELLMOD_JUMP_TARGETS, EffectChainTarget, this);

        m_damageMultipliers[i] = 1.0f;
        if ((m_spellInfo->EffectImplicitTargetA[i] == TARGET_UNIT_ENEMY || m_spellInfo->EffectImplicitTargetA[i] == TARGET_UNIT_FRIEND_CHAIN_HEAL) &&
                (EffectChainTarget > 1))
            m_applyMultiplierMask |= (1 << i);
    }
}

// <Daemon>: Changing the operation of this function
// Indicates whether the cast should stop or not
// For this, we look if there are any targets.

bool Spell::HasValidUnitPresentInTargetList()
{
    uint8 foundMask = 0;
    uint8 needTargetsMask = 0;
    for (int32 i = 0; i < MAX_EFFECT_INDEX; ++i)
        if (m_spellInfo->Effect[i] == SPELL_EFFECT_APPLY_AURA && m_spellInfo->EffectApplyAuraName[i])
            if (m_spellInfo->EffectImplicitTargetA[i] != TARGET_UNIT_CASTER)
                needTargetsMask |= 1 << i;

    // This channel does not need a target: it launches on the caster
    // It does not stop unless it dies of course.
    if (!needTargetsMask)
    {
        if (!m_casterUnit)
            return false;

        return m_spellInfo->CanTargetAliveState(m_casterUnit->IsAlive());
    }

    for (const auto& ihit : m_UniqueTargetInfo)
    {
        if (ihit.deleted)
            continue;
        if (ihit.missCondition != SPELL_MISS_NONE)
            continue;

        Unit* unit = m_caster->GetObjectGuid() == ihit.targetGUID ? m_casterUnit : ObjectAccessor::GetUnit(*m_caster, ihit.targetGUID);

        if (unit && m_spellInfo->CanTargetAliveState(unit->IsAlive()))
            foundMask |= ihit.effectMask;
    }

    return (foundMask & needTargetsMask);
}

// Helper for Chain Healing
// Spell target first
// Raidmates then descending by injury suffered (MaxHealth - Health)
// Other players/mobs then descending by injury suffered (MaxHealth - Health)
struct ChainHealingOrder
{
    const Unit* MainTarget;
    ChainHealingOrder(Unit const* Target) : MainTarget(Target) {};
    // functor for operator ">"
    bool operator()(Unit const* _Left, Unit const* _Right) const
    {
        return (ChainHealingHash(_Left) < ChainHealingHash(_Right));
    }
    int32 ChainHealingHash(Unit const* Target) const
    {
        if (Target == MainTarget)
            return 0;
        else if (Target->IsPlayer() && MainTarget->IsPlayer() && ((Player const*)Target)->IsInSameRaidWith((Player const*)MainTarget))
        {
            if (Target->GetHealth() == Target->GetMaxHealth())
                return 40000;
            else
                return 20000 - Target->GetMaxHealth() + Target->GetHealth();
        }
        else
            return 40000 - Target->GetMaxHealth() + Target->GetHealth();
    }
};

class ChainHealingFullHealth
{
public:
    const Unit* MainTarget;
    ChainHealingFullHealth(const Unit* Target) : MainTarget(Target) {};

    bool operator()(const Unit* Target) const
    {
        return (Target != MainTarget && Target->GetHealth() == Target->GetMaxHealth());
    }
};

// Helper for targets nearest to the spell target
// The spell target is always first unless there is a target at _completely_ the same position (unbelievable case)
struct TargetDistanceOrderNear
{
    const WorldObject* MainTarget;
    TargetDistanceOrderNear(const WorldObject* Target) : MainTarget(Target) {};
    // functor for operator ">"
    bool operator()(const WorldObject* _Left, const WorldObject* _Right) const
    {
        return MainTarget->GetDistanceOrder(_Left, _Right);
    }
};

void Spell::SetTargetMap(SpellEffectIndex effIndex, uint32 targetMode, UnitList& targetUnitMap)
{
    float radius;
    if (m_spellInfo->EffectRadiusIndex[effIndex])
        radius = GetSpellRadius(sSpellRadiusStore.LookupEntry(m_spellInfo->EffectRadiusIndex[effIndex]));
    else
        radius = GetSpellMaxRange(sSpellRangeStore.LookupEntry(m_spellInfo->rangeIndex));

    uint32 EffectChainTarget = m_spellInfo->EffectChainTarget[effIndex];

    if (Unit* realCaster = GetAffectiveCaster())
    {
        if (Player* modOwner = realCaster->GetSpellModOwner())
        {
            modOwner->ApplySpellMod(m_spellInfo->Id, SPELLMOD_RADIUS, radius, this);
            modOwner->ApplySpellMod(m_spellInfo->Id, SPELLMOD_JUMP_TARGETS, EffectChainTarget, this);
        }
    }

    // Add spell leeway to caster centered AoE when moving or jumping
    switch (targetMode)
    {
        case TARGET_ENUM_UNITS_ENEMY_AOE_AT_SRC_LOC:
        case TARGET_ENUM_UNITS_PARTY_WITHIN_CASTER_RANGE:
        case TARGET_ENUM_UNITS_ENEMY_IN_CONE_24:
            radius +=  GetAffectiveCaster() ? GetAffectiveCaster()->GetLeewayBonusRadius() : 0.0f;
            break;
        default:
            break;
    }

    uint32 unMaxTargets = m_spellInfo->MaxAffectedTargets;

    // custom target amount cases
    switch (m_spellInfo->SpellFamilyName)
    {
        case SPELLFAMILY_GENERIC:
        {
            switch (m_spellInfo->Id)
            {
                case 802:                                   // Mutate Bug (AQ40, Emperor Vek'nilash)
                case 804:                                   // Explode Bug (AQ40, Emperor Vek'lor)
                case 23138:                                 // Gate of Shazzrah (MC, Shazzrah)
                case 24781:                                 // Dream Fog (Emerald Dragons)
                //case 28560:                                 // Summon Blizzard (Naxx, Sapphiron)
                    unMaxTargets = 1;
                    break;
                case 25676:                                 // Drain Mana
                case 25754:
                    unMaxTargets = 6;
                    break;
                case 26457:                                 // Drain Mana
                case 26559:
                    unMaxTargets = 12;
                    break;
                case 10258:                                 // Awaken Vault Warder (Uldaman)
                    unMaxTargets = 2;
                    break;
                case 28542:                                 // Life Drain (Naxx, Sapphiron)
                    unMaxTargets = urand(7, 10);
                    break;
                case 28796:                                 // Poison Bolt Volley (Naxx, Faerlina)
                    unMaxTargets = 10;
                    break;
            }
            break;
        }
        default:
            break;
    }

    // custom radius cases
    switch (m_spellInfo->SpellFamilyName)
    {
        case SPELLFAMILY_GENERIC:
        {
            switch (m_spellInfo->Id)
            {
                case 28241:                                 // Poison (Naxxramas, Grobbulus Cloud)
                {
                    // Spell states 30yd radius, which you would think is the max radius once its all grown,
                    // however, the visual of the spell goes no further than ~20yd, so lets stop it there.
                    // It will instantly get a 2(?) yd radius, and grow to 20 from there
                    if (m_casterUnit)
                    {
                        if (SpellAuraHolder* auraHolder = m_casterUnit->GetSpellAuraHolder(28158))
                        {
                            const int maxDur = auraHolder->GetAuraMaxDuration();
                            const int currTick = maxDur - auraHolder->GetAuraDuration();
                            radius = 18.0f / maxDur*currTick + 2;
                            //radius = 0.5f * (60000 - auraHolder->GetAuraDuration()) * 0.001f;
                        }
                    }
                    break;
                }
                case 29310:                                 // Mana Burn (Heigan, naxxramas)
                    // Without a bigger raidus its possible to tank heigan in one corner of the platform, and have ranged stay in the other corner
                    radius = 28.0f;
                    break;
                default:
                    break;
            }
            break;
        }
        default:
            break;
    }

    bool SelectClosestTargets = false;

    // custom selection cases
    switch (m_spellInfo->SpellFamilyName)
    {
        case SPELLFAMILY_GENERIC:
        {
            switch (m_spellInfo->Id)
            {
                case 26052:                                 // Poison Bolt Volley (AQ40, Princess Huhuran)
                case 29213:                                 // Curse of the Plaguebringer (Naxxramas, Noth the Plaguebringer)
                    SelectClosestTargets = true;
                    break;
            }
            break;
        }
        case SPELLFAMILY_HUNTER:
        {
            switch (m_spellInfo->Id)
            {
                case 26180:                                 // Wyvern Sting (AQ40, Princess Huhuran)
                    SelectClosestTargets = true;
                    break;
            }
            break;
        }
        default:
            break;
    }

    switch (targetMode)
    {
        case TARGET_UNIT_CASTER:
        {
            if (m_casterUnit)
                targetUnitMap.push_back(m_casterUnit);
            else if (m_casterGo)
                AddGOTarget(m_casterGo, effIndex);
            break;
        }
        case TARGET_UNIT_ENEMY_NEAR_CASTER:
        {
            m_targets.m_targetMask = 0;
            unMaxTargets = EffectChainTarget;
            float max_range = radius + unMaxTargets * CHAIN_SPELL_JUMP_RADIUS;

            UnitList tempTargetUnitMap;

            {
                MaNGOS::AnyAoETargetUnitInObjectRangeCheck u_check(m_caster, m_originalCaster, max_range);
                MaNGOS::UnitListSearcher<MaNGOS::AnyAoETargetUnitInObjectRangeCheck> searcher(tempTargetUnitMap, u_check);
                Cell::VisitAllObjects(m_caster, searcher, max_range);
            }

            if (tempTargetUnitMap.empty())
                break;

            tempTargetUnitMap.sort(TargetDistanceOrderNear(m_caster));

            //Now to get us a random target that's in the initial range of the spell
            uint32 t = 0;
            auto itr = tempTargetUnitMap.begin();
            while (itr != tempTargetUnitMap.end() && (*itr)->IsWithinDist(m_caster, radius))
                ++t, ++itr;

            if (!t)
                break;

            itr = tempTargetUnitMap.begin();
            std::advance(itr, rand() % t);
            Unit *pUnitTarget = *itr;
            targetUnitMap.push_back(pUnitTarget);

            tempTargetUnitMap.erase(itr);

            tempTargetUnitMap.sort(TargetDistanceOrderNear(pUnitTarget));

            t = unMaxTargets - 1;
            Unit *prev = pUnitTarget;
            auto next = tempTargetUnitMap.begin();

            while (t && next != tempTargetUnitMap.end())
            {
                if (!prev->IsWithinDist(*next, CHAIN_SPELL_JUMP_RADIUS))
                    break;

                if (!(m_spellInfo->AttributesEx2 & SPELL_ATTR_EX2_IGNORE_LOS) && !prev->IsWithinLOSInMap(*next))
                {
                    ++next;
                    continue;
                }

                prev = *next;
                targetUnitMap.push_back(prev);
                tempTargetUnitMap.erase(next);
                tempTargetUnitMap.sort(TargetDistanceOrderNear(prev));
                next = tempTargetUnitMap.begin();

                --t;
            }
            break;
        }
        case TARGET_UNIT_FRIEND_NEAR_CASTER:
        {
            m_targets.m_targetMask = 0;
            unMaxTargets = EffectChainTarget;
            float max_range = radius + unMaxTargets * CHAIN_SPELL_JUMP_RADIUS;
            UnitList tempTargetUnitMap;
            {
                MaNGOS::AnyFriendlyUnitInObjectRangeCheck u_check(m_caster, max_range);
                MaNGOS::UnitListSearcher<MaNGOS::AnyFriendlyUnitInObjectRangeCheck> searcher(tempTargetUnitMap, u_check);
                Cell::VisitAllObjects(m_caster, searcher, max_range);
            }

            if (tempTargetUnitMap.empty())
                break;

            tempTargetUnitMap.sort(TargetDistanceOrderNear(m_caster));

            //Now to get us a random target that's in the initial range of the spell
            uint32 t = 0;
            auto itr = tempTargetUnitMap.begin();
            while (itr != tempTargetUnitMap.end() && (*itr)->IsWithinDist(m_caster, radius))
                ++t, ++itr;

            if (!t)
                break;

            itr = tempTargetUnitMap.begin();
            std::advance(itr, rand() % t);
            Unit *pUnitTarget = *itr;
            targetUnitMap.push_back(pUnitTarget);

            tempTargetUnitMap.erase(itr);

            tempTargetUnitMap.sort(TargetDistanceOrderNear(pUnitTarget));

            t = unMaxTargets - 1;
            Unit *prev = pUnitTarget;
            auto next = tempTargetUnitMap.begin();

            while (t && next != tempTargetUnitMap.end())
            {
                if (!prev->IsWithinDist(*next, CHAIN_SPELL_JUMP_RADIUS))
                    break;

                if (!(m_spellInfo->AttributesEx2 & SPELL_ATTR_EX2_IGNORE_LOS) && !prev->IsWithinLOSInMap(*next))
                {
                    ++next;
                    continue;
                }
                prev = *next;
                targetUnitMap.push_back(prev);
                tempTargetUnitMap.erase(next);
                tempTargetUnitMap.sort(TargetDistanceOrderNear(prev));
                next = tempTargetUnitMap.begin();
                --t;
            }
            break;
        }
        case TARGET_UNIT_CASTER_PET:
        {
            Pet* tmpUnit = m_casterUnit ? m_casterUnit->GetPet() : nullptr;
            if (!tmpUnit)
                break;

            targetUnitMap.push_back(tmpUnit);
            break;
        }
        case TARGET_UNIT_ENEMY:
        {
            if (EffectChainTarget <= 1)
            {
                if (Unit* pUnitTarget = m_caster->SelectMagnetTarget(m_targets.getUnitTarget(), this, effIndex))
                {
                    m_targets.setUnitTarget(pUnitTarget);
                    targetUnitMap.push_back(pUnitTarget);
                }
            }
            else
            {
                Unit* pUnitTarget = m_targets.getUnitTarget();
                if (Unit* redirectTarget = m_caster->SelectMagnetTarget(m_targets.getUnitTarget(), this, effIndex))
                {
                    if (redirectTarget != pUnitTarget)
                    {
                        m_targets.setUnitTarget(redirectTarget);
                        targetUnitMap.push_back(redirectTarget);
                        break;
                    }
                }
                WorldObject* originalCaster = GetAffectiveCasterObject();
                if (!pUnitTarget || !originalCaster)
                    break;

                unMaxTargets = EffectChainTarget;

                float max_range;
                if (m_spellInfo->DmgClass == SPELL_DAMAGE_CLASS_MELEE)
                    max_range = radius;
                else
                    //FIXME: This very like horrible hack and wrong for most spells
                    max_range = radius + unMaxTargets * CHAIN_SPELL_JUMP_RADIUS;

                UnitList tempTargetUnitMap;

                // World of Warcraft Client Patch 1.11.0 (2006-06-20)
                // - Chain targeted spells and abilities (e.g. Multi-shot, Cleave, Chain 
                //   Lightning) will no longer land if target cannot be seen by the caster
                //   due to stealth or invisibility.
                MaNGOS::AnyAoEVisibleTargetUnitInObjectRangeCheck u_check(pUnitTarget, originalCaster, max_range);
                MaNGOS::UnitListSearcher<MaNGOS::AnyAoEVisibleTargetUnitInObjectRangeCheck> searcher(tempTargetUnitMap, u_check);

                Cell::VisitAllObjects(m_caster, searcher, max_range);

                tempTargetUnitMap.sort(TargetDistanceOrderNear(pUnitTarget));

                if (tempTargetUnitMap.empty())
                    break;

                if (*tempTargetUnitMap.begin() == pUnitTarget)
                    tempTargetUnitMap.erase(tempTargetUnitMap.begin());

                targetUnitMap.push_back(pUnitTarget);
                uint32 t = unMaxTargets - 1;
                Unit *prev = pUnitTarget;
                auto next = tempTargetUnitMap.begin();

                while (t && next != tempTargetUnitMap.end())
                {
                    if (!prev->IsWithinDist(*next, CHAIN_SPELL_JUMP_RADIUS))
                        break;

                    if (!(m_spellInfo->AttributesEx2 & SPELL_ATTR_EX2_IGNORE_LOS) && !prev->IsWithinLOSInMap(*next))
                    {
                        ++next;
                        continue;
                    }

                    if ((m_spellInfo->AttributesEx3 & SPELL_ATTR_EX3_TARGET_ONLY_PLAYER) && ((*next)->GetTypeId() != TYPEID_PLAYER))
                    {
                        ++next;
                        continue;
                    }

                    prev = *next;
                    targetUnitMap.push_back(prev);
                    tempTargetUnitMap.erase(next);
                    tempTargetUnitMap.sort(TargetDistanceOrderNear(prev));
                    next = tempTargetUnitMap.begin();

                    --t;
                }
            }
            break;
        }
        case TARGET_ENUM_UNITS_ENEMY_AOE_AT_SRC_LOC:
        {
            FillAreaTargets(targetUnitMap, radius, PUSH_SRC_CENTER, SPELL_TARGETS_AOE_DAMAGE);
            float minDist = -1;

            switch (m_spellInfo->Id)
            {
                // Shadow Storm
                case 14297:
                case 26546:
                case 26555:
                    minDist = 20.0f;
                    break;
            }

            if (minDist > 0)
            {
                for (UnitList::iterator itr = targetUnitMap.begin(), next; itr != targetUnitMap.end(); itr = next)
                {
                    next = itr;
                    ++next;
                    if (!*itr)
                        continue;
                    if ((*itr)->IsWithinDist(m_caster, minDist))
                        targetUnitMap.erase(itr);
                }
            }
            if (SelectClosestTargets && unMaxTargets && targetUnitMap.size() > unMaxTargets)
            {
                targetUnitMap.sort(TargetDistanceOrderNear(m_caster));
                UnitList::iterator itr = targetUnitMap.begin();
                advance(itr, unMaxTargets);
                targetUnitMap.erase(itr, targetUnitMap.end());
            }
            break;
        }
        case TARGET_ENUM_UNITS_SCRIPT_AOE_AT_SRC_LOC:
        {
            SpellTargets targetB = SPELL_TARGETS_AOE_DAMAGE;

            // Hack: Select friendly targets for positive effect
            if (m_spellInfo->IsPositiveEffect(effIndex))
                targetB = SPELL_TARGETS_FRIENDLY;

            UnitList tempTargetUnitMap;
            SpellScriptTargetBounds bounds = sSpellMgr.GetSpellScriptTargetBounds(m_spellInfo->Id);

            // fill real target list if no spell script target defined
            FillAreaTargets(bounds.first != bounds.second ? tempTargetUnitMap : targetUnitMap, radius, PUSH_DEST_CENTER, bounds.first != bounds.second ? SPELL_TARGETS_ALL : targetB);

            if (!tempTargetUnitMap.empty())
            {
                for (const auto iter : tempTargetUnitMap)
                {
                    if (iter->GetTypeId() != TYPEID_UNIT)
                        continue;

                    for (SpellScriptTarget::const_iterator i_spellST = bounds.first; i_spellST != bounds.second; ++i_spellST)
                    {
                        if (i_spellST->second.CanNotHitWithSpellEffect(effIndex))
                            continue;

                        // only creature entries supported for this target type
                        if (i_spellST->second.type == SPELL_TARGET_TYPE_GAMEOBJECT)
                            continue;

                        if (iter->GetEntry() == i_spellST->second.targetEntry)
                        {
                            if (i_spellST->second.type == SPELL_TARGET_TYPE_DEAD && ((Creature*)iter)->IsCorpse())
                                targetUnitMap.push_back(iter);
                            else if (i_spellST->second.type == SPELL_TARGET_TYPE_CREATURE && iter->IsAlive())
                                targetUnitMap.push_back(iter);

                            break;
                        }
                    }
                }
            }

            // exclude caster
            if (m_casterUnit)
                targetUnitMap.remove(m_casterUnit);
            break;
        }
        case TARGET_ENUM_UNITS_SCRIPT_AOE_AT_DEST_LOC:
        {
            if (m_spellInfo->Effect[effIndex] == SPELL_EFFECT_PERSISTENT_AREA_AURA)
                break;
            else if (m_spellInfo->Effect[effIndex] == SPELL_EFFECT_SUMMON || m_spellInfo->Effect[effIndex] == SPELL_EFFECT_SUMMON_WILD || m_spellInfo->Effect[effIndex] == SPELL_EFFECT_SUMMON_OBJECT_WILD)
            {
                if (m_casterUnit)
                    targetUnitMap.push_back(m_casterUnit);
                break;
            }

            UnitList tempTargetUnitMap;
            SpellScriptTargetBounds bounds = sSpellMgr.GetSpellScriptTargetBounds(m_spellInfo->Id);
            // fill real target list if no spell script target defined
            FillAreaTargets(bounds.first != bounds.second ? tempTargetUnitMap : targetUnitMap, radius, PUSH_DEST_CENTER, SPELL_TARGETS_ALL);

            if (!tempTargetUnitMap.empty())
            {
                for (const auto iter : tempTargetUnitMap)
                {
                    if (iter->GetTypeId() != TYPEID_UNIT)
                        continue;

                    for (SpellScriptTarget::const_iterator i_spellST = bounds.first; i_spellST != bounds.second; ++i_spellST)
                    {
                        if (i_spellST->second.CanNotHitWithSpellEffect(effIndex))
                            continue;

                        // only creature entries supported for this target type
                        if (i_spellST->second.type == SPELL_TARGET_TYPE_GAMEOBJECT)
                            continue;

                        if (iter->GetEntry() == i_spellST->second.targetEntry)
                        {
                            if (i_spellST->second.type == SPELL_TARGET_TYPE_DEAD && ((Creature*)iter)->IsCorpse())
                                targetUnitMap.push_back(iter);
                            else if (i_spellST->second.type == SPELL_TARGET_TYPE_CREATURE && iter->IsAlive())
                                targetUnitMap.push_back(iter);

                            break;
                        }
                    }
                }
            }
            else
            {
                // remove not targetable units if spell has no script targets
                for (UnitList::iterator itr = targetUnitMap.begin(); itr != targetUnitMap.end();)
                {
                    if (!(*itr)->IsTargetable(true, m_caster->IsCharmerOrOwnerPlayerOrPlayerItself(), true, false) || !m_spellInfo->CanTargetAliveState((*itr)->IsAlive()))
                        targetUnitMap.erase(itr++);
                    else
                        ++itr;
                }
            }
            break;
        }
        case TARGET_ENUM_GAMEOBJECTS_SCRIPT_AOE_AT_SRC_LOC:
        case TARGET_ENUM_GAMEOBJECTS_SCRIPT_AOE_AT_DEST_LOC:
        {
            float x, y, z;
            if (targetMode == TARGET_ENUM_GAMEOBJECTS_SCRIPT_AOE_AT_SRC_LOC)
                m_targets.getSource(x, y, z);
            else
                m_targets.getDestination(x, y, z);

            if (x == 0.0f && y == 0.0f && z == 0.0f)
                sLog.outError("Coordinates were not set properly for spell %u with target type %u!", m_spellInfo->Id, targetMode);

            // It may be possible to fill targets for some spell effects
            // automatically (SPELL_EFFECT_WMO_REPAIR(88) for example) but
            // for some/most spells we clearly need/want to limit with spell_target_script

            // Some spells untested, for affected GO type 33. May need further adjustments for spells related.

            SpellScriptTargetBounds bounds = sSpellMgr.GetSpellScriptTargetBounds(m_spellInfo->Id);

            std::list<GameObject*> tempTargetGOList;

            for (SpellScriptTarget::const_iterator i_spellST = bounds.first; i_spellST != bounds.second; ++i_spellST)
            {
                if (i_spellST->second.CanNotHitWithSpellEffect(effIndex))
                    continue;

                if (i_spellST->second.type == SPELL_TARGET_TYPE_GAMEOBJECT)
                {
                    // search all GO's with entry, within range of m_destN
                    MaNGOS::GameObjectEntryInPosRangeCheck go_check(*m_caster, i_spellST->second.targetEntry, x, y, z, radius);
                    MaNGOS::GameObjectListSearcher<MaNGOS::GameObjectEntryInPosRangeCheck> checker(tempTargetGOList, go_check);
                    Cell::VisitGridObjects(m_caster, checker, radius);
                }
            }

            if (!tempTargetGOList.empty())
            {
                for (const auto& iter : tempTargetGOList)
                    AddGOTarget(iter, effIndex);
            }
            break;
        }
        case TARGET_ENUM_UNITS_ENEMY_AOE_AT_DEST_LOC:
        {
            // targets the ground, not the units in the area
            switch (m_spellInfo->Effect[effIndex])
            {
                case SPELL_EFFECT_PERSISTENT_AREA_AURA:
                    break;
                case SPELL_EFFECT_SUMMON:
                    if (m_casterUnit)
                        targetUnitMap.push_back(m_casterUnit);
                    break;
                default:
                    FillAreaTargets(targetUnitMap, radius, PUSH_DEST_CENTER, SPELL_TARGETS_AOE_DAMAGE);
                    break;
            }
            break;
        }
        case TARGET_LOCATION_UNIT_POSITION:
        {
            if (Unit* currentTarget = m_targets.getUnitTarget())
                m_targets.setDestination(currentTarget->GetPositionX(), currentTarget->GetPositionY(), currentTarget->GetPositionZ());
            break;
        }
        case TARGET_ENUM_UNITS_PARTY_WITHIN_CASTER_RANGE:
        case TARGET_ENUM_UNITS_PARTY_AOE_AT_DEST_LOC:
        case TARGET_ENUM_UNITS_PARTY_AOE_AT_SRC_LOC:
        {
            if (m_casterUnit)
                FillRaidOrPartyTargets(targetUnitMap, m_casterUnit, radius, false, true, true);
            break;
        }
        case TARGET_ENUM_UNITS_RAID_WITHIN_CASTER_RANGE:
        {
            if (m_casterUnit)
                FillRaidOrPartyTargets(targetUnitMap, m_casterUnit, radius, true, true, false);
            break;
        }
        case TARGET_UNIT_FRIEND:
        case TARGET_UNIT_RAID:
            if (m_targets.getUnitTarget())
                targetUnitMap.push_back(m_targets.getUnitTarget());
            break;
        case TARGET_LOCATION_CASTER_SRC:
        {
            // Check original caster is GO - set its coordinates as src cast
            if (WorldObject *caster = GetCastingObject())
                m_targets.setSource(caster->GetPositionX(), caster->GetPositionY(), caster->GetPositionZ());
            break;
        }
        case TARGET_ENUM_UNITS_ENEMY_WITHIN_CASTER_RANGE:
            FillAreaTargets(targetUnitMap, radius, PUSH_SELF_CENTER, SPELL_TARGETS_HOSTILE);
            break;
        case TARGET_ENUM_UNITS_FRIEND_AOE_AT_SRC_LOC:
            // selected friendly units (for casting objects) around casting object
            FillAreaTargets(targetUnitMap, radius, PUSH_SRC_CENTER, SPELL_TARGETS_FRIENDLY, GetCastingObject());
            break;
        case TARGET_ENUM_UNITS_FRIEND_AOE_AT_DEST_LOC:
            FillAreaTargets(targetUnitMap, radius, PUSH_DEST_CENTER, SPELL_TARGETS_FRIENDLY);
            break;
        // TARGET_UNIT_PARTY means that the spells can only be casted on a party member and not on the caster (some seals, fire shield from imp, etc..)
        case TARGET_UNIT_PARTY:
        {
            Unit *target = m_targets.getUnitTarget();
            // Those spells apparently can't be casted on the caster.
            if (target && target != m_caster)
            {
                // Can only be casted on group's members or its pets
                Group  *pGroup = nullptr;

                Unit* owner = m_casterUnit ? m_casterUnit->GetCharmerOrOwner() : nullptr;
                Unit *targetOwner = target->GetCharmerOrOwner();
                if (owner)
                {
                    if (owner->IsPlayer())
                    {
                        if (target == owner)
                        {
                            targetUnitMap.push_back(target);
                            break;
                        }
                        pGroup = ((Player*)owner)->GetGroup();
                    }
                }
                else if (m_caster->IsPlayer())
                {
                    if (targetOwner == m_caster && target->IsCreature() && ((Creature*)target)->IsPet())
                    {
                        targetUnitMap.push_back(target);
                        break;
                    }
                    pGroup = ((Player*)m_caster)->GetGroup();
                }

                if (pGroup)
                {
                    // Our target can also be a player's pet who's grouped with us or our pet. But can't be controlled player
                    if (targetOwner)
                    {
                        if (targetOwner->IsPlayer() &&
                                target->IsCreature() && (((Creature*)target)->IsPet()) &&
                                target->GetOwnerGuid() == targetOwner->GetObjectGuid() &&
                                pGroup->IsMember(((Player*)targetOwner)->GetObjectGuid()))
                            targetUnitMap.push_back(target);
                    }
                    // 1Our target can be a player who is on our group
                    else if (target->IsPlayer() && pGroup->IsMember(((Player*)target)->GetObjectGuid()))
                        targetUnitMap.push_back(target);
                }
            }
            break;
        }
        case TARGET_GAMEOBJECT:
            if (m_targets.getGOTarget())
                AddGOTarget(m_targets.getGOTarget(), effIndex);
            break;
        case TARGET_ENUM_UNITS_ENEMY_IN_CONE_24:
        {
            SpellNotifyPushType pushType = PUSH_IN_FRONT;
            switch (m_spellInfo->SpellVisual)            // Some spell require a different target fill
            {
                case 3879:
                    pushType = PUSH_IN_BACK;
                    break;
                case 7441:
                    pushType = PUSH_IN_FRONT_15;
                    break;
                case 7619: // anub impale
                    pushType = PUSH_IN_FRONT_15;
                    break;
            }
            FillAreaTargets(targetUnitMap, radius, pushType, SPELL_TARGETS_AOE_DAMAGE);
            break;
        }
        case TARGET_ENUM_UNITS_ENEMY_IN_CONE_54:
        {
            switch (m_spellInfo->Id)
            {
            case 24820:
            case 24821:
            case 24822:
            case 24823:
            case 24835:
            case 24836:
            case 24837:
            case 24838:
            {
                UnitList tempTargetUnitMap;
                FillAreaTargets(tempTargetUnitMap, radius, PUSH_SELF_CENTER, SPELL_TARGETS_AOE_DAMAGE);

                for (const auto itr : tempTargetUnitMap)
                {
                    float angle;
                    float arc;

                    switch (m_spellInfo->Id)
                    {
                        case 24820:
                            angle = 0.0f * M_PI_F / 4.0f;
                            arc = 2.0f * M_PI_F / 3.0f;
                            break;
                        case 24821:
                            angle = 1.0f * M_PI_F / 4.0f;
                            arc = 2.0f * M_PI_F / 3.0f;
                            break;
                        case 24822:
                            angle = 2.0f * M_PI_F / 4.0f;
                            arc = 2.0f * M_PI_F / 3.0f;
                            break;
                        case 24823:
                            angle = 3.0f * M_PI_F / 4.0f;
                            arc = 2.0f * M_PI_F / 3.0f;
                            break;
                        case 24835:
                            angle = -4.0f * M_PI_F / 4.0f;
                            arc = 2.0f * M_PI_F / 3.0f;
                            break;
                        case 24836:
                            angle = -3.0f * M_PI_F / 4.0f;
                            arc = 2.0f * M_PI_F / 3.0f;
                            break;
                        case 24837:
                            angle = -2.0f * M_PI_F / 4.0f;
                            arc = 2.0f * M_PI_F / 3.0f;
                            break;
                        case 24838:
                            angle = -1.0f * M_PI_F / 4.0f;
                            arc = 2.0f * M_PI_F / 3.0f;
                            break;
                        default:
                            angle = 0.0f;
                            arc = M_PI_F / 2.0f;
                            break;
                    }

                    if (m_caster->HasInArc(itr, arc, angle))
                        targetUnitMap.push_back(itr);                
                }

                break;
            }                
            default:
                FillAreaTargets(targetUnitMap, radius, PUSH_IN_FRONT_90, SPELL_TARGETS_AOE_DAMAGE);
                break;
            }

            break;
        }            
        case TARGET_ENUM_UNITS_SCRIPT_IN_CONE_60:
        {
            SpellTargets targetB = SPELL_TARGETS_AOE_DAMAGE;

            if (m_spellInfo->Effect[effIndex] == SPELL_EFFECT_SCRIPT_EFFECT)
                targetB = SPELL_TARGETS_ALL;

            UnitList tempTargetUnitMap;
            SpellScriptTargetBounds bounds = sSpellMgr.GetSpellScriptTargetBounds(m_spellInfo->Id);

            // fill real target list if no spell script target defined
            FillAreaTargets(bounds.first != bounds.second ? tempTargetUnitMap : targetUnitMap,
                radius, PUSH_IN_FRONT_15, bounds.first != bounds.second ? SPELL_TARGETS_ALL : targetB);

            if (!tempTargetUnitMap.empty())
            {
                for (const auto& iter : tempTargetUnitMap)
                {
                    if (iter->GetTypeId() != TYPEID_UNIT)
                        continue;

                    if (iter == GetCaster())
                        continue;

                    for (auto i_spellST = bounds.first; i_spellST != bounds.second; ++i_spellST)
                    {
                        // only creature entries supported for this target type
                        if (i_spellST->second.type == SPELL_TARGET_TYPE_GAMEOBJECT)
                            continue;

                        if (iter->GetEntry() == i_spellST->second.targetEntry)
                        {
                            if (i_spellST->second.type == SPELL_TARGET_TYPE_DEAD && ((Creature*)iter)->IsCorpse())
                            {
                                targetUnitMap.push_back(iter);
                            }
                            else if (i_spellST->second.type == SPELL_TARGET_TYPE_CREATURE && iter->IsAlive())
                            {
                                targetUnitMap.push_back(iter);
                            }
                            break;
                        }
                    }
                }
            }
            break;
        }
        case TARGET_UNIT:
        {
            Unit *target = m_targets.getUnitTarget();
            // This target should be checked depending on the effect
            // (check for PvP ON/OFF, ...)
            if (target)
                targetUnitMap.push_back(target);
            break;
        }
        case TARGET_LOCKED:
            if (m_targets.getGOTargetGuid())
                AddGOTarget(m_targets.getGOTarget(), effIndex);
            else if (m_targets.getItemTarget())
                AddItemTarget(m_targets.getItemTarget(), effIndex);
            break;
        case TARGET_UNIT_CASTER_MASTER:
            if (Unit* owner = m_casterUnit ? m_casterUnit->GetCharmerOrOwner() : nullptr)
                targetUnitMap.push_back(owner);
            break;
        case TARGET_ENUM_UNITS_ENEMY_AOE_AT_DYNOBJ_LOC:
            // targets the ground, not the units in the area
            if (m_spellInfo->Effect[effIndex] != SPELL_EFFECT_PERSISTENT_AREA_AURA)
                FillAreaTargets(targetUnitMap, radius, PUSH_DEST_CENTER, SPELL_TARGETS_AOE_DAMAGE);
            break;
        case TARGET_UNIT_FRIEND_AND_PARTY:
        {
            Unit* owner = m_casterUnit ? m_casterUnit->GetCharmerOrOwner() : nullptr;
            Player *pTarget = nullptr;

            if (owner)
            {
                if (m_casterUnit)
                    targetUnitMap.push_back(m_casterUnit);

                if (owner->IsPlayer())
                    pTarget = (Player*)owner;
            }
            else if (m_caster->IsPlayer())
            {
                if (Unit* target = m_targets.getUnitTarget())
                {
                    if (target->GetTypeId() != TYPEID_PLAYER)
                    {
                        if (((Creature*)target)->IsPet())
                        {
                            Unit *targetOwner = target->GetOwner();
                            if (targetOwner->IsPlayer())
                                pTarget = (Player*)targetOwner;
                        }
                    }
                    else
                        pTarget = (Player*)target;
                }
            }

            Group* pGroup = pTarget ? pTarget->GetGroup() : nullptr;

            if (pGroup)
            {
                uint8 subgroup = pTarget->GetSubGroup();

                for (GroupReference *itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
                {
                    Player* target = itr->getSource();

                    // IsHostileTo check m_duel and controlled by enemy
                    if (target && target->GetSubGroup() == subgroup && target->GetLevel() + 10 >= m_spellInfo->spellLevel && !m_caster->IsHostileTo(target))
                    {
                        if (pTarget->IsWithinDistInMap(target, radius))
                            targetUnitMap.push_back(target);

                        if (Pet* pet = target->GetPet())
                            if (pTarget->IsWithinDistInMap(pet, radius))
                                targetUnitMap.push_back(pet);
                    }
                }
            }
            else if (owner)
            {
                if (m_caster->IsWithinDistInMap(owner, radius))
                    targetUnitMap.push_back(owner);
            }
            else if (pTarget)
            {
                targetUnitMap.push_back(pTarget);

                if (Pet* pet = pTarget->GetPet())
                    if (m_caster->IsWithinDistInMap(pet, radius))
                        targetUnitMap.push_back(pet);
            }
            break;
        }
        case TARGET_UNIT_SCRIPT_NEAR_CASTER:
        {
            if (m_targets.getUnitTarget())
                targetUnitMap.push_back(m_targets.getUnitTarget());
            if (m_targets.getItemTarget())
                AddItemTarget(m_targets.getItemTarget(), effIndex);
            break;
        }
        case TARGET_LOCATION_CASTER_FISHING_SPOT:
        {
            if (m_casterUnit)
                targetUnitMap.push_back(m_casterUnit);
            break;
        }
        case TARGET_UNIT_FRIEND_CHAIN_HEAL:
        {
            Unit* pUnitTarget = m_targets.getUnitTarget();
            if (!pUnitTarget)
                break;

            if (EffectChainTarget <= 1)
                targetUnitMap.push_back(pUnitTarget);
            else
            {
                unMaxTargets = EffectChainTarget;
                float max_range = radius + unMaxTargets * CHAIN_SPELL_JUMP_RADIUS;

                UnitList tempTargetUnitMap;

                FillAreaTargets(tempTargetUnitMap, max_range, PUSH_SELF_CENTER, SPELL_TARGETS_FRIENDLY);

                if (m_casterUnit && m_casterUnit != pUnitTarget && std::find(tempTargetUnitMap.begin(), tempTargetUnitMap.end(), m_casterUnit) == tempTargetUnitMap.end())
                    tempTargetUnitMap.push_front(m_casterUnit);

                tempTargetUnitMap.sort(TargetDistanceOrderNear(pUnitTarget));

                if (tempTargetUnitMap.empty())
                    break;

                if (*tempTargetUnitMap.begin() == pUnitTarget)
                    tempTargetUnitMap.erase(tempTargetUnitMap.begin());

                targetUnitMap.push_back(pUnitTarget);
                uint32 t = unMaxTargets - 1;
                Unit *prev = pUnitTarget;
                auto next = tempTargetUnitMap.begin();

                while (t && next != tempTargetUnitMap.end())
                {
                    if (!prev->IsWithinDist(*next, CHAIN_SPELL_JUMP_RADIUS))
                        break;

                    if (!(m_spellInfo->AttributesEx2 & SPELL_ATTR_EX2_IGNORE_LOS) && !prev->IsWithinLOSInMap(*next))
                    {
                        ++next;
                        continue;
                    }

                    if ((*next)->GetHealth() == (*next)->GetMaxHealth())
                    {
                        next = tempTargetUnitMap.erase(next);
                        continue;
                    }

                    prev = *next;
                    targetUnitMap.push_back(prev);
                    tempTargetUnitMap.erase(next);
                    tempTargetUnitMap.sort(TargetDistanceOrderNear(prev));
                    next = tempTargetUnitMap.begin();

                    --t;
                }
            }
            break;
        }
        case TARGET_LOCATION_CASTER_TARGET_POSITION:
        {
            Unit* currentTarget = m_targets.getUnitTarget();
            if (currentTarget)
            {
                targetUnitMap.push_back(currentTarget);
                if (m_spellInfo->Id == 28863)        // Void Zone creature often end up below ground
                    m_targets.setDestination(currentTarget->GetPositionX(), currentTarget->GetPositionY(), currentTarget->GetPositionZ()+0.3f);
                else if (m_spellInfo->Id != 18392)   // Onyxia's Fireball - without a destination the spell uses its original spell visuals
                    m_targets.setDestination(currentTarget->GetPositionX(), currentTarget->GetPositionY(), currentTarget->GetPositionZ());
            }
            break;
        }
        case TARGET_UNIT_RAID_AND_CLASS:
        {
            Player* targetPlayer = m_targets.getUnitTarget() && m_targets.getUnitTarget()->IsPlayer()
                                   ? (Player*)m_targets.getUnitTarget() : nullptr;

            Group* pGroup = targetPlayer ? targetPlayer->GetGroup() : nullptr;
            if (pGroup)
            {
                for (GroupReference *itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
                {
                    Player* Target = itr->getSource();

                    // IsHostileTo check m_duel and controlled by enemy
                    if (Target && targetPlayer->IsWithinDistInMap(Target, radius) &&
                            targetPlayer->GetClass() == Target->GetClass() &&
                            !m_caster->IsHostileTo(Target))
                        targetUnitMap.push_back(Target);
                }
            }
            else if (m_targets.getUnitTarget())
                targetUnitMap.push_back(m_targets.getUnitTarget());
            break;
        }
        case TARGET_LOCATION_DATABASE:
        {
            SpellTargetPosition const* st = sSpellMgr.GetSpellTargetPosition(m_spellInfo->Id);
            if (st)
            {
                // teleportspells are handled in another way
                if (m_spellInfo->Effect[effIndex] == SPELL_EFFECT_TELEPORT_UNITS)
                    break;
                if (st->mapId == m_caster->GetMapId())
                    m_targets.setDestination(st->x, st->y, st->z);
                else
                    sLog.outError("SPELL: wrong map (%u instead %u) target coordinates for spell ID %u", st->mapId, m_caster->GetMapId(), m_spellInfo->Id);
            }
            else
                sLog.outError("SPELL: unknown target coordinates for spell ID %u", m_spellInfo->Id);
            break;
        }
        case TARGET_LOCATION_UNIT_MINION_POSITION: // unknown how pet summon is different - maybe some formation support?
        case TARGET_LOCATION_CASTER_FRONT_RIGHT:
        case TARGET_LOCATION_CASTER_BACK_RIGHT:
        case TARGET_LOCATION_CASTER_BACK_LEFT:
        case TARGET_LOCATION_CASTER_FRONT_LEFT:
        case TARGET_LOCATION_CASTER_FRONT:
        case TARGET_LOCATION_CASTER_BACK:
        case TARGET_LOCATION_CASTER_LEFT:
        case TARGET_LOCATION_CASTER_RIGHT:
        {     
            if (targetMode == TARGET_LOCATION_UNIT_MINION_POSITION && m_spellInfo->Effect[effIndex] == SPELL_EFFECT_DUEL)
                break;
        
            if (!(m_targets.m_targetMask & TARGET_FLAG_DEST_LOCATION))
            {
                // General override, we don't want to use max spell range here.
                // Note: 0.0 radius is also for index 36. It is possible that 36 must be defined as
                // "at the base of", in difference to 0 which appear to be "directly in front of".
                // TODO: some summoned will make caster be half inside summoned object. Need to fix
                // that in the below code (nearpoint vs closepoint, etc).
                if (m_spellInfo->EffectRadiusIndex[effIndex] == 0)
                    radius = 0.0f;

                float angle = m_caster->GetOrientation();
                switch (targetMode)
                {
                    case TARGET_LOCATION_UNIT_MINION_POSITION:
                    case TARGET_LOCATION_CASTER_FRONT_LEFT:
                        angle += M_PI_F * 0.25f;
                        break;
                    case TARGET_LOCATION_CASTER_BACK_LEFT:
                        angle += M_PI_F * 0.75f;
                        break;
                    case TARGET_LOCATION_CASTER_BACK_RIGHT:
                        angle += M_PI_F * 1.25f;
                        break;
                    case TARGET_LOCATION_CASTER_FRONT_RIGHT:
                        angle += M_PI_F * 1.75f;
                        break;
                    case TARGET_LOCATION_CASTER_FRONT:
                        break;
                    case TARGET_LOCATION_CASTER_BACK:
                        angle += M_PI_F;
                        break;
                    case TARGET_LOCATION_CASTER_LEFT:
                        angle += M_PI_F / 2;
                        break;
                    case TARGET_LOCATION_CASTER_RIGHT:
                        angle -= M_PI_F / 2;
                        break;
                }

                float x, y, z;
                m_caster->GetNearPoint(m_caster, x, y, z, 0.0f, radius, angle);

                // Hacky fix in case we are inside a cave, because GetNearPoint will update Z to above the cave.
                // Example case: trap for gobject 178325, spell 21078
                if ((m_caster->GetDistance(x, y, z) > radius * 2) && !m_caster->IsWithinLOS(x, y, z, false))
                {
                    m_caster->GetPosition(x, y, z);
                    m_caster->GetNearPoint2D(x, y, radius, angle);
                }

                // For some reason all the creature Blink spells use this target type instead of the player one.
                // Prevent them from teleporting to places that they can't normally walk to like under the map.
                if (m_spellInfo->Effect[effIndex] == SPELL_EFFECT_LEAP)
                    if (!m_caster->GetMap()->GetWalkHitPosition(m_caster->GetTransport(), x, y, z, x, y, z, NAV_GROUND | NAV_WATER, 1.0f, false) || (abs(m_caster->GetPositionZ() - z) > 5.0f))
                        m_caster->GetPosition(x, y, z);

                m_targets.setDestination(x, y, z);
            }                

            if (m_casterUnit && targetUnitMap.empty())
                targetUnitMap.push_back(m_casterUnit);
            else if (m_casterGo)
                AddGOTarget(m_casterGo, effIndex);
            break;
        }
        case TARGET_LOCATION_CASTER_DEST:
        {
            // add here custom effects that need default target.
            // FOR EVERY TARGET TYPE THERE IS A DIFFERENT FILL!!
            switch (m_spellInfo->Effect[effIndex])
            {
                case SPELL_EFFECT_DUMMY:
                {
                    switch (m_spellInfo->Id)
                    {
                        case 20577:                         // Cannibalize
                        {
                            WorldObject* result = FindCorpseUsing<MaNGOS::CannibalizeObjectCheck> ();

                            if (result)
                            {
                                switch (result->GetTypeId())
                                {
                                    case TYPEID_UNIT:
                                    case TYPEID_PLAYER:
                                        targetUnitMap.push_back((Unit*)result);
                                        break;
                                    case TYPEID_CORPSE:
                                        m_targets.setCorpseTarget((Corpse*)result);
                                        break;
                                }
                            }
                            else
                            {
                                // clear cooldown at fail
                                if (m_caster->IsPlayer())
                                    ((Player*)m_caster)->RemoveSpellCooldown(m_spellInfo->Id, true);
                                SendCastResult(SPELL_FAILED_NO_EDIBLE_CORPSES);
                                finish(false);
                            }
                            break;
                        }
                        default:
                            if (m_targets.getUnitTarget())
                                targetUnitMap.push_back(m_targets.getUnitTarget());
                            break;
                    }
                    // Add AoE target-mask to self, if no target-dest provided already
                    if ((m_targets.m_targetMask & TARGET_FLAG_DEST_LOCATION) == 0)
                        m_targets.setDestination(m_caster->GetPositionX(), m_caster->GetPositionY(), m_caster->GetPositionZ());
                    break;
                }
                case SPELL_EFFECT_BIND:
                case SPELL_EFFECT_PARRY:
                case SPELL_EFFECT_BLOCK:
                case SPELL_EFFECT_CREATE_ITEM:
                case SPELL_EFFECT_TRIGGER_SPELL:
                case SPELL_EFFECT_TRIGGER_MISSILE:
                case SPELL_EFFECT_LEARN_SPELL:
                case SPELL_EFFECT_SKILL_STEP:
                case SPELL_EFFECT_PROFICIENCY:
                case SPELL_EFFECT_SUMMON_POSSESSED:
                case SPELL_EFFECT_SUMMON_OBJECT_WILD:
                case SPELL_EFFECT_SELF_RESURRECT:
                case SPELL_EFFECT_REPUTATION:
                case SPELL_EFFECT_ADD_HONOR:
                case SPELL_EFFECT_SEND_TAXI:
                    if (m_targets.getUnitTarget())
                        targetUnitMap.push_back(m_targets.getUnitTarget());
                    // Triggered spells have additional spell targets - cast them even if no explicit unit target is given (required for spell 50516 for example)
                    else if (m_spellInfo->Effect[effIndex] == SPELL_EFFECT_TRIGGER_SPELL && m_casterUnit)
                        targetUnitMap.push_back(m_casterUnit);
                    break;
                case SPELL_EFFECT_SUMMON_PLAYER:
                    if (m_targets.getUnitTarget())
                        targetUnitMap.push_back(m_targets.getUnitTarget());
                    break;
                case SPELL_EFFECT_RESURRECT:
                case SPELL_EFFECT_RESURRECT_NEW:
                    if (m_targets.getUnitTarget())
                        targetUnitMap.push_back(m_targets.getUnitTarget());
                    if (m_targets.getCorpseTargetGuid())
                    {
                        if (Corpse *corpse = m_caster->GetMap()->GetCorpse(m_targets.getCorpseTargetGuid()))
                            if (Player* owner = ObjectAccessor::FindPlayer(corpse->GetOwnerGuid()))
                                targetUnitMap.push_back(owner);
                    }
                    break;
                case SPELL_EFFECT_SUMMON:
                {
                    if (m_casterUnit)
                        targetUnitMap.push_back(m_casterUnit);

                    break;
                }
                case SPELL_EFFECT_TRANS_DOOR:
                {
                    if (m_spellInfo->rangeIndex != SPELL_RANGE_IDX_SELF_ONLY)
                    {
                        float tmp_x, tmp_y, tmp_z;
                        m_caster->GetRandomPoint(m_caster->GetPositionX(), m_caster->GetPositionY(), m_caster->GetPositionZ(), 5.0f, tmp_x, tmp_y, tmp_z);
                        m_targets.setDestination(tmp_x, tmp_y, tmp_z);
                    }

                    if (m_casterUnit)
                        targetUnitMap.push_back(m_casterUnit);

                    break;
                }
                case SPELL_EFFECT_SUMMON_WILD:
                {
                    if (!m_originalCasterGUID.IsEmpty() && m_originalCasterGUID.IsGameObject())
                    {
                        if (GameObject* pSummoner = m_caster->GetMap()->GetGameObject(m_originalCasterGUID))
                            m_targets.setDestination(pSummoner->GetPositionX(), pSummoner->GetPositionY(), pSummoner->GetPositionZ());
                    }

                    if (m_casterUnit)
                        targetUnitMap.push_back(m_casterUnit);
                    else if (m_casterGo)
                        AddGOTarget(m_casterGo, effIndex);

                    break;
                }
                case SPELL_EFFECT_SUMMON_DEMON:
                {
                    if (m_casterUnit)
                        targetUnitMap.push_back(m_casterUnit);
                    else if (m_casterGo)
                        AddGOTarget(m_casterGo, effIndex);

                    break;
                }
                case SPELL_EFFECT_SUMMON_CHANGE_ITEM:
                case SPELL_EFFECT_SUMMON_GUARDIAN:
                case SPELL_EFFECT_ADD_FARSIGHT:
                case SPELL_EFFECT_STUCK:
                case SPELL_EFFECT_DESTROY_ALL_TOTEMS:
                case SPELL_EFFECT_SKILL:
                    if (m_casterUnit)
                        targetUnitMap.push_back(m_casterUnit);
                    break;
                case SPELL_EFFECT_PERSISTENT_AREA_AURA:
                    if (Unit* currentTarget = m_targets.getUnitTarget())
                        m_targets.setDestination(currentTarget->GetPositionX(), currentTarget->GetPositionY(), currentTarget->GetPositionZ());
                    break;
                case SPELL_EFFECT_LEARN_PET_SPELL:
                    if (Pet* pet = m_casterUnit ? m_casterUnit->GetPet() : nullptr)
                        targetUnitMap.push_back(pet);
                    break;
                case SPELL_EFFECT_ENCHANT_ITEM:
                case SPELL_EFFECT_ENCHANT_ITEM_TEMPORARY:
                case SPELL_EFFECT_DISENCHANT:
                case SPELL_EFFECT_FEED_PET:
                    if (m_targets.getItemTarget())
                        AddItemTarget(m_targets.getItemTarget(), effIndex);
                    break;
                case SPELL_EFFECT_APPLY_AURA:
                    switch (m_spellInfo->EffectApplyAuraName[effIndex])
                    {
                        case SPELL_AURA_ADD_FLAT_MODIFIER:  // some spell mods auras have 0 target modes instead expected TARGET_UNIT_CASTER(1) (and present for other ranks for same spell for example)
                        case SPELL_AURA_ADD_PCT_MODIFIER:
                            if (m_casterUnit)
                                targetUnitMap.push_back(m_casterUnit);
                            break;
                        default:                            // apply to target in other case
                            if (m_targets.getUnitTarget())
                                targetUnitMap.push_back(m_targets.getUnitTarget());
                            break;
                    }
                    break;
                case SPELL_EFFECT_APPLY_AREA_AURA_PARTY:
                    // AreaAura
                    if (m_spellInfo->Attributes == 0x9050000 || m_spellInfo->Attributes == 0x10000)
                        SetTargetMap(effIndex, TARGET_UNIT_FRIEND_AND_PARTY, targetUnitMap);
                    break;
                case SPELL_EFFECT_SKIN_PLAYER_CORPSE:
                    if (m_targets.getUnitTarget())
                        targetUnitMap.push_back(m_targets.getUnitTarget());
                    break;
                case SPELL_EFFECT_TELEPORT_UNITS_FACE_CASTER:
                    if (!(m_targets.m_targetMask & TARGET_FLAG_DEST_LOCATION))
                        m_targets.setDestination(m_caster->GetPositionX(), m_caster->GetPositionY(), m_caster->GetPositionZ());
                    break;
                default:
                    break;
            }
            break;
        }
        case TARGET_LOCATION_CASTER_FRONT_LEAP:
        {
            Unit* pUnitTarget = m_targets.getUnitTarget();
            
            if (!pUnitTarget)
                break;
            
            float dis = GetSpellRadius(sSpellRadiusStore.LookupEntry(m_spellInfo->EffectRadiusIndex[effIndex]));
            float x, y, z;
            float srcX, srcY, srcZ;
            float zSearchDist = 20.0f; // Falling case
            float ground = 0.0f;
            pUnitTarget->GetSafePosition(x, y, z);
            pUnitTarget->GetSafePosition(srcX, srcY, srcZ);
            float waterLevel = pUnitTarget->GetTerrain()->GetWaterLevel(x, y, z, &ground);
            x += dis * cos(pUnitTarget->GetOrientation());
            y += dis * sin(pUnitTarget->GetOrientation());
            // Underwater blink case
            if (waterLevel != VMAP_INVALID_HEIGHT_VALUE && waterLevel > ground)
            {
                if (z < ground)
                    z = ground;
                // If blinking up to the surface, limit z position (do not teleport out of water)
                if (z > waterLevel && (z - srcZ) > 1.0f)
                {
                    float t = (waterLevel - srcZ) / (z - srcZ);
                    x = (x - srcX) * t + srcX;
                    y = (y - srcY) * t + srcY;
                    z = waterLevel;
                }
                pUnitTarget->GetMap()->GetLosHitPosition(srcX, srcY, srcZ, x, y, z, -0.5f);
                ground = pUnitTarget->GetMap()->GetHeight(x, y, z);
                if (ground < z)
                {
                    m_targets.setDestination(x, y, z);
                    break;
                }
                // If we are leaving water, rather use pathfinding, but increase z-range position research.
                zSearchDist = 20.0f;
            }
            if (!pUnitTarget->GetMap()->GetWalkHitPosition(pUnitTarget->GetTransport(), srcX, srcY, srcZ, x, y, z, NAV_GROUND | NAV_WATER, zSearchDist, false))
            {
                x = srcX;
                y = srcY;
                z = srcZ;
            }
             
            m_targets.setDestination(x, y, z);
        }
        default:
            //sLog.outError( "SPELL: Unknown implicit target (%u) for spell ID %u", targetMode, m_spellInfo->Id );
            break;
    }

    if (unMaxTargets && targetUnitMap.size() > unMaxTargets)
    {
        // make sure one unit is always removed per iteration
        uint32 removed_utarget = 0;
        for (UnitList::iterator itr = targetUnitMap.begin(), next; itr != targetUnitMap.end(); itr = next)
        {
            next = itr;
            ++next;
            if (!*itr) continue;
            if ((*itr) == m_targets.getUnitTarget())
            {
                targetUnitMap.erase(itr);
                removed_utarget = 1;
                //        break;
            }
        }
        // remove random units from the map
        while (targetUnitMap.size() > unMaxTargets - removed_utarget)
        {
            uint32 poz = urand(0, targetUnitMap.size() - 1);
            for (auto itr = targetUnitMap.begin(); itr != targetUnitMap.end(); ++itr, --poz)
            {
                if (!*itr) continue;

                if (!poz)
                {
                    targetUnitMap.erase(itr);
                    break;
                }
            }
        }
        // the player's target will always be added to the map
        if (removed_utarget && m_targets.getUnitTarget())
            targetUnitMap.push_back(m_targets.getUnitTarget());
    }
}

bool IsAcceptableAutorepeatError(SpellCastResult result)
{
    switch (result)
    {
        case SPELL_FAILED_MOVING:   // Let's toggle auto attack while moving
        case SPELL_CAST_OK:
            return true;
    }
    return false;
}

SpellCastResult Spell::prepare(SpellCastTargets targets, Aura* triggeredByAura, uint32 chance)
{
    m_targets = std::move(targets);
    return prepare(triggeredByAura, chance);
}

SpellCastResult Spell::prepare(Aura* triggeredByAura, uint32 chance)
{
    m_spellState = SPELL_STATE_PREPARING;
    m_delayed = m_spellInfo->speed > 0.0f 
        || (m_spellInfo->IsCCSpell() && m_targets.getUnitTarget() && m_targets.getUnitTarget()->IsPlayer());

    if (m_caster->GetTransport())
    {
        m_castPositionX = m_caster->GetTransOffsetX();
        m_castPositionY = m_caster->GetTransOffsetY();
        m_castPositionZ = m_caster->GetTransOffsetZ();
        m_castOrientation = m_caster->GetTransOffsetO();
    }
    else
    {
        m_castPositionX = m_caster->GetPositionX();
        m_castPositionY = m_caster->GetPositionY();
        m_castPositionZ = m_caster->GetPositionZ();
        m_castOrientation = m_caster->GetOrientation();
    }

    if (triggeredByAura) {
        m_triggeredByAuraSpell = triggeredByAura->GetSpellProto();
        m_triggeredByAuraBasePoints = triggeredByAura->GetBasePoints();
    }

    try
    {
        // create and add update event for this spell
        SpellEvent* Event = new SpellEvent(this);
        m_caster->m_Events.AddEvent(Event, m_caster->m_Events.CalculateTime(1));

        //Prevent casting at cast another spell (ServerSide check)
        if (!m_IsTriggeredSpell && m_caster->IsNonMeleeSpellCasted(false, true, true))
        {
            if (!m_originalCasterGUID.IsGameObject())
            {
                SendCastResult(SPELL_FAILED_SPELL_IN_PROGRESS);
                finish(false);
                return SPELL_FAILED_SPELL_IN_PROGRESS;
            }
        }
        if (sObjectMgr.IsSpellDisabled(m_spellInfo->Id))
        {
            SendCastResult(SPELL_FAILED_SPELL_UNAVAILABLE);
            finish(false);
            return SPELL_FAILED_SPELL_UNAVAILABLE;
        }

        // Fill cost data
        m_powerCost = CalculatePowerCost(m_spellInfo, m_casterUnit, this, m_CastItem);

        if (Player* pPlayerCaster = m_caster->ToPlayer())
        {
            // Custom arena spell blacklist.
            if (BattleGround* bg = pPlayerCaster->GetBattleGround())
            {
                if (bg->IsArena())
                {
                    switch (m_spellInfo->Id)
                    {
                    case 633:   // Lay on Hands (rank 1)
                    case 2800:  // Lay on Hands (rank 2)
                    case 10310: // Lay on Hands (rank 3)
                    case 1719:  // Recklessness
                    case 13180: // Gnomish Mind Control Cap
                    case 22641: // Reckless Charge (Goblin Rocket Helmet)
                        // Custom cast result.
                        pPlayerCaster->GetSession()->SendNotification("Not usable in arena");
                        SendCastResult(SPELL_FAILED_SPELL_UNAVAILABLE);
                        finish(false);
                        return SPELL_FAILED_SPELL_UNAVAILABLE;
                    }
                }
            }

            if (pPlayerCaster->HasOption(PLAYER_CHEAT_NO_POWER))
                m_powerCost = 0;
        }


        if (!IsChannelingVisual())
        {
            SpellCastResult result = CheckCast(true);
            Unit* pTarget = m_targets.getUnitTarget();
            if (result != SPELL_CAST_OK || (IsAutoRepeat() && m_caster == pTarget))
            {
                if (!IsAutoRepeat() || !IsAcceptableAutorepeatError(result))
                {
                    DEBUG_FILTER_LOG(LOG_FILTER_SPELL_CAST, "Spell %u failed for reason 0x%x (target %u)", m_spellInfo->Id, result, pTarget ? pTarget->GetGUIDLow() : 0);
                    if (triggeredByAura && !triggeredByAura->GetHolder()->IsPassive())
                    {
                        SendChannelUpdate(0, true);
                        triggeredByAura->GetHolder()->SetAuraDuration(0);
                    }

                    SendCastResult(result);
                    //SendInterrupted(0);
                    finish(false);
                    return result;
                }
            }
        }

        // Roll chance to cast from script (must be after cast checks, this is why its here)
        if (chance)
        {
            if (!roll_chance_u(chance))
            {
                finish(false);
                return SPELL_FAILED_TRY_AGAIN;
            } 
        }

        // Prepare data for triggers
        prepareDataForTriggerSystem();

        // calculate cast time (calculated after first CheckCast check to prevent charge counting for first CheckCast fail)
        m_casttime = m_spellInfo->GetCastTime(this);

        if (Player* pPlayerCaster = m_caster->ToPlayer())
            if (pPlayerCaster->HasOption(PLAYER_CHEAT_NO_CAST_TIME))
                m_casttime = 0;

        m_duration = m_spellInfo->CalculateDuration(m_caster);

        // set timer base at cast time
        ReSetTimer();

        // If timer = 0, it's an instant cast spell and will be casted on the next tick.
        // Cast completion will remove all any stealth/invis auras
        if (m_timer)
        {
            // World of Warcraft Client Patch 1.10.0 (2006-03-28)
            // - Stealth and Invisibility effects will now be canceled at the
            //   beginning of an action(spellcast, ability use etc...), rather than
            //   at the completion of the action.
            RemoveStealthAuras();
            
            // If using a game object we need to remove any remaining invis auras. Should only
            // ever be Gnomish Cloaking Device, since it's a special case and not removed on
            // opcode receive
            if (m_caster->IsPlayer() && m_targets.getGOTarget())
                m_casterUnit->RemoveAurasWithInterruptFlags(AURA_INTERRUPT_FLAG_ON_CAST_SPELL);
        }

        OnSpellLaunch();

        bool channeled = m_spellInfo->IsChanneledSpell();

        // [Nostalrius] Stop pets casting channeled spells ! (succubus seduce ...)
        if (m_timer && channeled)
            if (m_caster->IsPet())
                m_casterUnit->StopMoving();

        // This is used so that creatures face the target on which they are casting
        if (m_setCreatureTarget = (m_caster->IsCreature() && (channeled || (!m_IsTriggeredSpell && m_timer)) && m_targets.getUnitTarget() && IsExplicitlySelectedUnitTarget(m_spellInfo->EffectImplicitTargetA[0]) && static_cast<Creature*>(m_caster)->CanHaveTarget()))
            static_cast<Creature*>(m_caster)->SetCastingTarget(m_targets.getUnitTarget());

        // add non-triggered (with cast time and without)
        if (!m_IsTriggeredSpell || channeled)
            m_caster->SetCurrentCastedSpell(this);

        if (!m_IsTriggeredSpell)
        {
            // will show cast bar
            SendSpellStart();
            TriggerGlobalCooldown();
            // Cast on self -> execute NOW
            //if (!m_timer && m_caster->IsPlayer() && !m_targets.m_targetMask && !IsAreaOfEffectSpell(m_spellInfo))
            //    cast(true);
        }
        // execute triggered without cast time explicitly in call point
        else if ((m_timer == 0) &&
            // Prevent scenario where pet has a periodic aura that
            // triggers another spell to deal damage to owner,
            // causing owner to die and pet gets despawned, leading to
            // deletion of auras on pet and crash when stack unwinds.
            // An example of this is spell 3584 Volatile Infection.
            !(triggeredByAura && m_spellInfo->IsDirectDamageSpell() && m_caster->IsCreature()))
            cast(true);

        // else triggered with cast time will execute at next tick or later
        // without adding to cast type slot
        // will not show cast bar but will show effects at casting time etc
    }
    catch (std::runtime_error &e)
    {
        sLog.outInfo("[Spell/Crash] 'prepare()' [%u:%s:%u:{%f:%f:%f}]", m_spellInfo->Id, m_caster->GetName(), m_caster->GetGUIDLow(), m_castPositionX, m_castPositionY, m_castPositionZ);
        sLog.outInfo(e.what());
        finish(false);
        return SPELL_FAILED_UNKNOWN;
    }

    return SPELL_CAST_OK;
}

void Spell::cancel()
{
    if (m_spellState == SPELL_STATE_FINISHED)
        return;

    // channeled spells don't display interrupted message even if they are interrupted, possible other cases with no "Interrupted" message
    bool sendInterrupt = !(m_spellInfo->IsChanneledSpell() && m_spellState != SPELL_STATE_PREPARING);

    m_autoRepeat = false;
    switch (m_spellState)
    {
        case SPELL_STATE_PREPARING:
            CancelGlobalCooldown();
            if (m_caster->IsPlayer())
                m_caster->ToPlayer()->RestoreSpellMods(this);
        //(no break)
        case SPELL_STATE_DELAYED:
        {
            SendInterrupted(0);
            if (sendInterrupt && !GetDelayStart())
                SendCastResult(SPELL_FAILED_INTERRUPTED);
        }
        break;

        case SPELL_STATE_CASTING:
        {
            for (const auto& ihit : m_UniqueTargetInfo)
            {
                if (ihit.deleted)
                    continue;
                if (ihit.missCondition == SPELL_MISS_NONE)
                {
                    Unit* unit = m_caster->GetObjectGuid() == ihit.targetGUID ? m_casterUnit : ObjectAccessor::GetUnit(*m_caster, ihit.targetGUID);
                    if (unit && unit->IsAlive())
                        unit->RemoveAurasByCasterSpell(m_spellInfo->Id, m_caster->GetObjectGuid());
                }
            }

            SendChannelUpdate(0, true);
            SendInterrupted(0);

            if (m_caster->IsPlayer())
            {
                // spell is canceled-take mods and clear list
                m_caster->ToPlayer()->RemoveSpellMods(this);

                // summoning rituals, if a user has cancelled inform the go
                // Don't use m_targets.getGOTarget(), as it may be a dangling pointer since we don't
                // update the target pointers here (only want to check a single target pointer). We
                // can use it as a speed-up to see if this spell had a GO target at some point though
                if (m_targets.getGOTarget())
                {
                    if (GameObject *go = m_caster->GetMap()->GetGameObject(m_targets.getGOTargetGuid()))
                    {
                        if (go->GetGoType() == GAMEOBJECT_TYPE_SUMMONING_RITUAL &&
                            go->getLootState() != GO_JUST_DEACTIVATED &&
                            go->HasUniqueUser(m_caster->ToPlayer()))
                        {
                            go->RemoveUniqueUse(m_caster->ToPlayer());
                        }
                    }
                }
            }

            if (sendInterrupt)
                SendCastResult(SPELL_FAILED_INTERRUPTED);
        }
        break;

        default:
        {
        } break;
    }

    finish(false);
    m_caster->RemoveDynObject(m_spellInfo->Id);

    if (m_casterUnit)
        m_casterUnit->RemoveGameObject(m_spellInfo->Id, true);
}

void Spell::cast(bool skipCheck)
{
    if (m_spellInfo->Id <= 0 || m_spellInfo->Id > MAX_SPELL_ID)
        return;

    SpellEntry const* spellInfo = sSpellMgr.GetSpellEntry(m_spellInfo->Id);
    if (!spellInfo)
        return;

    SetExecutedCurrently(true);

    if (!m_caster->CheckAndIncreaseCastCounter())
    {
        if (m_triggeredByAuraSpell)
            sLog.outError("Spell %u triggered by aura spell %u too deep in cast chain for cast. Cast not allowed for prevent overflow stack crash.", m_spellInfo->Id, m_triggeredByAuraSpell->Id);
        else
            sLog.outError("Spell %u too deep in cast chain for cast. Cast not allowed for prevent overflow stack crash.", m_spellInfo->Id);

        SendInterrupted(2);
        SendCastResult(SPELL_FAILED_ERROR);
        finish(false);
        SetExecutedCurrently(false);
        return;
    }

    // update pointers base at GUIDs to prevent access to already nonexistent object
    UpdatePointers();

    // cancel at lost main target unit
    if (!m_targets.getUnitTarget() && m_targets.getUnitTargetGuid() && m_targets.getUnitTargetGuid() != m_caster->GetObjectGuid())
    {
        SendInterrupted(2);
        cancel();
        m_caster->DecreaseCastCounter();
        SetExecutedCurrently(false);
        return;
    }

    if (m_casterUnit)
    {
        // Ivina <Nostalrius> : Added the case when caster is charmed and not controlled.
        if ((!m_caster->IsPlayer()) || ((m_casterUnit->GetCharmerGuid()) && (!m_casterUnit->HasUnitState(UNIT_STAT_POSSESSED | UNIT_STAT_CANT_ROTATE))))
        {
            if (m_targets.getUnitTarget() && m_targets.getUnitTarget() != m_caster)
            {
                m_casterUnit->SetInFront(m_targets.getUnitTarget());
                m_castOrientation = m_casterUnit->GetOrientation();
            }
        }
    }

    SpellCastResult castResult = SPELL_CAST_OK;
    if (!skipCheck && !IsChannelingVisual())
    {
        // Nostalrius - compute power cost once again at cast finished
        // (in case of mana reduction buff proc while casting)
        m_powerCost = CalculatePowerCost(m_spellInfo, m_casterUnit, this, m_CastItem);
        castResult = CheckPower();
        if (castResult != SPELL_CAST_OK)
        {
            SendInterrupted(2);
            SendCastResult(castResult);
            //restore spell mods
            if (m_caster->IsPlayer())
                m_caster->ToPlayer()->RestoreSpellMods(this);
            finish(false);
            m_caster->DecreaseCastCounter();
            SetExecutedCurrently(false);
            return;
        }

        // triggered cast called from Spell::prepare where it was already checked
        castResult = CheckCast(false);
        if (castResult != SPELL_CAST_OK)
        {
            SendInterrupted(2);
            SendCastResult(castResult);
            finish(false);
            m_caster->DecreaseCastCounter();
            SetExecutedCurrently(false);
            //restore spell mods
            if (m_caster->IsPlayer())
                m_caster->ToPlayer()->RestoreSpellMods(this);
            return;
        }
    }

    // different triggred (for caster) and precast (casted before apply effect to target) cases
    switch (m_spellInfo->SpellFamilyName)
    {
        case SPELLFAMILY_GENERIC:
        {
            // Bandages
            if (m_spellInfo->Mechanic == MECHANIC_BANDAGE)
                AddPrecastSpell(11196);                     // Recently Bandaged

            // Divine Shield, Divine Protection (Blessing of Protection in paladin switch case)
            else if (m_spellInfo->Mechanic == MECHANIC_INVULNERABILITY)
                AddPrecastSpell(25771);                     // Forbearance

            switch (m_spellInfo->Id)
            {
                case 26374: // Elune's Candle
                {
                    static const uint32 OmenSpells[] = { 26622, 26623, 26624, 26625, 26649 };

                    uint32 spell = 26636;

                    Unit* target = m_targets.getUnitTarget();

                    if (target && target->ToUnit())
                    {
                        if (target->GetEntry() == 15467)
                            spell = OmenSpells[urand(0, 4)];

                        if (target->GetEntry() == 15466)
                            spell = 26624;
                    }

                    m_caster->CastSpell(target, spell, true);
                }
                break;
            }

            break;
        }
        case SPELLFAMILY_WARRIOR:
            break;
        case SPELLFAMILY_PRIEST:
        {
            // Power Word: Shield
            // Nostalrius : Ivina : removed 27779 from cases = priest T0/T0.5 shield proc.
            if (m_spellInfo->IsFitToFamily<SPELLFAMILY_PRIEST, CF_PRIEST_POWER_WORD_SHIELD>() && (m_spellInfo->Id != 27779))
                AddPrecastSpell(6788);                      // Weakened Soul

            switch (m_spellInfo->Id)
            {
                case 15237:
                    AddTriggeredSpell(23455);
                    break;// Holy Nova, rank 1
                case 15430:
                    AddTriggeredSpell(23458);
                    break;// Holy Nova, rank 2
                case 15431:
                    AddTriggeredSpell(23459);
                    break;// Holy Nova, rank 3
                case 27799:
                    AddTriggeredSpell(27803);
                    break;// Holy Nova, rank 4
                case 27800:
                    AddTriggeredSpell(27804);
                    break;// Holy Nova, rank 5
                case 27801:
                    AddTriggeredSpell(27805);
                    break;// Holy Nova, rank 6
                default:
                    break;
            }
            break;
        }
        case SPELLFAMILY_PALADIN:
        {
            // Blessing of Protection (Divine Shield, Divine Protection in generic switch case)
            if (m_spellInfo->Mechanic == MECHANIC_INVULNERABILITY && m_spellInfo->Id != 25771)
                AddPrecastSpell(25771);                     // Forbearance
            break;
        }
        default:
            break;
    }

    // traded items have trade slot instead of guid in m_itemTargetGUID
    // set to real guid to be sent later to the client
    m_targets.updateTradeSlotItem();

    FillTargetMap();
    if (m_spellInfo->IsChanneledSpell())
        HandleAddTargetTriggerAuras();

    if (m_spellState == SPELL_STATE_FINISHED)                // stop cast if spell marked as finish somewhere in FillTargetMap
    {
        m_caster->DecreaseCastCounter();
        SetExecutedCurrently(false);
        if (m_caster->IsPlayer())
            m_caster->ToPlayer()->RestoreSpellMods(this);
        return;
    }

    // CAST SPELL
    // Remove any remaining invis auras on cast completion, should only be gnomish cloaking device
    if (!m_IsTriggeredSpell  && !m_spellInfo->HasAttribute(SPELL_ATTR_EX_NOT_BREAK_STEALTH) && m_casterUnit)
        m_casterUnit->RemoveAurasWithInterruptFlags(AURA_INTERRUPT_FLAG_ON_CAST_SPELL);
    
    SendSpellCooldown();

    TakePower();
    TakeReagents();                                         // we must remove reagents before HandleEffects to allow place crafted item in same slot
    TakeAmmo();

    SendCastResult(castResult);
    InitializeDamageMultipliers();

    // AoE case. Trigger spells for caster now.
    if (m_procAttacker & PROC_FLAG_SUCCESSFUL_AOE && m_canTrigger)
    {
        uint32 procAttacker = 0;
        // Blizzard case. Should trigger at launch for clearcast.
        if (m_spellInfo->IsFitToFamily<SPELLFAMILY_MAGE, CF_MAGE_BLIZZARD>())
            procAttacker = m_procAttacker;
        else
            procAttacker = (m_procAttacker & PROC_FLAG_ON_TRAP_ACTIVATION);
        uint32 procAttackerFlags = procAttacker;
        if (!IsTriggered())
        {
            procAttackerFlags |= (PROC_FLAG_SUCCESSFUL_SPELL_CAST | PROC_FLAG_SUCCESSFUL_AOE);
            if (m_powerCost > 0 && m_spellInfo->powerType == POWER_MANA)
                procAttackerFlags |= PROC_FLAG_SUCCESSFUL_MANA_SPELL_CAST;
        }
        m_caster->ProcDamageAndSpell(nullptr, procAttackerFlags, PROC_FLAG_NONE, PROC_EX_NORMAL_HIT, 1, m_attackType, m_spellInfo, this);
    }

    // Shaman totems. Trigger spell cast procs, but not others
    if (m_spellInfo->IsTotemSummonSpell() && m_canTrigger && m_casterUnit)
    {
        uint32 procAttackerFlags = PROC_FLAG_SUCCESSFUL_SPELL_CAST | PROC_FLAG_SUCCESSFUL_MANA_SPELL_CAST;
        m_casterUnit->ProcDamageAndSpell(m_casterUnit, procAttackerFlags, PROC_FLAG_NONE, PROC_EX_NORMAL_HIT, 1, m_attackType, m_spellInfo, this);
    }

    // Okay, everything is prepared. Now we need to distinguish between immediate and evented delayed spells
    if (m_delayed)
    {
        SendSpellGo();                                          // we must send smsg_spell_go packet before m_castItem delete in TakeCastItem()...
        // Remove used for cast item if need (it can be already nullptr after TakeReagents call
        // in case delayed spell remove item at cast delay start
        TakeCastItem();

        // fill initial spell damage from caster for delayed casted spells
        for (auto& ihit : m_UniqueTargetInfo)
            HandleDelayedSpellLaunch(&ihit);

        // Okay, maps created, now prepare flags
        m_immediateHandled = false;
        m_spellState = SPELL_STATE_DELAYED;
        SetDelayStart(0);
    }
    else
    {
        // Immediate spell, no big deal
        try
        {
            handle_immediate();
        }
        catch (std::runtime_error &e)
        {
            sLog.outInfo("[Spell/Crash] 'handle_immediate()' [%u:%s:%u:%u]", m_spellInfo->Id, m_caster->GetName(), m_caster->GetGUIDLow(), m_caster->GetMapId());
            sLog.outInfo(e.what());
            SetExecutedCurrently(false);
            return;
        }
    }

    if (m_casterUnit && IsMeleeAttackResetSpell() && !(m_spellInfo->AttributesEx2 & SPELL_ATTR_EX2_NOT_RESET_AUTO_ACTIONS))
    {
        m_casterUnit->ResetAttackTimer(BASE_ATTACK);
        if (m_casterUnit->HaveOffhandWeapon())
            m_casterUnit->ResetAttackTimer(OFF_ATTACK);
    }

    m_caster->DecreaseCastCounter();
    SetExecutedCurrently(false);
}

void Spell::handle_immediate()
{
    bool sendGoBefore = true;
    if (m_spellInfo->HasEffect(SPELL_EFFECT_INSTAKILL) || m_spellInfo->HasEffect(SPELL_EFFECT_SPAWN))
        sendGoBefore = false;

    if (sendGoBefore)
        SendSpellGo();
    // process immediate effects (items, ground, etc.) also initialize some variables
    _handle_immediate_phase();

    // start channeling if applicable (after _handle_immediate_phase for get persistent effect dynamic object for channel target
    if (m_spellInfo->IsChanneledSpell() && m_duration)
    {
        m_spellState = SPELL_STATE_CASTING;
        SendChannelStart(m_duration);
        if (m_caster->IsPlayer())
            m_caster->ToPlayer()->RemoveSpellMods(this);
    }

    m_targetNum = 0;
    for (auto ihit = m_UniqueTargetInfo.begin(); ihit != m_UniqueTargetInfo.end(); ++ihit)
    {
        if (m_destroyed || ihit == m_UniqueTargetInfo.end() || m_UniqueTargetInfo.empty())
            break;

        if (ihit->deleted)
            continue;

        ++m_targetNum;
        DoAllEffectOnTarget(&(*ihit));

        // a channeled spell could be interrupted already because the aura on target
        // was diminished to duration=0 see Spell::DoSpellHitOnUnit
        if (m_spellInfo->IsChanneledSpell() && m_spellState != SPELL_STATE_CASTING)
            return;
    }

    for (auto ihit = m_UniqueGOTargetInfo.begin(); ihit != m_UniqueGOTargetInfo.end(); ++ihit)
    {
        if (m_destroyed || ihit == m_UniqueGOTargetInfo.end() || m_UniqueGOTargetInfo.empty())
            break;

        if (ihit->deleted)
            continue;

        DoAllEffectOnTarget(&(*ihit));
    }
    // Effets sur le corps.
    if (m_targets.getCorpseTargetGuid())
        if (corpseTarget = m_caster->GetMap()->GetCorpse(m_targets.getCorpseTargetGuid()))
            for (int i = 0; i < 3; ++i)
                HandleEffects(nullptr, nullptr, nullptr, SpellEffectIndex(i));
    // spell is finished, perform some last features of the spell here
    _handle_finish_phase();

    SendSpellCooldown();

    // Nostalrius: Send spell_go once effects are done (fix visual bug with EFFECT_INSTAKILL for example: 11504)
    if (!sendGoBefore)
        SendSpellGo();                                          // we must send smsg_spell_go packet before m_castItem delete in TakeCastItem()...
    // Remove used for cast item if need (it can be already nullptr after TakeReagents call
    TakeCastItem();

    if (m_spellState != SPELL_STATE_CASTING)
        finish(true);                                       // successfully finish spell cast (not last in case autorepeat or channel spell)
}

uint64 Spell::handle_delayed(uint64 t_offset)
{
    uint64 next_time = 0;

    if (!m_immediateHandled)
    {
        _handle_immediate_phase();
        m_immediateHandled = true;
    }

    m_targetNum = 0;
    // now recheck units targeting correctness (need before any effects apply to prevent adding immunity at first effect not allow apply second spell effect and similar cases)
    for (auto& ihit : m_UniqueTargetInfo)
    {
        if (!ihit.processed)
        {
            if (ihit.timeDelay <= t_offset)
            {
                ++m_targetNum;
                CheckAtDelay(&ihit);
                DoAllEffectOnTarget(&ihit);
            }
            else if (next_time == 0 || ihit.timeDelay < next_time)
                next_time = ihit.timeDelay;
        }
    }

    // now recheck gameobject targeting correctness
    for (auto& ighit : m_UniqueGOTargetInfo)
    {
        if (!ighit.processed)
        {
            if (ighit.timeDelay <= t_offset)
                DoAllEffectOnTarget(&ighit);
            else if (next_time == 0 || ighit.timeDelay < next_time)
                next_time = ighit.timeDelay;
        }
    }
    // All targets passed - need finish phase
    if (next_time == 0)
    {
        // spell is finished, perform some last features of the spell here
        _handle_finish_phase();

        finish(true);                                       // successfully finish spell cast

        // return zero, spell is finished now
        return 0;
    }
    else
    {
        // spell is unfinished, return next execution time
        return next_time;
    }
}

void Spell::_handle_immediate_phase()
{
    // handle some immediate features of the spell here
    HandleThreatSpells();

    m_needSpellLog = IsNeedSendToClient();
    for (int j = 0; j < MAX_EFFECT_INDEX; ++j)
    {
        if (m_spellInfo->Effect[j] == 0)
            continue;

        // apply Send Event effect to ground in case empty target lists
        if (m_spellInfo->Effect[j] == SPELL_EFFECT_SEND_EVENT && !HaveTargetsForEffect(SpellEffectIndex(j)))
        {
            HandleEffects(nullptr, nullptr, nullptr, SpellEffectIndex(j));
            continue;
        }

        // Don't do spell log, if is school damage spell
        if (m_spellInfo->Effect[j] == SPELL_EFFECT_SCHOOL_DAMAGE || m_spellInfo->Effect[j] == 0)
            m_needSpellLog = false;
    }

    // initialize Diminishing Returns Data
    m_diminishLevel = DIMINISHING_LEVEL_1;
    m_diminishGroup = DIMINISHING_NONE;

    // process items
    for (auto& ihit : m_UniqueItemInfo)
        DoAllEffectOnTarget(&ihit);

    // process ground
    for (int j = 0; j < MAX_EFFECT_INDEX; ++j)
    {
        // persistent area auras target only the ground
        if (m_spellInfo->Effect[j] == SPELL_EFFECT_PERSISTENT_AREA_AURA)
            HandleEffects(nullptr, nullptr, nullptr, SpellEffectIndex(j));
    }
}

void Spell::_handle_finish_phase()
{
    // spell log
    if (m_needSpellLog)
        SendLogExecute();
}

void Spell::SendSpellCooldown()
{
    if (!m_casterUnit)
        return;

    // (1) have infinity cooldown but set at aura apply, (2) passive cooldown at triggering
    if (m_spellInfo->Attributes & (SPELL_ATTR_DISABLED_WHILE_ACTIVE | SPELL_ATTR_PASSIVE))
        return;

    if (m_caster->ToPlayer() && m_caster->ToPlayer()->HasOption(PLAYER_CHEAT_NO_COOLDOWN))
        return;

    m_casterUnit->AddSpellAndCategoryCooldowns(m_spellInfo, m_CastItem ? m_CastItem->GetEntry() : 0, this);
}

void Spell::update(uint32 difftime)
{
    // update pointers based at it's GUIDs
    UpdatePointers();

    if (m_targets.getUnitTargetGuid() && !m_targets.getUnitTarget())
    {
        cancel();
        return;
    }

    // check if the player caster has moved before the spell finished
    float nowPosX, nowPosY, nowPosZ, nowO;
    if (m_caster->GetTransport())
    {
        nowPosX = m_caster->GetTransOffsetX();
        nowPosY = m_caster->GetTransOffsetY();
        nowPosZ = m_caster->GetTransOffsetZ();
        nowO = m_caster->GetTransOffsetO();
    }
    else
    {
        nowPosX = m_caster->GetPositionX();
        nowPosY = m_caster->GetPositionY();
        nowPosZ = m_caster->GetPositionZ();
        nowO = m_caster->GetOrientation();
    }
    if ((m_caster->IsPlayer() && m_timer != 0) &&
            (fabs(m_castPositionX - nowPosX) > 0.5f || fabs(m_castPositionY - nowPosY) > 0.5f || fabs(m_castPositionZ - nowPosZ) > 0.5f) &&
            (m_spellInfo->Effect[EFFECT_INDEX_0] != SPELL_EFFECT_STUCK || !((Player*)m_caster)->m_movementInfo.HasMovementFlag(MOVEFLAG_FALLINGFAR)) &&
            ((m_spellInfo->Id != 24322) && (m_spellInfo->Id != 24323)))
    {
        // always cancel for channeled spells
        if (m_spellState == SPELL_STATE_CASTING)
        {
            bool bInterrupt = true;

            if (m_casterUnit)
            {
                // except if its a self root, since player could have moved a bit before root ack (ravager proc)
                for (int i = 0; i < MAX_EFFECT_INDEX; ++i)
                {
                    if ((m_spellInfo->Effect[i] == SPELL_EFFECT_APPLY_AURA) &&
                        ((m_spellInfo->EffectApplyAuraName[i] == SPELL_AURA_MOD_ROOT) || (m_spellInfo->EffectApplyAuraName[i] == SPELL_AURA_MOD_STUN)) &&
                        (m_spellInfo->EffectImplicitTargetA[i] == TARGET_UNIT_CASTER))
                    {
                        bInterrupt = !(m_casterUnit->IsRooted() || m_casterUnit->HasPendingMovementChange(ROOT));
                        break;
                    }
                }
            }

            if (bInterrupt)
                cancel();
        }
        // don't cancel for melee, autorepeat, triggered and instant spells
        else if (!IsNextMeleeSwingSpell() && !IsAutoRepeat() && !m_IsTriggeredSpell && (m_spellInfo->InterruptFlags & SPELL_INTERRUPT_FLAG_MOVEMENT))
            cancel();
    }

    // summoning ritual
    if (GameObject* pGo = m_targets.getGOTarget())
    {
        if (GameObjectInfo const* pInfo = pGo->GetGOInfo())
            // triggered spell
            if (pGo->GetGoType() == GAMEOBJECT_TYPE_SUMMONING_RITUAL &&
                m_spellInfo->Id == pInfo->summoningRitual.spellId &&
                // too many helpers cancelled
                (pGo->GetUniqueUseCount() < pInfo->summoningRitual.reqParticipants ||
                // the warlock cancelled
                (!pInfo->summoningRitual.ritualPersistent && !pGo->GetOwner())))
            {
                cancel();
                pGo->SetGoState(GO_STATE_READY);
                if (!pInfo->summoningRitual.ritualPersistent)
                    pGo->Delete();
            }
    }
    // visual spell and deleted ritual object
    else if (IsChannelingVisual())
        cancel();

    switch (m_spellState)
    {
        case SPELL_STATE_PREPARING:
        {
            if (m_timer)
            {
                // check for incapacitating states
                if (m_casterUnit && m_casterUnit->IsPlayer() && m_casterUnit->HasUnitState(UNIT_STAT_CAN_NOT_REACT))
                    cancel();

                if (difftime >= m_timer)
                    m_timer = 0;
                else
                    m_timer -= difftime;
            }

            if (m_timer == 0 && !IsNextMeleeSwingSpell() && !IsAutoRepeat())
            {
                RemoveStealthAuras();
                cast();
            }
        }
        break;
        case SPELL_STATE_CASTING:
        {
            if (m_timer > 0)
            {
                if (m_caster->IsPlayer() || m_caster->IsPet())
                {
                    // check for incapacitating player states
                    if (m_casterUnit->HasUnitState(UNIT_STAT_CAN_NOT_REACT) && (m_spellInfo->Id != 24322) && (m_spellInfo->Id != 24323))
                        cancel();

                    // check if player has turned if flag is set
                    if (m_spellInfo->ChannelInterruptFlags & CHANNEL_FLAG_TURNING && m_castOrientation != nowO)
                        cancel();
                }
                else if (m_caster->GetTypeId() == TYPEID_UNIT && ((Creature*)m_caster)->IsPet())
                {
                    // for succubus case
                    if (m_casterUnit->HasUnitState(UNIT_STAT_CAN_NOT_REACT))
                    {
                        if (m_casterUnit->HasUnitState(UNIT_STAT_DIED))
                            cancel();

                        if (m_casterUnit->HasUnitState(UNIT_STAT_STUNNED) && !(m_spellInfo->IsChanneledSpell() && m_spellInfo->HasAura(SPELL_AURA_MOD_STUN)))
                            cancel();

                        if (m_casterUnit->HasUnitState(UNIT_STAT_CONFUSED) && !(m_spellInfo->IsChanneledSpell() && m_spellInfo->HasAura(SPELL_AURA_MOD_CONFUSE)))
                            cancel();

                        if (m_casterUnit->HasUnitState(UNIT_STAT_FLEEING) && !(m_spellInfo->IsChanneledSpell() && m_spellInfo->HasAura(SPELL_AURA_MOD_FEAR)))
                            cancel();
                    }
                }

                if (m_caster->IsPlayer() && (m_spellInfo->Id != 24322) && (m_spellInfo->Id != 24323))
                {
                    // check if player has jumped before the channeling finished
                    if (((Player*)m_caster)->m_movementInfo.HasMovementFlag(MOVEFLAG_JUMPING))
                        cancel();

                    // check if player has turned if flag is set
                    if (m_spellInfo->ChannelInterruptFlags & CHANNEL_FLAG_TURNING && m_castOrientation != nowO)
                        cancel();
                }

                // check if there are alive targets left
                if (!HasValidUnitPresentInTargetList())
                {
                    SendChannelUpdate(0);
                    finish();
                }

                if (difftime >= m_timer)
                    m_timer = 0;
                else
                    m_timer -= difftime;
            }

            if (m_timer == 0)
            {
                SendChannelUpdate(0);

                // channeled spell processed independently for quest targeting
                // cast at creature (or GO) quest objectives update at successful cast channel finished
                // ignore autorepeat/melee casts for speed (not exist quest for spells (hm... )
                if (!IsAutoRepeat() && !IsNextMeleeSwingSpell())
                {
                    if (Player* p = m_casterUnit ? m_casterUnit->GetCharmerOrOwnerPlayerOrPlayerItself() : nullptr)
                    {
                        for (const auto& ihit : m_UniqueTargetInfo)
                        {
                            if (ihit.deleted)
                                continue;

                            TargetInfo const& target = ihit;
                            if (!target.targetGUID.IsCreature())
                                continue;

                            Unit* unit = m_caster->GetObjectGuid() == target.targetGUID ? m_casterUnit : ObjectAccessor::GetUnit(*m_caster, target.targetGUID);
                            if (unit == nullptr)
                                continue;

                            p->RewardPlayerAndGroupAtCast(unit, m_spellInfo->Id);
                        }

                        for (const auto& ihit : m_UniqueGOTargetInfo)
                        {
                            if (ihit.deleted)
                                continue;

                            GOTargetInfo const& target = ihit;

                            GameObject* go = m_caster->GetMap()->GetGameObject(target.targetGUID);
                            if (!go)
                                continue;

                            p->RewardPlayerAndGroupAtCast(go, m_spellInfo->Id);
                        }
                    }
                }

                finish();
            }
        }
        break;
        default:
        {
        } break;
    }
}

void Spell::HandleAddTargetTriggerAuras()
{
    if (!m_casterUnit)
        return;

    // handle SPELL_AURA_ADD_TARGET_TRIGGER auras
    auto const& targetTriggers = m_casterUnit->GetAurasByType(SPELL_AURA_ADD_TARGET_TRIGGER);
    for (const auto targetTrigger : targetTriggers)
    {
        if (!targetTrigger->isAffectedOnSpell(m_spellInfo))
            continue;
        for (const auto& ihit : m_UniqueTargetInfo)
        {
            if (ihit.deleted)
                continue;
            Unit* target = nullptr;
            if (ihit.missCondition == SPELL_MISS_NONE)
                target = m_casterUnit->GetObjectGuid() == ihit.targetGUID ? m_casterUnit : ObjectAccessor::GetUnit(*m_casterUnit, ihit.targetGUID);
            else if (ihit.missCondition == SPELL_MISS_REFLECT && ihit.reflectResult == SPELL_MISS_NONE)
                target = m_casterUnit;
            if (!target)
                continue;
            if (target && target->IsAlive())
            {
                SpellEntry const* auraSpellInfo = targetTrigger->GetSpellProto();
                SpellEffectIndex auraSpellIdx = targetTrigger->GetEffIndex();
                // Calculate chance at that moment (can be depend for example from combo points)
                int32 auraBasePoints = targetTrigger->GetBasePoints();
                int32 chance = m_casterUnit->CalculateSpellDamage(target, auraSpellInfo, auraSpellIdx, &auraBasePoints);
                if ((m_casterUnit->IsPlayer() && m_casterUnit->ToPlayer()->HasOption(PLAYER_CHEAT_ALWAYS_PROC)) || roll_chance_i(chance))
                    m_casterUnit->CastSpell(target, auraSpellInfo->EffectTriggerSpell[auraSpellIdx], true, nullptr, targetTrigger);
            }
        }
    }
}

void Spell::finish(bool ok)
{
    m_successCast = ok;

    if (!m_caster)
        return;

    if (m_spellState == SPELL_STATE_FINISHED)
        return;

    m_spellState = SPELL_STATE_FINISHED;

    // Clear the creature's casting target so it faces victim
    if (m_setCreatureTarget)
        static_cast<Creature*>(m_caster)->ClearCastingTarget();

    if (Player* pPlayer = m_caster->ToPlayer())
    {
        if (!ok && pPlayer->GetClass() == CLASS_WARLOCK)
        {
            // Fix a client problem with ritual of doom, by itself it disables
            // the spell during cast and then the spell stays disabled
            // Ignore the spell when it's triggered (ritual helper)
            if (m_spellInfo->Id == 18540 && !m_IsTriggeredSpell
                && !pPlayer->HasSpellCooldown(m_spellInfo->Id))
                pPlayer->ToPlayer()->SendClearCooldown(18540, pPlayer);
        }
    }

    // Restore pet movement after spell (succubus after seduce)
    if (CharmInfo* ci = m_casterUnit ? m_casterUnit->GetCharmInfo() : nullptr)
    {
        ci->SetIsAtStay(false);
        ci->SetIsCommandFollow(false);
        ci->SetIsFollowing(false);
        ci->SetIsReturning(false);
    }

    // other code related only to successfully finished spells
    if (!ok)
    {
        CancelGlobalCooldown();
        if (m_caster->IsPlayer())
            m_caster->ToPlayer()->RestoreSpellMods(this);
        return;
    }

    if (!m_spellInfo->IsChanneledSpell())
        HandleAddTargetTriggerAuras();

    // Heal caster for all health leech from all targets
    if (m_healthLeech && m_casterUnit)
        m_casterUnit->DealHeal(m_casterUnit, uint32(m_healthLeech), m_spellInfo);

    // Clear combo at finish state
    if (m_caster->IsPlayer() && m_spellInfo->NeedsComboPoints())
    {
        // Not drop combopoints if negative spell and if any miss on enemy exist
        bool needDrop = true;
        if (!m_spellInfo->IsPositiveSpell())
        {
            for (const auto& ihit : m_UniqueTargetInfo)
            {
                if (ihit.deleted)
                    continue;

                if (ihit.missCondition != SPELL_MISS_NONE && ihit.targetGUID != m_caster->GetObjectGuid())
                {
                    needDrop = false;
                    break;
                }
            }
        }
        if (needDrop)
            ((Player*)m_caster)->ClearComboPoints();
    }

    // call triggered spell only at successful cast (after clear combo points -> for add some if need)
    if (!m_TriggerSpells.empty())
        CastTriggerSpells();

    // Gnomish Death Ray
    if (m_spellInfo->Id == 13278)
    {
        if (Unit* const pTarget = m_targets.getUnitTarget())
        {
            SpellEntry const *DRLaunchEntry = sSpellMgr.GetSpellEntry(13279);
            int32 DRdamage = m_caster->CalculateSpellDamage(pTarget, DRLaunchEntry, EFFECT_INDEX_0, m_currentBasePoints, nullptr);
            m_caster->CastCustomSpell(pTarget, 13279, &DRdamage, nullptr, nullptr, true, m_CastItem);
        }
    }

    if (m_caster->IsPlayer())
    {
        m_caster->ToPlayer()->RemoveSpellMods(this);

        // summoning ritual triggered spell successfull hit
        if (GameObject* pGo = m_targets.getGOTarget())
            if (pGo->GetGoType() == GAMEOBJECT_TYPE_SUMMONING_RITUAL)
                if (m_spellInfo->Id == pGo->GetGOInfo()->summoningRitual.spellId)
                    pGo->FinishRitual();
    }
    
    if (m_casterUnit)
    {
        // Stop Attack for some spells
        if (m_spellInfo->Attributes & SPELL_ATTR_STOP_ATTACK_TARGET)
        {
            m_casterUnit->AttackStop();
            m_casterUnit->InterruptSpell(CURRENT_AUTOREPEAT_SPELL);
        }
        else if ((m_spellInfo->AttributesEx & SPELL_ATTR_EX_MELEE_COMBAT_START))
        {
            // Pets should initiate melee combat on spell with this flag. (Growl)
            if (Pet* pPet = m_casterUnit->ToPet())
                if (pPet->AI() && pPet->GetCharmInfo())
                    if (Unit* const pTarget = m_targets.getUnitTarget())
                    {
                        pPet->GetCharmInfo()->SetIsCommandAttack(true);
                        pPet->AI()->AttackStart(pTarget);
                    }
        }
    }
}

void Spell::SendCastResult(SpellCastResult result)
{
    if (!m_caster->IsPlayer())
        return;

    if (((Player*)m_caster)->GetSession()->PlayerLoading()) // don't send cast results at loading time
        return;

    if (result == SPELL_CAST_OK && m_IsTriggeredSpell)
        return;

    SendCastResult((Player*)m_caster, m_originalSpellInfo ? m_originalSpellInfo : m_spellInfo, result);
}

void Spell::SendCastResult(Player* caster, SpellEntry const* spellInfo, SpellCastResult result)
{
    WorldPacket data(SMSG_CAST_RESULT, (4 + 1 + 1));
    data << uint32(spellInfo->Id);

    if (result != SPELL_CAST_OK)
    {
        data << uint8(2); // status = fail
        data << uint8(spellInfo->IsPassiveSpell() ? SPELL_FAILED_DONT_REPORT : result); // problem
        switch (result)
        {
            case SPELL_FAILED_REQUIRES_SPELL_FOCUS:
                data << uint32(spellInfo->RequiresSpellFocus);
                break;
            case SPELL_FAILED_REQUIRES_AREA:
                data << uint32(sSpellMgr.GetRequiredAreaForSpell(spellInfo->Id));
                break;
            case SPELL_FAILED_EQUIPPED_ITEM_CLASS:
                data << uint32(spellInfo->EquippedItemClass);
                data << uint32(spellInfo->EquippedItemSubClassMask);
                data << uint32(spellInfo->EquippedItemInventoryTypeMask);
                break;
            default:
                break;
        }
    }
    else
        data << uint8(0);

    caster->GetSession()->SendPacket(&data);
}

void Spell::SendSpellStart()
{
    if (!IsNeedSendToClient())
        return;

    DEBUG_FILTER_LOG(LOG_FILTER_SPELL_CAST, "Sending SMSG_SPELL_START id=%u", m_spellInfo->Id);

    uint32 castFlags = CAST_FLAG_UNKNOWN2;
    if (IsRangedSpell())
        castFlags |= CAST_FLAG_AMMO;

    // Youfie <Nostalrius> : Sandtrap : dans le combatlog il n'y a plus de debuff avant l'apparition du Sand trap
    // Seul truc pas Blizz-like : c'est le joueur qui caste le sort, et pas Kurinaxx ; faudra fix dans le script de Kurinaxx quand le core sera debug pour le supporter
    if (m_spellInfo->Id == 25648)
        castFlags = CAST_FLAG_HIDDEN_COMBATLOG;

    WorldPacket data(SMSG_SPELL_START, (8 + 8 + 4 + 2 + 4));
    if (m_CastItem)
        data << m_CastItem->GetPackGUID();
    else
        data << m_caster->GetPackGUID();

    data << m_caster->GetPackGUID();

    data << uint32(m_spellInfo->Id);                        // spellId
    data << uint16(castFlags);                              // cast flags
    data << uint32(m_timer);                                // delay?

    data << m_targets;

    if (castFlags & CAST_FLAG_AMMO)                         // projectile info
        WriteAmmoToPacket(&data);

    m_caster->SendObjectMessageToSet(&data, true);
}

void Spell::SendSpellGo(bool bSendToCaster)
{
    // not send invisible spell casting
    if (!IsNeedSendToClient())
        return;

    uint32 castFlags = CAST_FLAG_UNKNOWN9;
    if (IsRangedSpell())
        castFlags |= CAST_FLAG_AMMO;                        // arrows/bullets visual

    WorldPacket data(SMSG_SPELL_GO, 53);                    // guess size

    if (m_CastItem)
        data << m_CastItem->GetPackGUID();
    else
        data << m_caster->GetPackGUID();

    // (HACK) Don't display cast animation for Flametongue Weapon proc
    // TODO - figure out the rule for why some procs should or should not have cast animations
    // e.g. rogue poison proc should have animation
    if (m_spellInfo->Id == 10444)
        data << PackedGuid();
     else
        data << m_caster->GetPackGUID();

    data << uint32(m_spellInfo->Id);                        // spellId
    data << uint16(castFlags);                              // cast flags

    WriteSpellGoTargets(&data);

    data << m_targets;

    if (castFlags & CAST_FLAG_AMMO)                         // projectile info
        WriteAmmoToPacket(&data);

    m_caster->SendObjectMessageToSet(&data, bSendToCaster);
}

void Spell::WriteAmmoToPacket(WorldPacket* data)
{
    uint32 ammoInventoryType = 0;
    uint32 ammoDisplayID = 0;

    if (m_caster->IsPlayer())
    {
        Item *pItem = ((Player*)m_caster)->GetWeaponForAttack(RANGED_ATTACK);
        if (pItem)
        {
            ammoInventoryType = pItem->GetProto()->InventoryType;
            if (ammoInventoryType == INVTYPE_THROWN)
                ammoDisplayID = pItem->GetProto()->DisplayInfoID;
            else
            {
                uint32 ammoID = ((Player*)m_caster)->GetUInt32Value(PLAYER_AMMO_ID);
                if (ammoID)
                {
                    ItemPrototype const *pProto = ObjectMgr::GetItemPrototype(ammoID);
                    if (pProto)
                    {
                        ammoDisplayID = pProto->DisplayInfoID;
                        ammoInventoryType = pProto->InventoryType;
                    }
                }
            }
        }
    }
    else
    {
        for (uint8 i = 0; i < MAX_VIRTUAL_ITEM_SLOT; ++i)
        {
            // see Creature::SetVirtualItem for structure data
            if (uint32 item_class = m_caster->GetByteValue(UNIT_VIRTUAL_ITEM_INFO + (i * 2) + 0, VIRTUAL_ITEM_INFO_0_OFFSET_CLASS))
            {
                if (item_class == ITEM_CLASS_WEAPON)
                {
                    switch (m_caster->GetByteValue(UNIT_VIRTUAL_ITEM_INFO + (i * 2) + 0, VIRTUAL_ITEM_INFO_0_OFFSET_SUBCLASS))
                    {
                        case ITEM_SUBCLASS_WEAPON_THROWN:
                            if (m_casterUnit)
                            {
                                ammoDisplayID = m_casterUnit->GetUInt32Value(UNIT_VIRTUAL_ITEM_DISPLAY + i);
                                ammoInventoryType = m_casterUnit->GetByteValue(UNIT_VIRTUAL_ITEM_INFO + (i * 2) + 0, VIRTUAL_ITEM_INFO_0_OFFSET_INVENTORYTYPE);
                            }
                            break;
                        case ITEM_SUBCLASS_WEAPON_BOW:
                        case ITEM_SUBCLASS_WEAPON_CROSSBOW:
                            ammoDisplayID = 5996;           // is this need fixing?
                            ammoInventoryType = INVTYPE_AMMO;
                            break;
                        case ITEM_SUBCLASS_WEAPON_GUN:
                            ammoDisplayID = 5998;           // is this need fixing?
                            ammoInventoryType = INVTYPE_AMMO;
                            break;
                    }

                    if (ammoDisplayID)
                        break;
                }
            }
        }
    }

    *data << uint32(ammoDisplayID);
    *data << uint32(ammoInventoryType);
}

void Spell::WriteSpellGoTargets(WorldPacket* data)
{
    // This function also fill data for channeled spells:
    // m_needAliveTargetMask req for stop channelig if one target die
    for (auto& ihit : m_UniqueTargetInfo)
    {
        if (ihit.effectMask == 0)                  // No effect apply - all immuned add state
            // possibly SPELL_MISS_IMMUNE2 for this??
            ihit.missCondition = SPELL_MISS_IMMUNE2;
    }

    uint32 hit = 0;
    size_t hitPos = data->wpos();
    *data << (uint8)0; // placeholder

    for (auto& ihit : m_UniqueTargetInfo)
    {
        if (ihit.missCondition == SPELL_MISS_NONE)
        {
            *data << ihit.targetGUID;                          // in 1.12.1 expected all targets
            m_needAliveTargetMask |= ihit.effectMask;
            ++hit;
        }
    }

    for (const auto& ighit : m_UniqueGOTargetInfo)
    {
        *data << ighit.targetGUID;                         // Always hits
        ++hit;
    }

    uint32 miss = 0;
    size_t missPos = data->wpos();
    *data << (uint8)0; // placeholder
    for (const auto& ihit : m_UniqueTargetInfo)
    {
        if (ihit.missCondition != SPELL_MISS_NONE)        // Add only miss
        {
            *data << (ihit.targetGUID);
            *data << uint8(ihit.missCondition);
            if (ihit.missCondition == SPELL_MISS_REFLECT)
                *data << uint8(ihit.reflectResult);
            ++miss;
        }
    }
    // Reset m_needAliveTargetMask for non channeled spell
    if (!m_spellInfo->IsChanneledSpell())
        m_needAliveTargetMask = 0;

    data->put<uint8>(hitPos, (uint8)hit);
    data->put<uint8>(missPos, (uint8)miss);
}

void Spell::SendLogExecute()
{
    WorldPacket data(SMSG_SPELLLOGEXECUTE, (8 + 4 + 4 + 4 + 4 + 8));

    data << m_caster->GetPackGUID();

    data << uint32(m_spellInfo->Id);

    uint32 effectCount = 0;

    for (const auto& i : m_executeLogInfo)
    {
        if (!i.empty())
            effectCount++;
    }

    if (!effectCount)
        return;

    data << uint32(effectCount);

    for (uint32 i = 0; i < MAX_EFFECT_INDEX; ++i)
    {
        if (m_executeLogInfo[i].empty())
            continue;

        data << uint32(m_spellInfo->Effect[i]);
        data << uint32(m_executeLogInfo[i].size());

        for (uint32 j = 0; j < m_executeLogInfo[i].size(); ++j)
        {
            ExecuteLogInfo info = m_executeLogInfo[i][j];
            switch (m_spellInfo->Effect[i])
            {
                case SPELL_EFFECT_POWER_DRAIN:
                    data << info.targetGuid;
                    data << info.powerDrain.amount;
                    data << info.powerDrain.power;
                    data << info.powerDrain.multiplier;
                    break;
                case SPELL_EFFECT_HEAL:
                case SPELL_EFFECT_HEAL_MAX_HEALTH:
                    data << info.targetGuid;
                    data << info.heal.amount;
                    data << info.heal.critical;
                    break;
                case SPELL_EFFECT_ENERGIZE:
                    data << info.targetGuid;
                    data << info.energize.amount;
                    data << info.energize.powerType;
                    break;
                case SPELL_EFFECT_ADD_EXTRA_ATTACKS:
                    data << info.targetGuid;
                    data << info.extraAttacks.count;
                    break;
                case SPELL_EFFECT_CREATE_ITEM:
                    data << info.createItem.itemEntry;
                    break;
                case SPELL_EFFECT_INTERRUPT_CAST:
                    data << info.targetGuid;
                    data << info.interruptCast.spellId;
                    break;
                case SPELL_EFFECT_FEED_PET:
                    data << info.feedPet.itemEntry;
                    break;
                case SPELL_EFFECT_DURABILITY_DAMAGE:
                    data << info.targetGuid;
                    data << info.durabilityDamage.itemEntry;
                    data << info.durabilityDamage.unk;
                    break;
                case SPELL_EFFECT_INSTAKILL:
                case SPELL_EFFECT_RESURRECT:
                case SPELL_EFFECT_DISPEL:
                case SPELL_EFFECT_THREAT:
                case SPELL_EFFECT_DISTRACT:
                case SPELL_EFFECT_SANCTUARY:
                case SPELL_EFFECT_THREAT_ALL:
                case SPELL_EFFECT_DISPEL_MECHANIC:
                case SPELL_EFFECT_RESURRECT_NEW:
                case SPELL_EFFECT_ATTACK_ME:
                case SPELL_EFFECT_SKIN_PLAYER_CORPSE:
                case SPELL_EFFECT_MODIFY_THREAT_PERCENT:
                case SPELL_EFFECT_126:
                case SPELL_EFFECT_OPEN_LOCK:
                case SPELL_EFFECT_OPEN_LOCK_ITEM:
                case SPELL_EFFECT_DISMISS_PET:
                case SPELL_EFFECT_TRANS_DOOR:
                case SPELL_EFFECT_SUMMON:
                case SPELL_EFFECT_SUMMON_PET:
                case SPELL_EFFECT_SUMMON_WILD:
                case SPELL_EFFECT_SUMMON_GUARDIAN:
                case SPELL_EFFECT_SUMMON_TOTEM_SLOT1:
                case SPELL_EFFECT_SUMMON_TOTEM_SLOT2:
                case SPELL_EFFECT_SUMMON_TOTEM_SLOT3:
                case SPELL_EFFECT_SUMMON_TOTEM_SLOT4:
                case SPELL_EFFECT_SUMMON_POSSESSED:
                case SPELL_EFFECT_SUMMON_TOTEM:
                case SPELL_EFFECT_SUMMON_CRITTER:
                case SPELL_EFFECT_SUMMON_OBJECT_WILD:
                case SPELL_EFFECT_SUMMON_OBJECT_SLOT1:
                case SPELL_EFFECT_SUMMON_OBJECT_SLOT2:
                case SPELL_EFFECT_SUMMON_OBJECT_SLOT3:
                case SPELL_EFFECT_SUMMON_OBJECT_SLOT4:
                case SPELL_EFFECT_SUMMON_DEMON:
                    data << info.targetGuid;
                     break;
                 default:
                     return;
            }
        }
    }

    m_caster->SendMessageToSet(&data, true);
}

void Spell::SendInterrupted(uint8 result)
{
    // Nostalrius : fix animation de cast a l'interruption d'un sort
    // Ce premier paquet ne sert apparement a rien ...
    // Ce second paquet informe les joueurs aux alentours que le sort a ete interrompu.
    WorldPacket data(SMSG_SPELL_FAILED_OTHER, (8 + 4));
    data << m_caster->GetObjectGuid(); // Pareil que pour SMSG_SPELL_FAILURE
    data << m_spellInfo->Id;
    m_caster->SendObjectMessageToSet(&data, true);
}

void Spell::SendChannelUpdate(uint32 time, bool interrupted)
{
    bool x = false;
    if (m_spellInfo->SpellFamilyName == SPELLFAMILY_MAGE)
        x = true;

    if (!time)
    {
        // Reset farsight for some possessing auras of possessed summoned (as they might work with different aura types)
        if (m_spellInfo->Attributes & SPELL_ATTR_EX_FARSIGHT && m_caster->IsPlayer() && m_casterUnit->GetCharmGuid()
            && !m_spellInfo->HasAura(SPELL_AURA_MOD_POSSESS) && !m_spellInfo->HasAura(SPELL_AURA_MOD_POSSESS_PET))
        {
            Player* player = (Player*)m_caster;
            // These Auras are applied to self, so get the possessed first
            Unit* possessed = player->GetCharm();

            player->SetCharm(nullptr);
            if (possessed)
                player->SetClientControl(possessed, 0);
            player->SetMover(nullptr);
            player->GetCamera().ResetView();
            player->RemovePetActionBar();

            if (possessed)
            {
                possessed->ClearUnitState(UNIT_STAT_POSSESSED);
                possessed->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_POSSESSED);
                possessed->SetCharmerGuid(ObjectGuid());
                // TODO - Requires more specials for target?

                // Some possessed might want to despawn?
                if (possessed->GetUInt32Value(UNIT_CREATED_BY_SPELL) == m_spellInfo->Id && possessed->IsCreature())
                    ((Creature*)possessed)->ForcedDespawn();
            }
        }

        m_casterUnit->RemoveAurasByCasterSpell(m_spellInfo->Id, m_caster->GetObjectGuid());

        ObjectGuid target_guid = m_casterUnit ? m_casterUnit->GetChannelObjectGuid() : ObjectGuid();
        if (target_guid != m_caster->GetObjectGuid() && target_guid.IsUnit())
        {
            if (Unit* target = ObjectAccessor::GetUnit(*m_caster, target_guid))
                // Remove single target auras on target now if they expired
                target->RemoveAurasByCasterSpell(m_spellInfo->Id, m_caster->GetObjectGuid());
        }
    }
    // Only modify/send values if we are the current channeled spell !
    if (m_caster->GetCurrentSpell(CURRENT_CHANNELED_SPELL) && m_caster->GetCurrentSpell(CURRENT_CHANNELED_SPELL) != this)
        return;

    if (!m_casterUnit)
        return;

    if (!time)
    {
        // Reset of channel values has to be done after a few delay.
        // Else, we have some visual bugs (arcane projectile, last tick)
        ChannelResetEvent* event = new ChannelResetEvent(m_casterUnit);
        m_casterUnit->m_Events.AddEventAtOffset(event, 1000);
	// Sources show that prior to Patch 1.9.0, AM could not trigger Clearcasting. After 1.9.0, it could.
	// In Patch 3.0.8, this was changed to one chance per cast, meaning it was one chance per pulse between Patch 1.9.0 and Patch 3.0.8.
    }
    else if (Player* pPlayer = m_casterUnit->ToPlayer())
    {
        WorldPacket data(MSG_CHANNEL_UPDATE, 4);
        data << uint32(time);
        pPlayer->SendDirectMessage(&data);
    }
}

void Spell::SendChannelStart(uint32 duration)
{
    WorldObject* target = nullptr;

    // select dynobject created by first effect if any
    if (m_spellInfo->Effect[EFFECT_INDEX_0] == SPELL_EFFECT_PERSISTENT_AREA_AURA)
        target = m_caster->GetDynObject(m_spellInfo->Id, EFFECT_INDEX_0);
    // select first not resisted target from target list for _0_ effect
    else if (!m_UniqueTargetInfo.empty())
    {
        for (const auto& itr : m_UniqueTargetInfo)
        {
            if (itr.deleted)
                continue;

            if ((itr.effectMask & (1 << EFFECT_INDEX_0)) && itr.reflectResult == SPELL_MISS_NONE &&
                    itr.targetGUID != m_caster->GetObjectGuid())
            {
                target = ObjectAccessor::GetUnit(*m_caster, itr.targetGUID);
                break;
            }
        }
    }
    else if (!m_UniqueGOTargetInfo.empty())
    {
        for (const auto& itr : m_UniqueGOTargetInfo)
        {
            if (itr.deleted)
                continue;

            if (itr.effectMask & (1 << EFFECT_INDEX_0))
            {
                target = m_caster->GetMap()->GetGameObject(itr.targetGUID);
                break;
            }
        }
    }

    if (m_caster->IsPlayer())
    {
        WorldPacket data(MSG_CHANNEL_START, 4 + 4);
        data << uint32(m_spellInfo->Id);
        data << uint32(duration);
        m_caster->ToPlayer()->SendDirectMessage(&data);
    }

    m_timer = duration;

    if (m_casterUnit)
    {
        if (target)
            m_casterUnit->SetChannelObjectGuid(target->GetObjectGuid());
        m_casterUnit->SetUInt32Value(UNIT_CHANNEL_SPELL, m_spellInfo->Id);
    }
}

void Spell::SendResurrectRequest(Player* target)
{
    // Both players and NPCs can resurrect using spells - have a look at creature 28487 for example
    // However, the packet structure differs slightly

    const char* sentName = m_caster->IsPlayer() ? "" : m_caster->GetNameForLocaleIdx(target->GetSession()->GetSessionDbLocaleIndex());

    WorldPacket data(SMSG_RESURRECT_REQUEST, (8 + 4 + strlen(sentName) + 1 + 1 + 1));
    data << m_caster->GetObjectGuid();
    data << uint32(strlen(sentName) + 1);

    data << sentName;
    data << uint8(0);

    data << uint8(m_caster->IsPlayer() ? 0 : 1);
    target->GetSession()->SendPacket(&data);
}

void Spell::TakeCastItem()
{
    if (!m_CastItem || !m_caster->IsPlayer())
        return;

    // not remove cast item at triggered spell (equipping, weapon damage, etc)
    if (m_IsTriggeredSpell && !(m_targets.m_targetMask & TARGET_FLAG_TRADE_ITEM))
        return;

    ItemPrototype const *proto = m_CastItem->GetProto();

    if (!proto)
    {
        // This code is to avoid a crash
        // I'm not sure, if this is really an error, but I guess every item needs a prototype
        sLog.outError("Cast item (%s) has no item prototype", m_CastItem->GetGuidStr().c_str());
        return;
    }

    bool expendable = false;
    bool withoutCharges = false;

    for (int i = 0; i < MAX_ITEM_PROTO_SPELLS; ++i)
    {
        if (proto->Spells[i].SpellId)
        {
            // item has limited charges
            if (proto->Spells[i].SpellCharges)
            {
                if (proto->Spells[i].SpellCharges < 0)
                    expendable = true;

                int32 charges = m_CastItem->GetSpellCharges(i);

                // item has charges left
                if (charges)
                {
                    (charges > 0) ? --charges : ++charges;  // abs(charges) less at 1 after use

                    if (proto->Stackable < 2)
                        m_CastItem->SetSpellCharges(i, charges);

                    m_CastItem->SetState(ITEM_CHANGED, (Player*)m_caster);
                }

                // all charges used
                withoutCharges = (charges == 0);
            }
        }
    }

    if (expendable && withoutCharges)
    {
        uint32 count = 1;
        Item* castItem = m_CastItem;
        // prevent crash at access to deleted m_targets.getItemTarget
        ClearCastItem();
        // Destroying the item involved in a spell interrupts the spell. So delete the item once we cleared the spell cast item.
        ((Player*)m_caster)->DestroyItemCount(castItem, count, true);
    }
}

void Spell::TakePower()
{
    if (m_CastItem || m_triggeredByAuraSpell || IsChannelingVisual() || !m_casterUnit)
        return;

    // health as power used
    if (m_spellInfo->powerType == POWER_HEALTH)
    {
        m_casterUnit->ModifyHealth(-(int32)m_powerCost);
        return;
    }

    if (m_spellInfo->powerType >= MAX_POWERS)
    {
        sLog.outError("Spell::TakePower: Unknown power type '%d'", m_spellInfo->powerType);
        return;
    }

    Powers powerType = Powers(m_spellInfo->powerType);

    m_casterUnit->ModifyPower(powerType, -(int32)m_powerCost);

    // Set the five second timer
    if (powerType == POWER_MANA && m_powerCost > 0)
        m_casterUnit->SetLastManaUse(m_spellInfo->Id);
}

void Spell::TakeReagents()
{
    if (!m_caster->IsPlayer())
        return;

    if (IgnoreItemRequirements())                           // reagents used in triggered spell removed by original spell or don't must be removed.
        return;

    Player* p_caster = (Player*)m_caster;

    for (uint32 x = 0; x < MAX_SPELL_REAGENTS; ++x)
    {
        if (m_spellInfo->Reagent[x] <= 0)
            continue;

        uint32 itemid = m_spellInfo->Reagent[x];
        uint32 itemcount = m_spellInfo->ReagentCount[x];

        // if CastItem is also spell reagent
        if (m_CastItem)
        {
            ItemPrototype const *proto = m_CastItem->GetProto();
            if (proto && proto->ItemId == itemid)
            {
                for (int s = 0; s < MAX_ITEM_PROTO_SPELLS; ++s)
                {
                    // CastItem will be used up and does not count as reagent
                    int32 charges = m_CastItem->GetSpellCharges(s);
                    if (proto->Spells[s].SpellCharges < 0 && abs(charges) < 2 && itemcount > 1)
                    {
                        ++itemcount;
                        break;
                    }
                }

                m_CastItem = nullptr;
            }
        }

        // if getItemTarget is also spell reagent
        if (m_targets.getItemTargetEntry() == itemid)
            m_targets.setItemTarget(nullptr);

        p_caster->DestroyItemCount(itemid, itemcount, true);
    }
}

void Spell::TakeAmmo()
{
    Player* pCaster = m_caster->ToPlayer();
    if (!pCaster)
        return;

    // Some ranged attacks dont take any ammo
    switch (m_spellInfo->Id)
    {
        case 2094:  // Blind
        case 13099: // Net-o-Matic
        case 13119: // Net-o-Matic
        case 23577: // Expose Weakness
            return;
    }
            
    if (m_attackType == RANGED_ATTACK)
    {
        Item *pItem = pCaster->GetWeaponForAttack(RANGED_ATTACK, true, false);

        // Wands don't have ammo
        if (!pItem || pItem->GetProto()->SubClass == ITEM_SUBCLASS_WEAPON_WAND)
            return;

        if (pItem->GetProto()->InventoryType == INVTYPE_THROWN)
        {
            if (pItem->GetMaxStackCount() == 1)
            {
                // decrease durability for non-stackable throw weapon
                pCaster->DurabilityPointLossForEquipSlot(EQUIPMENT_SLOT_RANGED);
            }
            else
            {
                // decrease items amount for stackable throw weapon
                uint32 count = 1;
                pCaster->DestroyItemCount(pItem, count, true);
            }
        }
        else if (uint32 ammo = pCaster->GetUInt32Value(PLAYER_AMMO_ID))
            pCaster->DestroyItemCount(ammo, 1, true);
    }
}

void Spell::HandleThreatSpells()
{
    if (!m_casterUnit)
        return;

    if (m_UniqueTargetInfo.empty())
        return;

    SpellThreatEntry const* threatEntry = sSpellMgr.GetSpellThreatEntry(m_spellInfo->Id);

    if (!threatEntry || (!threatEntry->threat && threatEntry->ap_bonus == 0.0f))
        return;

    float threat = threatEntry->threat;
    if (threatEntry->ap_bonus != 0.0f)
        threat += threatEntry->ap_bonus * m_casterUnit->GetTotalAttackPowerValue(m_spellInfo->GetWeaponAttackType());

    bool positive = true;
    uint8 effectMask = 0;
    for (int i = 0; i < MAX_EFFECT_INDEX; ++i)
        if (m_spellInfo->Effect[i])
            effectMask |= (1 << i);

    if (m_negativeEffectMask & effectMask)
    {
        // can only handle spells with clearly defined positive/negative effect, check at spell_threat loading probably not perfect
        // so abort when only some effects are negative.
        if ((m_negativeEffectMask & effectMask) != effectMask)
        {
            DEBUG_FILTER_LOG(LOG_FILTER_SPELL_CAST, "Spell %u, rank %u, is not clearly positive or negative, ignoring bonus threat", m_spellInfo->Id, sSpellMgr.GetSpellRank(m_spellInfo->Id));
            return;
        }
        positive = false;
    }

    for (const auto& ihit : m_UniqueTargetInfo)
    {
        if (ihit.missCondition != SPELL_MISS_NONE)
            continue;

        Unit* target = m_casterUnit->GetObjectGuid() == ihit.targetGUID ? m_casterUnit : ObjectAccessor::GetUnit(*m_casterUnit, ihit.targetGUID);
        if (!target)
            continue;

        // positive spells distribute threat among all units that are in combat with target, like healing
        if (positive)
            target->GetHostileRefManager().threatAssist(m_casterUnit /*real_caster ??*/, threat, m_spellInfo);
        // for negative spells threat gets distributed among affected targets
        else
        {
            if (!target->CanHaveThreatList())
                continue;

            target->AddThreat(m_casterUnit, threat, false, m_spellInfo->GetSpellSchoolMask(), m_spellInfo);
        }
    }

    DEBUG_FILTER_LOG(LOG_FILTER_SPELL_CAST, "Spell %u added an additional %f threat for %s %u target(s)", m_spellInfo->Id, threat, positive ? "assisting" : "harming", uint32(m_UniqueTargetInfo.size()));
}

void Spell::HandleEffects(Unit *pUnitTarget, Item *pItemTarget, GameObject *pGOTarget, SpellEffectIndex i, float DamageMultiplier)
{
    // a summoning ritual visual has no effect
    if (IsChannelingVisual())
        return;

    unitTarget = pUnitTarget;
    itemTarget = pItemTarget;
    gameObjTarget = pGOTarget;

    uint8 eff = m_spellInfo->Effect[i];

    damage = int32(CalculateDamage(i, unitTarget) * DamageMultiplier);

    DEBUG_FILTER_LOG(LOG_FILTER_SPELL_CAST, "Spell %u Effect%d : %u Targets: %s, %s, %s",
                     m_spellInfo->Id, i, eff,
                     unitTarget ? unitTarget->GetGuidStr().c_str() : "-",
                     itemTarget ? itemTarget->GetGuidStr().c_str() : "-",
                     gameObjTarget ? gameObjTarget->GetGuidStr().c_str() : "-");

    if (eff < TOTAL_SPELL_EFFECTS)
        (*this.*SpellEffects[eff])(i);
    else
        sLog.outError("WORLD: Spell %u has effect %d at index %u > TOTAL_SPELL_EFFECTS",
            m_spellInfo->Id, eff, i);
}

void Spell::AddTriggeredSpell(uint32 spellId)
{
    SpellEntry const *spellInfo = sSpellMgr.GetSpellEntry(spellId);

    if (!spellInfo)
    {
        sLog.outError("Spell::AddTriggeredSpell: unknown spell id %u used as triggred spell for spell %u)", spellId, m_spellInfo->Id);
        return;
    }

    m_TriggerSpells.push_back(spellInfo);
}

void Spell::AddPrecastSpell(uint32 spellId)
{
    SpellEntry const *spellInfo = sSpellMgr.GetSpellEntry(spellId);

    if (!spellInfo)
    {
        sLog.outError("Spell::AddPrecastSpell: unknown spell id %u used as pre-cast spell for spell %u)", spellId, m_spellInfo->Id);
        return;
    }

    m_preCastSpells.push_back(spellInfo);
}

void Spell::CastTriggerSpells()
{
    for (const auto spellInfo : m_TriggerSpells)
    {
        Spell* spell = m_casterUnit ? new Spell(m_casterUnit, spellInfo, true, m_originalCasterGUID) : new Spell(m_casterGo, spellInfo, true, m_originalCasterGUID);
        spell->prepare(m_targets); // use original spell original targets
    }
}

void Spell::CastPreCastSpells(Unit* target)
{
    for (const auto spellInfo : m_preCastSpells)
        m_caster->CastSpell(target, spellInfo, true, m_CastItem);
}

SpellCastResult Spell::CheckCast(bool strict)
{
    if (m_caster->IsPlayer() && m_caster->ToPlayer()->HasOption(PLAYER_CHEAT_NO_CHECK_CAST))
        return SPELL_CAST_OK;

    // Prevent casting while sitting unless the spell allows it
    if (!m_IsTriggeredSpell && m_casterUnit && !m_casterUnit->IsStandingUp() && !(m_spellInfo->Attributes & SPELL_ATTR_CASTABLE_WHILE_SITTING))
        return SPELL_FAILED_NOT_STANDING;
    
    /*  Check cooldowns to prevent cheating (ignore passive spells, that client side visual only)

        If the cast is an item cast, check the spell proto on the item for the category
        cooldown to check, rather than this spell's category. This is due to bad
        categories in the default Spell DBC.
     */

    uint32 spellCat = m_spellInfo->Category;
    if (m_CastItem)
    {
        // Find correct item category matching the current spell on item
        // used when item spells have custom categories due to wrong category
        // on spell
        ItemPrototype const* proto = m_CastItem->GetProto();
        for (const auto& itr : proto->Spells)
        {
            if (itr.SpellId == m_spellInfo->Id)
            {
                spellCat = itr.SpellCategory;
                break;
            }
        }
    }

if (m_caster->IsPlayer() && !(m_spellInfo->Attributes & SPELL_ATTR_PASSIVE)
        && !m_IsTriggeredSpell && (m_casterUnit->HasSpellCooldown(m_spellInfo->Id) || m_casterUnit->HasSpellCategoryCooldown(spellCat)))
    {
        if (m_triggeredByAuraSpell || m_spellInfo->Attributes & SPELL_ATTR_DISABLED_WHILE_ACTIVE)
            return SPELL_FAILED_DONT_REPORT;
        else
            return SPELL_FAILED_NOT_READY;
    }

    // check death state to prevent cheating ("deathbug")
    if (m_casterUnit && !m_casterUnit->IsAlive() && !(m_spellInfo->Attributes & SPELL_ATTR_PASSIVE) && !((m_spellInfo->Attributes & SPELL_ATTR_CASTABLE_WHILE_DEAD) || (m_IsTriggeredSpell && !m_triggeredByAuraSpell)))
    {
        if (m_triggeredByAuraSpell)
            return SPELL_FAILED_DONT_REPORT;
        else
            return SPELL_FAILED_CASTER_DEAD;
    }

    // check global cooldown
    if (!m_IsTriggeredSpell)
    {
        if (strict && HasGlobalCooldown())
        {
            // Activated spells will get stuck if we return SPELL_FAILED_NOT_READY during GCD
            if (m_spellInfo->Attributes & SPELL_ATTR_DISABLED_WHILE_ACTIVE)
                return SPELL_FAILED_DONT_REPORT;
            else
                return SPELL_FAILED_NOT_READY;
        }

        // only allow triggered spells if at an ended battleground
        if (m_caster->IsPlayer())
            if (BattleGround * bg = ((Player*)m_caster)->GetBattleGround())
                if (bg->GetStatus() == STATUS_WAIT_LEAVE)
                    return SPELL_FAILED_DONT_REPORT;

        if (strict && m_casterUnit)
        {
            if (m_casterUnit && m_casterUnit->IsInCombat() && m_spellInfo->IsNonCombatSpell())
                return SPELL_FAILED_AFFECTING_COMBAT;

            // only check at first call, Stealth auras are already removed at second call
            // for now, ignore triggered spells
            //if (strict)
            //{
            // Cannot be used in this stance/form
            SpellCastResult shapeError = m_spellInfo->GetErrorAtShapeshiftedCast(m_casterUnit->GetShapeshiftForm());
            if (shapeError != SPELL_CAST_OK)
                return shapeError;

            if ((m_spellInfo->Attributes & SPELL_ATTR_ONLY_STEALTHED) && !(m_casterUnit->HasStealthAura()))
                return SPELL_FAILED_ONLY_STEALTHED;
        }
    }

    if (m_caster->GetTypeId() == TYPEID_PLAYER && !((Player*)m_caster)->IsGameMaster() &&
            sWorld.getConfig(CONFIG_BOOL_VMAP_INDOOR_CHECK) &&
            VMAP::VMapFactory::createOrGetVMapManager()->isLineOfSightCalcEnabled())
    {
        if (m_spellInfo->Attributes & SPELL_ATTR_OUTDOORS_ONLY &&
                !m_caster->GetTerrain()->IsOutdoors(m_caster->GetPositionX(), m_caster->GetPositionY(), m_caster->GetPositionZ()))
            return SPELL_FAILED_ONLY_OUTDOORS;

        if (m_spellInfo->Attributes & SPELL_ATTR_INDOORS_ONLY &&
                m_caster->GetTerrain()->IsOutdoors(m_caster->GetPositionX(), m_caster->GetPositionY(), m_caster->GetPositionZ()))
            return SPELL_FAILED_ONLY_INDOORS;
    }

    // caster state requirements
    if (m_spellInfo->CasterAuraState && m_casterUnit && !m_casterUnit->HasAuraState(AuraState(m_spellInfo->CasterAuraState)))
        return SPELL_FAILED_CASTER_AURASTATE;

    if (m_caster->IsPlayer())
    {
        // Autorepeat spells, if cast start when moving, are delayed until moving stop in spell update code.
        if (m_caster->IsMoving())
        {
            // skip stuck spell to allow use it in falling case and apply spell limitations at movement
            if ((!m_caster->m_movementInfo.HasMovementFlag(MOVEFLAG_FALLINGFAR) || m_spellInfo->Effect[EFFECT_INDEX_0] != SPELL_EFFECT_STUCK) &&
                    (IsAutoRepeat() || m_spellInfo->AuraInterruptFlags & AURA_INTERRUPT_FLAG_NOT_SEATED))
                return SPELL_FAILED_MOVING;
        }

        if (!m_IsTriggeredSpell && m_spellInfo->NeedsComboPoints() && Spells::IsExplicitlySelectedUnitTarget(m_spellInfo->EffectImplicitTargetA[0]) &&
           (!m_targets.getUnitTarget() || m_targets.getUnitTarget()->GetObjectGuid() != ((Player*)m_caster)->GetComboTargetGuid()))
            // warrior not have real combo-points at client side but use this way for mark allow Overpower use
            return m_casterUnit->GetClass() == CLASS_WARRIOR ? SPELL_FAILED_BAD_TARGETS : SPELL_FAILED_NO_COMBO_POINTS;

        switch (m_spellInfo->Id)
        {
            // Mongoose Bite
            case 1495:
            case 14269:
            case 14270:
            case 14271:
                if (m_targets.getUnitTargetGuid() != m_casterUnit->GetReactiveTarget(REACTIVE_DEFENSE))
                    return SPELL_FAILED_BAD_TARGETS;
                break;
            // Contre-attaque
            case 19306:
            case 20909:
            case 20910:
                if (m_targets.getUnitTargetGuid() != m_casterUnit->GetReactiveTarget(REACTIVE_HUNTER_PARRY))
                    return SPELL_FAILED_BAD_TARGETS;
                break;
            // Reindeer Transformation only castable while mounted
            case 25860:
                if (!m_casterUnit->HasAuraType(SPELL_AURA_MOUNTED))
                    return SPELL_FAILED_ONLY_MOUNTED;
                break;
            case 25720: // Place Loot / Quest 8606 Decoy!
            {
                if (Player* pPlayer = ToPlayer(GetAffectiveCaster()))
                    if (!pPlayer->HasAura(25688)) // Narain's Turban
                        return SPELL_FAILED_TARGET_AURASTATE;
                break;
            }

            case 45563:
            case 45564:
            case 45565:
            case 45566:
            case 45567:
            case 45569: // champion buffs
            {

                if (Player* player = ToPlayer(GetAffectiveCaster()))
                {
                    if (player->GetChampionGUID().IsEmpty())
                        return SPELL_FAILED_NO_CHAMPION;

                    if (Unit* target = m_targets.getUnitTarget())
                    {
                        if (player->GetChampionGUID() != target->GetObjectGuid())
                        {
                            if (Unit* champion = ObjectAccessor::GetUnit(*player, player->GetChampionGUID()))
                                m_targets.setUnitTarget(champion); // redirect target to champion
                        }
                    }
                }

            }break;
        }

        // Loatheb Corrupted Mind spell failed
        if (!m_IsCastByItem && !m_IsTriggeredSpell)
        {
            Unit::AuraList const& auraClassScripts = m_casterUnit->GetAurasByType(SPELL_AURA_OVERRIDE_CLASS_SCRIPTS);
            for (const auto auraClassScript : auraClassScripts)
            {
                if (auraClassScript->GetModifier()->m_miscvalue == 4327)
                {
                    if ((m_spellInfo->SpellFamilyName == SPELLFAMILY_DRUID ||
                         m_spellInfo->SpellFamilyName == SPELLFAMILY_PRIEST ||
                         m_spellInfo->SpellFamilyName == SPELLFAMILY_SHAMAN ||
                         m_spellInfo->SpellFamilyName == SPELLFAMILY_PALADIN) &&
                        (m_spellInfo->IsHealSpell() ||
                         m_spellInfo->IsDispel() || // don't really care if the target is non-friendly, there's nothing to purge on Loatheb
                         m_spellInfo->IsFitToFamily<SPELLFAMILY_PRIEST, CF_PRIEST_HOLY_NOVA1>() || // prevent holy nova cast (casted spell is damage part, heal is triggered)
                         m_spellInfo->IsFitToFamily<SPELLFAMILY_PRIEST, CF_PRIEST_POWER_WORD_SHIELD>())) // prevent PW:Shield cast
                    {
                        return SPELL_FAILED_FIZZLE;
                    }
                }
            }
        }
    }

    if (Unit *target = m_targets.getUnitTarget())
    {
        // Nostalrius - Un sort plus puissant est deja actif
        if (m_spellInfo->IsSpellAppliesAura() && !m_spellInfo->IsAreaOfEffectSpell() && m_spellInfo->IsPositiveSpell() && target->HasMorePowerfulSpellActive(m_spellInfo))
            return SPELL_FAILED_AURA_BOUNCED;

        // Swiftmend
        if (m_spellInfo->Id == 18562)                       // future versions have special aura state for this
        {
            if (!target->GetAura(SPELL_AURA_PERIODIC_HEAL, SPELLFAMILY_DRUID, UI64LIT(0x50)))
                return SPELL_FAILED_TARGET_AURASTATE;
        }

        if (!m_IsTriggeredSpell && m_spellInfo->IsDeathOnlySpell() && target->IsAlive())
            return SPELL_FAILED_TARGET_NOT_DEAD;

        // Check spell min target level
        if ((m_spellInfo->MinTargetLevel > 0) && (int32(target->GetLevel()) < m_spellInfo->MinTargetLevel))
            return SPELL_FAILED_LOWLEVEL;

        // Check spell max target level
        if ((m_spellInfo->MaxTargetLevel > 0) && (int32(target->GetLevel()) > m_spellInfo->MaxTargetLevel))
            return SPELL_FAILED_HIGHLEVEL;

        bool non_caster_target = target != m_caster && !m_spellInfo->IsSpellWithCasterSourceTargetsOnly();
        if (non_caster_target)
        {
            // Not allow casting on flying player unless its a ritual of summoning
            if (target->IsTaxiFlying() && m_spellInfo->Id != 7720)
                return SPELL_FAILED_BAD_TARGETS;

            if (!m_IsTriggeredSpell)
            {
				if (!m_IsIgnoreLOS)
				{
					if (!(m_spellInfo->AttributesEx2 & SPELL_ATTR_EX2_IGNORE_LOS) && !m_caster->IsWithinLOSInMap(target))
						return SPELL_FAILED_LINE_OF_SIGHT;
				}

                // check if target is in combat
                if (strict && non_caster_target && (m_spellInfo->AttributesEx & SPELL_ATTR_EX_NOT_IN_COMBAT_TARGET) && target->IsInCombat())
                    return SPELL_FAILED_TARGET_AFFECTING_COMBAT;

                // auto selection spell rank implemented in WorldSession::HandleCastSpellOpcode
                // this case can be triggered if rank not found (too low-level target for first rank)
                if (m_caster->IsPlayer() && !m_CastItem)
                {
                    // spell expected to be auto-downranking in cast handle, so must be same
                    if (m_spellInfo != sSpellMgr.SelectAuraRankForLevel(m_spellInfo, target->GetLevel()))
                        return SPELL_FAILED_LOWLEVEL;
                }

                if (m_spellInfo->HasAttribute(SPELL_ATTR_EX2_CANT_TARGET_TAPPED))
                {
                    // Mob tapped by another player or group.
                    if (Player* pCaster = m_caster->ToPlayer())
                        if (Creature* pCreature = target->ToCreature())
                            if (pCreature->GetLootGroupRecipientId() || pCreature->GetLootRecipientGuid())
                                if (!pCreature->IsTappedBy(pCaster))
                                    return SPELL_FAILED_CANT_CAST_ON_TAPPED;
                }

                if (strict && m_spellInfo->AttributesEx3 & SPELL_ATTR_EX3_TARGET_ONLY_PLAYER && target->GetTypeId() != TYPEID_PLAYER && !m_spellInfo->IsAreaOfEffectSpell())
                    return SPELL_FAILED_BAD_TARGETS;
            }
            // Can't help a friend in m_duel   |  sorry, not enough time to figure out why this is necessary
            if (m_spellInfo->IsPositiveSpell() && m_spellInfo->Id != 28697)
            {
                Player* casterOwner = m_casterUnit ? m_casterUnit->GetCharmerOrOwnerPlayerOrPlayerItself() : nullptr;
                Player* targetOwner = target->GetCharmerOrOwnerPlayerOrPlayerItself();

                if (m_spellInfo->Id == 7266 && targetOwner && targetOwner->m_duel && casterOwner && !casterOwner->IsInDuelWith(targetOwner))
                {
                    return SPELL_FAILED_TARGET_DUELING;
                }

                if (targetOwner && casterOwner != targetOwner && targetOwner->m_duel && targetOwner->m_duel->startTime && casterOwner && !casterOwner->IsInDuelWith(targetOwner))
                    return SPELL_FAILED_TARGET_DUELING;
            }
        }
        else if (m_caster == target)
        {
            if (m_caster->IsPlayer() && m_caster->IsInWorld())
            {
                // Additional check for some spells
                // If 0 spell effect empty - client not send target data (need use selection)
                // TODO: check it on next client version
                if (m_targets.m_targetMask == TARGET_FLAG_SELF &&
                        m_spellInfo->EffectImplicitTargetA[EFFECT_INDEX_1] == TARGET_UNIT_ENEMY)
                {
                    target = m_caster->GetMap()->GetUnit(((Player *)m_caster)->GetSelectionGuid());
                    if (!target)
                        return SPELL_FAILED_BAD_TARGETS;

                    m_targets.setUnitTarget(target);
                }
            }
            // Some special spells with non-caster only mode
            // Fire Shield
            if (m_spellInfo->SpellFamilyName == SPELLFAMILY_WARLOCK &&
                    m_spellInfo->SpellIconID == 16)
                return SPELL_FAILED_BAD_TARGETS;
            // Arcane Missiles
            if (m_caster == target &&
                    m_spellInfo->SpellFamilyName == SPELLFAMILY_MAGE &&
                    m_spellInfo->SpellFamilyFlags == 0x40800)
                return SPELL_FAILED_BAD_TARGETS;
        }

        // check pet presents
        for (uint32 j : m_spellInfo->EffectImplicitTargetA)
        {
            if (j == TARGET_UNIT_CASTER_PET)
            {
                Pet* pet = m_casterUnit ? m_casterUnit->GetPet() : nullptr;
                if (!pet)
                {
                    if (m_triggeredByAuraSpell)              // not report pet not existence for triggered spells
                        return SPELL_FAILED_DONT_REPORT;
                    else
                        return SPELL_FAILED_NO_PET;
                }
                else if (!pet->IsAlive())
                {
                    if (m_triggeredByAuraSpell)
                        return SPELL_FAILED_DONT_REPORT;
                    else
                        return SPELL_FAILED_TARGETS_DEAD;
                }
                else if (!(m_spellInfo->AttributesEx2 & SPELL_ATTR_EX2_IGNORE_LOS) && !pet->IsWithinLOSInMap(m_caster))
                    return SPELL_FAILED_LINE_OF_SIGHT;
                break;
            }
        }

        //check creature type
        //ignore self casts (including area casts when caster selected as target)
        if (non_caster_target)
        {
            if (!CheckTargetCreatureType(target))
            {
                if (target->IsPlayer())
                    return SPELL_FAILED_TARGET_IS_PLAYER;
                else
                    return SPELL_FAILED_BAD_TARGETS;
            }

            // simple cases
            bool explicit_target_mode = false;
            bool target_hostile = false;
            bool target_hostile_checked = false;
            bool target_friendly_checked = false;
            for (uint32 k : m_spellInfo->EffectImplicitTargetA)
            {
                if (IsExplicitPositiveTarget(k))
                {
                    if (!target_hostile_checked)
                    {
                        target_hostile_checked = true;
                        target_hostile = m_caster->IsHostileTo(target);
                    }

                    if (target_hostile)
                        return SPELL_FAILED_BAD_TARGETS;

                    explicit_target_mode = true;
                }
                else if (IsExplicitNegativeTarget(k))
                {
                    if (!target_friendly_checked)
                    {
                        target_friendly_checked = true;
						// Turtle specific - allow target friendly targets when you racing, BUT ONLY PLAYERS
						if (m_casterUnit && (m_casterUnit->GetMountID() == GNOMECAR_DISPLAYID || m_casterUnit->GetMountID() == GOBLINCAR_DISPLAYID)) // here!
						{
							if (!target->IsPlayer())
							{
								return SPELL_FAILED_BAD_TARGETS;
							}
						}
						else
						{
                            if (!m_caster->IsValidAttackTarget(target, false))
								return SPELL_FAILED_BAD_TARGETS;
						}
                    }

                    explicit_target_mode = true;
                }
            }
            // TODO: this check can be applied and for player to prevent cheating when IsPositiveSpell will return always correct result.
            // check target for pet/charmed casts (not self targeted), self targeted cast used for area effects and etc
            // Nostalrius : pas de status positif / negatif pour les sorts de dispel (marche en offensif comme defensif)
            if (!explicit_target_mode && m_caster->IsCreature() && m_casterUnit->GetCharmerOrOwnerGuid() && !m_spellInfo->HasEffect(SPELL_EFFECT_DISPEL))
            {
                // check correctness positive/negative cast target (pet cast real check and cheating check)
                if (m_spellInfo->IsPositiveSpell())
                {
                    if (!target_hostile_checked)
                        target_hostile = m_caster->IsHostileTo(target);

                    if (target_hostile)
                        return SPELL_FAILED_BAD_TARGETS;
                }
                else
                {
                    if (!target_friendly_checked && m_caster->IsFriendlyTo(target))
                        return SPELL_FAILED_BAD_TARGETS;
                }
            }
        }

        if (m_spellInfo->IsPositiveSpell(m_caster, target))
            if (target->IsImmuneToSpell(m_spellInfo, target == m_caster))
                return SPELL_FAILED_TARGET_AURASTATE;

        // Must be behind the target.
        if (m_spellInfo->IsFromBehindOnlySpell() && m_casterUnit && target->HasInArc(m_caster))
        {
            SendInterrupted(2);
            return SPELL_FAILED_NOT_BEHIND;
        }

        //Target must be facing you.
        if ((m_spellInfo->Attributes == 0x150010) && !target->HasInArc(m_caster))
        {
            SendInterrupted(2);
            return SPELL_FAILED_NOT_INFRONT;
        }
    }
    else if (GameObject* goTarget = m_targets.getGOTarget())
    {
        /* // I have no idea where this come from ...
        if (goTarget->AI())
        {
            SpellCastResult goAIresult = goTarget->AI()->CheckSpellCast(m_caster, m_spellInfo->Id);
            if (goAIresult != SPELL_CAST_OK)
                return goAIresult;
        }
        */
        if (goTarget->GetGOInfo()->CannotBeUsedUnderImmunity() && m_casterUnit && m_casterUnit->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE))
            return SPELL_FAILED_DAMAGE_IMMUNE;

        // Require LOS to loot chests
        // For example, check LoS when opening a gobj (spell 6477).
        // Prevents abuse with object id 165554 for example.
        if (goTarget->GetGoType() == GAMEOBJECT_TYPE_CHEST)
        {
            if (!m_IsTriggeredSpell && !(m_spellInfo->AttributesEx2 & SPELL_ATTR_EX2_IGNORE_LOS)
              && !goTarget->GetGOInfo()->chest.minSuccessOpens                // don't check for gathering nodes, too many are halfway in walls
              && !goTarget->HasFlag(GAMEOBJECT_FLAGS, GO_FLAG_INTERACT_COND)  // don't check for quest items
              && !(goTarget->GetEntry() == 160845)                            // exemption for Dark Coffer
              && !m_caster->IsWithinLOSInMap(goTarget, false))
                return SPELL_FAILED_LINE_OF_SIGHT;
        }
    }
    else if (m_targets.IsEmpty())
    {
        // check LOS for ground targeted AOE spells like Blizzard, Flamestrike ...
        if (m_caster->IsPlayer() && m_targets.m_targetMask & TARGET_FLAG_DEST_LOCATION)
        {
            if (m_targets.m_destX && m_targets.m_destY && m_targets.m_destZ)
            {
                if (!m_IsTriggeredSpell && !m_caster->IsWithinLOS(m_targets.m_destX, m_targets.m_destY, m_targets.m_destZ))
                    return SPELL_FAILED_LINE_OF_SIGHT;
            }
        }
    }

    if (m_casterUnit)
    {
        // Nostalrius: impossible to cast spells while banned / feared / confused ...
        // Except divine shields, pvp trinkets for example
        // Stoneform is explicitly excluded, it should be allowed to cast always 
        // TODO: This condition allows an antifear item to be used while stuned for example.
        if (!m_IsTriggeredSpell && !m_spellInfo->HasAura(SPELL_AURA_SCHOOL_IMMUNITY) && !m_spellInfo->HasAura(SPELL_AURA_MECHANIC_IMMUNITY) &&
            m_spellInfo->Id != 20594 && // Stoneform
            m_casterUnit->HasUnitState(UNIT_STAT_ISOLATED | UNIT_STAT_STUNNED | UNIT_STAT_PENDING_STUNNED | UNIT_STAT_CONFUSED | UNIT_STAT_FLEEING))
            return SPELL_FAILED_DONT_REPORT;

        // zone check
        SpellCastResult locRes = sSpellMgr.GetSpellAllowedInLocationError(m_spellInfo, m_casterUnit, m_casterUnit->GetCharmerOrOwnerPlayerOrPlayerItself());
        if (locRes != SPELL_CAST_OK)
            return locRes;

        // not let players cast spells at mount (and let do it to creatures)
        if (m_casterUnit->IsMounted() && m_casterUnit->IsPlayer() && !m_IsTriggeredSpell && !m_spellInfo->IsPassiveSpell() && !(m_spellInfo->Attributes & SPELL_ATTR_CASTABLE_WHILE_MOUNTED))
        {
            if (m_casterUnit->IsTaxiFlying())
                return SPELL_FAILED_NOT_ON_TAXI;
            else if (m_casterUnit->IsPlayer())
            {
                m_casterUnit->Unmount();
                m_casterUnit->RemoveSpellsCausingAura(SPELL_AURA_MOUNTED);
            }
            else
                return SPELL_FAILED_NOT_MOUNTED;
        }
    }

    // always (except passive spells) check items (focus object can be required for any type casts)
    if (!m_spellInfo->IsPassiveSpell())
    {
        SpellCastResult castResult = CheckItems();
        if (castResult != SPELL_CAST_OK)
            return castResult;
    }

    // Database based targets from spell_target_script
    if (m_UniqueTargetInfo.empty())                         // skip second CheckCast apply (for delayed spells for example)
    {
        for (int j = 0; j < MAX_EFFECT_INDEX; ++j)
        {
            if (m_spellInfo->EffectImplicitTargetA[j] == TARGET_UNIT_SCRIPT_NEAR_CASTER ||
                    (m_spellInfo->EffectImplicitTargetB[j] == TARGET_UNIT_SCRIPT_NEAR_CASTER && m_spellInfo->EffectImplicitTargetA[j] != TARGET_UNIT_CASTER) ||
                    m_spellInfo->EffectImplicitTargetA[j] == TARGET_LOCATION_SCRIPT_NEAR_CASTER ||
                    m_spellInfo->EffectImplicitTargetB[j] == TARGET_LOCATION_SCRIPT_NEAR_CASTER ||
                    m_spellInfo->EffectImplicitTargetA[j] == TARGET_GAMEOBJECT_SCRIPT_NEAR_CASTER)
            {

                SpellScriptTargetBounds bounds = sSpellMgr.GetSpellScriptTargetBounds(m_spellInfo->Id);

                if (bounds.first == bounds.second)
                {
                    if (m_spellInfo->EffectImplicitTargetA[j] == TARGET_UNIT_SCRIPT_NEAR_CASTER || m_spellInfo->EffectImplicitTargetB[j] == TARGET_UNIT_SCRIPT_NEAR_CASTER)
                        sLog.outErrorDb("Spell entry %u, effect %i has EffectImplicitTargetA/EffectImplicitTargetB = TARGET_UNIT_SCRIPT_NEAR_CASTER, but creature are not defined in `spell_script_target`", m_spellInfo->Id, j);

                    if (m_spellInfo->EffectImplicitTargetA[j] == TARGET_LOCATION_SCRIPT_NEAR_CASTER || m_spellInfo->EffectImplicitTargetB[j] == TARGET_LOCATION_SCRIPT_NEAR_CASTER)
                        sLog.outErrorDb("Spell entry %u, effect %i has EffectImplicitTargetA/EffectImplicitTargetB = TARGET_LOCATION_SCRIPT_NEAR_CASTER, but gameobject or creature are not defined in `spell_script_target`", m_spellInfo->Id, j);

                    if (m_spellInfo->EffectImplicitTargetA[j] == TARGET_GAMEOBJECT_SCRIPT_NEAR_CASTER)
                        sLog.outErrorDb("Spell entry %u, effect %i has EffectImplicitTargetA/EffectImplicitTargetB = TARGET_GAMEOBJECT_SCRIPT_NEAR_CASTER, but gameobject are not defined in `spell_script_target`", m_spellInfo->Id, j);
                }

                SpellRangeEntry const* srange = sSpellRangeStore.LookupEntry(m_spellInfo->rangeIndex);
                float range = GetSpellMaxRange(srange);

                Creature* targetExplicit = nullptr;            // used for cases where a target is provided (by script for example)
                Creature* creatureScriptTarget = nullptr;
                GameObject* goScriptTarget = nullptr;

                for (auto i_spellST = bounds.first; i_spellST != bounds.second; ++i_spellST)
                {
                    if (i_spellST->second.CanNotHitWithSpellEffect(SpellEffectIndex(j)))
                        continue;

                    switch (i_spellST->second.type)
                    {
                        case SPELL_TARGET_TYPE_GAMEOBJECT:
                        {
                            GameObject* p_GameObject = nullptr;

                            if (i_spellST->second.targetEntry)
                            {
                                MaNGOS::NearestGameObjectEntryFitConditionInObjectRangeCheck go_check(*m_caster, i_spellST->second.targetEntry, range, i_spellST->second.conditionId);
                                MaNGOS::GameObjectLastSearcher<MaNGOS::NearestGameObjectEntryFitConditionInObjectRangeCheck> checker(p_GameObject, go_check);
                                Cell::VisitGridObjects(m_caster, checker, range);

                                if (p_GameObject)
                                {
                                    // remember found target and range, next attempt will find more near target with another entry
                                    creatureScriptTarget = nullptr;
                                    goScriptTarget = p_GameObject;
                                    range = go_check.GetLastRange();
                                }
                            }
                            else if (focusObject)           // Focus Object
                            {
                                float frange = m_caster->GetDistance(focusObject);
                                if (range >= frange)
                                {
                                    creatureScriptTarget = nullptr;
                                    goScriptTarget = focusObject;
                                    range = frange;
                                }
                            }
                            break;
                        }
                        case SPELL_TARGET_TYPE_CREATURE:
                        case SPELL_TARGET_TYPE_DEAD:
                        default:
                        {
                            Creature *p_Creature = nullptr;

                            // check if explicit target is provided and check it up against database valid target entry/state
                            if (Unit* pTarget = m_targets.getUnitTarget())
                            {
                                if (pTarget->IsCreature() && pTarget->GetEntry() == i_spellST->second.targetEntry)
                                {
                                    if (i_spellST->second.type == SPELL_TARGET_TYPE_DEAD && ((Creature*)pTarget)->IsCorpse())
                                    {
                                        // always use spellMaxRange, in case GetLastRange returned different in a previous pass
                                        if (pTarget->IsWithinDistInMap(m_caster, GetSpellMaxRange(srange)))
                                            targetExplicit = (Creature*)pTarget;
                                    }
                                    else if (i_spellST->second.type == SPELL_TARGET_TYPE_CREATURE && pTarget->IsAlive())
                                    {
                                        // always use spellMaxRange, in case GetLastRange returned different in a previous pass
                                        if (pTarget->IsWithinDistInMap(m_caster, GetSpellMaxRange(srange)))
                                            targetExplicit = (Creature*)pTarget;
                                    }
                                }
                            }

                            // no target provided or it was not valid, so use closest in range
                            if (!targetExplicit)
                            {
                                MaNGOS::NearestCreatureEntryFitConditionInObjectRangeCheck u_check(*m_caster, i_spellST->second.targetEntry, i_spellST->second.type != SPELL_TARGET_TYPE_DEAD, range, i_spellST->second.conditionId);
                                MaNGOS::CreatureLastSearcher<MaNGOS::NearestCreatureEntryFitConditionInObjectRangeCheck> searcher(p_Creature, u_check);

                                // Visit all, need to find also Pet* objects
                                Cell::VisitAllObjects(m_caster, searcher, range);

                                range = u_check.GetLastRange();
                            }

                            // always prefer provided target if it's valid
                            if (targetExplicit)
                                creatureScriptTarget = targetExplicit;
                            else if (p_Creature)
                                creatureScriptTarget = p_Creature;

                            if (creatureScriptTarget)
                                goScriptTarget = nullptr;

                            break;
                        }
                    }
                }

                if (creatureScriptTarget)
                {
                    // store coordinates for TARGET_LOCATION_SCRIPT_NEAR_CASTER
                    if (m_spellInfo->EffectImplicitTargetA[j] == TARGET_LOCATION_SCRIPT_NEAR_CASTER ||
                            m_spellInfo->EffectImplicitTargetB[j] == TARGET_LOCATION_SCRIPT_NEAR_CASTER)
                    {
                        m_targets.setDestination(creatureScriptTarget->GetPositionX(), creatureScriptTarget->GetPositionY(), creatureScriptTarget->GetPositionZ());

                        if (m_spellInfo->EffectImplicitTargetA[j] == TARGET_LOCATION_SCRIPT_NEAR_CASTER && m_spellInfo->Effect[j] != SPELL_EFFECT_PERSISTENT_AREA_AURA)
                            AddUnitTarget(creatureScriptTarget, SpellEffectIndex(j));
                    }
                    // store explicit target for TARGET_UNIT_SCRIPT_NEAR_CASTER
                    else
                    {
                        if (m_spellInfo->EffectImplicitTargetA[j] == TARGET_UNIT_SCRIPT_NEAR_CASTER || m_spellInfo->EffectImplicitTargetB[j] == TARGET_UNIT_SCRIPT_NEAR_CASTER)
                        {
                            /*
                            // Broken AF
                            if ((m_spellInfo->Id == 16053) && (creatureScriptTarget->GetHealthPercent() < 10.f))
                                m_targets.setUnitTarget(creatureScriptTarget);
                            */

                            AddUnitTarget(creatureScriptTarget, SpellEffectIndex(j));                            
                        }
                    }
                }
                else if (goScriptTarget)
                {
                    // store coordinates for TARGET_LOCATION_SCRIPT_NEAR_CASTER
                    if (m_spellInfo->EffectImplicitTargetA[j] == TARGET_LOCATION_SCRIPT_NEAR_CASTER ||
                            m_spellInfo->EffectImplicitTargetB[j] == TARGET_LOCATION_SCRIPT_NEAR_CASTER)
                    {
                        m_targets.setDestination(goScriptTarget->GetPositionX(), goScriptTarget->GetPositionY(), goScriptTarget->GetPositionZ());

                        if (m_spellInfo->EffectImplicitTargetA[j] == TARGET_LOCATION_SCRIPT_NEAR_CASTER && m_spellInfo->Effect[j] != SPELL_EFFECT_PERSISTENT_AREA_AURA)
                            AddGOTarget(goScriptTarget, SpellEffectIndex(j));
                    }
                    // store explicit target for TARGET_GAMEOBJECT_SCRIPT_NEAR_CASTER
                    else
                    {
                        if (m_spellInfo->EffectImplicitTargetA[j] == TARGET_GAMEOBJECT_SCRIPT_NEAR_CASTER ||
                                m_spellInfo->EffectImplicitTargetB[j] == TARGET_GAMEOBJECT_SCRIPT_NEAR_CASTER)
                            AddGOTarget(goScriptTarget, SpellEffectIndex(j));
                    }
                }
                //Missing DB Entry or targets for this spellEffect.
                else
                {
                    /* For TARGET_GAMEOBJECT_SCRIPT_NEAR_CASTER makes DB targets optional not required for now
                     * TODO: Makes more research for this target type
                     */
                    if (m_spellInfo->EffectImplicitTargetA[j] != TARGET_GAMEOBJECT_SCRIPT_NEAR_CASTER)
                    {
                        // not report target not existence for triggered spells
                        if (m_triggeredByAuraSpell || m_IsTriggeredSpell)
                            return SPELL_FAILED_DONT_REPORT;
                        else
                            return SPELL_FAILED_BAD_TARGETS;
                    }
                }
            }
        }
    }

    if (!m_IsTriggeredSpell)
    {
        if (!m_triggeredByAuraSpell)
        {
            SpellCastResult castResult = CheckRange(strict);
            if (castResult != SPELL_CAST_OK)
                return castResult;
            if (Player* playerCaster = m_caster->ToPlayer())
                if (BattleGround* bg = playerCaster->GetBattleGround())
                {
                    castResult = bg->CheckSpellCast(playerCaster, m_spellInfo);
                    if (castResult != SPELL_CAST_OK)
                        return castResult;
                }
        }

        if (m_casterUnit)
        {
            SpellCastResult castResult = CheckPower();
            if (castResult != SPELL_CAST_OK)
                return castResult;

            // triggered spell not affected by stun/etc
            castResult = CheckCasterAuras();
            if (castResult != SPELL_CAST_OK)
                return castResult;

            if (m_casterUnit->HasUnitState(UNIT_STAT_POSSESSED))
            {
                if (m_spellInfo->Category == 21) // Enrage
                    return SPELL_FAILED_NOT_READY;
            }
        }
    }

    // All spells that require target to be below 20% have this.
    if (m_spellInfo->TargetAuraState == AURA_STATE_HEALTHLESS_20_PERCENT)
    {
        if (!m_targets.getUnitTarget())
            return SPELL_FAILED_BAD_IMPLICIT_TARGETS;

        if (!m_targets.getUnitTarget()->HasAuraState(AURA_STATE_HEALTHLESS_20_PERCENT))
            return SPELL_FAILED_BAD_TARGETS;
    }   

    for (int i = 0; i < MAX_EFFECT_INDEX; ++i)
    {
        // for effects of spells that have only one target
        switch (m_spellInfo->Effect[i])
        {
            case SPELL_EFFECT_DUMMY:
            {
                if (m_spellInfo->SpellIconID == 156) // Holy Shock
                {
                    // spell different for friends and enemies
                    // hart version required facing
                    if (m_targets.getUnitTarget() && !m_caster->IsFriendlyTo(m_targets.getUnitTarget()) && !m_caster->IsFacingTarget(m_targets.getUnitTarget()))
                        return SPELL_FAILED_UNIT_NOT_INFRONT;
                }
                else if (m_spellInfo->Id == 13278) // Gnomish Death Ray
                {
                    if (!m_targets.getUnitTarget() || m_caster->IsFriendlyTo(m_targets.getUnitTarget()))
                        return SPELL_FAILED_BAD_TARGETS;
                }
                else if (m_spellInfo->IsFitToFamilyMask<CF_WARLOCK_LIFE_TAP>() && m_casterUnit)
                {
                    float cost = m_currentBasePoints[EFFECT_INDEX_0];

                    if (Player* modOwner = m_casterUnit->GetSpellModOwner())
                        modOwner->ApplySpellMod(m_spellInfo->Id, SPELLMOD_COST, cost, this);

                    int32 dmg = m_casterUnit->SpellDamageBonusDone(m_casterUnit, m_spellInfo, SpellEffectIndex(i), uint32(cost > 0 ? cost : 0), SPELL_DIRECT_DAMAGE);
                    dmg = m_casterUnit->SpellDamageBonusTaken(m_casterUnit, m_spellInfo, SpellEffectIndex(i), dmg, SPELL_DIRECT_DAMAGE);

                    if (int32(m_casterUnit->GetHealth()) <= dmg)
                        return SPELL_FAILED_FIZZLE;
                }
                else if (m_spellInfo->Id == 46060) // Fishing Boat
                {
                    if (!m_casterUnit->IsInWater() || m_casterUnit->IsUnderWater())
                    {
                        m_caster->ToPlayer()->GetSession()->SendNotification("You need to be in a body of water surface!");
                        return SPELL_FAILED_DONT_REPORT;
                    }
                }
                else if (m_spellInfo->Id == 46058) // Traveler's Tent
                {
                    if (m_casterUnit->IsInWater() || !m_casterUnit->GetTerrain()->IsOutdoors(m_caster->GetPositionX(), m_caster->GetPositionY(), m_caster->GetPositionZ()) || 
                        m_caster->GetZoneId() == 1519 || m_caster->GetZoneId() == 1637 || m_caster->GetZoneId() == 1497 || m_caster->GetZoneId() == 1537 ||
                        m_caster->GetZoneId() == 1657 || m_caster->GetZoneId() == 1638 || m_caster->GetInstanceId())
                    {
                        m_caster->ToPlayer()->GetSession()->SendNotification("Can't build here.");
                        return SPELL_FAILED_DONT_REPORT;
                    }
                }
                else if (m_spellInfo->Id == 46062) // Simple Wooden Planter 
                {
                    if (m_caster->ToPlayer()->IsInCombat() || m_caster->ToPlayer()->IsBeingTeleported() ||
                       (m_caster->ToPlayer()->GetDeathState() == CORPSE) || m_caster->ToPlayer()->IsMoving())
                    {
                        m_caster->ToPlayer()->GetSession()->SendNotification("Can't build right now.");
                        return SPELL_FAILED_DONT_REPORT;
                    }
                    GameObject* ZoneCheck = m_caster->FindNearestGameObject(1000373, 25.0F); // Gardening zone (farm) trigger
                    if (!ZoneCheck)
                    {
                        m_caster->ToPlayer()->GetSession()->SendNotification("Requires a garden or a farm.");
                        return SPELL_FAILED_DONT_REPORT;
                    }
                    GameObject* OtherPlanter = m_caster->FindNearestGameObject(1000334, 3.0F); 
                    if (OtherPlanter)
                    {
                        m_caster->ToPlayer()->GetSession()->SendNotification("Can't place planters too close to each other.");
                        return SPELL_FAILED_DONT_REPORT;
                    }
                }
                else if (m_spellInfo->Id == 46012) // Portable Wormhole Generator
                {
                    if (m_caster->ToPlayer()->IsInCombat() || m_caster->ToPlayer()->IsBeingTeleported() || (m_caster->ToPlayer()->GetDeathState() == CORPSE) || m_caster->ToPlayer()->IsMoving())
                    {
                        m_caster->ToPlayer()->GetSession()->SendNotification("Cannot use it right now.");
                        return SPELL_FAILED_DONT_REPORT;
                    }
                    if (m_caster->ToPlayer()->GetMoney() < 500)
                    {
                        m_caster->ToPlayer()->GetSession()->SendNotification("Not enough money. The device crackles and whirls.", m_caster->ToPlayer()->GetLevel());
                        return SPELL_FAILED_DONT_REPORT;
                    }
                }
                else if (m_spellInfo->Id == 46002 || m_spellInfo->Id == 46010 || m_spellInfo->Id == 46035 || m_spellInfo->Id == 46001 || m_spellInfo->Id == 56067 || m_spellInfo->Id == 45407 || m_spellInfo->Id == 45920)
                {
                    if (m_caster->ToPlayer()->IsInCombat() || m_caster->ToPlayer()->IsBeingTeleported() || (m_caster->ToPlayer()->GetDeathState() == CORPSE) || m_caster->ToPlayer()->IsMoving())
                    {
                        m_caster->ToPlayer()->GetSession()->SendNotification("You cannot use this right now.");
                        return SPELL_FAILED_DONT_REPORT;
                    }
                    if (m_spellInfo->Id == 46035 && !m_caster->ToPlayer()->IsCityProtector())
                    {
                        m_caster->ToPlayer()->GetSession()->SendNotification("You are no longer a City Protector.");
                        return SPELL_FAILED_DONT_REPORT;
                    }
                }
                break;
            }
            case SPELL_EFFECT_SCHOOL_DAMAGE:
            {
                // Conflagrate
                if (m_spellInfo->IsFitToFamily<SPELLFAMILY_WARLOCK, CF_WARLOCK_CONFLAGRATE>())
                {
                    if (!m_targets.getUnitTarget())
                        return SPELL_FAILED_BAD_IMPLICIT_TARGETS;

                    // for caster applied auras only
                    bool found = false;
                    auto const & mPeriodic = m_targets.getUnitTarget()->GetAurasByType(SPELL_AURA_PERIODIC_DAMAGE);
                    for (const auto i : mPeriodic)
                    {
                        // Immolate
                        if (i->GetSpellProto()->IsFitToFamily<SPELLFAMILY_WARLOCK, CF_WARLOCK_IMMOLATE>() &&
                            i->GetCasterGuid() == m_caster->GetObjectGuid())
                        {
                            found = true;
                            break;
                        }
                    }

                    if (!found)
                        return SPELL_FAILED_TARGET_AURASTATE;
                }
                break;
            }
            case SPELL_EFFECT_TAMECREATURE:
            {
                // Spell can be triggered, we need to check original caster prior to caster
                Unit* caster = GetAffectiveCaster();
                if (!caster || caster->GetTypeId() != TYPEID_PLAYER ||
                        !m_targets.getUnitTarget() ||
                        m_targets.getUnitTarget()->IsPlayer())
                    return SPELL_FAILED_BAD_TARGETS;

                Player* plrCaster = (Player*)caster;

                bool gmmode = m_triggeredBySpellInfo == nullptr;

                if (plrCaster->GetClass() != CLASS_HUNTER && !gmmode)
                {
                    plrCaster->SendPetTameFailure(PETTAME_UNITSCANTTAME);
                    return SPELL_FAILED_DONT_REPORT;
                }

                Creature* target = (Creature*)m_targets.getUnitTarget();

                if (target->IsPet() || target->IsCharmed())
                {
                    plrCaster->SendPetTameFailure(PETTAME_CREATUREALREADYOWNED);
                    return SPELL_FAILED_DONT_REPORT;
                }

                if (target->GetLevel() > plrCaster->GetLevel() && !gmmode)
                {
                    plrCaster->SendPetTameFailure(PETTAME_TOOHIGHLEVEL);
                    return SPELL_FAILED_DONT_REPORT;
                }

                if (!target->GetCreatureInfo()->isTameable())
                {
                    plrCaster->SendPetTameFailure(PETTAME_NOTTAMEABLE);
                    return SPELL_FAILED_DONT_REPORT;
                }

                if (plrCaster->GetPetGuid() || plrCaster->GetCharmGuid() ||
                   (!plrCaster->GetSession()->GetBot() &&
                    sCharacterDatabaseCache.GetCharacterPetByOwner(plrCaster->GetGUIDLow())))
                {
                    plrCaster->SendPetTameFailure(PETTAME_ANOTHERSUMMONACTIVE);
                    return SPELL_FAILED_DONT_REPORT;
                }

                break;
            }
            case SPELL_EFFECT_LEARN_SPELL:
            {
                if (m_spellInfo->Id == 12775 || m_spellInfo->Id == 46231) // Schematic: Goblin Radio, Sun's Serenity
                {                    
                    if (m_caster->IsPlayer())
                        if (Unit* target = m_targets.getUnitTarget())
                            if (target != m_caster)
                                return SPELL_FAILED_BAD_TARGETS;
                }

                if (m_spellInfo->Id == 50029) // War Mode
                {
                    if (m_caster->IsPlayer())
                        m_caster->ToPlayer()->SetPvP(true);
                }                   

                if (m_spellInfo->EffectImplicitTargetA[i] != TARGET_UNIT_CASTER_PET)
                    break;

                Pet* pet = m_casterUnit ? m_casterUnit->GetPet() : nullptr;

                if (!pet)
                    return SPELL_FAILED_NO_PET;

                SpellEntry const *learn_spellproto = sSpellMgr.GetSpellEntry(m_spellInfo->EffectTriggerSpell[i]);

                if (!learn_spellproto)
                    return SPELL_FAILED_NOT_KNOWN;

                if (!pet->CanTakeMoreActiveSpells(learn_spellproto->Id))
                    return SPELL_FAILED_TOO_MANY_SKILLS;

                if (m_spellInfo->spellLevel > pet->GetLevel())
                    return SPELL_FAILED_LOWLEVEL;

                if (!pet->HasTPForSpell(learn_spellproto->Id))
                    return SPELL_FAILED_TRAINING_POINTS;


                break;
            }
            case SPELL_EFFECT_LEARN_PET_SPELL:
            {
                Pet* pet = m_casterUnit ? m_casterUnit->GetPet() : nullptr;

                if (!pet)
                    return SPELL_FAILED_NO_PET;

                SpellEntry const *learn_spellproto = sSpellMgr.GetSpellEntry(m_spellInfo->EffectTriggerSpell[i]);

                if (!learn_spellproto)
                    return SPELL_FAILED_NOT_KNOWN;

                if (!pet->CanTakeMoreActiveSpells(learn_spellproto->Id))
                    return SPELL_FAILED_TOO_MANY_SKILLS;

                if (m_spellInfo->spellLevel > pet->GetLevel())
                    return SPELL_FAILED_LOWLEVEL;

                if (!pet->HasTPForSpell(learn_spellproto->Id))
                    return SPELL_FAILED_TRAINING_POINTS;

                break;
            }
            case SPELL_EFFECT_FEED_PET:
            {
                if (!m_caster->IsPlayer())
                    return SPELL_FAILED_BAD_TARGETS;

                Item* foodItem = m_targets.getItemTarget();
                if (!foodItem)
                    return SPELL_FAILED_BAD_TARGETS;

                Pet* pet = m_casterUnit->GetPet();

                if (!pet)
                    return SPELL_FAILED_NO_PET;

                if (!pet->HaveInDiet(foodItem->GetProto()))
                    return SPELL_FAILED_WRONG_PET_FOOD;

                if (!pet->GetCurrentFoodBenefitLevel(foodItem->GetProto()->ItemLevel))
                    return SPELL_FAILED_FOOD_LOWLEVEL;

                if (pet->IsInCombat())
                    return SPELL_FAILED_AFFECTING_COMBAT;

                break;
            }
            case SPELL_EFFECT_POWER_BURN:
            case SPELL_EFFECT_POWER_DRAIN:
            {
                // Can be area effect, Check only for players and not check if target - caster (spell can have multiply drain/burn effects)
                if (m_caster->IsPlayer())
                    if (Unit* target = m_targets.getUnitTarget())
                        if (target != m_caster && int32(target->GetPowerType()) != m_spellInfo->EffectMiscValue[i])
                            return SPELL_FAILED_BAD_TARGETS;
                break;
            }
            case SPELL_EFFECT_CHARGE:
            {
                if (!m_casterUnit)
                    return SPELL_FAILED_DONT_REPORT;

                if (m_casterUnit->HasUnitState(UNIT_STAT_ROOT | UNIT_STAT_PENDING_ROOT))
                    return SPELL_FAILED_ROOTED;

                // No path available?
                if (strict)
                {
                    const SpellRangeEntry *spellRange = sSpellRangeStore.LookupEntry(m_spellInfo->rangeIndex);
                    Unit* unitTarget = m_targets.getUnitTarget();
                    if (unitTarget && spellRange && spellRange->maxRange > 0.0f)
                    {
                        float x, y, z;
                        unitTarget->GetPosition(x, y, z);

                        if (!m_casterUnit->IsInWater())
                        {
                            float posX, posY, posZ;
                            m_casterUnit->GetPosition(posX, posY, posZ);
                            float ground_Z = m_casterUnit->GetMap()->GetHeight(posX, posY, posZ, true);
                            float z_diff = fabs(ground_Z - posZ);

                            PathInfo path(m_casterUnit);
                            path.SetTransport(m_casterUnit->GetTransport());
                            path.calculate(x, y, z);

                            // On est sur terre, le chemin doit etre valide.
                            if (z_diff < 1.6f && (path.getPathType() & (PATHFIND_INCOMPLETE | PATHFIND_NOPATH)))
                                return SPELL_FAILED_NOPATH;
                            // Dans tous les cas, on interdit un chemin trop long.
                            if (path.Length() > ((spellRange->maxRange + 1.0f) * 1.5f))
                                return SPELL_FAILED_NOPATH;
                        }
                    }
                }
                break;
            }
            case SPELL_EFFECT_SKINNING:
            {
                if (!m_caster->IsPlayer() || !m_targets.getUnitTarget() || m_targets.getUnitTarget()->GetTypeId() != TYPEID_UNIT)
                    return SPELL_FAILED_BAD_TARGETS;

                if (!m_targets.getUnitTarget()->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SKINNABLE))
                    return SPELL_FAILED_TARGET_UNSKINNABLE;

                Creature* creature = (Creature*)m_targets.getUnitTarget();
                if (!creature->IsSkinnableBy(m_caster->ToPlayer()))
                    return SPELL_FAILED_TARGET_NOT_LOOTED;

                // If the player isn't in loot range, the skins are lost forever.
                // This only happens on large mobs with disjointed models (i.e. Devilsaurs).
                if (!creature->IsWithinDistInMap(m_caster, INTERACTION_DISTANCE))
                    return SPELL_FAILED_OUT_OF_RANGE;

                int32 skillValue = ((Player*)m_caster)->GetSkillValue(SKILL_SKINNING);
                int32 TargetLevel = m_targets.getUnitTarget()->GetLevel();
                int32 ReqValue = (skillValue < 100 ? (TargetLevel - 10) * 10 : TargetLevel * 5);
                if (ReqValue > skillValue)
                    return SPELL_FAILED_LOW_CASTLEVEL;

                if (creature->GetCreatureType() != CREATURE_TYPE_CRITTER && (creature->lootForSkin || !creature->loot.isLooted()))
                {
                    /*
                    if (creature->GetEntry() == 10184) // Onyxia, Y U NO SKIN ?
                    {
                        sLog.nostalrius("[OnyxiaSkin] Instance %u Player %s", m_caster->GetInstanceId(), m_caster->GetName());
                        sLog.nostalrius("[OnyxiaSkin] Remaining gold: %u. creature->lootForSkin:%u", creature->loot.gold, creature->lootForSkin);
                        for (LootItemList::const_iterator it = creature->loot.items.begin(); it != creature->loot.items.end(); ++it)
                            sLog.nostalrius("[OnyxiaSkin] Remaining item: %u [Cond%u:Looted%u:Blocked%u:RollWinner%u]", it->itemid, it->conditionId, it->is_looted, it->is_blocked, it->lootOwner.GetCounter());
                    }
                    else
                    */
                    return SPELL_FAILED_TARGET_NOT_LOOTED;
                }

                // chance for fail at orange skinning attempt
                if ((m_selfContainer && (*m_selfContainer) == this) &&
                        skillValue < sWorld.GetConfigMaxSkillValue() &&
                        (ReqValue < 0 ? 0 : ReqValue) > irand(skillValue - 25, skillValue + 37))
                    return SPELL_FAILED_TRY_AGAIN;
                break;
            }
            case SPELL_EFFECT_OPEN_LOCK_ITEM:
            case SPELL_EFFECT_OPEN_LOCK:
            {
                if (!m_caster->IsPlayer()) // only players can open locks, gather etc.
                    return SPELL_FAILED_BAD_TARGETS;

                // we need a go target in case of TARGET_GAMEOBJECT (for other targets acceptable GO and items)
                if (m_spellInfo->EffectImplicitTargetA[i] == TARGET_GAMEOBJECT)
                {
                    if (!m_targets.getGOTarget())
                        return SPELL_FAILED_BAD_TARGETS;
                }

                // get the lock entry
                uint32 lockId = 0;
                if (GameObject* go = m_targets.getGOTarget())
                {
                    // In BattleGround players can use only flags and banners
                    if (((Player*)m_caster)->InBattleGround())
                    {
                        if (go->GetGoState() != GO_STATE_READY)
                            return SPELL_FAILED_BAD_TARGETS;
                        if(!((Player*)m_caster)->CanUseBattleGroundObject())
                            return SPELL_FAILED_TRY_AGAIN;
                    }

                    lockId = go->GetGOInfo()->GetLockId();
                    if (!lockId)
                        return SPELL_FAILED_ALREADY_OPEN;

                    if (!go->IsUseRequirementMet())
                        return SPELL_FAILED_TRY_AGAIN;

                    // check if its in use only when cast is finished (called from spell::cast() with strict = false)
                    if (auto player = m_caster->ToPlayer())
                    {
                        auto group = player->GetGroup();
                        bool canLoot = !go->loot.HasPlayersLooting();

                        if (!canLoot && group && group->GetLeaderGuid() == go->loot.groupLeaderGuid)
                            canLoot = true;

                        if (!strict && go->GetGoType() == GAMEOBJECT_TYPE_CHEST && !canLoot)
                            return SPELL_FAILED_CHEST_IN_USE;
                    }

                    if (!strict && go->HasFlag(GAMEOBJECT_FLAGS, GO_FLAG_IN_USE))
                        return SPELL_FAILED_CHEST_IN_USE;

                    // Prevent looting chests while immune
                    if (go->GetGOInfo()->CannotBeUsedUnderImmunity() && m_caster->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE))
                        return SPELL_FAILED_DAMAGE_IMMUNE;
                }
                else if (Item* item = m_targets.getItemTarget())
                {
                    // not own (trade?)
                    Player* itemOwner = item->GetOwner();
                    Player* itemTrader = itemOwner->GetTrader();

                    if (itemOwner != m_caster && itemTrader != m_caster)
                        return SPELL_FAILED_ITEM_GONE;

                    lockId = item->GetProto()->LockID;

                    // if already unlocked
                    if (!lockId || item->HasFlag(ITEM_FIELD_FLAGS, ITEM_DYNFLAG_UNLOCKED))
                        return SPELL_FAILED_ALREADY_OPEN;
                }
                else
                    return SPELL_FAILED_BAD_TARGETS;

                SkillType skillId = SKILL_NONE;
                int32 reqSkillValue = 0;
                int32 skillValue = 0;

                // check lock compatibility
                SpellCastResult res = CanOpenLock(SpellEffectIndex(i), lockId, skillId, reqSkillValue, skillValue);
                if (res != SPELL_CAST_OK)
                {
                    DEBUG_FILTER_LOG(LOG_FILTER_SPELL_CAST, "CanOpenLock fail : erreur %x0x. (Lock%u/Skill%u)", res, lockId, skillId);
                    return res;
                }

                // chance for fail at orange mining/herb/LockPicking gathering attempt
                // second check prevent fail at rechecks
                if ((skillId == SKILL_HERBALISM || skillId == SKILL_MINING || skillId == SKILL_LOCKPICKING) 
                    && (m_selfContainer && (*m_selfContainer) == this))
                {
                    bool canFailAtMax = skillId != SKILL_HERBALISM && skillId != SKILL_MINING;

                    // chance for failure in orange gather / lockpick (gathering skill can't fail at maxskill)
                    if ((canFailAtMax || skillValue < sWorld.GetConfigMaxSkillValue()) && reqSkillValue > irand(skillValue - 25, skillValue + 37))
                        return SPELL_FAILED_TRY_AGAIN;
                }
                break;
            }
            case SPELL_EFFECT_ACTIVATE_OBJECT:
            {
                if (m_spellInfo->Id == 15958) // Collect Rookery Egg
                { 
                    if (!m_UniqueGOTargetInfo.empty())
                    {
                        ObjectGuid eggGuid = m_UniqueGOTargetInfo.back().targetGUID;
                        if (GameObject* pRookeryEgg = m_caster->GetMap()->GetGameObject(eggGuid))
                        {
                            if (pRookeryEgg->GetGoState() != GO_STATE_ACTIVE_ALTERNATIVE)
                                return SPELL_FAILED_BAD_TARGETS;
                        }
                        else
                            return SPELL_FAILED_BAD_IMPLICIT_TARGETS;
                    }
                    else
                        return SPELL_FAILED_BAD_IMPLICIT_TARGETS;
                }
                else if (m_spellInfo->Id == 16447) // Spawn Challenge to Urok
                {
                    if (m_UniqueGOTargetInfo.empty())
                        return SPELL_FAILED_BAD_IMPLICIT_TARGETS;
                }
                else if (m_spellInfo->Id == 24973) // Clean Up Stink Bomb
                {
                    if (m_UniqueGOTargetInfo.empty())
                        return SPELL_FAILED_BAD_IMPLICIT_TARGETS;
                }
                break;
            }
            case SPELL_EFFECT_SUMMON_DEAD_PET:
            {
                Creature *pet = m_casterUnit ? m_casterUnit->GetPet() : nullptr;
                if (!pet)
                    return SPELL_FAILED_NO_PET;

                if (pet->IsAlive())
                    return SPELL_FAILED_ALREADY_HAVE_SUMMON;

                break;
            }
            // Don't make this check for SPELL_EFFECT_SUMMON_CRITTER, SPELL_EFFECT_SUMMON_WILD or SPELL_EFFECT_SUMMON_GUARDIAN.
            // These won't show up in m_caster->GetPetGUID()
            case SPELL_EFFECT_SUMMON:
            case SPELL_EFFECT_SUMMON_PHANTASM:
            case SPELL_EFFECT_SUMMON_DEMON:
                if (m_casterUnit && m_casterUnit->GetPetGuid())
                    return SPELL_FAILED_ALREADY_HAVE_SUMMON;
            // no break
            case SPELL_EFFECT_SUMMON_POSSESSED:
                if (m_casterUnit && m_casterUnit->GetCharmGuid())
                    return SPELL_FAILED_ALREADY_HAVE_CHARM;
                break;
            case SPELL_EFFECT_SUMMON_PET:
            {
                // In Vanilla old pets were unsummoned as soon as you began summoning a new one.
                if (m_casterUnit && !m_casterUnit->UnsummonOldPetBeforeNewSummon(m_spellInfo->EffectMiscValue[i]))
                    return SPELL_FAILED_ALREADY_HAVE_SUMMON;

                if (m_casterUnit && m_casterUnit->GetCharmGuid())
                    return SPELL_FAILED_ALREADY_HAVE_CHARM;

                break;
            }
            case SPELL_EFFECT_TRANS_DOOR:
            {
                if (!m_casterUnit)
                    return SPELL_FAILED_BAD_TARGETS;

                if (m_casterUnit->GetClass() == CLASS_WARLOCK &&  m_spellInfo->Id == 698)
                {
                    if (!m_caster->IsPlayer())
                        return SPELL_FAILED_BAD_TARGETS;
                    if (!((Player*)m_caster)->GetSelectionGuid())
                        return SPELL_FAILED_BAD_TARGETS;

                    Player* target = sObjectMgr.GetPlayer(((Player*)m_caster)->GetSelectionGuid());
                    if (!target || ((Player*)m_caster) == target || !target->IsInSameRaidWith((Player*)m_caster))
                        return SPELL_FAILED_BAD_TARGETS;

                    if (target->IsInCombat())
                        return SPELL_FAILED_TARGET_IN_COMBAT;

                    // check if our map is dungeon
                    const MapEntry *mapEntry = sMapStorage.LookupEntry<MapEntry>(m_caster->GetMapId());
                    if (mapEntry && mapEntry->IsDungeon())
                    {
                        if (m_caster->GetMap() != target->GetMap())
                            return SPELL_FAILED_TARGET_NOT_IN_INSTANCE;
                    }
                    else if (m_caster->ToPlayer()->InBattleGround())
                        return SPELL_FAILED_NOT_HERE;
                }
                break;
            }
            case SPELL_EFFECT_SUMMON_PLAYER:
            {
                if (!m_caster->IsPlayer())
                    return SPELL_FAILED_BAD_TARGETS;
                if (!m_targets.getUnitTarget())
                    return SPELL_FAILED_BAD_TARGETS;
                if (!m_targets.getUnitTarget()->IsPlayer())
                    return SPELL_FAILED_BAD_TARGETS;

                Player* target = (Player*)m_targets.getUnitTarget();
                if (!target || ((Player*)m_caster) == target || !target->IsInSameRaidWith((Player*)m_caster))
                    return SPELL_FAILED_BAD_TARGETS;

                // check if our map is dungeon
                const MapEntry *mapEntry = sMapStorage.LookupEntry<MapEntry>(m_caster->GetMapId());
                if (mapEntry && mapEntry->IsDungeon())
                {
                    if (m_caster->GetMap() != target->GetMap())
                        return SPELL_FAILED_TARGET_NOT_IN_INSTANCE;
                }
                else if (m_caster->ToPlayer()->InBattleGround())
                    return SPELL_FAILED_NOT_HERE;
                break;
            }
            case SPELL_EFFECT_LEAP:
            case SPELL_EFFECT_TELEPORT_UNITS_FACE_CASTER:
            {
                // not allow use this effect at battleground until battleground start (Nostalrius: Blizzlike)
                if (m_caster->IsPlayer())
                    if (BattleGround const *bg = ((Player*)m_caster)->GetBattleGround())
                        if (bg->GetStatus() != STATUS_IN_PROGRESS)
                            return SPELL_FAILED_TRY_AGAIN;
                // Blizzlike: no blink on transport (client does not handle it)
                if (m_caster->GetTransport())
                    return SPELL_FAILED_NOT_ON_TRANSPORT;
                break;
            }
            case SPELL_EFFECT_DUEL:
            {
                Unit* target = m_targets.getUnitTarget();
                if (target && target->GetTransport() != m_caster->GetTransport())
                    return SPELL_FAILED_NOT_ON_TRANSPORT;
                break;
            }
            case SPELL_EFFECT_SCRIPT_EFFECT:
            {
                if (!m_casterUnit)
                    break;

                // Black Qiraji Battle Tank
                if (m_spellInfo->Id == 26656)
                {
                    if (m_casterUnit->IsMounted())
                    {
                        if (m_casterUnit->GetMountID() == 15677)
                        {
                            m_casterUnit->Unmount();
                            m_casterUnit->RemoveSpellsCausingAura(SPELL_AURA_MOUNTED);
                        }
                        return SPELL_FAILED_DONT_REPORT;
                    }

                    if (m_casterUnit->IsInWater())
                        return SPELL_FAILED_ONLY_ABOVEWATER;

                    if (Player* pPlayer = m_casterUnit->ToPlayer())
                    {
                        if (pPlayer->GetTransport())
                            return SPELL_FAILED_NO_MOUNTS_ALLOWED;

                        if (m_casterUnit->GetMapId() != 531 && !sMapStorage.LookupEntry<MapEntry>(m_casterUnit->GetMapId())->IsMountAllowed() && !m_IsTriggeredSpell)
                            return SPELL_FAILED_NO_MOUNTS_ALLOWED;
                    }

                    if (m_casterUnit->GetAreaId() == 35)
                        return SPELL_FAILED_NO_MOUNTS_ALLOWED;

                    if (m_casterUnit->IsInDisallowedMountForm())
                        return SPELL_FAILED_NOT_SHAPESHIFT;

                    if (m_casterUnit->GetMapId() == 531)
                        break;
                }
            }
            default:
                break;
        }
    }

    if (m_spellInfo->IsNonPeriodicDispel() && !m_IsTriggeredSpell) // Buff Abolir le poison non concerne par exemple (Debuff a chaque tic)
    {
        uint32 dispelMask     = 0;
        bool bFoundOneDispell = false;
        // Compute Dispel Mask
        for (int i = 0; i < MAX_EFFECT_INDEX; ++i)
        {
            if (m_spellInfo->Effect[i] != SPELL_EFFECT_DISPEL)
                continue;

            // Create dispel mask by dispel type
            uint32 dispel_type = m_spellInfo->EffectMiscValue[i];
            dispelMask |= GetDispellMask(DispelType(dispel_type));
        }
        Unit* unit_target = m_targets.getUnitTarget();
        bool friendly_dispel = unit_target && unit_target->IsFriendlyTo(m_caster);

        if (unit_target &&
                // Check immune for offensive dispel
                (!unit_target->IsImmuneToSchoolMask(m_spellInfo->GetSpellSchoolMask()) || friendly_dispel))
        {
            if (!friendly_dispel && !m_caster->IsValidAttackTarget(unit_target))
                return SPELL_FAILED_BAD_TARGETS;

            auto const& auras = unit_target->GetSpellAuraHolderMap();
            for (const auto& aura : auras)
            {
                SpellAuraHolder* holder = aura.second;
                if ((1 << holder->GetSpellProto()->Dispel) & dispelMask)
                {
                    if (holder->GetSpellProto()->Dispel == DISPEL_MAGIC ||
                        holder->GetSpellProto()->Dispel == DISPEL_POISON)
                    {
                        bool positive = holder->IsPositive();
                        // do not remove positive auras if friendly target
                        // do not remove negative auras if non-friendly target
                        // when removing charm auras ignore hostile reaction from the charm
                        if (!friendly_dispel && !positive && holder->GetSpellProto()->IsCharmSpell())
                            if (CharmInfo *charm = unit_target->GetCharmInfo())
                                if (FactionTemplateEntry const* ft = charm->GetOriginalFactionTemplate())
                                    if (charm->GetOriginalFactionTemplate()->IsFriendlyTo(*m_caster->getFactionTemplateEntry()))
                                        bFoundOneDispell = true;
                        if (positive == friendly_dispel)
                            continue;
                    }
                    if (holder->GetSpellProto()->Dispel == DISPEL_POISON)
                    {
                        switch (m_spellInfo->Id)
                        {
                            case 7932:       // Anti-Venom
                                if (holder->GetSpellProto()->spellLevel > 25)
                                    return SPELL_FAILED_HIGHLEVEL;
                                break;
                            case 7933:      // Strong Anti-Venom
                                if (holder->GetSpellProto()->spellLevel > 35)
                                    return SPELL_FAILED_HIGHLEVEL;
                                break;
                            case 23786:     // Powerful Anti-Venom
                                if (holder->GetSpellProto()->spellLevel > 60)
                                    return SPELL_FAILED_HIGHLEVEL;
                                break;
                        }
                    }
                    bFoundOneDispell = true;
                    break;
                }
            }
        }
        // World of Warcraft Client Patch 1.10.0 (2006-03-28)
        //  - All spells / abilities that remove existing effects(e.g.Dispel Magic,
        //    Cleanse, Remove Curse etc...) will now verify that there is an effect
        //    that can be removed before casting.
        if (!bFoundOneDispell)
        {
            return SPELL_FAILED_NOTHING_TO_DISPEL;
        }
    }

    for (int i = 0; i < MAX_EFFECT_INDEX; ++i)
    {
        switch (m_spellInfo->EffectApplyAuraName[i])
        {
            case SPELL_AURA_MOD_POSSESS:
            {
                if (!m_caster->IsPlayer())
                    return SPELL_FAILED_BAD_TARGETS;

                if (m_targets.getUnitTarget() == m_casterUnit)
                    return SPELL_FAILED_BAD_TARGETS;

                if (m_casterUnit->GetPetGuid())
                    return SPELL_FAILED_ALREADY_HAVE_SUMMON;

                if (m_casterUnit->GetCharmGuid())
                    return SPELL_FAILED_ALREADY_HAVE_CHARM;

                if (m_casterUnit->GetCharmerGuid())
                    return SPELL_FAILED_CHARMED;

                if (!m_targets.getUnitTarget())
                    return SPELL_FAILED_BAD_IMPLICIT_TARGETS;

                if (m_targets.getUnitTarget()->GetCharmerGuid())
                    return SPELL_FAILED_CHARMED;

                if (m_spellInfo->Id != 530) // Spell for ".possess" command.
                    if (int32(m_targets.getUnitTarget()->GetLevel()) > CalculateDamage(SpellEffectIndex(i), m_targets.getUnitTarget()))
                        return SPELL_FAILED_HIGHLEVEL;

                break;
            }
            case SPELL_AURA_MOD_CHARM:
            {
                if (!m_casterUnit)
                    return SPELL_FAILED_BAD_TARGETS;

                if (m_targets.getUnitTarget() == m_casterUnit)
                    return SPELL_FAILED_BAD_TARGETS;

                if (m_casterUnit->GetPetGuid())
                    return SPELL_FAILED_ALREADY_HAVE_SUMMON;

                if (m_casterUnit->GetCharmGuid())
                    return SPELL_FAILED_ALREADY_HAVE_CHARM;

                if (m_casterUnit->GetCharmerGuid())
                    return SPELL_FAILED_CHARMED;

                if (!m_targets.getUnitTarget())
                    return SPELL_FAILED_BAD_IMPLICIT_TARGETS;

                if (m_targets.getUnitTarget()->GetCharmerGuid())
                    return SPELL_FAILED_CHARMED;

                if (int32(m_targets.getUnitTarget()->GetLevel()) > CalculateDamage(SpellEffectIndex(i), m_targets.getUnitTarget()))
                    return SPELL_FAILED_HIGHLEVEL;

                break;
            }
            case SPELL_AURA_MOD_POSSESS_PET:
            {
                if (!m_caster->IsPlayer())
                    return SPELL_FAILED_BAD_TARGETS;

                if (m_casterUnit->GetCharmGuid())
                    return SPELL_FAILED_ALREADY_HAVE_CHARM;

                if (m_casterUnit->GetCharmerGuid())
                    return SPELL_FAILED_CHARMED;


                Pet* pet = m_casterUnit->GetPet();
                if (!pet)
                    return SPELL_FAILED_NO_PET;

                if (pet->GetCharmerGuid())
                    return SPELL_FAILED_CHARMED;

                break;
            }
            case SPELL_AURA_MOUNTED:
            {
                if (!m_casterUnit)
                    return SPELL_FAILED_BAD_TARGETS;

                if (m_casterUnit->IsInWater())
                    return SPELL_FAILED_ONLY_ABOVEWATER;

                if (m_casterUnit->IsPlayer() && ((Player*)m_casterUnit)->GetTransport())
                    return SPELL_FAILED_NO_MOUNTS_ALLOWED;

                /// Specific case for Temple of Ahn'Qiraj mounts as they are usable only in AQ40 and are the only mounts allowed here
                /// TBC and above handle this by using m_spellInfo->AreaId
                bool isAQ40Mount = false;

                switch (m_spellInfo->Id)
                {
                    case 25863:    // spell used by the Black Qiraji Crystal script when mounting inside AQ40
                    case 25953:    // spells of the 4 regular AQ40 mounts
                    case 26054:
                    case 26055:
                    case 26056:
                        if (m_casterUnit->GetMapId() == 531)
                        {
                            isAQ40Mount = true;
                            break;
                        }
                        else
                            return SPELL_FAILED_NOT_HERE;
                    default:
                        if ((m_casterUnit->GetMapId() == 531 && m_casterUnit->GetTerrain()->IsOutdoors(m_casterUnit->GetPositionX(), m_casterUnit->GetPositionY(), m_casterUnit->GetPositionZ())))
                            isAQ40Mount = true;
                        break;
                }

                // Ignore map check if spell have AreaId. AreaId already checked and this prevent special mount spells
                if (!isAQ40Mount && m_casterUnit->IsPlayer() && !sMapStorage.LookupEntry<MapEntry>(m_casterUnit->GetMapId())->IsMountAllowed() && !m_IsTriggeredSpell) //[-ZERO] && !m_spellInfo->AreaId)
                    return SPELL_FAILED_NO_MOUNTS_ALLOWED;

                if (m_casterUnit->GetAreaId() == 35)
                    return SPELL_FAILED_NO_MOUNTS_ALLOWED;

                if (m_casterUnit->IsInDisallowedMountForm())
                    return SPELL_FAILED_NOT_SHAPESHIFT;

                break;
            }
            case SPELL_AURA_RANGED_ATTACK_POWER_ATTACKER_BONUS:
            {
                if (!m_targets.getUnitTarget())
                    return SPELL_FAILED_BAD_IMPLICIT_TARGETS;

                // can be casted at non-friendly unit or own pet/charm
                if (m_caster->IsFriendlyTo(m_targets.getUnitTarget()))
                    return SPELL_FAILED_TARGET_FRIENDLY;

                break;
            }
            case SPELL_AURA_PERIODIC_MANA_LEECH:
            {
                if (!m_targets.getUnitTarget() && 
                        !IsAreaEffectTarget(SpellTarget(m_spellInfo->EffectImplicitTargetA[i])) &&
                        !IsAreaEffectTarget(SpellTarget(m_spellInfo->EffectImplicitTargetB[i])))
                    return SPELL_FAILED_BAD_IMPLICIT_TARGETS;

                if (!m_caster->IsPlayer() || m_CastItem)
                    break;

                if (m_targets.getUnitTarget() && m_targets.getUnitTarget()->GetPowerType() != POWER_MANA)
                    return SPELL_FAILED_BAD_TARGETS;

                break;
            }
            case SPELL_AURA_MOD_SHAPESHIFT:
            {
                if (m_casterUnit && m_casterUnit->HasAura(23397)) // Ustaag <Nostalrius> : Nefarian Warrior Class Call
                    return SPELL_FAILED_NOT_SHAPESHIFT;
                break;
            }
            case SPELL_AURA_MOD_STALKED:
            {
                if (!m_targets.getUnitTarget())
                    return SPELL_FAILED_BAD_IMPLICIT_TARGETS;
                // Example: Hunter's mark #1130
                if (m_spellInfo->EffectImplicitTargetA[i] == TARGET_UNIT &&
                    !m_caster->IsValidAttackTarget(m_targets.getUnitTarget()) &&
                    !m_spellInfo->IsFitToFamily<SPELLFAMILY_PRIEST, CF_PRIEST_MIND_VISION>())   // exception for mind vision
                    return SPELL_FAILED_BAD_TARGETS;
                break;
            }
            case SPELL_AURA_WATER_WALK:
            {
                if (Unit* pTarget = m_targets.getUnitTarget())
                {
                    // Player is not allowed to cast water walk on shapeshifted / mounted target
                    if (pTarget->IsShapeShifted() || pTarget->IsMounted())
                        return SPELL_FAILED_BAD_TARGETS;
                }
                break;
            }
            default:
                break;
        }
    }

    // check trade slot case (last, for allow catch any another cast problems)
    if (m_targets.m_targetMask & TARGET_FLAG_TRADE_ITEM)
    {
        if (!m_caster->IsPlayer())
            return SPELL_FAILED_NOT_TRADING;

        Player *pCaster = ((Player*)m_caster);
        TradeData* my_trade = pCaster->GetTradeData();

        if (!my_trade)
            return SPELL_FAILED_NOT_TRADING;

        TradeSlots slot = TradeSlots(m_targets.getItemTargetGuid().GetRawValue());
        if (slot != TRADE_SLOT_NONTRADED)
            return SPELL_FAILED_ITEM_NOT_READY;

        // if trade not complete then remember it in trade data
        if (!my_trade->IsInAcceptProcess())
        {
            // Spell will be casted at completing the trade. Silently ignore at this place
            my_trade->SetSpell(m_spellInfo->Id, m_CastItem);
            return SPELL_FAILED_DONT_REPORT;
        }
    }

    // all ok
    return SPELL_CAST_OK;
}

SpellCastResult Spell::CheckPetCast(Unit* target)
{
    if (!m_casterUnit->IsAlive())
        return SPELL_FAILED_CASTER_DEAD;

    //prevent spellcast interruption by another spellcast
    if (m_casterUnit->IsNonMeleeSpellCasted(false))
        return SPELL_FAILED_SPELL_IN_PROGRESS;

    if (m_casterUnit->IsInCombat() && m_spellInfo->IsNonCombatSpell())
        return SPELL_FAILED_AFFECTING_COMBAT;

    if (m_casterUnit->IsCreature() && (((Creature*)m_casterUnit)->IsPet() || m_casterUnit->IsCharmed()))
    {
        //dead owner (pets still alive when owners ressed?)
        if (m_casterUnit->GetCharmerOrOwner() && !m_casterUnit->GetCharmerOrOwner()->IsAlive())
            return SPELL_FAILED_CASTER_DEAD;

        if (!target && m_targets.getUnitTarget())
            target = m_targets.getUnitTarget();

        bool need = false;
        for (uint32 i : m_spellInfo->EffectImplicitTargetA)
        {
            if (i == TARGET_UNIT_ENEMY ||
                    i == TARGET_UNIT_FRIEND ||
                    i == TARGET_UNIT_RAID ||
                    i == TARGET_UNIT ||
                    i == TARGET_UNIT_PARTY ||
                    i == TARGET_LOCATION_CASTER_TARGET_POSITION)
            {
                need = true;
                if (!target)
                    return SPELL_FAILED_BAD_IMPLICIT_TARGETS;
                break;
            }
        }
        if (need)
            m_targets.setUnitTarget(target);

        Unit* _target = m_targets.getUnitTarget();

        if (_target)                                         //for target dead/target not valid
        {
            if (!_target->IsTargetable(true, m_casterUnit->IsCharmerOrOwnerPlayerOrPlayerItself()))
                return SPELL_FAILED_BAD_TARGETS;            // guessed error

            // SPELL_EFFECT_DISPEL -> Positive or negative depending on the target
            if (m_spellInfo->IsPositiveSpell() && !m_spellInfo->HasEffect(SPELL_EFFECT_DISPEL))
            {
                if (m_casterUnit->IsHostileTo(_target))
                    return SPELL_FAILED_BAD_TARGETS;
            }
            else
            {
                bool checkValidAttackTarget = true;
                for (uint32 j : m_spellInfo->EffectImplicitTargetA)
                {
                    if (j == TARGET_UNIT ||
                        j == TARGET_ENUM_UNITS_ENEMY_IN_CONE_24 ||
                        j == TARGET_LOCATION_CASTER_SRC)
                        checkValidAttackTarget = false;
                }
                if (checkValidAttackTarget && !m_casterUnit->IsValidAttackTarget(_target))
                    return SPELL_FAILED_BAD_TARGETS;
            }
        }
        //cooldown
        if (m_casterUnit->HasSpellCooldown(m_spellInfo->Id) || m_casterUnit->HasSpellCategoryCooldown(m_spellInfo->Category))
            return SPELL_FAILED_NOT_READY;
    }

    return CheckCast(true);
}

SpellCastResult Spell::CheckCasterAuras() const
{
    if (!m_casterUnit)
        return SPELL_CAST_OK;

    // Flag drop spells totally immuned to caster auras
    // FIXME: find more nice check for all totally immuned spells
    // AttributesEx3 & 0x10000000?
    if (m_spellInfo->Id == 23336 ||                         // Alliance Flag Drop
            m_spellInfo->Id == 23334)                           // Horde Flag Drop
        return SPELL_CAST_OK;

    uint8 school_immune = 0;
    uint32 mechanic_immune = 0;
    uint32 dispel_immune = 0;

    // Check if the spell grants school or mechanic immunity.
    // We use bitmasks so the loop is done only once and not on every aura check below.
    if (m_spellInfo->AttributesEx & SPELL_ATTR_EX_DISPEL_AURAS_ON_IMMUNITY)
    {
        for (int i = 0; i < MAX_EFFECT_INDEX; ++i)
        {
            if (m_spellInfo->EffectApplyAuraName[i] == SPELL_AURA_SCHOOL_IMMUNITY)
                school_immune |= uint32(m_spellInfo->EffectMiscValue[i]);
            else if (m_spellInfo->EffectApplyAuraName[i] == SPELL_AURA_MECHANIC_IMMUNITY)
                mechanic_immune |= 1 << uint32(m_spellInfo->EffectMiscValue[i] - 1);
            else if (m_spellInfo->EffectApplyAuraName[i] == SPELL_AURA_MECHANIC_IMMUNITY_MASK)
                mechanic_immune |= uint32(m_spellInfo->EffectMiscValue[i]);
            else if (m_spellInfo->EffectApplyAuraName[i] == SPELL_AURA_DISPEL_IMMUNITY)
                dispel_immune |= GetDispellMask(DispelType(m_spellInfo->EffectMiscValue[i]));
        }
    }

    // Check whether the cast should be prevented by any state you might have.
    SpellCastResult prevented_reason = SPELL_CAST_OK;
    // Have to check if there is a stun aura. Otherwise will have problems with ghost aura apply while logging out
    uint32 unitflag = m_casterUnit->GetUInt32Value(UNIT_FIELD_FLAGS);     // Get unit state
    if (unitflag & UNIT_FLAG_STUNNED && !(mechanic_immune & (1 << (MECHANIC_STUN - 1u))))
        prevented_reason = SPELL_FAILED_STUNNED;
    else if (unitflag & UNIT_FLAG_CONFUSED && !(mechanic_immune & CONFUSED_MECHANIC_MASK))
        prevented_reason = SPELL_FAILED_CONFUSED;
    else if (unitflag & UNIT_FLAG_FLEEING && !(mechanic_immune & (1 << (MECHANIC_FEAR - 1u))))
        prevented_reason = SPELL_FAILED_FLEEING;
    else if (m_spellInfo->PreventionType == SPELL_PREVENTION_TYPE_SILENCE &&
            (unitflag & UNIT_FLAG_SILENCED ||
             m_casterUnit->IsSpellProhibited(m_spellInfo))) // Nostalrius : fix counterspell for mobs.
        prevented_reason = SPELL_FAILED_SILENCED;
    else if (unitflag & UNIT_FLAG_PACIFIED && m_spellInfo->PreventionType == SPELL_PREVENTION_TYPE_PACIFY)
        prevented_reason = SPELL_FAILED_PACIFIED;

    // Attr must make flag drop spell totally immune from all effects
    if (prevented_reason != SPELL_CAST_OK)
    {
        if (school_immune || mechanic_immune || dispel_immune)
        {
            //Checking auras is needed now, because you are prevented by some state but the spell grants immunity.
            auto const& auras = m_casterUnit->GetSpellAuraHolderMap();
            for (const auto& itr : auras)
            {
                SpellAuraHolder* holder = itr.second;
                SpellEntry const * pEntry = holder->GetSpellProto();

                if ((pEntry->GetSpellSchoolMask() & school_immune) && !(pEntry->AttributesEx & SPELL_ATTR_EX_UNAFFECTED_BY_SCHOOL_IMMUNE))
                    continue;
                if ((1 << (pEntry->Dispel)) & dispel_immune)
                    continue;

                for (int32 i = 0; i < MAX_EFFECT_INDEX; ++i)
                {
                    Aura *aura = holder->GetAuraByEffectIndex(SpellEffectIndex(i));
                    if (!aura)
                        continue;

                    if (pEntry->GetSpellMechanicMask(1 << i) & mechanic_immune)
                        continue;
                    // Make a second check for spell failed so the right SPELL_FAILED message is returned.
                    // That is needed when your casting is prevented by multiple states and you are only immune to some of them.
                    switch (aura->GetModifier()->m_auraname)
                    {
                        
                        case SPELL_AURA_MOD_STUN:
                            if (!(mechanic_immune & (1 << (MECHANIC_STUN - 1u))))
                                return SPELL_FAILED_STUNNED;
                            break;
                        case SPELL_AURA_MOD_CONFUSE:
                            if (!(mechanic_immune & CONFUSED_MECHANIC_MASK))
                                return SPELL_FAILED_CONFUSED;
                            break;
                        case SPELL_AURA_MOD_FEAR:
                            if (!(mechanic_immune & (1 << (MECHANIC_FEAR - 1u))))
                                return SPELL_FAILED_FLEEING;
                            break;
                        case SPELL_AURA_MOD_SILENCE:
                        case SPELL_AURA_MOD_PACIFY:
                        case SPELL_AURA_MOD_PACIFY_SILENCE:
                            if (m_spellInfo->PreventionType == SPELL_PREVENTION_TYPE_PACIFY)
                                return SPELL_FAILED_PACIFIED;
                            else if (m_spellInfo->PreventionType == SPELL_PREVENTION_TYPE_SILENCE)
                                return SPELL_FAILED_SILENCED;
                            break;
                        default:
                            break;
                    }
                }
            }
        }
        // You are prevented from casting and the spell casted does not grant immunity. Return a failed error.
        else
            return prevented_reason;
    }
    return SPELL_CAST_OK;
}

bool Spell::CanAutoCast(Unit* target)
{
    if (!m_casterUnit)
        return false;

    ObjectGuid targetguid = target->GetObjectGuid();

    // Nostalrius - par exemple roder ne doit pas se declencher si on envoie le pet attaquer.
    // Sinon le pet revient a cause de cet attribut :
    if (m_spellInfo->Attributes & SPELL_ATTR_STOP_ATTACK_TARGET && m_casterUnit->GetVictim())
        return false;

    // 2947 - Fire Shield, rank 1 enUS
    // When set to auto-cast, the Imp will cast this on any party members within 30 yds if they receive a melee attack.
    if (m_spellInfo->IsFitToFamily<SPELLFAMILY_WARLOCK, CF_WARLOCK_IMP_BUFFS>() && m_spellInfo->SpellVisual == 289)
        if (!target->GetAttackerForHelper())
            return false;

    if (!m_spellInfo->HasEffect(SPELL_EFFECT_SCHOOL_DAMAGE))
    {
        for (int j = 0; j < MAX_EFFECT_INDEX; ++j)
        {
            if (m_spellInfo->Effect[j] == SPELL_EFFECT_APPLY_AURA)
            {
                if (m_spellInfo->StackAmount <= 1)
                {
                    if (target->HasAura(m_spellInfo->Id, SpellEffectIndex(j)))
                        return false;
                }
            }
            else if (IsAreaAuraEffect(m_spellInfo->Effect[j]))
            {
                if (target->HasAura(m_spellInfo->Id, SpellEffectIndex(j)))
                    return false;
            }
        }
    }

    // Dont waste mana to heal someone already full life.
    if (m_spellInfo->IsHealSpell() && target->GetMaxHealth() == target->GetHealth())
        return false;

    SpellCastResult result = CheckPetCast(target);

    if (result == SPELL_CAST_OK || result == SPELL_FAILED_UNIT_NOT_INFRONT)
    {
        FillTargetMap();
        //check if among target units, our WANTED target is as well (->only self cast spells return false)
        for (const auto& ihit : m_UniqueTargetInfo)
            if (!ihit.deleted && ihit.targetGUID == targetguid)
                return true;
    }
    return false;                                           //target invalid
}

SpellCastResult Spell::CheckRange(bool strict)
{
    Unit *target = m_targets.getUnitTarget();
    // Pour 'TARGET_UNIT_CASTER_PET', 'getUnitTarget' renvoit le caster >.<
    for (uint32 i : m_spellInfo->EffectImplicitTargetA)
        if (i == TARGET_UNIT_CASTER_PET)
            if (m_casterUnit)
                if (Pet* pPet = m_casterUnit->GetPet())
                    target = pPet;

    // special range cases
    switch (m_spellInfo->rangeIndex)
    {
        // self cast doesn't need range checking -- also for Starshards fix
        case SPELL_RANGE_IDX_SELF_ONLY:
            return SPELL_CAST_OK;
        // combat range spells are treated differently
        case SPELL_RANGE_IDX_COMBAT:
        {
            if (target)
            {
                if (target == m_caster || IsNextMeleeSwingSpell())
                    return SPELL_CAST_OK;

                // Requires target forward for these spells
                if (!m_caster->IsFacingTarget(target))
                    return SPELL_FAILED_UNIT_NOT_INFRONT;

                float range_mod = 1.0f;

                if (m_casterUnit)
                {
                    if (Player* modOwner = m_casterUnit->GetSpellModOwner())
                    {
                        float base = ATTACK_DISTANCE;
                        range_mod += modOwner->ApplySpellMod(m_spellInfo->Id, SPELLMOD_RANGE, base, this);
                    }
                }
                
                // with additional 5 dist for non stricted case (some melee spells have delay in apply
                return m_caster->CanReachWithMeleeSpellAttack(target, range_mod) ? SPELL_CAST_OK : SPELL_FAILED_OUT_OF_RANGE;
            }
            break;                                          // let continue in generic way for no target
        }
    }

    // Add up to ~5 yds "give" for non strict (landing) check and leeway bonus if both units are moving
    const float leeway = GetAffectiveCaster() ? GetAffectiveCaster()->GetLeewayBonusRange(target, true) : 0.0f;
    float const range_mod = (strict ? (m_caster->IsPlayer() ? 1.25f : 0.0f) : (m_caster->IsPlayer() ? 6.25f : 2.25f)) + leeway;

    SpellRangeEntry const* srange = sSpellRangeStore.LookupEntry(m_spellInfo->rangeIndex);
    float max_range = GetSpellMaxRange(srange);
    float min_range = GetSpellMinRange(srange);

    if (m_casterUnit)
    {
        if (Player* modOwner = m_casterUnit->GetSpellModOwner())
            modOwner->ApplySpellMod(m_spellInfo->Id, SPELLMOD_RANGE, max_range, this);
    }

    max_range += range_mod;

    GameObject* go = m_targets.getGOTarget(); // Check range for gobjects (lock picking)
    if (go && m_caster->IsPlayer())
    {
        if (!go->IsAtInteractDistance(dynamic_cast<Player*>(m_caster), max_range)) // only player casts these
            return SPELL_FAILED_OUT_OF_RANGE;
    }

    if (target && target != m_caster)
    {
        float const dist = m_caster->GetCombatDistance(target);

        if (dist > max_range)
            return SPELL_FAILED_OUT_OF_RANGE;

        if (min_range && dist < min_range)
            return SPELL_FAILED_TOO_CLOSE;

        if (m_caster->IsPlayer() && (m_spellInfo->Custom & SPELL_CUSTOM_FACE_TARGET) &&
           (!m_caster->IsFacingTarget(target)))
            return SPELL_FAILED_UNIT_NOT_INFRONT;
    }

    // TODO verify that such spells really use bounding radius
    if (m_targets.m_targetMask == TARGET_FLAG_DEST_LOCATION && m_targets.m_destX != 0 && m_targets.m_destY != 0 && m_targets.m_destZ != 0)
    {
        if (!m_caster->IsWithinDist3d(m_targets.m_destX, m_targets.m_destY, m_targets.m_destZ, max_range))
            return SPELL_FAILED_OUT_OF_RANGE;
        if (min_range && m_caster->IsWithinDist3d(m_targets.m_destX, m_targets.m_destY, m_targets.m_destZ, min_range))
            return SPELL_FAILED_TOO_CLOSE;
    }

    return SPELL_CAST_OK;
}

uint32 Spell::CalculatePowerCost(SpellEntry const* spellInfo, Unit* caster, Spell* spell, Item* castItem)
{
    if (!caster)
        return 0;

    // item cast not used power
    if (castItem)
        return 0;

    // Spell drain all exist power on cast (Only paladin lay of Hands)
    if (spellInfo->AttributesEx & SPELL_ATTR_EX_DRAIN_ALL_POWER)
    {
        // If power type - health drain all
        if (spellInfo->powerType == POWER_HEALTH)
            return caster->GetHealth();
        // Else drain all power
        if (spellInfo->powerType < MAX_POWERS)
            return caster->GetPower(Powers(spellInfo->powerType));
        sLog.outError("Spell::CalculateManaCost: Unknown power type '%d' in spell %d", spellInfo->powerType, spellInfo->Id);
        return 0;
    }

    // Base powerCost
    int32 powerCost = spellInfo->manaCost;
    // PCT cost from total amount
    if (spellInfo->ManaCostPercentage)
    {
        switch (spellInfo->powerType)
        {
            // health as power used
            case POWER_HEALTH:
                powerCost += spellInfo->ManaCostPercentage * caster->GetCreateHealth() / 100;
                break;
            case POWER_MANA:
                powerCost += spellInfo->ManaCostPercentage * caster->GetCreateMana() / 100;
                break;
            case POWER_RAGE:
            case POWER_FOCUS:
            case POWER_ENERGY:
            case POWER_HAPPINESS:
                powerCost += spellInfo->ManaCostPercentage * caster->GetMaxPower(Powers(spellInfo->powerType)) / 100;
                break;
            default:
                sLog.outError("Spell::CalculateManaCost: Unknown power type '%d' in spell %d", spellInfo->powerType, spellInfo->Id);
                return 0;
        }
    }

    SpellSchools school = GetFirstSchoolInMask(spell ? spell->m_spellSchoolMask : spellInfo->GetSpellSchoolMask());
    // Flat mod from caster auras by spell school
    powerCost += caster->GetInt32Value(UNIT_FIELD_POWER_COST_MODIFIER + school);
    // Shiv - costs 20 + weaponSpeed*10 energy (apply only to non-triggered spell with energy cost)
    if (spellInfo->AttributesEx4 & SPELL_ATTR_EX4_SPELL_VS_EXTEND_COST)
        powerCost += caster->GetAttackTime(OFF_ATTACK) / 100;
    // Apply cost mod by spell
    if (spell)
        if (Player* modOwner = caster->GetSpellModOwner())
            modOwner->ApplySpellMod(spellInfo->Id, SPELLMOD_COST, powerCost, spell);

    if (spellInfo->Attributes & SPELL_ATTR_LEVEL_DAMAGE_CALCULATION)
        powerCost = int32(powerCost / (1.117f * spellInfo->spellLevel / caster->GetLevel() - 0.1327f));

    // PCT mod from user auras by school
    powerCost = int32(powerCost * (1.0f + caster->GetFloatValue(UNIT_FIELD_POWER_COST_MULTIPLIER + school)));
    if (powerCost < 0)
        powerCost = 0;
    return powerCost;
}

SpellCastResult Spell::CheckPower() const
{
    // item cast not used power
    if (m_CastItem || m_IsTriggeredSpell || !m_casterUnit)
        return SPELL_CAST_OK;

    // health as power used - need check health amount
    if (m_spellInfo->powerType == POWER_HEALTH)
    {
        if (m_casterUnit->GetHealth() <= m_powerCost)
            return SPELL_FAILED_CASTER_AURASTATE;
        return SPELL_CAST_OK;
    }

    // Check valid power type
    if (m_spellInfo->powerType >= MAX_POWERS)
    {
        sLog.outError("Spell::CheckMana: Unknown power type '%d'", m_spellInfo->powerType);
        return SPELL_FAILED_DONT_REPORT;
    }

    // Allow creatures to cast spells that require a power type they don't have.
    if (m_casterUnit->IsCreature() && !m_casterUnit->IsPet() &&
       ((m_spellInfo->powerType == POWER_MANA && !m_casterUnit->GetCreateMana()) || // creature without mana (unit class warrior)
       (m_spellInfo->powerType != POWER_MANA))) // power that normal creatures can't have 
        return SPELL_CAST_OK;

    // Check power amount
    Powers powerType = Powers(m_spellInfo->powerType);
    if (m_casterUnit->GetPower(powerType) < m_powerCost)
        return SPELL_FAILED_NO_POWER;

    return SPELL_CAST_OK;
}

bool Spell::IgnoreItemRequirements() const
{
    if (m_IsTriggeredSpell)
    {
        /// Not own traded item (in trader trade slot) req. reagents including triggered spell case
        if (Item* targetItem = m_targets.getItemTarget())
            if (targetItem->GetOwnerGuid() != m_caster->GetObjectGuid())
                return false;

        /// Some triggered spells have same reagents that have master spell
        /// expected in test: master spell have reagents in first slot then triggered don't must use own
        return !(m_triggeredBySpellInfo && !m_triggeredBySpellInfo->Reagent[0]);
    }

    return false;
}

SpellCastResult Spell::CheckItems()
{
    // Check creature casts again here, even though they are checked in CreatureAI
    // Need to do this for some melee attacks which are channeled, and then triggered
    // eg. 13736
    if (Creature *creature = m_caster->ToCreature())
    {
        // If the unit is disarmed and the skill requires a weapon, it cannot be cast
        if (creature->HasWeapon() && !creature->CanUseEquippedWeapon(BASE_ATTACK))
        {
            for (uint32 i : m_spellInfo->Effect)
            {
                if (i == SPELL_EFFECT_WEAPON_DAMAGE || i == SPELL_EFFECT_WEAPON_DAMAGE_NOSCHOOL)
                    return SPELL_FAILED_EQUIPPED_ITEM;
            }
        }
    }

    if (!m_caster->IsPlayer())
        return SPELL_CAST_OK;

    Player* p_caster = (Player*)m_caster;

    // cast item checks
    if (m_CastItem)
    {
        if (m_CastItem->IsInTrade())
            return SPELL_FAILED_ITEM_GONE;

        uint32 itemid = m_CastItem->GetEntry();
        if (!p_caster->HasItemCount(itemid, 1))
            return SPELL_FAILED_ITEM_NOT_READY;

        ItemPrototype const *proto = m_CastItem->GetProto();
        if (!proto)
            return SPELL_FAILED_ITEM_NOT_READY;

        for (int i = 0; i < 5; ++i)
            if (proto->Spells[i].SpellCharges)
                if (m_CastItem->GetSpellCharges(i) == 0)
                    return SPELL_FAILED_NO_CHARGES_REMAIN;

        // World of Warcraft Client Patch 1.11.0 (2006-06-20)
        // - Rejuvenation Potions: Any type of potion or consumable that grants 
        //   mana and healing will no longer be consumable unless either your
        //   health or your mana are below maximum.
        // consumable cast item checks
        if (proto->Class == ITEM_CLASS_CONSUMABLE && m_targets.getUnitTarget())
        {
            // such items should only fail if there is no suitable effect at all - see Rejuvenation Potions for example
            SpellCastResult failReason = SPELL_CAST_OK;
            for (int i = 0; i < MAX_EFFECT_INDEX; ++i)
            {
                // skip check, pet not required like checks, and for TARGET_UNIT_CASTER_PET m_targets.getUnitTarget() is not the real target but the caster
                if (m_spellInfo->EffectImplicitTargetA[i] == TARGET_UNIT_CASTER_PET)
                    continue;

                if (m_spellInfo->Effect[i] == SPELL_EFFECT_HEAL)
                {
                    if (m_targets.getUnitTarget()->GetHealth() == m_targets.getUnitTarget()->GetMaxHealth())
                    {
                        failReason = SPELL_FAILED_ALREADY_AT_FULL_HEALTH;
                        continue;
                    }
                    else
                    {
                        failReason = SPELL_CAST_OK;
                        break;
                    }
                }

                // Mana Potion, Rage Potion, Thistle Tea(Rogue), ...
                if (m_spellInfo->Effect[i] == SPELL_EFFECT_ENERGIZE)
                {
                    if (m_spellInfo->EffectMiscValue[i] < 0 || m_spellInfo->EffectMiscValue[i] >= MAX_POWERS)
                    {
                        failReason = SPELL_FAILED_ALREADY_AT_FULL_POWER;
                        continue;
                    }

                    Powers power = Powers(m_spellInfo->EffectMiscValue[i]);
                    if (m_targets.getUnitTarget()->GetPower(power) == m_targets.getUnitTarget()->GetMaxPower(power))
                    {
                        failReason = SPELL_FAILED_ALREADY_AT_FULL_POWER;
                        continue;
                    }
                    else
                    {
                        failReason = SPELL_CAST_OK;
                        break;
                    }
                }
            }
            if (failReason != SPELL_CAST_OK)
                return failReason;
        }
    }

    // check target item (for triggered case not report error)
    if (m_targets.getItemTargetGuid())
    {
        if (m_caster->GetTypeId() != TYPEID_PLAYER)
            return m_IsTriggeredSpell && !(m_targets.m_targetMask & TARGET_FLAG_TRADE_ITEM)
            ? SPELL_FAILED_DONT_REPORT : SPELL_FAILED_BAD_TARGETS;

        if (!m_targets.getItemTarget())
            return m_IsTriggeredSpell && !(m_targets.m_targetMask & TARGET_FLAG_TRADE_ITEM)
            ? SPELL_FAILED_DONT_REPORT : SPELL_FAILED_ITEM_GONE;

        if (!m_targets.getItemTarget()->IsFitToSpellRequirements(m_spellInfo))
            return m_IsTriggeredSpell && !(m_targets.m_targetMask & TARGET_FLAG_TRADE_ITEM)
            ? SPELL_FAILED_DONT_REPORT : SPELL_FAILED_EQUIPPED_ITEM_CLASS;
    }

    // if not item target then required item must be equipped (for triggered case not report error)
    else if (Player* pPlayer = m_caster->ToPlayer())
    {
        Item const* ignore = nullptr;
        if (m_attackType == BASE_ATTACK)
            ignore = pPlayer->GetWeaponForAttack(OFF_ATTACK);
        else if (m_attackType == OFF_ATTACK)
            ignore = pPlayer->GetWeaponForAttack(BASE_ATTACK);

        if (!pPlayer->HasItemFitToSpellReqirements(m_spellInfo, ignore))
        {
            return m_IsTriggeredSpell ? SPELL_FAILED_DONT_REPORT : SPELL_FAILED_EQUIPPED_ITEM_CLASS;
        }
    }

    // check spell focus object
    if (m_spellInfo->RequiresSpellFocus)
    {
        const float MAX_GAMEOBJECT_FOCUS_DISTANCE = 10.0f; // Max in DB is actually 7
        GameObject* ok = nullptr;
        MaNGOS::GameObjectFocusCheck go_check(m_caster, m_spellInfo->RequiresSpellFocus);
        MaNGOS::GameObjectSearcher<MaNGOS::GameObjectFocusCheck> checker(ok, go_check);
        Cell::VisitGridObjects(m_caster, checker, MAX_GAMEOBJECT_FOCUS_DISTANCE);

        if (!ok)
            return SPELL_FAILED_REQUIRES_SPELL_FOCUS;

        focusObject = ok;                                   // game object found in range
    }

    // check reagents (ignore triggered spells with reagents processed by original spell) and special reagent ignore case.
    if (!IgnoreItemRequirements())
    {
        for (uint32 i = 0; i < MAX_SPELL_REAGENTS; ++i)
        {
            if (m_spellInfo->Reagent[i] <= 0)
                continue;

            uint32 itemid = m_spellInfo->Reagent[i];
            uint32 itemcount = m_spellInfo->ReagentCount[i];

            // if CastItem is also spell reagent
            if (m_CastItem && m_CastItem->GetEntry() == itemid)
            {
                ItemPrototype const* proto = m_CastItem->GetProto();
                if (!proto)
                    return SPELL_FAILED_ITEM_NOT_READY;

                for (int s = 0; s < MAX_ITEM_PROTO_SPELLS; ++s)
                {
                    // CastItem will be used up and does not count as reagent
                    int32 charges = m_CastItem->GetSpellCharges(s);
                    if (proto->Spells[s].SpellCharges < 0 && abs(charges) < 2 && itemcount > 1)
                    {
                        ++itemcount;
                        break;
                    }
                }
            }

            if (!p_caster->HasItemCount(itemid, itemcount))
                return SPELL_FAILED_ITEM_NOT_READY;
        }

        // check totem-item requirements (items presence in inventory)
        uint32 totems = MAX_SPELL_TOTEMS;
        for (uint32 i : m_spellInfo->Totem)
        {
            if (i != 0)
            {
                if (p_caster->HasItemCount(i, 1))
                {
                    totems -= 1;
                    continue;
                }
            }
            else
                totems -= 1;
        }

        if (totems != 0)
            return SPELL_FAILED_ITEM_GONE;                      //[-ZERO] not sure of it
    }

    switch (m_spellInfo->Id)
    {
        case  6201:                                 // Healthstone creating spells
        case  6202:
        case  5699:
        case 11729:
        case 11730:
        {
            if (!p_caster)
                break;
            uint32 rank = 0;
            uint32 itemtype;
            Unit::AuraList const& mDummyAuras = p_caster->GetAurasByType(SPELL_AURA_DUMMY);
            for (const auto aura : mDummyAuras)
            {
                if (aura->GetId() == 18692)
                {
                    rank = 1;
                    break;
                }
                else if (aura->GetId() == 18693)
                {
                    rank = 2;
                    break;
                }
            }

            static uint32 const itypes[5][3] =
            {
                { 5512, 19004, 19005},              // Minor Healthstone
                { 5511, 19006, 19007},              // Lesser Healthstone
                { 5509, 19008, 19009},              // Healthstone
                { 5510, 19010, 19011},              // Greater Healthstone
                { 9421, 19012, 19013},              // Major Healthstone
            };

            switch (m_spellInfo->Id)
            {
                case  6201:
                    itemtype = itypes[0][rank];
                    break; // Minor Healthstone
                case  6202:
                    itemtype = itypes[1][rank];
                    break; // Lesser Healthstone
                case  5699:
                    itemtype = itypes[2][rank];
                    break; // Healthstone
                case 11729:
                    itemtype = itypes[3][rank];
                    break; // Greater Healthstone
                case 11730:
                    itemtype = itypes[4][rank];
                    break; // Major Healthstone
            }

            ItemPosCountVec dest;
            InventoryResult msg = p_caster->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, itemtype, 1);
            if (msg != EQUIP_ERR_OK)
            {
                p_caster->SendEquipError(msg, nullptr, nullptr, itemtype);
                return SPELL_FAILED_DONT_REPORT;
            }
        }
    }

    for (int i = 0; i < MAX_EFFECT_INDEX; ++i)
    {
        switch (m_spellInfo->Effect[i])
        {
            case SPELL_EFFECT_CREATE_ITEM:
            {
                if (!m_IsTriggeredSpell && i == EFFECT_INDEX_0)
                {
                    if (Unit* target = m_targets.getUnitTarget())
                    {
                        if (!target->IsPlayer())
                            return SPELL_FAILED_BAD_TARGETS;

                        uint32 count = std::max(1, CalculateDamage(SpellEffectIndex(i), target));
                        ItemPosCountVec dest;
                        uint32 no_space = 0;
                        InventoryResult msg = static_cast<Player*>(target)->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, m_spellInfo->EffectItemType[i], count, &no_space);
                        if (msg != EQUIP_ERR_OK)
                        {
                            static_cast<Player*>(target)->SendEquipError(msg, nullptr, nullptr, m_spellInfo->EffectItemType[i]);
                            return SPELL_FAILED_DONT_REPORT;
                        }
                    }
                }

                break;
            }
            case SPELL_EFFECT_ENCHANT_ITEM:
            {
                Item* targetItem = m_targets.getItemTarget();
                if (!targetItem)
                    return SPELL_FAILED_ITEM_GONE;

                if (targetItem->GetProto()->ItemLevel < m_spellInfo->baseLevel)
                    return SPELL_FAILED_LOWLEVEL;
                // Not allow enchant in trade slot for some enchant type
                if (targetItem->GetOwner() != m_caster)
                {
                    uint32 enchant_id = m_spellInfo->EffectMiscValue[i];
                    SpellItemEnchantmentEntry const *pEnchant = sSpellItemEnchantmentStore.LookupEntry(enchant_id);
                    if (!pEnchant)
                        return SPELL_FAILED_ERROR;
                    if (pEnchant->slot & ENCHANTMENT_CAN_SOULBOUND)
                        return SPELL_FAILED_NOT_TRADEABLE;
                }
                break;
            }
            case SPELL_EFFECT_ENCHANT_ITEM_TEMPORARY:
            {
                Item *item = m_targets.getItemTarget();
                if (!item)
                    return SPELL_FAILED_ITEM_GONE;
                // Not allow enchant in trade slot for some enchant type
                if (item->GetOwner() != m_caster)
                {
                    uint32 enchant_id = m_spellInfo->EffectMiscValue[i];
                    SpellItemEnchantmentEntry const *pEnchant = sSpellItemEnchantmentStore.LookupEntry(enchant_id);
                    if (!pEnchant)
                        return SPELL_FAILED_ERROR;
                    if (pEnchant->slot & ENCHANTMENT_CAN_SOULBOUND)
                        return SPELL_FAILED_NOT_TRADEABLE;
                }
                break;
            }
            case SPELL_EFFECT_ENCHANT_HELD_ITEM:
                // check item existence in effect code (not output errors at offhand hold item effect to main hand for example
                break;
            case SPELL_EFFECT_DISENCHANT:
            {
                if (!m_targets.getItemTarget() || m_targets.getItemTarget()->HasGeneratedLoot())
                    return SPELL_FAILED_CANT_BE_DISENCHANTED;

                // prevent disenchanting in trade slot
                if (m_targets.getItemTarget()->GetOwnerGuid() != m_caster->GetObjectGuid())
                    return SPELL_FAILED_CANT_BE_DISENCHANTED;

                ItemPrototype const* itemProto = m_targets.getItemTarget()->GetProto();
                if (!itemProto)
                    return SPELL_FAILED_CANT_BE_DISENCHANTED;

                // must have disenchant loot (other static req. checked at item prototype loading)
                if (!itemProto->DisenchantID || (itemProto->Flags & ITEM_FLAG_NO_DISENCHANT))
                    return SPELL_FAILED_CANT_BE_DISENCHANTED;

                break;
            }
            case SPELL_EFFECT_WEAPON_DAMAGE:
            case SPELL_EFFECT_WEAPON_DAMAGE_NOSCHOOL:
            {
                if (!m_caster->IsPlayer())
                    return SPELL_FAILED_TARGET_NOT_PLAYER;
                if (m_attackType != RANGED_ATTACK)
                    break;
                Item *pItem = ((Player*)m_caster)->GetWeaponForAttack(m_attackType, true, false);
                if (!pItem)
                    return SPELL_FAILED_EQUIPPED_ITEM;

                switch (pItem->GetProto()->SubClass)
                {
                    case ITEM_SUBCLASS_WEAPON_THROWN:
                    {
                        uint32 ammo = pItem->GetEntry();
                        if (!((Player*)m_caster)->HasItemCount(ammo, 1))
                            return SPELL_FAILED_NO_AMMO;
                    };
                    break;
                    case ITEM_SUBCLASS_WEAPON_GUN:
                    case ITEM_SUBCLASS_WEAPON_BOW:
                    case ITEM_SUBCLASS_WEAPON_CROSSBOW:
                    {
                        uint32 ammo = ((Player*)m_caster)->GetUInt32Value(PLAYER_AMMO_ID);
                        if (!ammo)
                            return SPELL_FAILED_NO_AMMO;

                        ItemPrototype const *ammoProto = ObjectMgr::GetItemPrototype(ammo);
                        if (!ammoProto)
                            return SPELL_FAILED_NO_AMMO;

                        if (ammoProto->Class != ITEM_CLASS_PROJECTILE)
                            return SPELL_FAILED_NO_AMMO;

                        // check ammo ws. weapon compatibility
                        switch (pItem->GetProto()->SubClass)
                        {
                            case ITEM_SUBCLASS_WEAPON_BOW:
                            case ITEM_SUBCLASS_WEAPON_CROSSBOW:
                                if (ammoProto->SubClass != ITEM_SUBCLASS_ARROW)
                                    return SPELL_FAILED_NO_AMMO;
                                break;
                            case ITEM_SUBCLASS_WEAPON_GUN:
                                if (ammoProto->SubClass != ITEM_SUBCLASS_BULLET)
                                    return SPELL_FAILED_NO_AMMO;
                                break;
                            default:
                                return SPELL_FAILED_NO_AMMO;
                        }

                        if (!((Player*)m_caster)->HasItemCount(ammo, 1))
                            return SPELL_FAILED_NO_AMMO;
                    };
                    break;
                    case ITEM_SUBCLASS_WEAPON_WAND:
                        break;
                    default:
                        break;
                }
                break;
            }
            default:
                break;
        }
    }

    return SPELL_CAST_OK;
}

void Spell::Delayed()
{
    if (!m_caster || !m_caster->IsPlayer())
        return;

    if (m_spellState == SPELL_STATE_DELAYED)
        return;                                             // spell is active and can't be time-backed

    // spells not loosing casting time ( slam, dynamites, bombs.. )
    if (!(m_spellInfo->InterruptFlags & SPELL_INTERRUPT_FLAG_DAMAGE))
        return;

    if (m_caster->IsPlayer() && m_caster->ToPlayer()->HasOption(PLAYER_CHEAT_UNRANDOMIZE))
        return;

    //check resist chance
    int32 resistChance = 100;                               //must be initialized to 100 for percent modifiers
    ((Player*)m_caster)->ApplySpellMod(m_spellInfo->Id, SPELLMOD_NOT_LOSE_CASTING_TIME, resistChance, this);
    resistChance += m_casterUnit->GetTotalAuraModifier(SPELL_AURA_RESIST_PUSHBACK) - 100;
    if (roll_chance_i(resistChance))
        return;

    int32 delaytime = GetNextDelayAtDamageMsTime();

    if (int32(m_timer) + delaytime > m_casttime)
    {
        delaytime = m_casttime - m_timer;
        m_timer = m_casttime;
    }
    else
        m_timer += delaytime;

    DETAIL_FILTER_LOG(LOG_FILTER_SPELL_CAST, "Spell %u partially interrupted for (%d) ms at damage", m_spellInfo->Id, delaytime);

    WorldPacket data(SMSG_SPELL_DELAYED, 8 + 4);
    data << ObjectGuid(m_caster->GetObjectGuid());
    data << uint32(delaytime);

    if (m_caster->IsPlayer())
        ((Player*)m_caster)->SendDirectMessage(&data);
}

void Spell::DelayedChannel()
{
    if (!m_caster || !m_caster->IsPlayer() || getState() != SPELL_STATE_CASTING)
        return;

    //check resist chance
    int32 resistChance = 100;                               //must be initialized to 100 for percent modifiers
    ((Player*)m_caster)->ApplySpellMod(m_spellInfo->Id, SPELLMOD_NOT_LOSE_CASTING_TIME, resistChance, this);
    resistChance += m_casterUnit->GetTotalAuraModifier(SPELL_AURA_RESIST_PUSHBACK) - 100;
    if (roll_chance_i(resistChance))
        return;

    int32 delaytime = GetNextDelayAtDamageMsTime();

    if (int32(m_timer) < delaytime)
    {
        delaytime = m_timer;
        m_timer = 0;
    }
    else
        m_timer -= delaytime;

    DEBUG_FILTER_LOG(LOG_FILTER_SPELL_CAST, "Spell %u partially interrupted for %i ms, new duration: %u ms", m_spellInfo->Id, delaytime, m_timer);

    for (const auto& ihit : m_UniqueTargetInfo)
    {
        if (ihit.deleted)
            continue;

        if (ihit.missCondition == SPELL_MISS_NONE)
        {
            if (Unit* unit = m_caster->GetObjectGuid() == ihit.targetGUID ? m_casterUnit : ObjectAccessor::GetUnit(*m_caster, ihit.targetGUID))
                unit->DelaySpellAuraHolder(m_spellInfo->Id, delaytime, unit->GetObjectGuid());
        }
    }

    for (int j = 0; j < MAX_EFFECT_INDEX; ++j)
    {
        // partially interrupt persistent area auras
        if (DynamicObject* dynObj = m_caster->GetDynObject(m_spellInfo->Id, SpellEffectIndex(j)))
            dynObj->Delay(delaytime);
    }

    SendChannelUpdate(m_timer);
}

void Spell::UpdateOriginalCasterPointer()
{
    if (m_originalCasterGUID == m_caster->GetObjectGuid())
        m_originalCaster = m_casterUnit;
    else if (m_originalCasterGUID.IsGameObject())
    {
        GameObject* go = m_caster->IsInWorld() ? m_caster->GetMap()->GetGameObject(m_originalCasterGUID) : nullptr;
        m_originalCaster = go ? go->GetOwner() : nullptr;
    }
    else
    {
        Unit* unit = ObjectAccessor::GetUnit(*m_caster, m_originalCasterGUID);
        m_originalCaster = unit && unit->IsInWorld() ? unit : nullptr;
    }
}

void Spell::UpdatePointers()
{
    UpdateOriginalCasterPointer();

    m_targets.Update(m_caster);
}

bool Spell::CheckTargetCreatureType(Unit* target) const
{
    if (target->HasAura(8179)) // Totem de glebe absorbe tout (pour dispel le buff quand il absorbe un sort)
        return true;

    uint32 spellCreatureTargetMask = m_spellInfo->TargetCreatureType;

    // Curse of Doom : not find another way to fix spell target check :/
    if (m_spellInfo->Id == 603)                             // in 1.12 "Curse of doom" have only 1 rank.
    {
        // not allow cast at player
        if (target->GetCharmerOrOwnerPlayerOrPlayerItself())
            return false;

        spellCreatureTargetMask = 0x7FF;
    }

    // Dismiss Pet and Taming Lesson skipped
    if (m_spellInfo->Id == 2641 || m_spellInfo->Id == 23356)
        spellCreatureTargetMask =  0;

    if (spellCreatureTargetMask)
    {
        uint32 TargetCreatureType = target->GetCreatureTypeMask();

        return !TargetCreatureType || (spellCreatureTargetMask & TargetCreatureType);
    }
    return true;
}

CurrentSpellTypes Spell::GetCurrentContainer() const
{
    if (IsNextMeleeSwingSpell())
        return (CURRENT_MELEE_SPELL);
    else if (IsAutoRepeat())
        return (CURRENT_AUTOREPEAT_SPELL);
    else if (m_spellInfo->IsChanneledSpell())
        return (CURRENT_CHANNELED_SPELL);
    else
        return (CURRENT_GENERIC_SPELL);
}

bool Spell::CheckTarget(Unit* target, SpellEffectIndex eff)
{
    if (m_casterUnit && target != m_casterUnit && m_spellInfo->IsPositiveSpell())
    {
        // prevent buffing low level players with group wide buffs
        if (m_casterUnit->IsPlayer() && !m_CastItem && !m_IsTriggeredSpell && target != m_targets.getUnitTarget())
        {
            if (m_spellInfo != sSpellMgr.SelectAuraRankForLevel(m_spellInfo, target->GetLevel()))
                return false;
        }

        Player* casterOwner = m_casterUnit->GetCharmerOrOwnerPlayerOrPlayerItself();
        Player* targetOwner = target->GetCharmerOrOwnerPlayerOrPlayerItself();
        if (targetOwner && casterOwner != targetOwner && targetOwner->m_duel && casterOwner && !casterOwner->IsInDuelWith(targetOwner))
            return false;
    }
    // Check targets for creature type mask and remove not appropriate (skip explicit self target case, maybe need other explicit targets)
    if (m_spellInfo->EffectImplicitTargetA[eff] != TARGET_UNIT_CASTER)
    {
        if (!CheckTargetCreatureType(target))
            return false;
    }

    // Check targets for not_selectable unit flag and remove
    // A player can cast spells on his pet (or other controlled unit) though in any state
    if (target != m_caster && target->GetCharmerOrOwnerGuid() != m_caster->GetObjectGuid())
    {
        // any unattackable target skipped
        if (target->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE))
            return false;

        // unselectable targets skipped in all cases except TARGET_UNIT_SCRIPT_NEAR_CASTER targeting
        // in case TARGET_UNIT_SCRIPT_NEAR_CASTER target selected by server always and can't be cheated
        if ((!m_IsTriggeredSpell || target != m_targets.getUnitTarget()) &&
                target->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE) &&
                m_spellInfo->EffectImplicitTargetA[eff] != TARGET_UNIT_SCRIPT_NEAR_CASTER &&
                m_spellInfo->EffectImplicitTargetB[eff] != TARGET_UNIT_SCRIPT_NEAR_CASTER &&
                m_spellInfo->EffectImplicitTargetA[eff] != TARGET_ENUM_UNITS_SCRIPT_AOE_AT_SRC_LOC &&
                m_spellInfo->EffectImplicitTargetB[eff] != TARGET_ENUM_UNITS_SCRIPT_AOE_AT_SRC_LOC &&
                m_spellInfo->EffectImplicitTargetA[eff] != TARGET_ENUM_UNITS_SCRIPT_AOE_AT_DEST_LOC &&
                m_spellInfo->EffectImplicitTargetB[eff] != TARGET_ENUM_UNITS_SCRIPT_AOE_AT_DEST_LOC &&
                m_spellInfo->EffectImplicitTargetA[eff] != TARGET_ENUM_UNITS_SCRIPT_IN_CONE_60 &&
                m_spellInfo->EffectImplicitTargetB[eff] != TARGET_ENUM_UNITS_SCRIPT_IN_CONE_60)
            return false;
    }

    // Check player targets and remove if in GM mode or GM invisibility (for not self casting case)
    if (target != m_caster && target->IsPlayer())
    {
        if (((Player*)target)->GetVisibility() == VISIBILITY_OFF)
            return false;

        if (((Player*)target)->IsGameMaster() && !m_spellInfo->IsPositiveSpell())
            return false;
    }

    // Check targets for LOS visibility (except spells without range limitations )
    switch (m_spellInfo->Effect[eff])
    {
        case SPELL_EFFECT_SUMMON_PLAYER:                    // from anywhere
            break;
        case SPELL_EFFECT_DUMMY:
            if (m_spellInfo->Id != 20577)                   // Cannibalize
                break;
        // no break. Cannibalize checks corpse target LOS.
        // fall through
        case SPELL_EFFECT_RESURRECT:
        case SPELL_EFFECT_RESURRECT_NEW:
            // player far away, maybe his corpse near?
            if (target != m_caster && !(m_spellInfo->AttributesEx2 & SPELL_ATTR_EX2_IGNORE_LOS) && !target->IsWithinLOSInMap(m_caster))
            {
                if (!m_targets.getCorpseTargetGuid())
                    return false;

                Corpse *corpse = m_caster->GetMap()->GetCorpse(m_targets.getCorpseTargetGuid());
                if (!corpse)
                    return false;

                if (target->GetObjectGuid() != corpse->GetOwnerGuid())
                    return false;

                if (!(m_spellInfo->AttributesEx2 & SPELL_ATTR_EX2_IGNORE_LOS) && !corpse->IsWithinLOSInMap(m_caster))
                    return false;
            }

            // all ok by some way or another, skip normal check
            break;
        default:                                            // normal case
            // Get GO cast coordinates if original caster -> GO
            if (!m_IsIgnoreLOS && target != m_caster && !IsIgnoreLosTarget(m_spellInfo->EffectImplicitTargetA[eff]))
                if (WorldObject *caster = GetCastingObject())
                    if (!(m_spellInfo->AttributesEx2 & SPELL_ATTR_EX2_IGNORE_LOS) && !target->IsWithinLOSInMap(caster))
                        return false;
            break;
    }

    return !(target->GetTypeId() != TYPEID_PLAYER && m_spellInfo->AttributesEx3 & SPELL_ATTR_EX3_TARGET_ONLY_PLAYER
            && m_spellInfo->EffectImplicitTargetA[eff] != TARGET_UNIT_SCRIPT_NEAR_CASTER && m_spellInfo->EffectImplicitTargetA[eff] != TARGET_UNIT_CASTER);
}

bool Spell::IsNeedSendToClient() const
{
    return !IsChannelingVisual() && (m_spellInfo->SpellVisual != 0 || m_spellInfo->IsChanneledSpell() ||
           m_spellInfo->speed > 0.0f || (!m_triggeredByAuraSpell && !m_IsTriggeredSpell));
}

bool Spell::IsTriggeredSpellWithRedundentData() const
{
    return m_triggeredByAuraSpell || m_triggeredBySpellInfo ||
           // possible not need after above check?
           (m_IsTriggeredSpell && (m_spellInfo->manaCost || m_spellInfo->ManaCostPercentage));
}

bool Spell::HaveTargetsForEffect(SpellEffectIndex effect) const
{
    for (const auto& itr : m_UniqueTargetInfo)
        if (!itr.deleted && itr.effectMask & (1 << effect))
            return true;

    for (const auto& itr : m_UniqueGOTargetInfo)
        if (!itr.deleted && itr.effectMask & (1 << effect))
            return true;

    for (const auto& itr : m_UniqueItemInfo)
        if (!itr.deleted && itr.effectMask & (1 << effect))
            return true;

    return false;
}

SpellEvent::SpellEvent(Spell* spell) : BasicEvent()
{
    m_Spell = spell;
}

SpellEvent::~SpellEvent()
{
    if (m_Spell->getState() != SPELL_STATE_FINISHED)
        m_Spell->cancel();

    m_Spell->Delete();
}

bool SpellEvent::Execute(uint64 e_time, uint32 p_time)
{
    // update spell if it is not finished
    if (m_Spell->getState() != SPELL_STATE_FINISHED)
        m_Spell->update(p_time);

    // check spell state to process
    switch (m_Spell->getState())
    {
        case SPELL_STATE_FINISHED:
        {
            // spell was finished, check deletable state
            if (m_Spell->IsDeletable())
            {
                // check, if we do have unfinished triggered spells
                return true;                                // spell is deletable, finish event
            }
            // event will be re-added automatically at the end of routine)
        }
        break;

        case SPELL_STATE_CASTING:
        {
            // this spell is in channeled state, process it on the next update
            // event will be re-added automatically at the end of routine)
        } break;

        case SPELL_STATE_DELAYED:
        {
            // first, check, if we have just started
            if (m_Spell->GetDelayStart() != 0)
            {
                // no, we aren't, do the typical update
                // check, if we have channeled spell on our hands
                if (m_Spell->m_spellInfo->IsChanneledSpell())
                {
                    // evented channeled spell is processed separately, casted once after delay, and not destroyed till finish
                    // check, if we have casting anything else except this channeled spell and autorepeat
                    if (m_Spell->GetCaster()->IsNonMeleeSpellCasted(false, true, true))
                    {
                        // another non-melee non-delayed spell is casted now, abort
                        m_Spell->cancel();
                    }
                    else
                    {
                        // do the action (pass spell to channeling state)
                        try
                        {
                            m_Spell->SetExecutedCurrently(true);
                            m_Spell->handle_immediate();
                            m_Spell->SetExecutedCurrently(false);
                        }
                        catch (std::runtime_error &e)
                        {
                            sLog.outInfo("[Spell/Crash] 'handle_immediate()' [%u:%s]", m_Spell->m_spellInfo->Id, m_Spell->GetCaster()->GetName());
                            sLog.outInfo(e.what());
                            m_Spell->SetExecutedCurrently(false);
                            return false;
                        }
                    }
                    // event will be re-added automatically at the end of routine)
                }
                else
                {
                    // run the spell handler and think about what we can do next
                    try
                    {
                        uint64 t_offset = e_time - m_Spell->GetDelayStart();
                        uint64 n_offset = m_Spell->handle_delayed(t_offset);
                        if (n_offset)
                        {
                            // re-add us to the queue
                            m_Spell->GetCaster()->m_Events.AddEvent(this, m_Spell->GetDelayStart() + n_offset, false);
                            return false;                       // event not complete
                        }
                        // event complete
                        // finish update event will be re-added automatically at the end of routine)
                    }
                    catch (std::runtime_error &e)
                    {
                        sLog.outInfo("[Spell/Crash] 'handle_immediate()' [%u:%s]", m_Spell->m_spellInfo->Id, m_Spell->GetCaster()->GetName());
                        sLog.outInfo(e.what());
                        return false;
                    }
                }
            }
            else
            {
                // delaying had just started, record the moment
                m_Spell->SetDelayStart(e_time);
                // re-plan the event for the delay moment
                m_Spell->GetCaster()->m_Events.AddEvent(this, e_time + m_Spell->GetDelayMoment(), false);
                return false;                               // event not complete
            }
        }
        break;

        default:
        {
            // all other states
            // event will be re-added automatically at the end of routine)
        } break;
    }

    // spell processing not complete, plan event on the next update interval
    m_Spell->GetCaster()->m_Events.AddEvent(this, e_time + 1, false);
    return false;                                           // event not complete
}

void SpellEvent::Abort(uint64 /*e_time*/)
{
    // oops, the spell we try to do is aborted
    if (m_Spell->getState() != SPELL_STATE_FINISHED)
        m_Spell->cancel();
}

bool SpellEvent::IsDeletable() const
{
    return m_Spell->IsDeletable();
}

SpellCastResult Spell::CanOpenLock(SpellEffectIndex effIndex, uint32 lockId, SkillType& skillId, int32& reqSkillValue, int32& skillValue)
{
    if (!lockId)                                            // possible case for GO and maybe for items.
        return SPELL_CAST_OK;

    // Get LockInfo
    LockEntry const *lockInfo = sLockStore.LookupEntry(lockId);

    if (!lockInfo)
        return SPELL_FAILED_BAD_TARGETS;

    for (int j = 0; j < 8; ++j)
    {
        switch (lockInfo->Type[j])
        {
            // check key item (many fit cases can be)
            case LOCK_KEY_ITEM:
                if (lockInfo->Index[j] && m_CastItem && m_CastItem->GetEntry() == lockInfo->Index[j])
                    return SPELL_CAST_OK;
                break;
            // check key skill (only single first fit case can be)
            case LOCK_KEY_SKILL:
            {
                // wrong locktype, skip
                if (uint32(m_spellInfo->EffectMiscValue[effIndex]) != lockInfo->Index[j])
                    continue;

                skillId = SkillByLockType(LockType(lockInfo->Index[j]));

                if ((skillId != SKILL_NONE) || (LockType(lockInfo->Index[j]) == LOCKTYPE_BLASTING))    // Ustaag <Nostalrius> : ajout pour prise en compte des charges de Seaforium (item ingenieur)
                {
                    // skill bonus provided by casting spell (mostly item spells)
                    // add the damage modifier from the spell casted (cheat lock / skeleton key etc.) (use m_currentBasePoints, CalculateDamage returns wrong value)
                    uint32 spellSkillBonus = uint32(m_currentBasePoints[effIndex]);
                    reqSkillValue = lockInfo->Skill[j];

                    // castitem check: rogue using skeleton keys. the skill values should not be added in this case.
                    skillValue = m_CastItem || !m_caster->IsPlayer() ?
                                 0 : ((Player*)m_caster)->GetSkillValue(skillId);

                    skillValue += spellSkillBonus;

                    if (skillValue < reqSkillValue)
                        return SPELL_FAILED_LOW_CASTLEVEL;
                }

                return SPELL_CAST_OK;
            }
        }
    }

    // No requirement met = locked.
    // Rq: Lock 85 = no requirement at all = always locked
    return SPELL_FAILED_BAD_TARGETS;
}

class SpellNotifierCreatureAndPlayer
{
public:
    Spell::UnitList *i_data;
    Spell &i_spell;
    SpellNotifyPushType i_push_type;
    float i_radius;
    SpellTargets i_TargetType;
    WorldObject* i_originalCaster;
    WorldObject* i_castingObject;
    bool i_playerControlled;
    float i_centerX;
    float i_centerY;

    float GetCenterX() const
    {
        return i_centerX;
    }
    float GetCenterY() const
    {
        return i_centerY;
    }

    SpellNotifierCreatureAndPlayer(Spell &spell, Spell::UnitList &data, float radius, SpellNotifyPushType type,
                                   SpellTargets TargetType = SPELL_TARGETS_NOT_FRIENDLY, WorldObject* originalCaster = nullptr)
        : i_data(&data), i_spell(spell), i_push_type(type), i_radius(radius), i_TargetType(TargetType),
          i_originalCaster(originalCaster), i_castingObject(i_spell.GetCastingObject())
    {
        if (!i_originalCaster)
            i_originalCaster = i_spell.GetAffectiveCasterObject();
        i_playerControlled = i_originalCaster  ? i_originalCaster->IsControlledByPlayer() : false;

        switch (i_push_type)
        {
            case PUSH_IN_FRONT:
            case PUSH_IN_FRONT_90:
            case PUSH_IN_FRONT_15:
            case PUSH_IN_BACK:
            case PUSH_SELF_CENTER:
                if (i_castingObject)
                {
                    i_centerX = i_castingObject->GetPositionX();
                    i_centerY = i_castingObject->GetPositionY();
                }
                break;

            case PUSH_SRC_CENTER:
                i_centerX = i_spell.m_targets.m_srcX;
                i_centerY = i_spell.m_targets.m_srcY;
                break;
            case PUSH_DEST_CENTER:
                i_centerX = i_spell.m_targets.m_destX;
                i_centerY = i_spell.m_targets.m_destY;
                break;
            case PUSH_TARGET_CENTER:
                if (Unit* target = i_spell.m_targets.getUnitTarget())
                {
                    i_centerX = target->GetPositionX();
                    i_centerY = target->GetPositionY();
                }
                break;
            default:
                sLog.outError("SpellNotifierCreatureAndPlayer: unsupported PUSH_* case %u.", i_push_type);
        }
    }

    template<class T>
    void Visit(GridRefManager<T>  &m)
    {
        MANGOS_ASSERT(i_data);

        if (!i_originalCaster || !i_castingObject)
            return;

        for (typename GridRefManager<T>::iterator itr = m.begin(); itr != m.end(); ++itr)
        {
            // The template is only defined for Player and Creature maps. If it is extended
            // in the future, we should swap to WorldObject. Furthermore, we will have to
            // ensure all the checks are not using invalid casts.
            Unit* unit = itr->getSource();

            // there are still more spells which can be casted on dead, but
            // they are no AOE and don't have such a nice SPELL_ATTR flag
            if (!unit->IsInMap(i_originalCaster))
                continue;

            if (i_TargetType != SPELL_TARGETS_ALL)
            {
                bool const forAttack = i_TargetType == SPELL_TARGETS_HOSTILE || i_TargetType == SPELL_TARGETS_NOT_FRIENDLY || i_TargetType == SPELL_TARGETS_AOE_DAMAGE;
                if (!unit->IsTargetable(forAttack, i_playerControlled, true, false) || !i_spell.m_spellInfo->CanTargetAliveState(unit->IsAlive()))
                    continue;
            }

            switch (i_TargetType)
            {
                case SPELL_TARGETS_HOSTILE:
                    if (!i_originalCaster->IsHostileTo(unit))
                        continue;
                    break;
                case SPELL_TARGETS_NOT_FRIENDLY:
                    if (i_originalCaster->IsFriendlyTo(unit))
                        continue;
                    break;
                case SPELL_TARGETS_NOT_HOSTILE:
                    if (i_originalCaster->IsHostileTo(unit))
                        continue;
                    break;
                case SPELL_TARGETS_FRIENDLY:
                {
                    if (!i_originalCaster->IsFriendlyTo(unit))
                        continue;

                    auto casterPlayer = i_originalCaster->ToPlayer();

                    if (!casterPlayer && i_originalCaster->IsGameObject())
                    {
                        auto owner = i_originalCaster->ToGameObject()->GetOwner();
                        if (owner)
                            casterPlayer = owner->ToPlayer();
                    }
                    //HC checks for friendly aoe buffs to check for PvP.
                    //or non-HCs for campfires.
                    if (casterPlayer && unit->IsPlayer() && (casterPlayer->IsHardcore() || i_spell.m_spellInfo->Id == 7353 || i_spell.m_spellInfo->Id == 7358))
                    {
                        if (!casterPlayer->IsPvP() && unit->ToPlayer()->IsPvP())
                            continue;
                    }
                }
                   break;
                case SPELL_TARGETS_AOE_DAMAGE:
                {
                    if (unit->IsCreature() && static_cast<Creature*>(unit)->IsImmuneToAoe())
                        continue;

                    if (i_originalCaster->IsFriendlyTo(unit))
                        continue;

                    Unit* casterUnit = i_originalCaster->ToUnit();
                    if (!casterUnit && i_originalCaster->ToGameObject())
                        casterUnit = i_originalCaster->ToGameObject()->GetOwner();

                    if (casterUnit)
                    {
                        if (!casterUnit->IsValidAttackTarget(unit))
                            continue;

                        // Negative AoE from non flagged players cannot target other players
                        if (Player* attackedPlayer = unit->GetCharmerOrOwnerPlayerOrPlayerItself())
                            if (Player* casterPlayer = casterUnit->ToPlayer())
                                if (!casterPlayer->IsPvP() && !(casterPlayer->IsFFAPvP() && attackedPlayer->IsFFAPvP()) && !casterPlayer->IsInDuelWith(attackedPlayer))
                                    continue;
                    }
                    else if (GameObject* gobj = i_originalCaster->ToGameObject())
                    {
                        if (gobj->IsFriendlyTo(unit))
                            continue;
                    }
                }
                break;
                case SPELL_TARGETS_ALL:
                    break;
                default:
                    continue;
            }

            // we don't need to check InMap here, it's already done some lines above
            switch (i_push_type)
            {
            case PUSH_IN_FRONT:
                if (i_castingObject->IsWithinDist(unit, i_radius) && i_castingObject->HasInArc(unit, 2 * M_PI_F / 3))
                    i_data->push_back(unit);
                break;
            case PUSH_IN_FRONT_90:
                if (i_castingObject->IsWithinDist(unit, i_radius) && i_castingObject->HasInArc(unit, M_PI_F / 2))
                    i_data->push_back(unit);
                break;
            case PUSH_IN_FRONT_15:
                if (i_castingObject->IsWithinDist(unit, i_radius) && i_castingObject->HasInArc(unit, M_PI_F / 12))
                    i_data->push_back(unit);
                break;
            case PUSH_IN_BACK: // 75
                if (i_castingObject->IsWithinDist(unit, i_radius) && !i_castingObject->HasInArc(unit, 2 * M_PI_F - 5 * M_PI_F / 12))
                    i_data->push_back(unit);
                break;
            case PUSH_SELF_CENTER:
                if (i_castingObject->IsWithinDist(unit, i_radius))
                    i_data->push_back(unit);
                break;
            case PUSH_SRC_CENTER:
                if (itr->getSource()->IsWithinDist3d(i_spell.m_targets.m_srcX, i_spell.m_targets.m_srcY, i_spell.m_targets.m_srcZ, i_radius))
                    i_data->push_back(unit);
                break;
            case PUSH_DEST_CENTER:
                if (itr->getSource()->IsWithinDist3d(i_spell.m_targets.m_destX, i_spell.m_targets.m_destY, i_spell.m_targets.m_destZ, i_radius))
                    i_data->push_back(unit);
                break;
            case PUSH_TARGET_CENTER:
                if (i_spell.m_targets.getUnitTarget() && i_spell.m_targets.getUnitTarget()->IsWithinDist(unit, i_radius))
                    i_data->push_back(unit);
                break;
            }
        }
    }

#ifdef _MSC_VER
    template<> void Visit(CorpseMapType &) {}
    template<> void Visit(GameObjectMapType &) {}
    template<> void Visit(DynamicObjectMapType &) {}
    template<> void Visit(CameraMapType &) {}
#endif
};

#ifndef _MSC_VER
template<> inline void SpellNotifierCreatureAndPlayer::Visit(CorpseMapType&) {}
template<> inline void SpellNotifierCreatureAndPlayer::Visit(GameObjectMapType&) {}
template<> inline void SpellNotifierCreatureAndPlayer::Visit(DynamicObjectMapType&) {}
template<> inline void SpellNotifierCreatureAndPlayer::Visit(CameraMapType&) {}
#endif

/**
 * Fill target list by units around (x,y) points at radius distance

 * @param targetUnitMap        Reference to target list that filled by function
 * @param x                    X coordinates of center point for target search
 * @param y                    Y coordinates of center point for target search
 * @param radius               Radius around (x,y) for target search
 * @param pushType             Additional rules for target area selection (in front, angle, etc)
 * @param spellTargets         Additional rules for target selection base at hostile/friendly state to original spell caster
 * @param originalCaster       If provided set alternative original caster, if =nullptr then used Spell::GetAffectiveObject() return
 */
void Spell::FillAreaTargets(UnitList &targetUnitMap, float radius, SpellNotifyPushType pushType, SpellTargets spellTargets, WorldObject* originalCaster /*=nullptr*/)
{
    SpellNotifierCreatureAndPlayer notifier(*this, targetUnitMap, radius, pushType, spellTargets, originalCaster);
    Cell::VisitAllObjects(notifier.GetCenterX(), notifier.GetCenterY(), m_caster->GetMap(), notifier, radius);
}

void Spell::FillRaidOrPartyTargets(UnitList &TagUnitMap, Unit* target, float radius, bool raid, bool withPets, bool withcaster) const
{
    Player *pTarget = target->GetCharmerOrOwnerPlayerOrPlayerItself();
    Group *pGroup = pTarget ? pTarget->GetGroup() : nullptr;

    if (pGroup)
    {
        uint8 subgroup = pTarget->GetSubGroup();

        for (GroupReference *itr = pGroup->GetFirstMember(); itr != nullptr; itr = itr->next())
        {
            Player* target = itr->getSource();

            // IsHostileTo check m_duel and controlled by enemy
            if (target && (raid || subgroup == target->GetSubGroup()) && target->GetLevel() + 10 >= m_spellInfo->spellLevel && !m_caster->IsHostileTo(target))
            {
                if ((target == m_caster && withcaster) || (target != m_caster && m_caster->IsWithinDistInMap(target, radius)))
                    TagUnitMap.push_back(target);

                if (withPets)
                {
                    if (Pet* pet = target->GetPet())
                    {
                        if ((pet == m_caster && withcaster) || (pet != m_caster && m_caster->IsWithinDistInMap(pet, radius)))
                        {
                            TagUnitMap.push_back(pet);
                        }
                    }
                }
            }
        }
    }
    else
    {
        Unit* ownerOrSelf = pTarget ? pTarget : target->GetCharmerOrOwnerOrSelf();
        if ((ownerOrSelf == m_caster && withcaster) ||
                (ownerOrSelf != m_caster && m_caster->IsWithinDistInMap(ownerOrSelf, radius)))
            TagUnitMap.push_back(ownerOrSelf);

        if (withPets)
            if (Pet* pet = ownerOrSelf->GetPet())
                if ((pet == m_caster && withcaster) ||
                        (pet != m_caster && m_caster->IsWithinDistInMap(pet, radius)))
                    TagUnitMap.push_back(pet);
    }
}

WorldObject* Spell::GetAffectiveCasterObject() const
{
    if (!m_originalCasterGUID)
        return m_caster;

    if (m_originalCasterGUID.IsGameObject() && m_caster->IsInWorld())
        return m_caster->GetMap()->GetGameObject(m_originalCasterGUID);
    return m_originalCaster;
}

WorldObject* Spell::GetCastingObject() const
{
    if (m_originalCasterGUID.IsGameObject())
        return m_caster->IsInWorld() ? m_caster->GetMap()->GetGameObject(m_originalCasterGUID) : nullptr;
    return m_caster;
}

void Spell::ClearCastItem()
{
    if (m_CastItem == m_targets.getItemTarget())
        m_targets.setItemTarget(nullptr);

    m_CastItem = nullptr;
}

bool Spell::HasGlobalCooldown() const
{
    return m_casterUnit ? m_casterUnit->GetGlobalCooldownMgr().HasGlobalCooldown(m_spellInfo) : false;
}

void Spell::TriggerGlobalCooldown()
{
    if (!m_casterUnit)
        return;

    if (Player* pPlayer = m_casterUnit->ToPlayer())
        if (pPlayer->HasOption(PLAYER_CHEAT_NO_COOLDOWN))
            return;

    int32 gcd = m_spellInfo->StartRecoveryTime;
    if (!gcd)
        return;

    // global cooldown can't leave range 1..1.5 secs (if it it)
    // exist some spells (mostly not player directly casted) that have < 1 sec and > 1.5 sec global cooldowns
    // but its as test show not affected any spell mods.
    if (gcd >= 1000 && gcd <= 1500)
    {
        // apply haste rating
        gcd = int32(float(gcd) * m_casterUnit->GetFloatValue(UNIT_MOD_CAST_SPEED));

        if (gcd < 1000)
            gcd = 1000;
        else if (gcd > 1500)
            gcd = 1500;
    }

    // global cooldown only for player or controlled units
    if (m_casterUnit->GetCharmInfo() || m_casterUnit->IsPlayer())
        m_casterUnit->GetGlobalCooldownMgr().AddGlobalCooldown(m_spellInfo, gcd);
}

void Spell::CancelGlobalCooldown()
{
    if (!m_casterUnit)
        return;

    if (!m_spellInfo->StartRecoveryTime)
        return;

    // cancel global cooldown when interrupting current cast
    if (m_casterUnit->GetCurrentSpell(CURRENT_GENERIC_SPELL) != this)
        return;

    // global cooldown have only player or controlled units
    if (m_casterUnit->GetCharmInfo() || m_casterUnit->IsPlayer())
        m_casterUnit->GetGlobalCooldownMgr().CancelGlobalCooldown(m_spellInfo);
}

void Spell::ResetEffectDamageAndHeal()
{
    m_damage = 0;
    m_healing = 0;
    m_absorbed = 0;
}

void Spell::SetClientStarted(bool bisClientStarted)
{
    m_isClientStarted = bisClientStarted;
}

void Spell::OnSpellLaunch()
{
    if (!m_caster || !m_caster->IsInWorld())
        return;

    // Make sure the player is sending a valid GO target and lock ID. SPELL_EFFECT_OPEN_LOCK
    // can succeed with a lockId of 0
    if (m_spellInfo->Id == 21651)
    {
        if (GameObject *go = m_targets.getGOTarget())
        {
            LockEntry const *lockInfo = sLockStore.LookupEntry(go->GetGOInfo()->GetLockId());
            if (lockInfo && lockInfo->Index[1] == LOCKTYPE_SLOW_OPEN)
            {
                Spell *visual = m_casterUnit ? new Spell(m_casterUnit, sSpellMgr.GetSpellEntry(24390), true) : new Spell(m_casterGo, sSpellMgr.GetSpellEntry(24390), true);
                visual->prepare();
            }
        }
    }

    unitTarget = m_targets.getUnitTarget();

    // Gestion de la charge
    if (!unitTarget || !unitTarget->IsInWorld())
        return;
    bool isCharge = false;
    for (uint32 i : m_spellInfo->Effect)
        if (i == SPELL_EFFECT_CHARGE)
            isCharge = true;

    if (!isCharge)
        return;

    if (!m_casterUnit)
        return;
    // Delay attack, otherwise player makes instant attack after cast
    if (m_casterUnit->IsPlayer())
    {
        m_casterUnit->SetAttackTimer(BASE_ATTACK, m_casterUnit->GetAttackTimer(BASE_ATTACK) + 200 + 40 * m_casterUnit->GetDistance(unitTarget));
        m_casterUnit->SetAttackTimer(OFF_ATTACK,  m_casterUnit->GetAttackTimer(OFF_ATTACK)  + 200 + 40 * m_casterUnit->GetDistance(unitTarget));
    }
    
    bool triggerAutoAttack = unitTarget != m_casterUnit && !m_spellInfo->IsPositiveSpell() && !(m_spellInfo->Attributes & SPELL_ATTR_STOP_ATTACK_TARGET);
    m_casterUnit->GetMotionMaster()->MoveCharge(unitTarget, sWorld.getConfig(CONFIG_UINT32_SPELLS_CCDELAY), triggerAutoAttack);
}

bool Spell::HasModifierApplied(SpellModifier* mod)
{
    for (const auto itr : m_appliedMods)
        if (itr == mod)
            return true;

    return false;
}

void Spell::RemoveStealthAuras()
{
    if (!m_casterUnit)
        return;

    // stealth must be removed at cast starting (at show channel bar)
    // skip triggered spell (item equip spell casting and other not explicit character casts/item uses)
    if (!m_IsTriggeredSpell && !(m_spellInfo->AttributesEx & SPELL_ATTR_EX_NOT_BREAK_STEALTH) && m_casterUnit->IsPlayer()
            && m_spellInfo->SpellIconID != 250 // Camouflage fufu
            && m_spellInfo->SpellIconID != 103 // Roder ou Camouflage elfe de la nuit
            && m_spellInfo->SpellIconID != 252 // Disparition
       )
    {
        bool doUnaura = m_casterUnit->HasAuraType(SPELL_AURA_MOD_STEALTH);

        if (doUnaura && m_casterUnit->IsPlayer()
                && m_spellInfo->SpellIconID == 249  // Assommer
           )
        {
            // Gestion de assommer ameliore
            if (m_casterUnit->HasAura(14076))  // Rang 1
                doUnaura = (urand(0, 99) > 30);
            else if (m_casterUnit->HasAura(14094))  // Rang 2
                doUnaura = (urand(0, 99) > 60);
            else if (m_casterUnit->HasAura(14095))  // Rang 3
                doUnaura = (urand(0, 99) > 90);
        }
        if (doUnaura)
            m_casterUnit->RemoveSpellsCausingAura(SPELL_AURA_MOD_STEALTH);
    }
    if (!m_IsTriggeredSpell)
        m_casterUnit->RemoveSpellsCausingAura(SPELL_AURA_FEIGN_DEATH);
}

void Spell::Delete() const
{
    if (IsDeletable())
    {
        if (IsCustomSpell())
            delete m_spellInfo;
        delete this;
    }
    else
        sLog.outInfo("[CRASH] Deleting in-use spell. SpellID=%u", m_spellInfo->Id);
}

bool ChannelResetEvent::Execute(uint64 e_time, uint32)
{
    Abort(e_time);
    return true;
}

void ChannelResetEvent::Abort(uint64 e_time)
{
    Spell* currSpell = caster->GetCurrentSpell(CURRENT_CHANNELED_SPELL);
    if (!currSpell || currSpell->getState() == SPELL_STATE_FINISHED)
    {
        caster->SetChannelObjectGuid(ObjectGuid());
        caster->SetUInt32Value(UNIT_CHANNEL_SPELL, 0);
        if (caster->IsPlayer())
        {
            WorldPacket data(MSG_CHANNEL_UPDATE, 4);
            data << uint32(0);
            ((Player*)caster)->SendDirectMessage(&data);
        }
    }
}
