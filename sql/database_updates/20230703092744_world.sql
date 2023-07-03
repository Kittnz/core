UPDATE `spell_template` SET `description` = 'Permanently increase the intellect by 8 and spell power by 6 of an item worn on the chest, legs, hands or feet.  Only usable on items level 60 and above.' WHERE `entry` = 57115;
UPDATE `spell_template` SET `name` = 'Intellect +8, Spell Power +6' WHERE `entry` = 57136;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 30 WHERE `entry` = 57127;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 30 WHERE `entry` = 57142;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 30 WHERE `entry` = 57148;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 30 WHERE `entry` = 57036;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 30 WHERE `entry` = 57034;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 30 WHERE `entry` = 57032;
UPDATE `spell_template` SET `equippedItemInventoryTypeMask` = 256 WHERE `entry` = 57127;
UPDATE `spell_template` SET `equippedItemInventoryTypeMask` = 256 WHERE `entry` = 57142;
UPDATE `spell_template` SET `equippedItemInventoryTypeMask` = 256 WHERE `entry` = 57148;
UPDATE `spell_template` SET `name` = 'Enchant Chest - Mighty Mana' WHERE `entry` = 57119;

-- Rainy weather for Gilneas:

REPLACE INTO `game_weather` (`zone`, `spring_rain_chance`, `spring_snow_chance`, `spring_storm_chance`, `summer_rain_chance`, `summer_snow_chance`, `summer_storm_chance`, `fall_rain_chance`, `fall_snow_chance`, `fall_storm_chance`, `winter_rain_chance`, `winter_snow_chance`, `winter_storm_chance`) VALUES (5179, 60, 0, 0, 60, 0, 0, 60, 0, 0, 60, 0, 0);