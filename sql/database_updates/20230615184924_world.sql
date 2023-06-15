UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `entry` = 49008 AND `item` = 60437;

-- Glyph of the Frostkin (51430) (Not used?)
-- Glyph of the Frostkin (51431)
-- Glyph of the Frostsaber (51057)
-- Glyph of the Ice Bear (51266)
-- Glyph of the Stag (51056)

-- Change the tooltip of these from ...while this Glyph is on your bag to ...while this Glyph is on your keyring.

UPDATE `item_template` SET `description` = 'Your Travel Form appears as a Stag, while this Glyph is on your keyring' WHERE `entry` = 51056;
UPDATE `item_template` SET `description` = 'Your Cat Form appears as a Frostsaber, while this Glyph is on your keyring' WHERE `entry` = 51057;
UPDATE `item_template` SET `description` = 'Your Bear Form appears as an Ice Bear, while this Glyph is on your keyring' WHERE `entry` = 51266;
UPDATE `item_template` SET `description` = 'Your Moonkin Form appears as a Frostkin, while this Glyph is on your keyring' WHERE `entry` = 51430;
UPDATE `item_template` SET `description` = 'Your Moonkin Form appears as a Frostkin, while this Glyph is on your keyring' WHERE `entry` = 51431;
