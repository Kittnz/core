-- Shadowhorn Stag should be blue quality:
update item_template set quality = 3, description = 'A powerful, beautiful being.', required_level = 0, required_skill = 0, required_skill_rank = 0, spellid_1 = 46449 where entry = 50406;
delete from custom_mount_entry_relation where item_entry = 50406;
-- Durotar Scouring quest level fix:
update quest_template set QuestLevel = 10 where entry = 807;
-- Low level quest reward rebalancing:
update item_template set dmg_min1 = 88, dmg_max1 = 147, delay = 3300, stat_value1 = 9, stat_value2 = 9 where entry = 51766;
update item_template set dmg_min2 = 0, dmg_max2 = 0 where entry = 51768;
update item_template set stat_value1 = 5, stat_value2 = 3, item_level = 25 where entry = 51719;
-- https://database.turtle-wow.org/?quest=80304 fixes
update `creature_template` set `level_min` = 1, `level_max` = 1, `health_min` = 1, `health_max` = 1 where `entry` = 80965;
update `quest_template` set `ReqItemCount1` = 10, `ReqItemCount2` = 10 where `entry` = 80304;
-- Elemental Water sell price fix.
update item_template set sell_price = 400 where entry = 7070;
-- Infinite Hunt text fix:
update quest_template set ZoneOrSort = 47, Objectives = "Go to Seradane\'s Temple and defeat Antnormi, return to Chromie in Andorhal." where entry = 80411;
-- Broken Spear fix (Made it unique to stop looting more than once).
update item_template set max_count = 1, flags = 65536, bonding = 1 where entry = 70027;
update item_template set description = "" where entry = 70051;
update item_template set spellid_1 = 18074 where entry = 70062;

-- Reputation Leather Boots: 20 Agility => 14 Agility, 10 Stamina => 16 Stamina, 10 Attack Power => 6 Attack Power, 125 Armor => 145 Armor
-- Reputation Leather Belt: 10 Stamina => 16 Stamina, 24 Attack Power => 10 Attack Power
-- Reputation Leather Leggings: 18 Agility => 15 Agility, 10 Stamina => 22 Stamina, 30 Attack Power => 20 Attack Power, 158 Armor => 189 Armor
-- Reputation Leather Chestplate: 25 Agility => 20 Agility, 10 Stamina => 15 Stamina
-- Reputation Leather Gloves: 10 Stamina => 18 Stamina, 36 Attack Power => 20 Attack Power
-- Reputation Plate Boots: 17 Strength => 15 Strength, 17 Agility => 10 Agility, 10 Stamina => 18 Stamina, 468 Armor => 489 Armor
-- Reputation Plate Belt: 14 Strength => 11 Strength, 10 Agility => 8 Agility, 13 Stamina => 16 Stamina, 380 Armor => 400 Armor
-- Reputation Plate Gloves: 15 Strength => 12 Strength, 10 Agility => 8 Agility, 10 Stamina => 15 Stamina

-- update item_template set stat_value2 = 16, spellid_1 = 9140 where entry = 80619;
-- update item_template set stat_value2 = 16, spellid_1 = 9140 where entry = 80519;
-- update item_template set stat_value1 = 14, stat_value2 = 16, spellid_1 = 9138, armor = 145 where entry = 80618;
-- update item_template set stat_value1 = 14, stat_value2 = 16, spellid_1 = 9138, armor = 145 where entry = 80518;
-- update item_template set stat_value1 = 15, stat_value2 = 22, spellid_1 = 9331, armor = 189 where entry = 80621;
-- update item_template set stat_value1 = 15, stat_value2 = 22, spellid_1 = 9331, armor = 189 where entry = 80521;
-- update item_template set stat_value1 = 20, stat_value2 = 15 where entry = 80617;
-- update item_template set stat_value1 = 20, stat_value2 = 15 where entry = 80517;
-- update item_template set stat_value2 = 18, spellid_1 = 9331 where entry = 80620;
-- update item_template set stat_value2 = 18, spellid_1 = 9331 where entry = 80520;
-- update item_template set stat_value1 = 15, stat_value2 = 10, stat_value3 = 18, armor = 489 where entry = 80608;
-- update item_template set stat_value1 = 15, stat_value2 = 10, stat_value3 = 18, armor = 489 where entry = 80508;
-- update item_template set stat_value1 = 11, stat_value2 = 8, stat_value3 = 16, armor = 400 where entry = 80609;
-- update item_template set stat_value1 = 11, stat_value2 = 8, stat_value3 = 16, armor = 400 where entry = 80509;
-- update item_template set stat_value1 = 12, stat_value2 = 8, stat_value3 = 15 where entry = 80610;
-- update item_template set stat_value1 = 12, stat_value2 = 8, stat_value3 = 15 where entry = 80510;

-- Scale up Lake Toad.
update creature_template set scale = 3 where entry = 80965;