update item_template set allowable_race = -1 where entry in (5102, 4898, 4897);

update quest_template set method = 1 where entry in (50300, 50301, 50302, 50303);

replace into item_template (entry, name, inventory_type, display_id, quality, bonding, description, spellid_1, spelltrigger_1, allowable_race) values
(50440, 'Scarlet Crusade Insignia', 11, 9834, 2, 1, "This ring marks the bearer as a fully fledged member of the Scarlet Crusade.", 0, 0, 0);

replace into broadcast_text (ID, MaleText) values ('90501', 'I’m a free knight! I don’t have a lord. You got a problem with that?\n\n<She glares at you for a moment before lighting up.>\n\nAh whatever... Welcome to our chapel! I can give you a sleeping bag or offer you some rations.');
 
UPDATE `quest_template` SET `ReqItemCount1`='5', `ReqItemCount2`='3' WHERE (`entry`='80304') AND (`patch`='0');
UPDATE `quest_template` SET `ReqItemCount1`='5' WHERE (`entry`='80360') AND (`patch`='0');

update skill_line_ability set race_mask = 2047 where id = 251;
update skill_line_ability set race_mask = 2047 where id = 4413;
update skill_line_ability set race_mask = 2047 where id = 2929;
update skill_line_ability set race_mask = 2047 where id = 4412;
update skill_line_ability set race_mask = 0 where id = 11026;

update skill_line_ability set race_mask = 1613 where id = 3269;
update skill_line_ability set race_mask = 1613 where id = 3270;
update skill_line_ability set race_mask = 1613 where id = 3272;
update skill_line_ability set race_mask = 1613 where id = 5989;
update skill_line_ability set race_mask = 1613 where id = 5990;
update skill_line_ability set race_mask = 1613 where id = 5992;

update skill_line_ability set race_mask = 434 where id = 3271;
update skill_line_ability set race_mask = 434 where id = 3273;
update skill_line_ability set race_mask = 434 where id = 3274;
update skill_line_ability set race_mask = 434 where id = 5991;
update skill_line_ability set race_mask = 434 where id = 5993;
update skill_line_ability set race_mask = 434 where id = 5994;

update creature_template set faction = 7, equipment_id = 0, gold_min = 0, gold_max = 0, type = 10 where entry = 80965;

update quest_template set requiredraces = 434 where requiredraces = 255;
update quest_template set requiredraces = 589 where requiredraces = 256;

update item_template set required_level = 23, item_level = 23, disenchant_id = 41 where entry = 80712;
update item_template set required_level = 23 where entry = 80730;
update item_template set class = 4,  subclass = 1 where entry = 80759;

-- Childern's Week monthly:
UPDATE game_event SET occurence = 42480 WHERE entry = 10;

update quest_template set title = 'Defending the Supply Lines' where entry = 80255;

update gameobject_template set size = 1, name = 'Tent (Human)' where entry = 1000001; -- Human tent
update gameobject_template set size = 1, displayid = 32215, name = 'Tent (Orc)' where entry = 1000236; -- Orc tent

