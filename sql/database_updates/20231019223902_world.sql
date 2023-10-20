UPDATE `spell_template` SET `description` = 'Teaches Divine Spirit (Rank 1).' WHERE `entry` = 47324;

UPDATE `spell_template` SET `name` = 'Flurry', `description` = 'Increases your attack speed by $12966s1% for your next 3 swings after dealing a melee critical strike.' WHERE `entry` = 12319;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = '' WHERE `entry` = 12966;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = '' WHERE `entry` = 12967;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = '' WHERE `entry` = 12968;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = '' WHERE `entry` = 12969;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = '' WHERE `entry` = 12970;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = 'Increases your attack speed by $12967s1% for your next 3 swings after dealing a melee critical strike.' WHERE `entry` = 12971;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = 'Increases your attack speed by $12968s1% for your next 3 swings after dealing a melee critical strike.' WHERE `entry` = 12972;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = 'Increases your attack speed by $12969s1% for your next 3 swings after dealing a melee critical strike.' WHERE `entry` = 12973;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = 'Increases your attack speed by $12970s1% for your next 3 swings after dealing a melee critical strike.' WHERE `entry` = 12974;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = 'Increases your attack speed by 30% for your next 3 swings after dealing a melee critical strike.' WHERE `entry` = 15088;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = 'Increases your attack speed by $16257s1% for your next 3 swings after dealing a melee critical strike.' WHERE `entry` = 16256;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = '' WHERE `entry` = 16257;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = '' WHERE `entry` = 16277;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = '' WHERE `entry` = 16278;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = '' WHERE `entry` = 16279;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = '' WHERE `entry` = 16280;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = 'Increases your attack speed by $16277s1% for your next 3 swings after dealing a melee critical strike.' WHERE `entry` = 16281;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = 'Increases your attack speed by $16278s1% for your next 3 swings after dealing a melee critical strike.' WHERE `entry` = 16282;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = 'Increases your attack speed by $16279s1% for your next 3 swings after dealing a melee critical strike.' WHERE `entry` = 16283;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = 'Increases your attack speed by $16280s1% for your next 3 swings after dealing a melee critical strike.' WHERE `entry` = 16284;
UPDATE `spell_template` SET `name` = 'Flurry', `description` = '' WHERE `entry` = 17687;

-- Vengeful Phantom, Spiteful Phantom, Wrath Phantom

UPDATE `creature_template` SET `leash_range`=100 WHERE `entry` IN (10389, 10388, 10387);

UPDATE `spell_template` SET `description` = 'Opens a portal into the Twisting Nether that summons a Felguard under the command of the caster for 5 min. Once control is lost, the Felguard must be Enslaved to maintain control. Requires the caster and 2 additional party members to complete the ritual. In order to participate, all players must right-click the portal and not move until the ritual is complete.' WHERE `entry` = 30146;
UPDATE `spell_template` SET `description` = '' WHERE `entry` = 47326;
UPDATE `spell_template` SET `attributesEx2` = 524288 WHERE `entry` = 45414;
INSERT INTO `spell_template` (`entry`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`) VALUES (48099, 5, 0, 0, 0, 0, 448, 0, 0, 67108864, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 65536, 10, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48003, 0, 0, 0, 0, 0, 0, 0, 876, 0, 0, 'Burning Hatred', 16712190, '', 16712190, 'Your landing damaging spells have a chance on sacrificing $48003s1 of your health and dealing $48003s2 Fire damage.', 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 128);
UPDATE `spell_template` SET `equippedItemSubClassMask` = 31 WHERE `entry` = 57151;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 31 WHERE `entry` = 57152;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 31 WHERE `entry` = 57153;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 31 WHERE `entry` = 57154;
UPDATE `spell_template` SET `mechanic` = 7 WHERE `entry` = 4167;
UPDATE `spell_template` SET `mechanic` = 7 WHERE `entry` = 4168;
UPDATE `spell_template` SET `mechanic` = 7 WHERE `entry` = 4169;
UPDATE `skill_line_ability` SET `req_skill_value` = 300 WHERE `id` = 36373;
UPDATE `skill_line_ability` SET `req_skill_value` = 300 WHERE `id` = 36372;