REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36387, 1005, 57039, 0, 0, 1, 0, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36388, 1005, 57040, 0, 0, 1, 0, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36389, 197, 57020, 0, 0, 300, 0, 0, 310, 300, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36390, 165, 57022, 0, 0, 300, 0, 0, 310, 300, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36391, 197, 57024, 0, 0, 300, 0, 0, 310, 300, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36392, 164, 57026, 0, 0, 300, 0, 0, 310, 300, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36393, 333, 57028, 0, 0, 300, 0, 0, 310, 300, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36394, 333, 57030, 0, 0, 300, 0, 0, 310, 300, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36395, 333, 57032, 0, 0, 275, 0, 0, 285, 280, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36396, 333, 57034, 0, 0, 300, 0, 0, 310, 300, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36397, 333, 57036, 0, 0, 300, 0, 0, 320, 300, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36398, 185, 57047, 0, 0, 300, 0, 0, 315, 300, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36399, 185, 57049, 0, 0, 300, 0, 0, 315, 300, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36400, 185, 57051, 0, 0, 300, 0, 0, 315, 300, 0);

REPLACE INTO `spell_template` (`entry`) VALUES (57047);
REPLACE INTO `spell_template` (`entry`) VALUES (57048);
REPLACE INTO `spell_template` (`entry`) VALUES (57049);
REPLACE INTO `spell_template` (`entry`) VALUES (57050);
REPLACE INTO `spell_template` (`entry`) VALUES (57051);
REPLACE INTO `spell_template` (`entry`) VALUES (57052);

