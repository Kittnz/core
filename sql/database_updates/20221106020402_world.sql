DELETE FROM `spell_chain` WHERE `spell_id` = 45553;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2403

UPDATE `item_template` SET `spellcharges_1` = -1 WHERE `entry` = 83503;