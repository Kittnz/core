REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES 
(16000, 1008, 45840, 0, 0, 0, 0, 0, 0, 0, 0), -- Toy Train Set / Item 51255
(16001, 1008, 46038, 0, 0, 0, 0, 0, 0, 0, 0), -- Winter Veil Tree / Item 51250
(16002, 1008, 29999, 0, 0, 0, 0, 0, 0, 0, 0), -- Goblin Radio / Item 10585
(16003, 1008, 46001, 0, 0, 0, 0, 0, 0, 0, 0), -- Mailbox / Item 50011
(16004, 1008, 46002, 0, 0, 0, 0, 0, 0, 0, 0); -- Brainwashing / Item 51715

REPLACE INTO `spell_template` (`entry`, `school`, `category`, `castUI`, `dispel`, `mechanic`, `attributes`, `attributesEx`, `attributesEx2`, `attributesEx3`, `attributesEx4`, `stances`, `stancesNot`, `targets`, `targetCreatureType`, `requiresSpellFocus`, `casterAuraState`, `targetAuraState`, `castingTimeIndex`, `recoveryTime`, `categoryRecoveryTime`, `interruptFlags`, `auraInterruptFlags`, `channelInterruptFlags`, `procFlags`, `procChance`, `procCharges`, `maxLevel`, `baseLevel`, `spellLevel`, `durationIndex`, `powerType`, `manaCost`, `manCostPerLevel`, `manaPerSecond`, `manaPerSecondPerLevel`, `rangeIndex`, `speed`, `modelNextSpell`, `stackAmount`, `totem1`, `totem2`, `reagent1`, `reagent2`, `reagent3`, `reagent4`, `reagent5`, `reagent6`, `reagent7`, `reagent8`, `reagentCount1`, `reagentCount2`, `reagentCount3`, `reagentCount4`, `reagentCount5`, `reagentCount6`, `reagentCount7`, `reagentCount8`, `equippedItemClass`, `equippedItemSubClassMask`, `equippedItemInventoryTypeMask`, `effect1`, `effect2`, `effect3`, `effectDieSides1`, `effectDieSides2`, `effectDieSides3`, `effectBaseDice1`, `effectBaseDice2`, `effectBaseDice3`, `effectDicePerLevel1`, `effectDicePerLevel2`, `effectDicePerLevel3`, `effectRealPointsPerLevel1`, `effectRealPointsPerLevel2`, `effectRealPointsPerLevel3`, `effectBasePoints1`, `effectBasePoints2`, `effectBasePoints3`, `effectBonusCoefficient1`, `effectBonusCoefficient2`, `effectBonusCoefficient3`, `effectMechanic1`, `effectMechanic2`, `effectMechanic3`, `effectImplicitTargetA1`, `effectImplicitTargetA2`, `effectImplicitTargetA3`, `effectImplicitTargetB1`, `effectImplicitTargetB2`, `effectImplicitTargetB3`, `effectRadiusIndex1`, `effectRadiusIndex2`, `effectRadiusIndex3`, `effectApplyAuraName1`, `effectApplyAuraName2`, `effectApplyAuraName3`, `effectAmplitude1`, `effectAmplitude2`, `effectAmplitude3`, `effectMultipleValue1`, `effectMultipleValue2`, `effectMultipleValue3`, `effectChainTarget1`, `effectChainTarget2`, `effectChainTarget3`, `effectItemType1`, `effectItemType2`, `effectItemType3`, `effectMiscValue1`, `effectMiscValue2`, `effectMiscValue3`, `effectTriggerSpell1`, `effectTriggerSpell2`, `effectTriggerSpell3`, `effectPointsPerComboPoint1`, `effectPointsPerComboPoint2`, `effectPointsPerComboPoint3`, `spellVisual1`, `spellVisual2`, `spellIconId`, `activeIconId`, `spellPriority`, `name`, `nameFlags`, `nameSubtext`, `nameSubtextFlags`, `description`, `descriptionFlags`, `auraDescription`, `auraDescriptionFlags`, `manaCostPercentage`, `startRecoveryCategory`, `startRecoveryTime`, `minTargetLevel`, `maxTargetLevel`, `spellFamilyName`, `spellFamilyFlags`, `maxAffectedTargets`, `dmgClass`, `preventionType`, `stanceBarOrder`, `dmgMultiplier1`, `dmgMultiplier2`, `dmgMultiplier3`, `minFactionId`, `minReputation`, `requiredAuraVision`, `customFlags`) VALUES (46096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 222, 0, 115, 0, 0, 'Add Toy to Collection', 16712190, 'Collection', 16712190, 'Adds a toy to the player\'s you collection.', 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0);

