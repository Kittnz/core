-- Adds 1% Spell Crit to Onyxia Scale Breastplate, a small incentivizer even if still quite wasteful. 
update item_template set spellid_2 = 18384, spelltrigger_2 = 1 where entry = 15141;

update item_template set spelltrigger_2 = 1 where entry = 21481;

-- Hazzuri Scavenger on Lapidis Isle is tracked as a beast mob:
update creature_template set beast_family = 0, type = 7, skinning_loot_id = 0 where entry = 91824;

-- Sinrek's Childern text update:
replace into broadcast_text values (9656, '', 'There are costs with war, $c... ones that are often overlooked.\n\nThose costs are the orphans—children who have lost their parents to the far-too-numerous conflicts that rage across Azeroth.\n\nThose children have no one else to turn to come here often to live until they are old enough to fend for themselves.\n\nOne week out of the month, the Horde takes time to give something back to these innocents. This time is called Children\'s Week.', 0, 0, 0, 1, 1, 0, 0, 0, 0);
replace into broadcast_text values (9659, '', 'There are costs with war, $c... ones that are often overlooked.\n\nThose costs are the orphans—children who have lost their parents to the far-too-numerous conflicts that rage across Azeroth.\n\nThose children have no one else to turn to come here often to live until they are old enough to fend for themselves.\n\nOne week out of the month, the Alliance takes time to give something back to these innocents. This time is called Children\'s Week.', 0, 0, 0, 1, 1, 0, 0, 0, 0);

-- Boat to Auberdine deprecated sign:
delete from gameobject where guid = 13779;

-- Prepare instanced map for `Scourge!` quest:
update map_template set map_type = 1, player_limit = 1 where entry = 42;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1186
update quest_template set objectivetext1 = 'Bring Righteous Orb and Flawless Draenethyst Sphere to Fashionista\'s Apprentice and recieve 3 Fashion Coins as a reward.' where entry = 60036;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1170
delete from creature_loot_template where entry = 117 and item = 30039;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1166
update creature_template SET dmg_min = 88, dmg_max = 119 where name = 'Anvilrage Reservist';
update creature_template SET dmg_min = 187, dmg_max = 254 where name = 'Anvilrage Overseer';
update creature_template SET dmg_min = 248, dmg_max = 337 where name = 'Anvilrage Warden';
update creature_template SET dmg_min = 262, dmg_max = 355 where name = 'Anvilrage Guardsman';
update creature_template SET dmg_min = 338, dmg_max = 449 where name = 'Anvilrage Captain';
update creature_template SET dmg_min = 305, dmg_max = 412 where name = 'Anvilrage Footman';
update creature_template SET dmg_min = 241, dmg_max = 324 where name = 'Anvilrage Medic';
update creature_template SET dmg_min = 273, dmg_max = 361 where name = 'Anvilrage Officer';
update creature_template SET dmg_min = 293, dmg_max = 397 where name = 'Anvilrage Marshal';
update creature_template SET dmg_min = 279, dmg_max = 370 where name = 'Anvilrage Soldier';

-- Adjusted base mana stats for level 1 druids.

update player_levelstats set inte = 17 where class = 11 and race = 6 and level = 1;
update player_levelstats set inte = 22 where class = 11 and race = 4 and level = 1;  


-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/240"

update item_template set flags = 2048 where entry = 12562;