replace into `gameobject_template` values 
-- Unused:
(1000456, 0, 5, 9149, 'Tent (Night Elf)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_survival_tent'),
(1000457, 0, 5, 6738, 'Tent (Dwarf)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_survival_tent'),
(1000458, 0, 5, 28901, 'Tent (Gnome)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_survival_tent'),
(1000459, 0, 5, 29663, 'Tent (High Elf)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_survival_tent'),
(1000460, 0, 5, 28901, 'Tent (Troll)', 0, 0, 0.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_survival_tent'),
(1000461, 0, 5, 32215, 'Tent (Tauren)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_survival_tent'),
(1000462, 0, 5, 22554, 'Tent (Undead)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_survival_tent'),
(1000463, 0, 5, 23899, 'Tent (Goblin)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_survival_tent');
-- Unused.

replace into quest_template values
 ('60154', '0', '2', '12', '6', '0', '8', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '0', '0', '0', '0', '76', '0', '0', '0',
'0', '0', '0', 'Jasperlode Infestation', 'After your scouting mission at the Jasperlode Mine, I\'ve gotten reports that a stray brood of spiders from Duskwood has made the depths of the mine their home while using the kobolds to feed and increase their population.\n\nKobolds, the Defias, and now spiders? We cannot afford to spread out our men thinner than they already are.\n\nGo back to the mine and clear out the infestation before they spread all over the forest!', 'Go to the Jasperlode Mine northeast of Goldshire and clear out the spider infestation.', 'It\'s relieving to know those spiders will not be a future threat to us. Have a few coins for your trouble.', 'Their numbers are increasing every second you waste. We can\'t afford to wait any longer.', '', '', '',
'', '', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '43', '0', '0', '0', '8',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '72',
'0', '0', '0', '0', '150', '0', '0', '0',
'0', '300', '378', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '25', '0', '0', '0', '1',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
0, 0);
replace into creature_questrelation values ('240','60154','10','10');
replace into creature_involvedrelation values ('240','60154','10','10');

replace into quest_template values
('60155', '0', '2', '33', '39', '0', '39', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', 'South Seas Delicacy', 'Crab legs - they are such a delicious thing. They go well with everything! Undermine Claw Chowder, Goldthorn Tea, and even other crab legs! Maybe you\'re strong enough to catch them and get the crab legs I need?\n\nYou can find them at the Wild Shore which is directly south of Booty Bay. Be careful, though. I heard the shore got invaded by Bloodsail Buccaneers. That would explain why my supplier stopped coming.', 'Bring 10 Southern Sand Crawler Legs to Innkeeper Skindle in Booty Bay.', 'Oh, wonderful legs! Grill \'em, boil \'em, put ‘em in a pot.\n\nYou... want a reward? I think this should be enough.', 'Get a move on. My customers are waiting!', '', '', '',
'', '', '81013', '0', '0', '0', '10', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '81014', '81015', '0', '0', '0', '0',
'1', '1', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '21',
'0', '0', '0', '0', '200', '0', '0', '0',
'0', '4000', '1800', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '14', '0', '0', '0',
'0', '0', '0', '0', '0','0',
0, 0);
replace into creature_questrelation values ('6807','60155','10','10');
replace into creature_involvedrelation values ('6807','60155','10','10');
 
-- Cloth donation quests (HE):

REPLACE INTO `quest_template` VALUES (80370, 3, 0, 1657, 12, 0, 60, 0, 0, 1613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80371, 0, 0, 0, 0, 0, 'A Donation of Wool', NULL, NULL, 'Wonderful! We thank you for your generous donation, $N!', 'We are currently accepting donations for wool cloth. A donation of sixty pieces of wool cloth will net you full recognition by Alah\'thalas for your generous actions. Our stores are such on wool that we would only need sixty pieces from you total; we should be able to acquire enough from others in the realm to support our drive.$B$BIf you have the sixty pieces of wool cloth on you and are ready to donate them, I\'m able to take them from you now.', NULL, NULL, NULL, NULL, NULL, 2592, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 269, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `quest_template` VALUES (80371, 3, 0, 1537, 26, 0, 60, 0, 0, 1613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80370, 80372, 0, 0, 0, 0, 0, 'A Donation of Silk', '', '', 'Wonderful! We thank you for your generous donation, $N!', 'As with most other fabrics, our stocks of silk are at an all-time low. Our stores are such that we\'d only need sixty pieces of silk from you total; we should be able to reach our goal with the support of others.$B$BA benevolent gift such as silk, might I add, would certainly increase your local standing in the community! If you have the sixty pieces of silk cloth on you and are ready to donate them, I\'m able to take them from you now.', '', '', '', '', '', 4306, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 269, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 990, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `quest_template` VALUES (80372, 3, 0, 1537, 40, 0, 60, 0, 0, 1613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80371, 80373, 0, 0, 0, 0, 0, 'A Donation of Mageweave', '', '', 'Wonderful! We thank you for your generous donation, $N!', 'Mageweave is running low, and we could use your help to replenish our stocks!  By counting on the community as a whole, we would only need a donation of 60 pieces of mageweave cloth from you to enable us to reach our goal.  Such generosity would not go unnoticed by the Alah\'thalas, I assure you!$B$BIf you have the sixty pieces of mageweave cloth on you and are ready to donate them, I\'m able to take them from you now.', '', '', '', '', '', 4338, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 269, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 1980, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `quest_template` VALUES (80373, 3, 0, 1537, 50, 0, 60, 0, 0, 1613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80372, 80374, 0, 0, 0, 0, 0, 'A Donation of Runecloth', '', '', 'Fantastic - these will go right to use, I assure you. Thank you again for your assistance! We\'d certainly be lost without you.$b$bWith all the donations you\'ve made, I would certainly process any additional runecloth donations you care to make in the future. Just be sure to check in with me, and I\'ll personally make sure that your good deeds won\'t go unrecognized!', '$n, you\'ve been a tremendous contributor to our cloth drive. As we work hard to replenish our reserves, one form of cloth remains critically low - runecloth. We are in absolutely dire need of it, and we hope that you will be able to help us as you have in the past!$b$bIf you are willing, please bring me what runecloth you can spare. We\'ll initially accept a single donation of sixty, and then we\'ll go from there.', '', '', '', '', '', 14047, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 269, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 3960, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `quest_template` VALUES (80374, 3, 0, 1537, 50, 0, 60, 0, 0, 1613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80373, 0, 0, 0, 0, 0, 0, 'Additional Runecloth', '', '', '$N - without heroes like you working on behalf of the tribe, we\'d surely suffer. Thank you for your continued efforts!', 'Whenever you are ready to hand in the stack of runecloth, I\'ll accept it.', '', '', '', '', '', 14047, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 269, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);

replace into creature_questrelation values ('80459','80370','10','10');
replace into creature_questrelation values ('80459','80371','10','10');
replace into creature_questrelation values ('80459','80372','10','10');
replace into creature_questrelation values ('80459','80373','10','10');
replace into creature_questrelation values ('80459','80374','10','10');

replace into creature_involvedrelation values ('80459','80370','10','10');
replace into creature_involvedrelation values ('80459','80371','10','10');
replace into creature_involvedrelation values ('80459','80372','10','10');
replace into creature_involvedrelation values ('80459','80373','10','10');
replace into creature_involvedrelation values ('80459','80374','10','10');

-- Cloth donation quests (RT):

REPLACE INTO `quest_template` VALUES (80375, 3, 0, 1657, 12, 0, 60, 0, 0, 434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80376, 0, 0, 0, 0, 0, 'A Donation of Wool', NULL, NULL, 'Wonderful! We thank you for your generous donation, $N!', 'We are currently accepting donations for wool cloth. A donation of sixty pieces of wool cloth will net you full recognition by Amani\'alor for your generous actions. Our stores are such on wool that we would only need sixty pieces from you total; we should be able to acquire enough from others in the realm to support our drive.$B$BIf you have the sixty pieces of wool cloth on you and are ready to donate them, I\'m able to take them from you now.', NULL, NULL, NULL, NULL, NULL, 2592, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 893, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `quest_template` VALUES (80376, 3, 0, 1537, 26, 0, 60, 0, 0, 434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80375, 80377, 0, 0, 0, 0, 0, 'A Donation of Silk', '', '', 'Wonderful! We thank you for your generous donation, $N!', 'As with most other fabrics, our stocks of silk are at an all-time low. Our stores are such that we\'d only need sixty pieces of silk from you total; we should be able to reach our goal with the support of others.$B$BA benevolent gift such as silk, might I add, would certainly increase your local standing in the community! If you have the sixty pieces of silk cloth on you and are ready to donate them, I\'m able to take them from you now.', '', '', '', '', '', 4306, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 893, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 990, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `quest_template` VALUES (80377, 3, 0, 1537, 40, 0, 60, 0, 0, 434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80376, 80378, 0, 0, 0, 0, 0, 'A Donation of Mageweave', '', '', 'Wonderful! We thank you for your generous donation, $N!', 'Mageweave is running low, and we could use your help to replenish our stocks!  By counting on the community as a whole, we would only need a donation of 60 pieces of mageweave cloth from you to enable us to reach our goal.  Such generosity would not go unnoticed by the Amani\'Alor, I assure you!$B$BIf you have the sixty pieces of mageweave cloth on you and are ready to donate them, I\'m able to take them from you now.', '', '', '', '', '', 4338, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 893, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 1980, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `quest_template` VALUES (80378, 3, 0, 1537, 50, 0, 60, 0, 0, 434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80377, 80379, 0, 0, 0, 0, 0, 'A Donation of Runecloth', '', '', 'Fantastic - these will go right to use, I assure you. Thank you again for your assistance! We\'d certainly be lost without you.$b$bWith all the donations you\'ve made, I would certainly process any additional runecloth donations you care to make in the future. Just be sure to check in with me, and I\'ll personally make sure that your good deeds won\'t go unrecognized!', '$n, you\'ve been a tremendous contributor to our cloth drive. As we work hard to replenish our reserves, one form of cloth remains critically low - runecloth. We are in absolutely dire need of it, and we hope that you will be able to help us as you have in the past!$b$bIf you are willing, please bring me what runecloth you can spare. We\'ll initially accept a single donation of sixty, and then we\'ll go from there.', '', '', '', '', '', 14047, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 893, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 3960, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `quest_template` VALUES (80379, 3, 0, 1537, 50, 0, 60, 0, 0, 434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80378, 0, 0, 0, 0, 0, 0, 'Additional Runecloth', '', '', '$N - without heroes like you working on behalf of the tribe, we\'d surely suffer. Thank you for your continued efforts!', 'Whenever you are ready to hand in the stack of runecloth, I\'ll accept it.', '', '', '', '', '', 14047, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 893, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);

replace into creature_questrelation values ('80807','80375','10','10');
replace into creature_questrelation values ('80807','80376','10','10');
replace into creature_questrelation values ('80807','80377','10','10');
replace into creature_questrelation values ('80807','80378','10','10');
replace into creature_questrelation values ('80807','80379','10','10');

replace into creature_involvedrelation values ('80807','80375','10','10');
replace into creature_involvedrelation values ('80807','80376','10','10');
replace into creature_involvedrelation values ('80807','80377','10','10');
replace into creature_involvedrelation values ('80807','80378','10','10');
replace into creature_involvedrelation values ('80807','80379','10','10');

update creature_template set npc_flags = 7 where entry in (80807, 80370);