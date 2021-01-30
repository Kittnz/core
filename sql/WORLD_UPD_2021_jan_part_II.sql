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

update gameobject_template set size = 1.1, name = 'Tent (Human)' where entry = 1000001; -- Human tent
update gameobject_template set size = 1.1, displayid = 32215, name = 'Tent (Orc)' where entry = 1000236; -- Orc tent

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

REPLACE INTO `quest_template` VALUES (80374, 3, 0, 1537, 50, 0, 60, 0, 0, 1613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80373, 0, 0, 0, 0, 0, 0, 'Additional Runecloth', '', '', 'Greetings once again, $N! Our need for runecloth is constant, and we can always use additional resources if you are willing to part with them. For an additional stack of twenty runecloth, I will make sure that you are recognized for your continuing efforts on behalf of Alah’thalas.', 'Whenever you are ready to hand in the stack of runecloth, I\'ll accept it.', '', '', '', '', '', 14047, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 269, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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

REPLACE INTO `quest_template` VALUES (80379, 3, 0, 1537, 50, 0, 60, 0, 0, 434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80378, 0, 0, 0, 0, 0, 0, 'Additional Runecloth', '', '', 'Greetings once again, $N! Our need for runecloth is constant, and we can always use additional resources if you are willing to part with them. For an additional stack of twenty runecloth, I will make sure that you are recognized for your continuing efforts on behalf of Amani’alor.', 'Whenever you are ready to hand in the stack of runecloth, I\'ll accept it.', '', '', '', '', '', 14047, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 893, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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

-- Temporary update orphan orc display id:
update creature_template set display_id1 = 14616 where entry = 14444;

UPDATE `item_template` SET `max_durability`='100' WHERE (`entry`='51736') AND (`patch`='0');
UPDATE `quest_template` SET `Objectives`='Obtain 5 Jujus of Kimbul and bring them to Mystic Guay’jin.' WHERE (`entry`='80360') AND (`patch`='0');

delete from creature_questrelation where quest = 80360;
delete from creature_involvedrelation where quest = 80360;
replace into creature_questrelation values ('80801','80360','10','10');
replace into creature_involvedrelation values ('80801','80360','10','10');

-- Odo gossip.

SET @gossip_menu_id = 59150;
SET @magic_number =  80605; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'My gut feelin\' be tellin\' me there\'s something more going on \'round this bar.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

replace into creature_loot_template values (6229, 80740, 35, 6, 1, 1, 0, 0, 10); 

REPLACE INTO `creature_template` VALUES (80977, 0, 18512, 0, 0, 0, 'Riding Sea Turtle', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

UPDATE `item_template` SET `required_reputation_faction`='269' WHERE (`entry`='80502') AND (`patch`='0');
UPDATE `item_template` SET `required_reputation_faction`='269' WHERE (`entry`='80501') AND (`patch`='0');
UPDATE `item_template` SET `required_reputation_rank`='4' WHERE (`entry`='80503') AND (`patch`='0');
UPDATE `item_template` SET `required_reputation_rank`='4' WHERE (`entry`='80502') AND (`patch`='0');
UPDATE `item_template` SET `required_reputation_rank`='4' WHERE (`entry`='80502') AND (`patch`='0');

REPLACE INTO `npc_trainer` VALUES (4212, 2154, 500, 165, 50, 10, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 2155, 10, 0, 0, 5, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 2177, 100, 165, 55, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 2178, 100, 165, 60, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 2179, 1000, 165, 110, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 2180, 1400, 165, 120, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 2181, 650, 165, 100, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 2338, 50, 165, 15, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 2883, 100, 165, 40, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 2884, 650, 165, 100, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 2886, 550, 165, 85, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 3781, 2000, 165, 150, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 3782, 75, 165, 25, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 3784, 150, 165, 55, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 3786, 500, 165, 75, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 3787, 2000, 165, 150, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 3788, 550, 165, 85, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 3789, 500, 165, 80, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 3790, 1800, 165, 145, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 3792, 1500, 165, 125, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 3793, 1200, 165, 130, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 3794, 1500, 165, 135, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 3795, 2500, 165, 160, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 3797, 2800, 165, 180, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 3812, 5000, 165, 125, 20, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 3819, 650, 165, 100, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 3820, 1800, 165, 150, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 3821, 50, 165, 35, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 6662, 2800, 165, 190, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 7146, 1000, 165, 115, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 7148, 2500, 165, 160, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 7152, 2500, 165, 175, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 7157, 2800, 165, 190, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 9061, 100, 165, 30, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 9063, 100, 165, 30, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 9066, 450, 165, 70, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 9069, 600, 165, 95, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 9075, 1400, 165, 120, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 9150, 1500, 165, 125, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 9209, 2000, 165, 150, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 9210, 2000, 165, 150, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 9211, 2500, 165, 175, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 9212, 2800, 165, 180, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 9213, 2800, 165, 180, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 9214, 2800, 165, 195, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 10485, 2800, 165, 180, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 10500, 3500, 165, 205, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 10508, 3500, 165, 205, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 10513, 4000, 165, 210, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 10519, 4000, 165, 210, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 10655, 3500, 165, 200, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 14931, 4000, 165, 225, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 14933, 4000, 165, 225, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 20651, 500, 165, 100, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 20652, 1800, 165, 150, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (4212, 20653, 2800, 165, 180, 0, 0, 5875);


-- misc
-- smudge thunderwood should only sell recipe: thistle tea to rogues who have completed quests 2359 or 2478
UPDATE `npc_vendor` SET `condition_id` = 482 WHERE  `entry` = 6779 AND `item` = 18160;
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (479, 8, 2359, 0, 0, 0, 0);
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (480, 8, 2478, 0, 0, 0, 0);
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (481, -2, 479, 480, 0, 0, 0);
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (482, -1, 100, 481, 0, 0, 0);


-- thousand needles
-- mageroyal - montarr
UPDATE `npc_vendor` SET `maxcount` = 2 WHERE `entry` = 4878 AND `item` = 785;

-- scroll of stamina 2 - montarr
UPDATE `npc_vendor` SET `maxcount` = 2 WHERE `entry` = 4878 AND `item` = 1711;

-- scroll of int 2 - montarr
UPDATE `npc_vendor` SET `maxcount` = 2 WHERE `entry` = 4878 AND `item` = 2290;

-- missing items - montarr
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(4878, 1478, 2, 7200),
(4878, 3355, 1, 7200),
(4878, 954, 2, 7200),
(4878, 2449, 3, 7200),
(4878, 2453, 2, 7200);

-- fine longbow - starn
UPDATE `npc_vendor` SET `maxcount` = 2 WHERE `entry` = 9551 AND `item` = 11304;

-- balanced throwing dagger - jawn highmesa
DELETE FROM `npc_vendor` WHERE `entry` = 4876 AND `item` = 2946;

-- weighted throwing axe - jawn highmesa
DELETE FROM `npc_vendor` WHERE `entry` = 4876 AND `item` = 3131;

-- missing items - jinky twizzlefixxit
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(6730, 4389, 1, 10800),
(6730, 4382, 1, 10800),
(6730, 4371, 2, 10800),
(6730, 4361, 2, 10800);


-- tanaris
-- balanced throwing dagger - jabbey 
DELETE FROM `npc_vendor` WHERE `entry` = 8139 AND `item` = 2946;

-- weighted throwing axe - jabbey 
DELETE FROM `npc_vendor` WHERE `entry` = 8139 AND `item` = 3131;


-- ungoro
-- balanced throwing dagger - nergal
DELETE FROM `npc_vendor` WHERE `entry` = 12959 AND `item` = 2946;

-- weighted throwing axe - nergal
DELETE FROM `npc_vendor` WHERE `entry` = 12959 AND `item` = 3131;


-- feralas
-- pattern: azure silk cloak - brienna starglow
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 43200 WHERE `entry` = 6576 AND `item` = 7089;

-- missing items - zorbin fandazzle
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(14637, 4389, 1, 10800),
(14637, 4382, 1, 10800),
(14637, 4404, 3, 10800),
(14637, 4371, 2, 10800),
(14637, 4363, 2, 10800);

-- correct items - harklane
UPDATE `npc_vendor` SET `maxcount` = 0, `incrtime` = 0 WHERE `entry` = 7943 AND `item` IN (159, 1179, 1205, 1645, 1708, 21552);

-- strong fishing pole - savanne
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 7200 WHERE `entry` = 7945 AND `item` = 6365;

-- correct items - mardrack greenwell
UPDATE `npc_vendor` SET `maxcount` = 0, `incrtime` = 0 WHERE `entry` = 7941 AND `item` IN (21030, 21031, 21033);
DELETE FROM `npc_vendor` WHERE `entry` = 7941 AND `item` IN (117, 2287, 3770, 3771, 4599, 8952, 16171);

-- imbued vial - vivianna
DELETE FROM `npc_vendor` WHERE `entry` = 7947 AND `item` = 18256;

-- rune thread - vivianna
DELETE FROM `npc_vendor` WHERE `entry` = 7947 AND `item` = 14341;

-- lesser healing potion - logannas
DELETE FROM `npc_vendor` WHERE `entry` = 8157 AND `item` = 858;

-- lesser mana potion - logannas
DELETE FROM `npc_vendor` WHERE `entry` = 8157 AND `item` = 3385;

-- small throwing knofe and crude throwing axe - faralorn
DELETE FROM `npc_vendor` WHERE `entry` = 7942 AND `item` IN (2947, 3111);

-- pattern: green whelp bracers - patt mcgrubben
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 7200 WHERE `entry` = 7852 AND `item` = 7451;

-- pattern: turtle scale gloves - patt mcgrubben
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 7200 WHERE `entry` = 7852 AND `item` = 8385;

-- pattern: living shoulders - patt mcgrubben
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 7200 WHERE `entry` = 7852 AND `item` = 15734;

-- imbued vial - sheendra tallgrass
DELETE FROM `npc_vendor` WHERE `entry` = 8145 AND `item` = 18256;

-- rune thread - sheendra tallgrass
DELETE FROM `npc_vendor` WHERE `entry` = 8145 AND `item` = 14341;

-- missing items calandrath
REPLACE INTO `npc_vendor` (`entry`, `item`) VALUES
(15174, 15326),
(15174, 15327),
(15174, 3108),
(15174, 3137),
(15174, 3107),
(15174, 3135);

-- blacksmith hammer - mishta
DELETE FROM `npc_vendor` WHERE `entry` = 15179 AND `item` = 5956;

-- imbued vial - mishta
DELETE FROM `npc_vendor` WHERE `entry` = 15179 AND `item` = 18256;

-- rune thread - mishta
DELETE FROM `npc_vendor` WHERE `entry` = 15179 AND `item` = 14341;

-- Gubber Blump should be selling fishing poles and baits permanently https://classic.wowhead.com/npc=10216/gubber-blump#sells
UPDATE `npc_vendor` SET `maxcount`='0', `incrtime`='0' WHERE (`entry`='10216') AND (`item`='6256');
UPDATE `npc_vendor` SET `maxcount`='0', `incrtime`='0' WHERE (`entry`='10216') AND (`item`='6529');

update item_template set flags = 2048 where entry in (51895, 80868, 80216, 80114);

update creature_loot_template set chanceorquestchance = 1.5 where item = 913;
UPDATE `item_template` SET `display_id`='25221' WHERE `entry`='14615';

REPLACE INTO `gameobject_template` VALUES (1000465, 0, 5, 381, 'Alah\'thals Rested Bonus', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_custom_rested');

update creature_template set equipment_id = 0 where entry in (80605, 80604, 80603, 80602, 80601);
update creature set equipment_id = 0 where id in (80605, 80604, 80603, 80602, 80601);

update quest_template set requiredraces = 434 where entry in (80331, 80332, 80333, 80334);

-- sly's AM change

update spell_template SET attributesEx3 = 131072 WHERE entry = 5143 OR entry = 5144 OR entry = 5145 OR entry = 8416 OR entry = 8417 OR entry = 10211 OR entry = 10212 OR entry = 25345;

delete from creature_loot_template where item = 80838;

UPDATE `item_template` SET `required_reputation_rank`='4', allowable_race = 256 WHERE `entry`='80460';
UPDATE `item_template` SET `required_reputation_rank`='4', allowable_race = 256 WHERE `entry`='80461';
UPDATE `item_template` SET `required_reputation_rank`='4', allowable_race = 256 WHERE `entry`='80462';

REPLACE INTO `item_template` VALUES (80648, 0, 12, 0, 'Illusion: Gnoll', 'You wimpy human now, but maybe Gnoll in past life!', 1645, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31726, 0, 0, 0, 10, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_morph_gnoll');

update item_template set required_level = 28 where entry = 80722;

replace into item_template values
 ('80649', '0', '2', '15', 'Vile Sting', '', '23791', '3', '0', '1', '10009', '10009', '21', '-1', '-1', '37',
 '32', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1600', '0',
 '0', '29', '51', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '3396', '2', '0', '5', '420', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '2', '1', '0', '0', '65', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '1', NULL);

replace into creature_loot_template values (5937, 80649, 35, 6, 1, 1, 0, 0, 10); 
update item_template set spellid_1 = 0 where entry = 80842;

UPDATE `item_template` SET `spellcooldown_1`='600000' WHERE (`entry`='81059') AND (`patch`='0');

UPDATE `item_template` SET `allowable_race` = 434 WHERE `allowable_race` = 690;
UPDATE `item_template` SET `allowable_race` = 434 WHERE `allowable_race` = 146;

UPDATE `item_template` SET `allowable_race` = 589 WHERE `allowable_race` = 333;

UPDATE `item_template` SET `allowable_race` = -1 WHERE `allowable_race` = 511;
UPDATE `item_template` SET `allowable_race` = -1 WHERE `allowable_race` = 2047;
UPDATE `item_template` SET `allowable_race` = -1 WHERE `allowable_race` = 223;
UPDATE `item_template` SET `allowable_race` = -1 WHERE `allowable_race` = 0;


-- Correct spells used by Theramore Preserver.
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (33860, 'Barrens - Theramore Preserver', 6074, 100, 15, 0, 20, 0, 0, 0, 15, 21, 0, 2052, 100, 15, 0, 80, 0, 0, 0, 12, 18, 0, 528, 100, 14, 0, 0, 0, 5, 5, 5, 10, 0, 9734, 100, 1, 0, 0, 8, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);



-- Flask of Petrification  should not stack with other flasks.
UPDATE `spell_elixir` SET `mask`=3 WHERE `entry`=17624;

-- Patch 1.12
UPDATE `spell_template` SET `effectmechanic1`=0.80 WHERE `entry` IN (1454, 1455, 1456, 11687, 11688, 11689);

update item_template set name = 'Daisy Hot Pants', description = '' where entry = 51051;

update quest_template set requiredraces = 256 where entry between 80100 and 80121;

update creature_template set faction = 875 where entry = 80940;

REPLACE INTO `item_template` VALUES 
(80650, 0, 0, 0, 'High Elf Hair Dye: Sunflower Blond', '', 33449, 2, 0, 1, 50000, 0, 0, -1, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46029, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_hairdye'),
(80651, 0, 0, 0, 'High Elf Hair Dye: Ash Blond', '', 33449, 2, 0, 1, 50000, 0, 0, -1, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46029, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_hairdye'),
(80652, 0, 0, 0, 'High Elf Hair Dye: Ruby Rush', '', 33449, 2, 0, 1, 50000, 0, 0, -1, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46029, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_hairdye'),
(80653, 0, 0, 0, 'High Elf Hair Dye: Cinnamon Brown', '', 33449, 2, 0, 1, 50000, 0, 0, -1, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46029, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_hairdye'),
(80654, 0, 0, 0, 'High Elf Hair Dye: Wheat Brown', '', 33449, 2, 0, 1, 50000, 0, 0, -1, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46029, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_hairdye'),
(80655, 0, 0, 0, 'High Elf Hair Dye: Sand Blond', '', 33449, 2, 0, 1, 50000, 0, 0, -1, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46029, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_hairdye'),
(80656, 0, 0, 0, 'High Elf Hair Dye: Coral Red', '', 33449, 2, 0, 1, 50000, 0, 0, -1, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46029, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_hairdye'),
(80657, 0, 0, 0, 'High Elf Hair Dye: Honey Blond', '', 33449, 2, 0, 1, 50000, 0, 0, -1, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46029, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_hairdye'),
(80658, 0, 0, 0, 'High Elf Hair Dye: Starry Night', '', 33449, 2, 0, 1, 50000, 0, 0, -1, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46029, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_hairdye'),
(80659, 0, 0, 0, 'High Elf Hair Dye: Crab Legs', '', 33449, 2, 0, 1, 50000, 0, 0, -1, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46029, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_hairdye');

replace into npc_vendor (entry, item) values 
(50053, 80650),
(50053, 80651),
(50053, 80652),
(50053, 80654),
(50053, 80655),
(50053, 80656),
(50053, 80657),
(50053, 80658),
(50053, 80659);


-- https://www.youtube.com/watch?v=dn3sVUahDAQ
DELETE FROM `event_scripts` WHERE `id`=175944;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (175944, 5, 10, 10882, 30000, 1, 30, 0, 0, 0, 0, 8, 0, 6, 1, -5002.889, -2103.455, 83.81, 1.365, 0, 'Sacred Fire of Life - Summon Arikara');
UPDATE `gameobject_template` SET `data2`=175944, `script_name`='' WHERE `entry`=175944;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=10882;

update creature_template set faction = 1194 where entry in (14527, 14528);
update item_template set item_level = 22 , disenchant_id = 2 where entry = 80802;

-- Fix Lexlort (npc 9080) to provide shackles for players
DELETE FROM `gossip_scripts` WHERE `id`=50406;
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (50406, 0, 15, 22941, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Grark Lorkrub\'s Thorium Shackles');

update item_template set item_level = 23, required_level = 18 where entry = 80712;

update quest_template set rewrepfaction1 = 893, rewrepvalue1 = 150 where entry in (7830, 7842, 7844, 2935, 7850, 7816, 7829, 7862, 7845, 7840, 7841, 7846, 2782, 2742, 7849, 7815, 7828, 7843, 7839, 7861);

-- Silvermoon Remnants quests:
update quest_template set rewrepfaction1 = 269, rewrepvalue1 = 150 where entry in (5247, 5246, 1135);
-- Silvermoon Remnants speak-to quests:
update quest_template set rewrepfaction1 = 269, rewrepvalue1 = 75 where entry in (1132, 1133);

UPDATE `item_template` SET `inventory_type`='15' WHERE (`entry`='80503') AND (`patch`='0');

-- HE Male / Female bonding radius: 
UPDATE `creature_model_info` SET `bounding_radius`='0.389', `combat_reach`='1.5' WHERE (`modelid`='15476') AND (`build`='5875');
UPDATE `creature_model_info` SET `bounding_radius`='0.306', `combat_reach`='1.5' WHERE (`modelid`='15475') AND (`build`='5875');

-- Hot Pants (original).

(51051, 0, 4, 1, 'Blue Summer Pants', '', 40151, 1, 0, 1, 5000, 0, 7, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),

-- Velite's fix:


replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('19740', '4', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('19834', '12', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('19835', '22', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('19836', '32', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('19837', '42', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('19838', '52', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('25291', '60', '1', '0', '5086', '5875');
UPDATE `spell_threat` SET `Threat` = '14', `multiplier` = '1' WHERE `spell_threat`.`entry` = 19742; 
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('19850', '24', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('19852', '34', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('19853', '44', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('19854', '54', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('25290', '60', '1', '0', '5086', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('20911', '30', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('20912', '40', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('20913', '50', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('20914', '60', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('19977', '40', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('19978', '50', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('19979', '60', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('1022', '10', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('5599', '24', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('10278', '38', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('6940', '46', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('20729', '54', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('1038', '26', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('1044', '18', '1', '0', '0', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('25782', '52', '1', '0', '5086', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('25916', '60', '1', '0', '5086', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('25899', '60', '1', '0', '5086', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('25894', '0', '0', '0', '5086', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('25918', '0', '0', '0', '5086', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('25890', '60', '1', '0', '5086', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('25895', '60', '1', '0', '5086', '5875');
replace into `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES ('25898', '60', '1', '0', '5086', '5875');


-- Add start script to quest The Rethban Gauntlet
DELETE FROM `quest_start_scripts` WHERE `id`=1699;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1699, 0, 15, 8554, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet: Player - Cast Spell Drinking Barleybrew Scalder');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2261, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet: Yorus - Say Text');

UPDATE `quest_template` SET `StartScript`='1699' WHERE  `entry`=1699;


-- Quest "Supplies for the Crossroads" no longer require quest "Disrupt the Attacks" to pick up.
-- Fix https://github.com/the-hyjal-project/bugtracker/issues/197
UPDATE `quest_template` SET `PrevQuestId`= 0 WHERE `entry` = 5041;


-- Don't remove Immune to NPC flag from Calvin Montague when quest A Rogue's Deal starts.
-- https://github.com/the-hyjal-project/bugtracker/issues/210
DELETE FROM `quest_start_scripts` WHERE `id`=590;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (590, 0, 44, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A Rogue\'s Deal 2: Calvin Montague - Set Phase to 1');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (590, 0, 52, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A Rogue\'s Deal 2: Calvin Montague - Make Unkillable');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (590, 0, 61, 590, 120, 0, 0, 0, 0, 0, 0, 0, 591, 249, 590, 0, 0, 0, 0, 0, 'A Rogue\'s Deal 2 - Start Scripted Map Event');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (590, 0, 22, 168, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A Rogue\'s Deal 2: Calvin Montague - Set Faction to Enemy');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (590, 0, 4, 147, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A Rogue\'s Deal 2: Calvin Montague - Remove Quest Giver Flag');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (590, 0, 4, 46, 256, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A Rogue\'s Deal 2: Calvin Montague - Remove Immune To Player Flag');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (590, 1, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A Rogue\'s Deal 2: Calvin Montague - Start Attack');

-- Remove Hillsbrad Human Skull from pickpocketing loot table.
DELETE FROM `pickpocketing_loot_template` WHERE item = 3692;

-- Prevent following creatures from casting lightning shield while another spell is being casted Fix #179
-- https://github.com/the-hyjal-project/bugtracker/issues/179
-- 4642 Magram Stormer 
DELETE FROM `creature_ai_scripts` WHERE `id` = 464203;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(464203, 0, 15, 8788, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Magram Stormer - Cast Spell Lightning Shield');
-- 6138 Arkorran Summoner
DELETE FROM `creature_ai_scripts` WHERE `id` = 613803;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(613803, 0, 15, 12550, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arkkoran Oracle - Cast Spell Lightning Shield');
-- 5826 Geolord Mottle
DELETE FROM `creature_ai_scripts` WHERE `id` = 582602;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(582602, 0, 15, 324, 32, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Geolord Mottle - Cast Spell Lightning Shield');
-- 5236 Gordunni Shaman
DELETE FROM `creature_ai_scripts` WHERE `id` = 523602;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(523602, 0, 15, 8134, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gordunni Shaman - Cast Spell Lightning Shield');
-- 752 Marsh Oracle
DELETE FROM `creature_ai_scripts` WHERE `id` = 75203;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(75203, 0, 15, 12550, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marsh Oracle - Cast Spell Lightning Shield');
-- 1544 Vile fin minor oracle
DELETE FROM `creature_ai_scripts` WHERE `id` = 154401;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(154401, 0, 15, 12550, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Minor Oracle - Cast Spell Lightning Shield');
-- Prevent following creatures from casting Frost Armor while another spell is being casted
-- 507 fenros
DELETE FROM `creature_ai_scripts` WHERE `id` = 50704;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(50704, 0, 15, 12544, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fenros - Cast Spell Frost Armor');
-- 1507 Scarlet Initiate
DELETE FROM `creature_ai_scripts` WHERE `id` = 150701;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(150701, 0, 15, 12544, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Initiate - Cast Spell Frost Armor');
-- 1729 Defias Evoker
DELETE FROM `creature_ai_scripts` WHERE `id` = 172904;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(172904, 0, 15, 12544, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Evoker - Cast Spell Frost Armor');
-- 1732 Defias Squalshaper
DELETE FROM `creature_ai_scripts` WHERE `id` = 173204;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(173204, 0, 15, 12544, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Squallshaper - Cast Spell Frost Armor');


-- https://github.com/the-hyjal-project/bugtracker/issues/186
-- Jadefire Felsworn shouldn't flee
DELETE FROM `creature_ai_scripts` WHERE `id` = 710901;
DELETE FROM `creature_ai_events` WHERE `creature_id` = 7109;
UPDATE `creature_template` SET `ai_name`='' WHERE  `entry` = 7109;
-- Jadefire Hellcaller shouldn't flee
DELETE FROM `creature_ai_scripts` WHERE `id` = 711101;
DELETE FROM `creature_ai_events` WHERE `creature_id` = 7111;
UPDATE `creature_template` SET `ai_name`='' WHERE  `entry`=7111 AND `patch`=0;

-- Item "Samophlange Manual Page" requires now the specific quest to drop.
-- Fix https://github.com/the-hyjal-project/bugtracker/issues/213
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -8 WHERE `item` = 11148;


-- Add missing spawns for "The Shade of Elura".
-- Fix https://github.com/the-hyjal-project/bugtracker/issues/234
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `state`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES (48873, 86492, 1, 6426.58, 790.671, -18.493, 5.77704, 0, 0, -0.25038, 0.968148, 1, 180, 180);
UPDATE `gameobject` SET `orientation`=5.34071, `rotation2`=-0.45399, `rotation3`=0.891007 WHERE `guid`=48793;
UPDATE `gameobject` SET `orientation`=0.698131, `rotation2`=0.34202, `rotation3`=0.939693 WHERE `guid`=48796;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `state`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES (48874, 86492, 1, 6316.11, 754.744, -12.9295, 0.820303, 0, 0, 0.398748, 0.91706, 1, 180, 180);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `state`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES (48875, 86492, 1, 6375.59, 871.36, -36.6744, 4.86947, 0, 0, -0.649447, 0.760406, 1, 180, 180);
UPDATE `gameobject` SET `orientation`=-2.30383, `rotation2`=-0.913545, `rotation3`=0.406738 WHERE `guid`=48639;


-- NPC "Whip Lashers" are now immune to nature spells.
-- Fix https://github.com/the-hyjal-project/bugtracker/issues/187
UPDATE `creature_template` SET `school_immune_mask` = 8 WHERE `entry` = 13022;


-- Quest "Forsaken Diseases" is no longer available without completing the prerequisite quest "Kayneth Stillwind".
-- Fix https://github.com/the-hyjal-project/bugtracker/issues/156
UPDATE `quest_template` SET `PrevQuestId`= 4581 WHERE `entry` = 1011;

-- Quest "Deeprun Rat Roundup" has fixed.
-- Fix https://github.com/the-hyjal-project/bugtracker/issues/124
UPDATE `creature_template` SET `faction`= 35 WHERE `entry` = 13017;

-- Reduce the total amount of spawning mining nodes in Westfall mines.
-- Fix https://github.com/the-hyjal-project/bugtracker/issues/19
UPDATE `pool_template` SET `max_limit`= 9 WHERE `entry` = 1112;
UPDATE `pool_template` SET `max_limit`= 8 WHERE `entry` = 1111;


-- Shade of Jin'do should be immune to AoE
UPDATE `creature_template` SET `health_min`= 1526, `health_max`= 1526, `flags_extra`=`flags_extra` | 16384 WHERE `entry` = 14986;

-- Inferno shouldn't drop money
UPDATE `creature_template` SET `gold_min` = 0, `gold_max` = 0 WHERE `entry` = 89;

-- Fix Mage quest Report to Jennea #287
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_max`) VALUES
(328, 1919, 10);

-- Fix The drop rate of Crawler Leg is too high #298
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= -32 WHERE `entry` = 2165 AND `item` = 5414;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= -18 WHERE `entry` = 6788 AND `item` = 5414;

-- Fix The drop rate of Ancient Moonstone Seal is too high #297
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= -34 WHERE `entry` = 2212 AND `item` = 5338;

-- Fix The drop rate of Grell Earring is too high #296
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= -42 WHERE `entry` = 2190 AND `item` = 5336;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= -41 WHERE `entry` = 2189 AND `item` = 5336;

-- Fix The drop rate of Bloodfeather Belt is too high #295
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= -42 WHERE `entry` = 2015 AND `item` = 5204;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= -40 WHERE `entry` = 2017 AND `item` = 5204;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= -40 WHERE `entry` = 2018 AND `item` = 5204;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= -36 WHERE `entry` = 2019 AND `item` = 5204;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= -36 WHERE `entry` = 2020 AND `item` = 5204;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= -34 WHERE `entry` = 2021 AND `item` = 5204;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= -28 WHERE `entry` = 14431 AND `item` = 5204;

-- Fix Stone drop rates from mining veins are too low #289
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`= 45 WHERE `entry` = 1502 AND `item` = 2835;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`= 67 WHERE `entry` = 1735 AND `item` = 2835;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`= 67 WHERE `entry` = 2626 AND `item` = 2835;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`= 40 WHERE `entry` = 1503 AND `item` = 2836;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`= 65 WHERE `entry` = 1736 AND `item` = 2836;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`= 66 WHERE `entry` = 2627 AND `item` = 2836;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`= 41 WHERE `entry` = 1503 AND `item` = 2836;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`= 40 WHERE `entry` = 1505 AND `item` = 2838;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`= 40 WHERE `entry` = 1742 AND `item` = 7912;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`= 40 WHERE `entry` = 13961 AND `item` = 7912;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`= 40 WHERE `entry` = 9597 AND `item` = 12365;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`= 40 WHERE `entry` = 13960 AND `item` = 12365;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`= 40 WHERE `entry` = 12883 AND `item` = 12365;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`= 39 WHERE `entry` = 17241 AND `item` = 12365;

-- Fix Defias Cutpurse spawned on a tree.
UPDATE `creature` SET `position_x` = -9472.01, `position_z` = 52.971 WHERE `guid` = 80377;

-- Fixes for Gordunni Dirt Mound.
UPDATE `gameobject_template` SET `size`=0.75, `data7`=0, `data9`=0 WHERE  `entry`=144064; 
UPDATE `spell_script_target` SET `conditionId`=122 WHERE `entry`=11757;


-- Corrections to page texts.
DELETE FROM `page_text` WHERE `entry` IN (712, 713, 714);
INSERT INTO `page_text` (`entry`, `text`, `next_page`) VALUES (791, 'I will describe the surrounding lands as the scouts of Kargath have surveyed:\r\n\r\n-Red, rocky hills and dry flats that offer little support for life.\r\n-A blazing sun and severe winds.  \r\n-No lakes or streams.  Not even scattered pools.  To find water denizens must dig deep, muddy wells, or suck scant moisture from the rare cactus or spiny weed.\r\n\r\nIn short: hot, hard living.', 792);
INSERT INTO `page_text` (`entry`, `text`, `next_page`) VALUES (792, 'The Badlands are filled with enemies.  Ogres roam the blistering sands, ambushing the unwary.  Dark Iron dwarves inhabit a barracks east of Kargath and battle their lighter-skinned cousins in Loch Modan to the north.  Brutal, primitive beasts called Troggs haunt any scrap of shade they find and defend it savagely.\r\n\r\nAnd in eastern Badlands, in the Lethlor Ravine, there are dragons.  We don\'t know how many and we don\'t know how big, since scouts who get too close never return.', 793);
INSERT INTO `page_text` (`entry`, `text`, `next_page`) VALUES (793, 'It need not be said that we--those garrisoned at Kargath--are quite happy with our assignment.  We stay tough here, because if we get soft then we die.\r\n\r\nAnd I wouldn\'t have it any other way.\r\n\r\nNeeka Bloodscar\r\nHead Scout, Kargath', 0);
UPDATE `page_text` SET `text`='A Report on the State of the Frostmane Trolls in the General Area of Coldridge Valley\r\n\r\nPrepared by Grelin Whitebeard, Senate Special Envoy\r\n\r\nFrom the time that I have spent observing the movement of the Frostmane trolls in the Coldridge Valley area, I have determined that they pose no large threat to dwarven settlements in the area. Moreover, they are a threat that can be eliminated with little additional support from the army. Through the assistance of Mountaineers already stationed in' WHERE `entry`=90;
UPDATE `page_text` SET `text`='DAY ONE\r\n\r\nThe apprentice and I have arrived in Coldridge Valley today. The trip through the cave was mostly uneventful. We made camp a good distance away from the cave we\'re told the trolls have gathered in.\r\n\r\nDAY TWO\r\n\r\nBloody wolf howling almost kept me up all night.\r\n\r\nI will have new wolfhide clothing in a few days.\r\n\r\nThe lad got tangled up with a trogg today, put up a fight, and' WHERE `entry`=74;
UPDATE `page_text` SET `text`='Grelin,\r\n\r\nMy time is short and many matters press on my time, and I hope that your investigation of the trolls will not be one of them. Therefore I will allow you to use my authority in dealing with the trolls in whatever fashion you deem necessary, more so if you are able to find an expedient solution.\r\n\r\n\r\nMagni Bronzebeard' WHERE `entry`=80;
UPDATE `page_text` SET `text`='managed to get the better of the ugly brute, but he\'s now nursing a nasty cut on his arm. Looks like I\'ll have to do the chores for a while.\r\n\r\nDAY THREE\r\n\r\nCold. Snowed a bit around noon.\r\n\r\nDAY FOUR\r\n\r\nThe lad was back and in good spirits today, so we took our first look at the trolls. Frostmane, I\'d say, judging by the markings on their skin and the various trinkets they wore on their bodies.' WHERE `entry`=81;
UPDATE `page_text` SET `text`='DAY FIVE\r\n\r\nHad the lad watch over the camp and I snuck over to the cave and took a look around. The trolls\' numbers are somewhat troublesome. The Mountaineers might have to be summoned in force if the cave is to be cleared of the troll infestation.\r\n\r\nI realize I have not mentioned the troggs of late. They appear in the area in greater numbers, but they are so primitive that they do not pose much of a threat. Time may say if this is true or not.' WHERE `entry`=82;
UPDATE `page_text` SET `text`=' Led by Grom Hellscream, all the clan chiefs except Durotan drank and thereby sealed their fates as slaves to the Burning Legion. Empowered by Mannoroth\'s rage, the chieftains unwittingly extended this subjugation to their unsuspecting brethren. ' WHERE `entry`=1954;
UPDATE `page_text` SET `text`='And not a drop of ale for almost a week now.\r\n\r\nDAY SIX\r\n\r\nCold again. Snows. Trolls. No ale.\r\n\r\nDAY SEVEN\r\n\r\nSnow below so white,\r\nSky above so blue,\r\nWolves will howl the night,\r\nNot a drop of brew.\r\n\r\nDAY EIGHT\r\n\r\nThe trolls are perhaps not as large a problem as we initially thought. They have some' WHERE `entry`=83;
UPDATE `page_text` SET `text`='While his confusion and misery deepened, Sargeras was forced to contend with another group intent on disrupting the Titans\' order: the Nathrezim. This dark race of vampiric demons (also known as dreadlords) conquered a number of populated worlds by possessing their inhabitants and turning them to the shadow. ' WHERE `entry`=1776;
UPDATE `page_text` SET `text`='Coldridge Valley and mercenaries (paid with funds set aside by the Senate prior to my dispatchment), I am confident that the problem will be solved in short order. \r\n\r\nThis action has been authorized with the sanction given to me by King Bronzebeard.' WHERE `entry`=87;
UPDATE `page_text` SET `text`='A Report on the State of the Frostmane Trolls in the General Area of Dun Morogh\r\n\r\nThe trolls situated in Dun Morogh are largely centralized in Frostmane Hold, a mountain cave on the western border. They have sufficient numbers to cause some concern, however, they seem more than content to stay in their cave. This is, no doubt, because they do not wish to incur the wrath of the dwarves again, and risk total extermination. Their actions can be considered territorial, if anything, and it is' WHERE `entry`=88;
UPDATE `page_text` SET `text`='my belief that they pose no real threat to us, so long as we do not encroach upon their territory. This may be a situation unappealing to the dwarven populace, but given the dispersal of military resources, it may be prudent to relegate the extermination of the trolls to a lower level of importance, and continue to focus on the threat posed by the troggs and the Dark Irons.\r\n\r\nEnclosed, you will also find a copy of my brother Grelin\'s report on Anvilmar.\r\n\r\nSigned,\r\nSenir Whitebeard' WHERE `entry`=89;
UPDATE `page_text` SET `text`='Coldridge Valley and mercenaries (paid with funds set aside by the Senate prior to my dispatchment), I am confident that the problem will be solved in short order. \r\n\r\nThis action has been authorized with the sanction given to me by King Bronzebeard.' WHERE `entry`=91;
UPDATE `page_text` SET `text`='<HTML>\r\n<BODY>\r\n<IMG src=\"Interface\\Pictures\\14679_Tirion_256\"/>\r\n</BODY>\r\n</HTML>\r\n' WHERE `entry`=2351;
UPDATE `page_text` SET `text`='Lord Bethor Iceshard,\r\n\r\nAs per your instructions, I send to you the agent you requested.  It is the bearer of this note.\r\n\r\nThis person has shown to be dependable and able to follow orders, is proven against the forces of the Scourge, and is my choice for your mission.\r\n\r\nMay She reign supreme,\r\n-Magistrate Sevren\r\n\r\n' WHERE `entry`=244;
UPDATE `page_text` SET `text`='General Turalyon\r\n\r\nFormer Lieutenant to Lord Anduin Lothar. Knight of the Silver Hand. High General of the Alliance Expedition that marched into the orc homeworld of Draenor. Presumed deceased.\r\n\r\nEsarus thar no\'Darador\' - By Blood and Honor We Serve. \r\nYou were the right hand of justice and virtue, old friend. Your name will be honored in our halls always.\r\n\r\n- Lord Uther the Lightbringer - Knight of the Silver Hand' WHERE `entry`=290;
UPDATE `page_text` SET `text`='I started this journal so I could keep notes on my quest to help Ashenvale. There is a mystery to some of the events that occurred not too long ago, and hopefully I will be able to unravel some of it in order to help my people.\r\n\r\nLet me start by putting down facts so they don\'t slip my mind at a later date.\r\n\r\nI\'ve recently found truth to the rumors of the wizard Dartol\'s efforts.' WHERE `entry`=403;
UPDATE `page_text` SET `text`='Where once I thought it preposterous that a human would come to our lands and learn our ways, this wizard, this evil man, came here and not only survived, but also gained some of our knowledge. I\'m still uncertain how...\r\n\r\nI never discovered his goals during my investigation, but his plan seemed simple: using druidic magic, he wanted to befriend and then control the furbolg. If it was in an attempt to harm my kin, or for some other malicious purpose, I hope to find out before my path ends.' WHERE `entry`=404;
UPDATE `page_text` SET `text`='Regardless, he was apparently more successful than naught in actualizing his plans. Did he want to attempt his machinations on the furbolg before trying on my people? Did the furbolg have something he coveted? Who knows?\r\n\r\nUsing an item he created (a rod or staff of some kind), he attempted to infiltrate the furbolg tribes of Ashenvale. At some point, and this is where many of the details are still unclear, he was discovered by the furbolg while trying to manipulate them into acting against' WHERE `entry`=405;
UPDATE `page_text` SET `text`='Peeling the Onion\r\nThe How-to Guide On Dismantling the Stormpike \r\n-By Drek\'Thar\r\n\r\nWithin these pages you will find a wealth of knowledge on battle tactics and politics. The learned soldier is the soldier that leans on the shoulder of experience. Let this book serve as a guide in your battle for Alterac Valley.\r\n' WHERE `entry`=2771;
UPDATE `page_text` SET `text`='one another. As I\'m sure the elves would be, the furbolg were angered, but they reacted much more strongly and killed Dartol.\r\n\r\nThe furbolg, at least at this time, weren\'t the same corrupted creatures they\'ve become. They were still rational and intelligent--their relationship with our people amicable.\r\n\r\nI\'m hoping that if I can recreate the rod with the help of a dryad named Shael\'dryn, I can use its power to help our people... and the furbolg.' WHERE `entry`=406;
UPDATE `page_text` SET `text`='Not all the furbolg have been corrupted. Some still live and try to protect the forest. During their corruption, some of the furbolg fled, many were killed, and others were forced out of their tribes.\r\n\r\nI found a venerable furbolg of the Foulweald tribe living above Lake Mystral--his name is Krolg.\r\n\r\nI\'ve watched him for days, and I think if I were to approach him in the guise of a furbolg, I could help him and discover a way to re-establish a bond between our people.' WHERE `entry`=407;
UPDATE `page_text` SET `text`='Along with killing Dartol, the furbolg split up the rod into three parts so it couldn\'t be used against them again. It has been difficult, but I\'ve a good idea where all three parts were placed.\r\n\r\nThe Gem\r\nThe first part of the rod, a glowing gem, was hidden in a shrine in Northwestern Ashenvale. I believe now this shrine is the ruins at the center of Lake Falathim. The Sentinels tell me that it\'s been inhabited by murlocs now.' WHERE `entry`=408;
UPDATE `page_text` SET `text`='If I can\'t find the gem hidden in the shrine, it might be in the possession of one of the murlocs.\r\n\r\nThe shaft portion\r\nThis part of the rod was given to the treants near what is now called Felwood. Neither the furbolg nor my kind could have suspected that such magnificent creatures could ever fall to the corruption that\'s overtaken the land.\r\n\r\nMy research tells me that the guardians kept the piece in a small glade locked within a chest. To find out any more, I\'ll have to speak to Shael\'dryn.' WHERE `entry`=409;
UPDATE `page_text` SET `text`='Shael\'dryn is a dryad who protects the moonwell northeast of Lake Iris. She refuses to leave the forest or forsake it to the corruption. I know she has the power and knowledge to repair the rod, or to at least tell me how I can do it on my own.\r\n\r\nThe pommel\r\nThe pommel of the rod was given to the druids of Dor\'danil. There is one major problem with this though: the druids are dead.\r\n\r\nTheir spirits now inhabit the area and are no longer hospitable.' WHERE `entry`=411;
UPDATE `page_text` SET `text`='This may require more investigation. I\'m not sure I\'m powerful enough to fight the spirits of my dead kin...let alone delve into the depths of Dor\'danil and find the pommel.\r\n\r\n(Note: During my preparations in Astranaar, I\'ve recently met a dwarf hunter who has spent a good portion of his time in Ashenvale trying to help my people. He came from a place called Stormwind.\r\n\r\nWe spoke over a few ales one night, and his tales have given me new hope of finding the pommel...' WHERE `entry`=412;
UPDATE `page_text` SET `text`='He tells me he\'s been throughout all of Dor\'danil, and he\'s never seen a chest or any container that may hold the pommel. \r\n\r\nHe also tells me that rotting slimes have inhabited the area, and they devour almost anything smaller than them. He\'s seen them \"eat\" tables, sculptures, bears, and even gnomes!\r\n\r\nThe slimes seem to gain a great deal of sustenance from things magical. If the chest holding the pommel was enchanted at all, the slimes might have eaten it.' WHERE `entry`=413;
UPDATE `page_text` SET `text`='It\'s a gamble, but I have no other clues at this time...\r\n\r\nAs I find out more I\'ll put the details here; but until then, I shall work on finding the parts of the rod and helping Ashenvale.' WHERE `entry`=414;
UPDATE `page_text` SET `text`='The goblin Nazz Steamboil is really the son of a goblin merchant prince (Which prince?  The price of that information is high).\r\n\r\nIt seems he much rather enjoys spending the money his family makes than he does earning it himself.  So he stole a small fortune from his family\'s hoard and is now hiding in the Shimmering Flats.\r\n\r\nIf his father knew where he was, he\'d be sure to seek him out and drag him back home... minus a toe for his insolence.' WHERE `entry`=438;
UPDATE `page_text` SET `text`='For many years, the night elves worked tirelessly to rebuild what they could of their ancient homeland. Leaving their broken temples and roads to be overgrown, they constructed their new homes amidst the verdant trees and shadowed hills at Hyjal\'s base. In time, the dragons that had survived the great Sundering came forth from their secret abodes. ' WHERE `entry`=1836;
UPDATE `page_text` SET `next_page`=791 WHERE `entry`=711;
UPDATE `page_text` SET `text`='Helgrum,\r\n\r\nMy compliments to whomever issued the order to establish our base of Kargath in the Badlands.  It is an ideal locale to train our troops.  Its harsh weather, vicious wildlife, warlike natives and complete lack of outside support make this place a crucible from which only the finest warriors and scouts will emerge.\r\n\r\nGood planning.  Well done.' WHERE `entry`=711;
UPDATE `page_text` SET `text`='Consumed with the curse of this new bloodlust, the orcs sought to unleash their fury on any who stood before them. Sensing that the time had come, Gul\'dan united the warring clans into a single unstoppable Horde. ' WHERE `entry`=1955;
UPDATE `page_text` SET `text`='Calling themselves dwarves, the last of the earthen left the halls of Uldaman and ventured out into the waking world. Still lulled by the safety and wonders of the deep places, they founded a vast kingdom under the highest mountain in the land. ' WHERE `entry`=1895;
UPDATE `page_text` SET `text`='Commander,\r\n\r\nReturn to Orgrimmar. Your forces inadequate. Must reanalyze our position based upon new information.\r\n\r\nLarge number of Shadowsworn and Ogres present. Demons guard the Dark Portal.\r\n\r\n-Thrall, Warchief of the Horde\r\n' WHERE `entry`=1071;
UPDATE `page_text` SET `text`='Ysera, the Dreamer, also placed an enchantment upon the World Tree by linking it to her own realm, the ethereal dimension known as the Emerald Dream. The Emerald Dream, a vast, ever-changing spirit world, existed outside the boundaries of the physical world. From the Dream, Ysera regulated the ebb and flow of nature and the evolutionary path of the world itself. ' WHERE `entry`=1842;
UPDATE `page_text` SET `text`='Greetings and Salutations, Adventurers!\r\n\r\nI, Krinkle Goodsteel, have need of those willing to put themselves at risk in order to complete some of my most arduous tasks. Because of my many duties and the workload I\'ve managed to take upon myself, I ensure that anyone brave enough to complete this list of items and return them to me intact will be paid handsomely. \r\n\r\nThe list is contained on the following pages...' WHERE `entry`=1551;
UPDATE `page_text` SET `text`='Solid Crystal Leg Shafts - \r\n\r\nThe Glassweb spiders of Searing Gorge are made of an incredible crystal-like material. Their legs, if not damaged when they\'re killed, make for a wonderful conductor in some of my companions\' engineering experiments.\r\n\r\nI will need a number of them to test  upon. The spiders having eight possible legs themselves should be no problem for a stalwart warrior or practiced mage.' WHERE `entry`=1552;
UPDATE `page_text` SET `text`='An Overdue Package -\r\n\r\nI hired someone who I thought was a reliable pilot to bring me a package from Theramore. I was apparently wrong. And even though the pilot lived to tell the tale, he left his entire zepplin and all of its cargo behind to save his own neck.\r\n\r\nWell, I need that package back. From what Beezil tells me, he crashed just west of the bay in Dustwallow Marsh. It went down just after he crossed the hills along the water\'s edge.\r\n\r\nHmmm... never did tell me what caused him to crash... ' WHERE `entry`=1553;
UPDATE `page_text` SET `text`='Goodsteel\'s Balanced Flameberge - \r\n\r\nFinally, I want one of my finest works of blacksmithing to date. This flameberge was an incredible sword that I bestowed upon what I thought was a very honorable and great warrior. Well, he was trounced by a murloc named Jarquai? Something like that. \r\n\r\nIt was while he was traveling along the coast of the Swamp of Sorrows when he thought to attack the creature. He failed and apparently fled, but not before leaving the weapon behind for this murloc to take.' WHERE `entry`=1554;
UPDATE `page_text` SET `text`='Find me these items and return to Gadgetzan with them all, along with this ledger, and I will reward you. ' WHERE `entry`=1556;
UPDATE `page_text` SET `text`='As doubt and despair overwhelmed Sargeras\' senses, he lost all faith not only in his mission, but also in the Titans\' vision of an ordered universe. Eventually he came to believe that the concept of order itself was folly, and that chaos and depravity were the only absolutes within the dark, lonely universe. ' WHERE `entry`=1778;
UPDATE `page_text` SET `text`='In his fury, Sargeras shattered the prisons of the eredar and the Nathrezim and set the loathsome demons free. These cunning creatures bowed before the dark Titan\'s vast rage and offered to serve him in whatever malicious ways they could. From the ranks of the powerful Eredar, Sargeras picked two champions to command his demonic army of destruction. ' WHERE `entry`=1782;
UPDATE `page_text` SET `text`='Kil\'jaeden the Deceiver was chosen to seek out the darkest races in the universe and recruit them into Sargeras\' ranks. The second champion, Archimonde the Defiler, was chosen to lead Sargeras\' vast armies into battle against any who might resist the Titan\'s will. ' WHERE `entry`=1783;
UPDATE `page_text` SET `text`='Alexstrasza the red, Ysera the green, and Nozdormu the bronze descended upon the druids\' tranquil glades and surveyed the fruits of the night elves\' labors. Malfurion, who had become an arch-druid of immense power, greeted the mighty dragons and told them about the creation of the new Well of Eternity. ' WHERE `entry`=1837;
UPDATE `page_text` SET `text`='Alexstrasza, the Lifebinder, placed a single, enchanted acorn within the heart of the Well of Eternity. The acorn, activated by the potent, magical waters, sprung to life as a colossal tree. The mighty tree\'s roots grew from the Well\'s waters, and its verdant canopy seemed to scrape the roof of the sky. ' WHERE `entry`=1839;
UPDATE `page_text` SET `text`='The immense tree would be an everlasting symbol of the night elves\' bond with nature, and its life-giving energies would extend out to heal the rest of the world over time. The night elves\' gave their World Tree the new name Nordrassil, which meant \"crown of the heavens\" in their native tongue. ' WHERE `entry`=1840;
UPDATE `page_text` SET `text`='Nozdormu, the Timeless, placed an enchantment upon the World Tree to ensure that as long as the colossal tree stood, the night elves would never age or fall prey to sickness or disease. ' WHERE `entry`=1841;
UPDATE `page_text` SET `text`='In the ancient times, after the Titans departed Azeroth, their children, known as the earthen, continued to shape and guard the deep recesses of the world. The earthen were largely unconcerned with the affairs of the surface-dwelling races and longed only to plumb the dark depths of the earth. ' WHERE `entry`=1892;
UPDATE `page_text` SET `text`='When the world was sundered by the Well of Eternity\'s implosion, the earthen were deeply affected. Reeling with the pain of the earth itself, the earthen lost much of their identity and sealed themselves within the stone chambers where they were first created. Uldaman, Uldum, Ulduar... these were the names of the ancient Titan cities where the earthen first took shape and form. Buried deep beneath the world, the earthen rested in peace for nearly eight thousand years. ' WHERE `entry`=1893;
UPDATE `page_text` SET `text`='Epilogue\r\n\r\nAfter having done all of this, you are left with the center of the onion: The sweet core. Vanndar Stormpike will be left defenseless and alone. Rules of military conduct require that we ask for his surrender before carrying out any executions. Be sure to mention the surrender thing when you see him... then kill him.' WHERE `entry`=2778;
UPDATE `page_text` SET `text`='The orcs became increasingly aggressive under the secret control of Gul\'dan and his Shadow Council. They constructed massive arenas where the orcs honed their warrior skills in trials of combat and death. During this period, a few clan chieftains spoke out against the growing depravity in their race. ' WHERE `entry`=1951;
UPDATE `page_text` SET `text`='Kil\'jaeden knew that the orc clans were almost ready, but he needed to be certain of their ultimate loyalty. In secret, he had the Shadow Council summon Mannoroth the Destructor, the living vessel of destruction and rage. Gul\'dan called the clan chieftains together and convinced them that drinking Mannoroth\'s raging blood would make them utterly invincible.\r\n' WHERE `entry`=1953;
UPDATE `page_text` SET `text`='Kil\'jaeden knew that the Horde was finally prepared. The orcs had become the Burning Legion\'s greatest weapon. The cunning demon shared his knowledge with his waiting master, and Sargeras agreed that the time of his revenge had finally come. ' WHERE `entry`=1958;
UPDATE `page_text` SET `text`='The Grand Admiral forced Jaina to make a terrible decision: support him in battle against the orcs and betray her newfound allies, or fight her own father to maintain the fragile peace that the Alliance and the Horde had finally attained. After much soul-searching, Jaina chose the latter and helped Thrall defeat her crazed father. ' WHERE `entry`=2110;
UPDATE `page_text` SET `text`='Archbishop Alonsus Faol\r\n\r\nBenevolent patron of the Church of Light.\r\n\r\nThough he began his good work in Stratholme, Lordaeron, Archbishop Faol was a great friend to the people of Stormwind. In the dark days after the Second War, he helped to reform the Brotherhood of Northshire and raised vast funds to rebuild Stormwind city itself.\r\n\r\nThis Cathedral stands not only as a bastion of the Holy Light, but as a lasting testament to one man\'s noble spirit and generosity. ' WHERE `entry`=2291;
UPDATE `page_text` SET `text`='This intact pteradon skeleton was recovered from the remote Un\'Goro Crater. Based on the skeletal structure, it is clear that this specific genus has not yet been encountered. This skeleton could have been preserved for any number of centuries beneath the region\'s rich soil. \r\n' WHERE `entry`=2311;
UPDATE `page_text` SET `text`='Beware, soldier, as both of these towers are heavily fortified and ruled over by one of Vanndar\'s elite Commanders. Should your forces breach the fortifications, make certain that the Commander within has been ... silenced. This too will be part of the dismantling of the Stormpike.\r\n' WHERE `entry`=2774;
UPDATE `page_text` SET `text`='Chapter 1 - The Front Line\r\n\r\nDismantling the Stormpike army is very much like peeling an onion. To get to the core, you must start by removing the outermost layers.\r\n\r\nThe front lines, comprised mostly of Stormpike Mountaineers and Alliance Sentinels, are tied to the Captain\'s bunker. It is Captain Balinda Stonehearth who empowers these units and provides for reinforcements when the lines are under siege. Strike at the Captain and the front line forces will crumble.\r\n\r\n' WHERE `entry`=2772;
UPDATE `page_text` SET `text`='Chapter 2 - The Twin Towers\r\n\r\nMake no mistake; Vanndar Stormpike is a cunning foe and certainly no fool. Once the front line has been breached, the secondary defensive targets must still be destroyed. It is the twin towers of Stonehearth and Icewing which control the Stormpike Guardsmen outside of Dun Baldar and the Stormpike patrols.' WHERE `entry`=2773;
UPDATE `page_text` SET `text`='Chapter 3 - The Four Commanders\r\n\r\nThe third layer of the Stormpike onion is comprised of the four Commanders. In this respect, Vanndar has mimicked our own glorious Frostwolf defenses. Of course he will tell you otherwise... But I digress. \r\n\r\nThe four Commanders control the ebb and flow of the Stormpike Guardsmen that fiercely guard Dun Baldar. Silence them all and the Stormpike Guardsmen will fall. \r\n\r\nThen there is but one layer left to peel.\r\n' WHERE `entry`=2775;
UPDATE `page_text` SET `text`='Chapter 4 - The Dun Baldar Bunkers\r\n\r\nAs you have undoubtedly noticed, the Stormpike defensive layers are in place to prevent one mighty power move from dismantling the entire army. Before you ask, yes, this is exactly how our own forces are setup and no, I will not change our defensive structure. They copied us, why should we have to change?\r\n' WHERE `entry`=2776;
UPDATE `page_text` SET `text`='More rapid than eagles his coursers they came,$B$BAnd he whistled, and shouted, and called them by name;$B$B\"Now, Mercer! now, Chilton! now, Jordan and Kaplan!$B$BOn, Nagle! on Pardo! on, Goodman and Metzen!$B$BTo the top of the porch! to the top of the wall!$B$BNow dash away! dash away! dash away all!\"\r\n' WHERE `entry`=2844;

-- Corrections to npc texts.
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (6236, 8817, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (6242, 8826, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (6714, 9106, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (6799, 9238, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (6805, 9244, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (6807, 9246, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (6810, 9249, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (6813, 9263, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (6816, 9266, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (6819, 9269, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (6822, 9272, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (6826, 9276, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (6829, 9279, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (6835, 9285, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (6865, 9328, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (6873, 9340, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (8346, 11933, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (8653, 12738, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`) VALUES (2115, 1, 0, 0, 0, 0, 0, 0, 0, 4538, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`) VALUES (6061, 1, 0, 0, 0, 0, 0, 0, 0, 8589, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`) VALUES (6798, 1, 0, 0, 0, 0, 0, 0, 0, 9234, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`) VALUES (6832, 1, 0, 0, 0, 0, 0, 0, 0, 9282, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`) VALUES (6838, 1, 0, 0, 0, 0, 0, 0, 0, 9288, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`) VALUES (6848, 1, 0, 0, 0, 0, 0, 0, 0, 9305, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`) VALUES (6871, 1, 0, 0, 0, 0, 0, 0, 0, 9338, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`) VALUES (7361, 1, 0, 0, 0, 0, 0, 0, 0, 10078, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`) VALUES (8507, 1, 0, 0, 0, 0, 0, 0, 0, 12247, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`) VALUES (8516, 1, 0, 0, 0, 0, 0, 0, 0, 12280, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`) VALUES (8554, 1, 0, 0, 0, 0, 0, 0, 0, 12402, 0, 0, 0, 0, 0, 0, 0);

-- Corrections to gameobjects.
UPDATE `gameobject_template` SET `size`=5 WHERE `entry`=1607;
UPDATE `gameobject_template` SET `size`=3 WHERE `entry`=18603;
UPDATE `gameobject_template` SET `size`=1.2 WHERE `entry`=164954;
UPDATE `gameobject_template` SET `size`=0.75 WHERE `entry`=177681;
UPDATE `gameobject_template` SET `size`=0.75 WHERE `entry`=177683;
UPDATE `gameobject_template` SET `size`=1.5 WHERE `entry`=179664;
UPDATE `gameobject_template` SET `size`=2 WHERE `entry`=181374;
UPDATE `gameobject_template` SET `displayId`=1407 WHERE `entry`=177277;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) VALUES (181444, 1, 6696, 'Kel\'Thuzad Trigger', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

replace into item_template values
 ('81118', '0', '0', '0', 'Pit Ring Invitation', 'Property of Rats.', '31760', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);