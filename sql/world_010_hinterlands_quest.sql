-- An Infinite Hunt
-- https://database.turtle-wow.org/?quest=80411

-- Quest Dialogue
DELETE FROM `script_texts` WHERE `entry` IN (-1780400, -1780401, -1780402, -1780403, -1780404, -1780405, -1780406, -1780407, -1780408);
INSERT INTO `script_texts` VALUES (-1780408, 'We have much to talk about Kheyna. Adventurer, return to Andorhal and speak to me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '');
INSERT INTO `script_texts` VALUES (-1780407, 'Enough of this! I have no time for insects like you. The master\'s plan is almost complete and my diversion was a success!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '');
INSERT INTO `script_texts` VALUES (-1780406, 'I\'ll help you! Let\'s KILL!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '');
INSERT INTO `script_texts` VALUES (-1780405, 'Adventurer, I\'ll weaken it, but you must finish her.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '');
INSERT INTO `script_texts` VALUES (-1780404, 'It\'s her who I\'ve been hunting! Her name is Antnormi. We\'re not ready yet to face her, but we\'ve got no choice!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '');
INSERT INTO `script_texts` VALUES (-1780403, 'What is that behind you?!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '');
INSERT INTO `script_texts` VALUES (-1780402, 'No wait! Listen to me! I am here to hunt a larger threat and she\'s on the way. I\'m not the one you should be after!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '');
INSERT INTO `script_texts` VALUES (-1780401, 'I\'ve found you villain! There is no escape!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '');
INSERT INTO `script_texts` VALUES (-1780400, '$N, you\'re early! What fortune! I believe I\'ve finally tracked-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '');

-- Creature Templates
DELETE FROM `creature_template` WHERE `entry`=91000 AND `patch`=4;
INSERT INTO `creature_template` VALUES (91000, 4, 14887, 0, 0, 0, 'Bronze Drakonid', 'Chromie\'s Guard', 0, 60, 60, 500, 500, 0, 0, 3791, 11, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 524, 673, 0, 272, 2, 1183, 1301, 1, 0, 0, 0, 0, 0, 0, 0, 61.4072, 84.4349, 100, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 0, 0, 0, 142630, 0, 737, 967, 'EventAI', 0, 1, 0, 0, 3, 14263, 0, 0, 65537, 0, 0, '');
DELETE FROM `creature_template` WHERE `entry`=81265 AND `patch`=0;
INSERT INTO `creature_template` VALUES (81265, 0, 18045, 0, 0, 0, 'Antnormi', NULL, 0, 60, 60, 250000, 250000, 250000, 250000, 3489, 50, 0, 1, 1.14286, 0, 20, 5, 0, 2, 1, 372, 479, 0, 268, 1, 1158, 1274, 1, 0, 0, 0, 0, 0, 0, 0, 61.152, 84.084, 100, 2, 0, 10202, 0, 10202, 0, 0, 0, 295, 0, 0, 0, 0, 0, 0, 102020, 0, 715, 938, '', 0, 3, 0, 0, 3, 0, 0, 0, 16, 64, 0, '');



-- Gameobject Templates
DELETE FROM `gameobject_template` WHERE `entry` = 3000510;
INSERT INTO `gameobject_template` VALUES (3000510, 0, 1, 5746, 'Corrupted Crystal', 35, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_corrupted_crystal');
DELETE FROM `gameobject_template` WHERE `entry`=3000511 AND `patch`=0;
INSERT INTO `gameobject_template` VALUES (3000511, 0, 1, 5692, 'Small Force Field', 35, 38, 0.005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_corrupted_crystal');
DELETE FROM `creature_template` WHERE `entry`=91001 AND `patch`=0;
INSERT INTO `creature_template` VALUES (91001, 0, 18495, 0, 0, 0, 'Large Time Rift', '', 0, 37, 37, 2192, 2192, 0, 0, 1340, 35, 16, 1, 1.14286, 4, 20, 5, 0, 0, 1, 55, 70, 0, 144, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 53.3984, 73.4228, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');


-- Gameobject Location
DELETE FROM `gameobject` WHERE `guid` = 4009668;
INSERT INTO `gameobject` VALUES (4009668, 3000510, 0, 670.72, -4092.2, 100.71, 2.8998, 0, 0, 0.992701, 0.120603, 0, 0, 100, 1, 0, 0, 0, 10);

-- Quest Templates
DELETE FROM `quest_template` WHERE `entry` = 80411;
INSERT INTO `quest_template` VALUES (80411, 0, 2, 47, 60, 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80410, 0, 0, 0, 0, 0, 0, 'An Infinite Hunt', 'I have been hunting her for a while now, but she is extremely elusive!  Every time we get close, she escapes. However, she intends to contact you again. This time we\'ll set a trap. Go to Seradane, avoid the Emerald Portal and proceed to the largest temple.  You\'ll find another of her corrupted time crystals. Use it and summon her. Then I will appear and we will defeat her together!', 'Go to Seradane\'s Temple and defeat Antnormi, return to Chromi in Andoral.', 'It seems that this mysterious dragon seeks to corrupt the timeways. I have my disagreements with Kheyna over her disruptive actions, but I\'ve put them aside now because of this greater threat. It seems that this dragon she was hunting has caused a major disruption at a specific point in time.  She also mentioned a master so there may be more of them. I hope I can count on you when the time comes. For now, we will do our best to keep things stable as we figure out how to move ahead from here. Kheyna will cooperate with us under strict supervision. Her fate will be decided after this is dealt with.  We have prepared this replica sword as your reward. ', 'There you are. I have been given much to ponder on.', NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000510, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81288, 0, 0, 0, 1, 0, 0, 0, 910, 0, 0, 0, 0, 250, 0, 0, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);