UPDATE `spell_template` SET `school` = 0, `category` = 0, `castUI` = 0, `dispel` = 0, `mechanic` = 0, `attributes` = 262400, `attributesEx` = 0, `attributesEx2` = 0, `attributesEx3` = 0, `attributesEx4` = 0, `stances` = 0, `stancesNot` = 0, `targets` = 0, `targetCreatureType` = 0, `requiresSpellFocus` = 0, `casterAuraState` = 0, `targetAuraState` = 0, `castingTimeIndex` = 14, `recoveryTime` = 0, `categoryRecoveryTime` = 0, `interruptFlags` = 15, `auraInterruptFlags` = 0, `channelInterruptFlags` = 0, `procFlags` = 0, `procChance` = 101, `procCharges` = 0, `maxLevel` = 0, `baseLevel` = 0, `spellLevel` = 0, `durationIndex` = 0, `powerType` = 0, `manaCost` = 0, `manCostPerLevel` = 0, `manaPerSecond` = 0, `manaPerSecondPerLevel` = 0, `rangeIndex` = 6, `speed` = 0, `modelNextSpell` = 0, `stackAmount` = 0, `totem1` = 0, `totem2` = 0, `reagent1` = 0, `reagent2` = 0, `reagent3` = 0, `reagent4` = 0, `reagent5` = 0, `reagent6` = 0, `reagent7` = 0, `reagent8` = 0, `reagentCount1` = 0, `reagentCount2` = 0, `reagentCount3` = 0, `reagentCount4` = 0, `reagentCount5` = 0, `reagentCount6` = 0, `reagentCount7` = 0, `reagentCount8` = 0, `equippedItemClass` = -1, `equippedItemSubClassMask` = -1, `equippedItemInventoryTypeMask` = 0, `effect1` = 36, `effect2` = 0, `effect3` = 0, `effectDieSides1` = 0, `effectDieSides2` = 0, `effectDieSides3` = 0, `effectBaseDice1` = 0, `effectBaseDice2` = 0, `effectBaseDice3` = 0, `effectDicePerLevel1` = 0, `effectDicePerLevel2` = 0, `effectDicePerLevel3` = 0, `effectRealPointsPerLevel1` = 0, `effectRealPointsPerLevel2` = 0, `effectRealPointsPerLevel3` = 0, `effectBasePoints1` = 0, `effectBasePoints2` = 0, `effectBasePoints3` = 0, `effectBonusCoefficient1` = 0, `effectBonusCoefficient2` = -1, `effectBonusCoefficient3` = -1, `effectMechanic1` = 0, `effectMechanic2` = 0, `effectMechanic3` = 0, `effectImplicitTargetA1` = 1, `effectImplicitTargetA2` = 0, `effectImplicitTargetA3` = 0, `effectImplicitTargetB1` = 0, `effectImplicitTargetB2` = 0, `effectImplicitTargetB3` = 0, `effectRadiusIndex1` = 0, `effectRadiusIndex2` = 0, `effectRadiusIndex3` = 0, `effectApplyAuraName1` = 0, `effectApplyAuraName2` = 0, `effectApplyAuraName3` = 0, `effectAmplitude1` = 0, `effectAmplitude2` = 0, `effectAmplitude3` = 0, `effectMultipleValue1` = 0, `effectMultipleValue2` = 0, `effectMultipleValue3` = 0, `effectChainTarget1` = 0, `effectChainTarget2` = 0, `effectChainTarget3` = 0, `effectItemType1` = 0, `effectItemType2` = 0, `effectItemType3` = 0, `effectMiscValue1` = 0, `effectMiscValue2` = 0, `effectMiscValue3` = 0, `effectTriggerSpell1` = 57051, `effectTriggerSpell2` = 0, `effectTriggerSpell3` = 0, `effectPointsPerComboPoint1` = 0, `effectPointsPerComboPoint2` = 0, `effectPointsPerComboPoint3` = 0, `spellVisual1` = 222, `spellVisual2` = 0, `spellIconId` = 1, `activeIconId` = 0, `spellPriority` = 0, `name` = 'Recipe: Danonzo\'s Tel\'abim Medley', `nameFlags` = 4128894, `nameSubtext` = '', `nameSubtextFlags` = 4128844, `description` = 'Teaches you how to cook Danonzo\'s Tel\'abim Medley.', `descriptionFlags` = 4128894, `auraDescription` = '', `auraDescriptionFlags` = 4128844, `manaCostPercentage` = 0, `startRecoveryCategory` = 0, `startRecoveryTime` = 0, `minTargetLevel` = 0, `maxTargetLevel` = 0, `spellFamilyName` = 0, `spellFamilyFlags` = 0, `maxAffectedTargets` = 0, `dmgClass` = 0, `preventionType` = 0, `stanceBarOrder` = -1, `dmgMultiplier1` = 1, `dmgMultiplier2` = 1, `dmgMultiplier3` = 1, `minFactionId` = 0, `minReputation` = 0, `requiredAuraVision` = 0, `customFlags` = 0 WHERE `entry` = 57052;
UPDATE `spell_template` SET `school` = 0, `category` = 0, `castUI` = 0, `dispel` = 0, `mechanic` = 0, `attributes` = 65568, `attributesEx` = 0, `attributesEx2` = 0, `attributesEx3` = 0, `attributesEx4` = 0, `stances` = 0, `stancesNot` = 0, `targets` = 0, `targetCreatureType` = 0, `requiresSpellFocus` = 4, `casterAuraState` = 0, `targetAuraState` = 0, `castingTimeIndex` = 14, `recoveryTime` = 0, `categoryRecoveryTime` = 0, `interruptFlags` = 15, `auraInterruptFlags` = 0, `channelInterruptFlags` = 0, `procFlags` = 0, `procChance` = 101, `procCharges` = 0, `maxLevel` = 0, `baseLevel` = 0, `spellLevel` = 0, `durationIndex` = 0, `powerType` = 0, `manaCost` = 0, `manCostPerLevel` = 0, `manaPerSecond` = 0, `manaPerSecondPerLevel` = 0, `rangeIndex` = 1, `speed` = 0, `modelNextSpell` = 0, `stackAmount` = 0, `totem1` = 0, `totem2` = 0, `reagent1` = 60955, `reagent2` = 3713, `reagent3` = 7082, `reagent4` = 0, `reagent5` = 0, `reagent6` = 0, `reagent7` = 0, `reagent8` = 0, `reagentCount1` = 1, `reagentCount2` = 1, `reagentCount3` = 1, `reagentCount4` = 0, `reagentCount5` = 0, `reagentCount6` = 0, `reagentCount7` = 0, `reagentCount8` = 0, `equippedItemClass` = -1, `equippedItemSubClassMask` = 0, `equippedItemInventoryTypeMask` = 0, `effect1` = 24, `effect2` = 0, `effect3` = 0, `effectDieSides1` = 1, `effectDieSides2` = 0, `effectDieSides3` = 0, `effectBaseDice1` = 1, `effectBaseDice2` = 0, `effectBaseDice3` = 0, `effectDicePerLevel1` = 0, `effectDicePerLevel2` = 0, `effectDicePerLevel3` = 0, `effectRealPointsPerLevel1` = 0, `effectRealPointsPerLevel2` = 0, `effectRealPointsPerLevel3` = 0, `effectBasePoints1` = 0, `effectBasePoints2` = 0, `effectBasePoints3` = 0, `effectBonusCoefficient1` = 0, `effectBonusCoefficient2` = -1, `effectBonusCoefficient3` = -1, `effectMechanic1` = 0, `effectMechanic2` = 0, `effectMechanic3` = 0, `effectImplicitTargetA1` = 1, `effectImplicitTargetA2` = 0, `effectImplicitTargetA3` = 0, `effectImplicitTargetB1` = 0, `effectImplicitTargetB2` = 0, `effectImplicitTargetB3` = 0, `effectRadiusIndex1` = 0, `effectRadiusIndex2` = 0, `effectRadiusIndex3` = 0, `effectApplyAuraName1` = 0, `effectApplyAuraName2` = 0, `effectApplyAuraName3` = 0, `effectAmplitude1` = 0, `effectAmplitude2` = 0, `effectAmplitude3` = 0, `effectMultipleValue1` = 0, `effectMultipleValue2` = 0, `effectMultipleValue3` = 0, `effectChainTarget1` = 0, `effectChainTarget2` = 0, `effectChainTarget3` = 0, `effectItemType1` = 99999, `effectItemType2` = 0, `effectItemType3` = 0, `effectMiscValue1` = 0, `effectMiscValue2` = 0, `effectMiscValue3` = 0, `effectTriggerSpell1` = 0, `effectTriggerSpell2` = 0, `effectTriggerSpell3` = 0, `effectPointsPerComboPoint1` = 0, `effectPointsPerComboPoint2` = 0, `effectPointsPerComboPoint3` = 0, `spellVisual1` = 3881, `spellVisual2` = 0, `spellIconId` = 140, `activeIconId` = 0, `spellPriority` = 0, `name` = 'Danonzo\'s Tel\'abim Medley', `nameFlags` = 4128894, `nameSubtext` = '', `nameSubtextFlags` = 4128876, `description` = '', `descriptionFlags` = 4128876, `auraDescription` = '', `auraDescriptionFlags` = 4128876, `manaCostPercentage` = 0, `startRecoveryCategory` = 0, `startRecoveryTime` = 0, `minTargetLevel` = 0, `maxTargetLevel` = 0, `spellFamilyName` = 0, `spellFamilyFlags` = 0, `maxAffectedTargets` = 0, `dmgClass` = 0, `preventionType` = 0, `stanceBarOrder` = -1, `dmgMultiplier1` = 1, `dmgMultiplier2` = 1, `dmgMultiplier3` = 1, `minFactionId` = 0, `minReputation` = 0, `requiredAuraVision` = 0, `customFlags` = 0 WHERE `entry` = 57051;
UPDATE `spell_template` SET `school` = 0, `category` = 0, `castUI` = 0, `dispel` = 0, `mechanic` = 0, `attributes` = 262400, `attributesEx` = 0, `attributesEx2` = 0, `attributesEx3` = 0, `attributesEx4` = 0, `stances` = 0, `stancesNot` = 0, `targets` = 0, `targetCreatureType` = 0, `requiresSpellFocus` = 0, `casterAuraState` = 0, `targetAuraState` = 0, `castingTimeIndex` = 14, `recoveryTime` = 0, `categoryRecoveryTime` = 0, `interruptFlags` = 15, `auraInterruptFlags` = 0, `channelInterruptFlags` = 0, `procFlags` = 0, `procChance` = 101, `procCharges` = 0, `maxLevel` = 0, `baseLevel` = 0, `spellLevel` = 0, `durationIndex` = 0, `powerType` = 0, `manaCost` = 0, `manCostPerLevel` = 0, `manaPerSecond` = 0, `manaPerSecondPerLevel` = 0, `rangeIndex` = 6, `speed` = 0, `modelNextSpell` = 0, `stackAmount` = 0, `totem1` = 0, `totem2` = 0, `reagent1` = 0, `reagent2` = 0, `reagent3` = 0, `reagent4` = 0, `reagent5` = 0, `reagent6` = 0, `reagent7` = 0, `reagent8` = 0, `reagentCount1` = 0, `reagentCount2` = 0, `reagentCount3` = 0, `reagentCount4` = 0, `reagentCount5` = 0, `reagentCount6` = 0, `reagentCount7` = 0, `reagentCount8` = 0, `equippedItemClass` = -1, `equippedItemSubClassMask` = -1, `equippedItemInventoryTypeMask` = 0, `effect1` = 36, `effect2` = 0, `effect3` = 0, `effectDieSides1` = 0, `effectDieSides2` = 0, `effectDieSides3` = 0, `effectBaseDice1` = 0, `effectBaseDice2` = 0, `effectBaseDice3` = 0, `effectDicePerLevel1` = 0, `effectDicePerLevel2` = 0, `effectDicePerLevel3` = 0, `effectRealPointsPerLevel1` = 0, `effectRealPointsPerLevel2` = 0, `effectRealPointsPerLevel3` = 0, `effectBasePoints1` = 0, `effectBasePoints2` = 0, `effectBasePoints3` = 0, `effectBonusCoefficient1` = 0, `effectBonusCoefficient2` = -1, `effectBonusCoefficient3` = -1, `effectMechanic1` = 0, `effectMechanic2` = 0, `effectMechanic3` = 0, `effectImplicitTargetA1` = 1, `effectImplicitTargetA2` = 0, `effectImplicitTargetA3` = 0, `effectImplicitTargetB1` = 0, `effectImplicitTargetB2` = 0, `effectImplicitTargetB3` = 0, `effectRadiusIndex1` = 0, `effectRadiusIndex2` = 0, `effectRadiusIndex3` = 0, `effectApplyAuraName1` = 0, `effectApplyAuraName2` = 0, `effectApplyAuraName3` = 0, `effectAmplitude1` = 0, `effectAmplitude2` = 0, `effectAmplitude3` = 0, `effectMultipleValue1` = 0, `effectMultipleValue2` = 0, `effectMultipleValue3` = 0, `effectChainTarget1` = 0, `effectChainTarget2` = 0, `effectChainTarget3` = 0, `effectItemType1` = 0, `effectItemType2` = 0, `effectItemType3` = 0, `effectMiscValue1` = 0, `effectMiscValue2` = 0, `effectMiscValue3` = 0, `effectTriggerSpell1` = 57049, `effectTriggerSpell2` = 0, `effectTriggerSpell3` = 0, `effectPointsPerComboPoint1` = 0, `effectPointsPerComboPoint2` = 0, `effectPointsPerComboPoint3` = 0, `spellVisual1` = 222, `spellVisual2` = 0, `spellIconId` = 1, `activeIconId` = 0, `spellPriority` = 0, `name` = 'Recipe: Danonzo\'s Tel\'abim Delight', `nameFlags` = 4128894, `nameSubtext` = '', `nameSubtextFlags` = 4128844, `description` = 'Teaches you how to cook Danonzo\'s Tel\'abim Delight.', `descriptionFlags` = 4128894, `auraDescription` = '', `auraDescriptionFlags` = 4128844, `manaCostPercentage` = 0, `startRecoveryCategory` = 0, `startRecoveryTime` = 0, `minTargetLevel` = 0, `maxTargetLevel` = 0, `spellFamilyName` = 0, `spellFamilyFlags` = 0, `maxAffectedTargets` = 0, `dmgClass` = 0, `preventionType` = 0, `stanceBarOrder` = -1, `dmgMultiplier1` = 1, `dmgMultiplier2` = 1, `dmgMultiplier3` = 1, `minFactionId` = 0, `minReputation` = 0, `requiredAuraVision` = 0, `customFlags` = 0 WHERE `entry` = 57050;
UPDATE `spell_template` SET `school` = 0, `category` = 0, `castUI` = 0, `dispel` = 0, `mechanic` = 0, `attributes` = 65568, `attributesEx` = 0, `attributesEx2` = 0, `attributesEx3` = 0, `attributesEx4` = 0, `stances` = 0, `stancesNot` = 0, `targets` = 0, `targetCreatureType` = 0, `requiresSpellFocus` = 4, `casterAuraState` = 0, `targetAuraState` = 0, `castingTimeIndex` = 14, `recoveryTime` = 0, `categoryRecoveryTime` = 0, `interruptFlags` = 15, `auraInterruptFlags` = 0, `channelInterruptFlags` = 0, `procFlags` = 0, `procChance` = 101, `procCharges` = 0, `maxLevel` = 0, `baseLevel` = 0, `spellLevel` = 0, `durationIndex` = 0, `powerType` = 0, `manaCost` = 0, `manCostPerLevel` = 0, `manaPerSecond` = 0, `manaPerSecondPerLevel` = 0, `rangeIndex` = 1, `speed` = 0, `modelNextSpell` = 0, `stackAmount` = 0, `totem1` = 0, `totem2` = 0, `reagent1` = 60955, `reagent2` = 3713, `reagent3` = 13465, `reagent4` = 0, `reagent5` = 0, `reagent6` = 0, `reagent7` = 0, `reagent8` = 0, `reagentCount1` = 1, `reagentCount2` = 1, `reagentCount3` = 1, `reagentCount4` = 0, `reagentCount5` = 0, `reagentCount6` = 0, `reagentCount7` = 0, `reagentCount8` = 0, `equippedItemClass` = -1, `equippedItemSubClassMask` = 0, `equippedItemInventoryTypeMask` = 0, `effect1` = 24, `effect2` = 0, `effect3` = 0, `effectDieSides1` = 1, `effectDieSides2` = 0, `effectDieSides3` = 0, `effectBaseDice1` = 1, `effectBaseDice2` = 0, `effectBaseDice3` = 0, `effectDicePerLevel1` = 0, `effectDicePerLevel2` = 0, `effectDicePerLevel3` = 0, `effectRealPointsPerLevel1` = 0, `effectRealPointsPerLevel2` = 0, `effectRealPointsPerLevel3` = 0, `effectBasePoints1` = 0, `effectBasePoints2` = 0, `effectBasePoints3` = 0, `effectBonusCoefficient1` = 0, `effectBonusCoefficient2` = -1, `effectBonusCoefficient3` = -1, `effectMechanic1` = 0, `effectMechanic2` = 0, `effectMechanic3` = 0, `effectImplicitTargetA1` = 1, `effectImplicitTargetA2` = 0, `effectImplicitTargetA3` = 0, `effectImplicitTargetB1` = 0, `effectImplicitTargetB2` = 0, `effectImplicitTargetB3` = 0, `effectRadiusIndex1` = 0, `effectRadiusIndex2` = 0, `effectRadiusIndex3` = 0, `effectApplyAuraName1` = 0, `effectApplyAuraName2` = 0, `effectApplyAuraName3` = 0, `effectAmplitude1` = 0, `effectAmplitude2` = 0, `effectAmplitude3` = 0, `effectMultipleValue1` = 0, `effectMultipleValue2` = 0, `effectMultipleValue3` = 0, `effectChainTarget1` = 0, `effectChainTarget2` = 0, `effectChainTarget3` = 0, `effectItemType1` = 99999, `effectItemType2` = 0, `effectItemType3` = 0, `effectMiscValue1` = 0, `effectMiscValue2` = 0, `effectMiscValue3` = 0, `effectTriggerSpell1` = 0, `effectTriggerSpell2` = 0, `effectTriggerSpell3` = 0, `effectPointsPerComboPoint1` = 0, `effectPointsPerComboPoint2` = 0, `effectPointsPerComboPoint3` = 0, `spellVisual1` = 3881, `spellVisual2` = 0, `spellIconId` = 140, `activeIconId` = 0, `spellPriority` = 0, `name` = 'Danonzo\'s Tel\'abim Delight', `nameFlags` = 4128894, `nameSubtext` = '', `nameSubtextFlags` = 4128876, `description` = '', `descriptionFlags` = 4128876, `auraDescription` = '', `auraDescriptionFlags` = 4128876, `manaCostPercentage` = 0, `startRecoveryCategory` = 0, `startRecoveryTime` = 0, `minTargetLevel` = 0, `maxTargetLevel` = 0, `spellFamilyName` = 0, `spellFamilyFlags` = 0, `maxAffectedTargets` = 0, `dmgClass` = 0, `preventionType` = 0, `stanceBarOrder` = -1, `dmgMultiplier1` = 1, `dmgMultiplier2` = 1, `dmgMultiplier3` = 1, `minFactionId` = 0, `minReputation` = 0, `requiredAuraVision` = 0, `customFlags` = 0 WHERE `entry` = 57049;
UPDATE `spell_template` SET `school` = 0, `category` = 0, `castUI` = 0, `dispel` = 0, `mechanic` = 0, `attributes` = 262400, `attributesEx` = 0, `attributesEx2` = 0, `attributesEx3` = 0, `attributesEx4` = 0, `stances` = 0, `stancesNot` = 0, `targets` = 0, `targetCreatureType` = 0, `requiresSpellFocus` = 0, `casterAuraState` = 0, `targetAuraState` = 0, `castingTimeIndex` = 14, `recoveryTime` = 0, `categoryRecoveryTime` = 0, `interruptFlags` = 15, `auraInterruptFlags` = 0, `channelInterruptFlags` = 0, `procFlags` = 0, `procChance` = 101, `procCharges` = 0, `maxLevel` = 0, `baseLevel` = 0, `spellLevel` = 0, `durationIndex` = 0, `powerType` = 0, `manaCost` = 0, `manCostPerLevel` = 0, `manaPerSecond` = 0, `manaPerSecondPerLevel` = 0, `rangeIndex` = 6, `speed` = 0, `modelNextSpell` = 0, `stackAmount` = 0, `totem1` = 0, `totem2` = 0, `reagent1` = 0, `reagent2` = 0, `reagent3` = 0, `reagent4` = 0, `reagent5` = 0, `reagent6` = 0, `reagent7` = 0, `reagent8` = 0, `reagentCount1` = 0, `reagentCount2` = 0, `reagentCount3` = 0, `reagentCount4` = 0, `reagentCount5` = 0, `reagentCount6` = 0, `reagentCount7` = 0, `reagentCount8` = 0, `equippedItemClass` = -1, `equippedItemSubClassMask` = -1, `equippedItemInventoryTypeMask` = 0, `effect1` = 36, `effect2` = 0, `effect3` = 0, `effectDieSides1` = 0, `effectDieSides2` = 0, `effectDieSides3` = 0, `effectBaseDice1` = 0, `effectBaseDice2` = 0, `effectBaseDice3` = 0, `effectDicePerLevel1` = 0, `effectDicePerLevel2` = 0, `effectDicePerLevel3` = 0, `effectRealPointsPerLevel1` = 0, `effectRealPointsPerLevel2` = 0, `effectRealPointsPerLevel3` = 0, `effectBasePoints1` = 0, `effectBasePoints2` = 0, `effectBasePoints3` = 0, `effectBonusCoefficient1` = 0, `effectBonusCoefficient2` = -1, `effectBonusCoefficient3` = -1, `effectMechanic1` = 0, `effectMechanic2` = 0, `effectMechanic3` = 0, `effectImplicitTargetA1` = 1, `effectImplicitTargetA2` = 0, `effectImplicitTargetA3` = 0, `effectImplicitTargetB1` = 0, `effectImplicitTargetB2` = 0, `effectImplicitTargetB3` = 0, `effectRadiusIndex1` = 0, `effectRadiusIndex2` = 0, `effectRadiusIndex3` = 0, `effectApplyAuraName1` = 0, `effectApplyAuraName2` = 0, `effectApplyAuraName3` = 0, `effectAmplitude1` = 0, `effectAmplitude2` = 0, `effectAmplitude3` = 0, `effectMultipleValue1` = 0, `effectMultipleValue2` = 0, `effectMultipleValue3` = 0, `effectChainTarget1` = 0, `effectChainTarget2` = 0, `effectChainTarget3` = 0, `effectItemType1` = 0, `effectItemType2` = 0, `effectItemType3` = 0, `effectMiscValue1` = 0, `effectMiscValue2` = 0, `effectMiscValue3` = 0, `effectTriggerSpell1` = 57047, `effectTriggerSpell2` = 0, `effectTriggerSpell3` = 0, `effectPointsPerComboPoint1` = 0, `effectPointsPerComboPoint2` = 0, `effectPointsPerComboPoint3` = 0, `spellVisual1` = 222, `spellVisual2` = 0, `spellIconId` = 1, `activeIconId` = 0, `spellPriority` = 0, `name` = 'Recipe: Danonzo\'s Tel\'abim Surprise', `nameFlags` = 4128894, `nameSubtext` = '', `nameSubtextFlags` = 4128844, `description` = 'Teaches you how to cook Danonzo\'s Tel\'abim Surprise.', `descriptionFlags` = 4128894, `auraDescription` = '', `auraDescriptionFlags` = 4128844, `manaCostPercentage` = 0, `startRecoveryCategory` = 0, `startRecoveryTime` = 0, `minTargetLevel` = 0, `maxTargetLevel` = 0, `spellFamilyName` = 0, `spellFamilyFlags` = 0, `maxAffectedTargets` = 0, `dmgClass` = 0, `preventionType` = 0, `stanceBarOrder` = -1, `dmgMultiplier1` = 1, `dmgMultiplier2` = 1, `dmgMultiplier3` = 1, `minFactionId` = 0, `minReputation` = 0, `requiredAuraVision` = 0, `customFlags` = 0 WHERE `entry` = 57048;
UPDATE `spell_template` SET `school` = 0, `category` = 0, `castUI` = 0, `dispel` = 0, `mechanic` = 0, `attributes` = 65568, `attributesEx` = 0, `attributesEx2` = 0, `attributesEx3` = 0, `attributesEx4` = 0, `stances` = 0, `stancesNot` = 0, `targets` = 0, `targetCreatureType` = 0, `requiresSpellFocus` = 4, `casterAuraState` = 0, `targetAuraState` = 0, `castingTimeIndex` = 14, `recoveryTime` = 0, `categoryRecoveryTime` = 0, `interruptFlags` = 15, `auraInterruptFlags` = 0, `channelInterruptFlags` = 0, `procFlags` = 0, `procChance` = 101, `procCharges` = 0, `maxLevel` = 0, `baseLevel` = 0, `spellLevel` = 0, `durationIndex` = 0, `powerType` = 0, `manaCost` = 0, `manCostPerLevel` = 0, `manaPerSecond` = 0, `manaPerSecondPerLevel` = 0, `rangeIndex` = 1, `speed` = 0, `modelNextSpell` = 0, `stackAmount` = 0, `totem1` = 0, `totem2` = 0, `reagent1` = 60955, `reagent2` = 3713, `reagent3` = 10286, `reagent4` = 0, `reagent5` = 0, `reagent6` = 0, `reagent7` = 0, `reagent8` = 0, `reagentCount1` = 1, `reagentCount2` = 1, `reagentCount3` = 1, `reagentCount4` = 0, `reagentCount5` = 0, `reagentCount6` = 0, `reagentCount7` = 0, `reagentCount8` = 0, `equippedItemClass` = -1, `equippedItemSubClassMask` = 0, `equippedItemInventoryTypeMask` = 0, `effect1` = 24, `effect2` = 0, `effect3` = 0, `effectDieSides1` = 1, `effectDieSides2` = 0, `effectDieSides3` = 0, `effectBaseDice1` = 1, `effectBaseDice2` = 0, `effectBaseDice3` = 0, `effectDicePerLevel1` = 0, `effectDicePerLevel2` = 0, `effectDicePerLevel3` = 0, `effectRealPointsPerLevel1` = 0, `effectRealPointsPerLevel2` = 0, `effectRealPointsPerLevel3` = 0, `effectBasePoints1` = 0, `effectBasePoints2` = 0, `effectBasePoints3` = 0, `effectBonusCoefficient1` = 0, `effectBonusCoefficient2` = -1, `effectBonusCoefficient3` = -1, `effectMechanic1` = 0, `effectMechanic2` = 0, `effectMechanic3` = 0, `effectImplicitTargetA1` = 1, `effectImplicitTargetA2` = 0, `effectImplicitTargetA3` = 0, `effectImplicitTargetB1` = 0, `effectImplicitTargetB2` = 0, `effectImplicitTargetB3` = 0, `effectRadiusIndex1` = 0, `effectRadiusIndex2` = 0, `effectRadiusIndex3` = 0, `effectApplyAuraName1` = 0, `effectApplyAuraName2` = 0, `effectApplyAuraName3` = 0, `effectAmplitude1` = 0, `effectAmplitude2` = 0, `effectAmplitude3` = 0, `effectMultipleValue1` = 0, `effectMultipleValue2` = 0, `effectMultipleValue3` = 0, `effectChainTarget1` = 0, `effectChainTarget2` = 0, `effectChainTarget3` = 0, `effectItemType1` = 99999, `effectItemType2` = 0, `effectItemType3` = 0, `effectMiscValue1` = 0, `effectMiscValue2` = 0, `effectMiscValue3` = 0, `effectTriggerSpell1` = 0, `effectTriggerSpell2` = 0, `effectTriggerSpell3` = 0, `effectPointsPerComboPoint1` = 0, `effectPointsPerComboPoint2` = 0, `effectPointsPerComboPoint3` = 0, `spellVisual1` = 3881, `spellVisual2` = 0, `spellIconId` = 140, `activeIconId` = 0, `spellPriority` = 0, `name` = 'Danonzo\'s Tel\'abim Surprise', `nameFlags` = 4128894, `nameSubtext` = '', `nameSubtextFlags` = 4128876, `description` = '', `descriptionFlags` = 4128876, `auraDescription` = '', `auraDescriptionFlags` = 4128876, `manaCostPercentage` = 0, `startRecoveryCategory` = 0, `startRecoveryTime` = 0, `minTargetLevel` = 0, `maxTargetLevel` = 0, `spellFamilyName` = 0, `spellFamilyFlags` = 0, `maxAffectedTargets` = 0, `dmgClass` = 0, `preventionType` = 0, `stanceBarOrder` = -1, `dmgMultiplier1` = 1, `dmgMultiplier2` = 1, `dmgMultiplier3` = 1, `minFactionId` = 0, `minReputation` = 0, `requiredAuraVision` = 0, `customFlags` = 0 WHERE `entry` = 57047;



