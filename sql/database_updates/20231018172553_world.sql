-- fix
update item_template set dmg_type1 = 0 where entry = 61594; -- Magus Blade
update item_template set spellid_1 = 9346 where entry = 61032; -- Band of Infinite Possibilities
update item_template set dmg_min1 = 28, dmg_max1 = 51 where entry = 60124; -- Axe of the Wildtusk
update item_template set flags = 0, stat_type1 = 3, max_count = 0 where entry = 51760; -- Marksman's Band
update item_template set required_skill_rank = 300, required_skill = 197, spellid_1 = 14254, spellid_2 = 21364, stat_value1 = 19 where entry = 61360; -- Dreamthread Mantle
update item_template set required_skill_rank = 300, required_skill = 164, spellid_1 = 7597, spellid_2 = 0, stat_value1 = 25, stat_value2 = 15, stat_type2 = 7 where entry = 61364; -- Dreamsteel Mantle

-- ilvl 42 to 47
update item_template set item_level = 47, armor = 1648, block = 26, nature_res = 0, stat_value1 = 7, stat_type1 = 7 where entry = 60950; -- Wattapo's Bulwark
update item_template set item_level = 47, armor = 1648, block = 26, nature_res = 0, stat_value1 = 7, stat_type1 = 7 where entry = 60819; -- Dustwallow Defender
update item_template set item_level = 47, stat_value1 = 0, spellid_1 = 23727, spelltrigger_1 = 1, dmg_min1 = 56, dmg_max1 = 104 where entry = 60952; -- Stonemaul Seer Club
update item_template set item_level = 47, stat_value1 = 6, spellid_1 = 9415, spelltrigger_1 = 1, dmg_min1 = 32, dmg_max1 = 60 where entry = 60820; -- Ornate Dagger of Jalvan
update item_template set item_level = 47, stat_value1 = 20, stat_value2 = 14, dmg_min1 = 90, dmg_max1 = 167 where entry = 60951; -- Krog's Pike
update item_template set item_level = 47, stat_value1 = 20, spellid_1 = 7597, spelltrigger_1 = 1, dmg_min1 = 84, dmg_max1 = 156 where entry = 60818; -- Garran's Pike
update item_template set item_level = 47, stat_value1 = 8, dmg_min1 = 49, dmg_max1 = 90 where entry = 60953; -- Brackenwall Longbow
update item_template set item_level = 47, stat_value1 = 8, dmg_min1 = 57, dmg_max1 = 106 where entry = 60821; -- Theramore Arbalest

-- change short desc. of quest 40994 to
-- "Retrieve the Ravenwood Scepter from Ravenwood Keep for Dark Bishop Mordren in Stillward Chuch."

UPDATE quest_template SET objectives = 'Retrieve the Ravenwood Scepter from Ravenwood Keep for Dark Bishop Mordren in Stillward Chuch.' WHERE entry =  40994;

-- Fix ES raid teleport condition:

UPDATE `areatrigger_teleport` SET `message` = 'To enter, you must be part of a raid group, at least level 60, and have the Gemstone of Ysera in your inventory.' WHERE `id` = 5017;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/4774
-- Quest "Wisdom of the Sages" drop only 1 item for party:

UPDATE `item_template` SET `flags`=2048 WHERE `entry`= 81343;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/4663
-- Gemstone of Ysera missing inventory drag sound effects 

UPDATE `item_template` SET `display_id` = 7393 WHERE `entry` = 50545;

UPDATE `item_template` SET `display_id` = 31205 WHERE `entry` = 60381;
UPDATE `item_template` SET `display_id` = 7735 WHERE `entry` = 60463;