UPDATE `item_template` SET `spellid_1` = 46096 WHERE `entry` IN (51255, 51250, 10585, 50011, 51715);
UPDATE `spell_template` SET `nameSubText` = 'Toy' WHERE `entry` IN (45840, 46038, 29999, 46001, 46002);

DROP TABLE IF EXISTS `collection_toy`;
CREATE TABLE `collection_toy`  (
  `itemId` int(10) UNSIGNED NOT NULL,
  `spellId` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`itemId`, `spellId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (51255, 45840);
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (51250, 46038);
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (10585, 29999);
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (50011, 46001);
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (51715, 46002);

UPDATE `spell_template` SET `spellIconId` = 2279 WHERE `entry` = 45840;
UPDATE `spell_template` SET `spellIconId` = 1733 WHERE `entry` = 29999;
UPDATE `spell_template` SET `spellIconId` = 2312 WHERE `entry` = 46001;

-- More toys for the collection:

UPDATE `item_template` SET `spellid_1` = 46096 WHERE `entry` IN (81059, 21540, 81116, 17712, 51020, 20030, 13342, 91794);

-- REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (20030, ID_MISSING); -- PET ROCK
-- REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (91794, ID_MISSING); -- Lunar Lantern
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (81059, 45030); -- Fox Spirit Stone
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (21540, 26265); -- Elune's Lantern
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (81116, 56067); -- Picnic Basket
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (17712, 21848); -- Snowman Suit
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (51020, 26389); -- Strawberry Schnapps
REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (13342, 17468); -- Pet Fish

UPDATE `spell_template` SET `name` = 'Elune\'s Lantern' WHERE `entry` = 26265;
UPDATE `spell_template` SET `name` = 'Spectral Fox Whistle' WHERE `entry` = 45030;
UPDATE `spell_template` SET `name` = 'Strawberry Schnapps' WHERE `entry` = 26389;

UPDATE `spell_template` SET `spellIconId` = 2037 WHERE `entry` = 45030; -- Fox Spirit Stone
UPDATE `spell_template` SET `spellIconId` = 1878 WHERE `entry` = 26265; -- Elune's Lantern
UPDATE `spell_template` SET `spellIconId` = 1911 WHERE `entry` = 56067; -- Picnic Basket
UPDATE `spell_template` SET `spellIconId` = 2089 WHERE `entry` = 21848; -- Snowman Suit
UPDATE `spell_template` SET `spellIconId` = 1359 WHERE `entry` =  26389; -- Strawberry Schnapps
UPDATE `spell_template` SET `spellIconId` = 2279 WHERE `entry` = 17468; -- Pet Fish

REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES 
(16005, 1008, 45030, 0, 0, 0, 0, 0, 0, 0, 0),
(16006, 1008, 26265, 0, 0, 0, 0, 0, 0, 0, 0),
(16007, 1008, 56067, 0, 0, 0, 0, 0, 0, 0, 0),
(16008, 1008, 21848, 0, 0, 0, 0, 0, 0, 0, 0),
(16009, 1008, 26389, 0, 0, 0, 0, 0, 0, 0, 0),
(16010, 1008, 17468, 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE `spell_template` SET `nameSubText` = 'Toy' WHERE `entry` IN (45030, 26265, 56067, 21848, 26389, 17468,  26389);
