-- Misc. fixes:

update quest_template set title = 'They Call Him Morgan the Storm' where entry = 60152;
update quest_template set details = '$N, I hear you are on your way to slay the scoundrels they call leaders of the worst crew of pirates, the Bloodsail Buccaneers.\n\nYou see these fools took a new member and they in their deluded mind think he will aid them greatly.\n\n<Baron Revilgaz scoffs.>\n\nI have a man on the inside, his name is Morgan Storm, look for a fellow that won’t shank you on sight.' where entry = 60152;
update quest_template set objectives = 'Find Morgan the Storm' where entry = 60152;
update creature_template set name = 'Morgan the Storm' where entry = 51607;

-- Winterveil Vale fixes:

UPDATE `quest_template` SET `ObjectiveText1`='Throw snowball at Draxer' WHERE `entry`=50321;
UPDATE `quest_template` SET `ObjectiveText2`='Throw snowball at Paulgreeneye' WHERE `entry`=50321;
UPDATE `quest_template` SET `ObjectiveText3`='Throw snowball at Sangria' WHERE `entry`=50321;
UPDATE `quest_template` SET `ObjectiveText4`='Throw snowball at Sucy' WHERE `entry`=50321;

UPDATE `quest_template` SET `ReqCreatureOrGOId2`='70001' WHERE (`entry`='50321') AND (`patch`='0');
UPDATE `quest_template` SET `ReqCreatureOrGOId2`='70001' WHERE (`entry`='60013') AND (`patch`='0');

UPDATE `quest_template` SET `Objectives`='Stay awesome in 2021!' WHERE (`entry`='60013') AND (`patch`='0');

REPLACE INTO `gameobject_template` VALUES (1000455, 0, 19, 5971, 'Mailbox', 35, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `npc_vendor` VALUES (51656, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 2515, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 2519, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 2946, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 3030, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 3033, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 3107, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 3108, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 3131, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 3135, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 3137, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 4470, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 4471, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 4497, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 4498, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 6183, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 11284, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 11285, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 15326, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51656, 15327, 0, 0, 0, 0);

REPLACE INTO `creature_template` VALUES (51685, 0, 295, 0, 0, 0, 'Riding Wyvern', NULL, 0, 29, 29, 1528, 1528, 1126, 1126, 0, 35, 1, 1.07, 1.14286, 0, 20, 5, 0, 0, 1, 9, 10, 0, 120, 1, 1720, 1892, 1, 0, 0, 0, 0, 0, 0, 0, 43.8944, 60.3548, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 86, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 'npc_riding_wyvern');

-- Misc. DB fixes:

update item_template set armor = 56 where name = 'Greenpaw\'s Sash';
UPDATE `quest_template` SET `RewItemId1`='0', `RewItemCount1`='0' WHERE (`entry`='60114') AND (`patch`='0');

replace into broadcast_text (ID, MaleText) values (70001, 'Do you really think I\'m going to show my mining secrets to just anyone who wanders into town? Ha! Come back to me when people around here consider you a bit more friendly.');

UPDATE `quest_template` SET `Details`='Trust is something you can\'t buy, $R.\n\nHere\'s the deal, lad. You earn trust of this gryphon over here and you\'ll get your ride to the camp. Fail and he\'ll have you as his breakfast.\n\nHah! Of course I\'m pulling your leg here, lad, this winged beast won\'t even nudge unless it\'s trust you completely.\n\nHow, you ask? Food, of course. And a toy. Go figure.' WHERE (`entry`='60070') AND (`patch`='0');

UPDATE `item_template` SET `description`='You hear crackling thunder and gryphon screeches within.' WHERE (`entry`='51755') AND (`patch`='0');

update quest_template set MinLevel = 55 where entry = 6642; -- Dark Iron Ore
update quest_template set MinLevel = 55 where entry = 6643; -- Fiery Core
update quest_template set MinLevel = 55 where entry = 6644; -- Lava Core
update quest_template set MinLevel = 55 where entry = 6645; -- Core Leather
update quest_template set MinLevel = 55 where entry = 6646; -- Blood of the Mountain