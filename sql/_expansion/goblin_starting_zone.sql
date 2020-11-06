
REPLACE INTO `creature_template` VALUES (80100, 0, 7164, 0, 0, 0, 'Nert Blastentom', 'Venture Co. Foreman', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

SET @gossip_menu_id = 59010;
SET @magic_number = 80100; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'It\'ll be easy, they said.\n\n"No one even knows about the plateau," they said.\n\nI\'d have said the same thing, but it somehow seems less fair this way.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO `creature_template` VALUES (80101, 0, 10746, 0, 0, 0, 'Sprat Nozzleton', 'Venture Co. Worker', 0, 3, 3, 219, 219, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

update creature_template set equipment_id = 0 where entry = 80100;
update creature_template set equipment_id = 152 where entry = 80101;

REPLACE INTO `creature_template` VALUES (80102, 0, 9132, 0, 0, 0, 'Ohgi Cardya', 'Venture Co. Trader', 0, 3, 3, 219, 219, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

update creature_template set npc_flags = 4 where entry = 80102;

REPLACE INTO `npc_vendor` VALUES 
(80102, 159, 0, 0, 0, 0),
(80102, 2512, 0, 0, 0, 0),
(80102, 2516, 0, 0, 0, 0),
(80102, 2947, 0, 0, 0, 0),
(80102, 3111, 0, 0, 0, 0),
(80102, 4540, 0, 0, 0, 0),
(80102, 6183, 0, 0, 0, 0);

update creature_template set equipment_id = 0 where entry = 80102;

REPLACE INTO `creature_template` VALUES (80103, 8, 7185, 0, 0, 0, 'Venture Co. Bruiser', '', 0, 55, 55, 4700, 4700, 0, 0, 20, 85, 0, 1, 1.42857, 0, 20, 5, 0, 0, 1, 154, 222, 0, 248, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35021, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 16096, 0, 0, 0, 0, 524288, '');

REPLACE INTO `creature_template` VALUES (80104, 0, 7166, 0, 0, 0, 'Grizzie the Enforcer', 'Warrior Trainer', 523, 11, 11, 456, 456, 406, 406, 20, 29, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 1, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3153, 0, 0, 0, 0, 524298, '');

SET @gossip_menu_id = 56546;
SET @magic_number = 80104; -- Warrior
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Hey pal, back for some more training?\n\nRemember what I told you: first, you go for the knees. Once they at your level, they won\'t look down on you anymore.\n\nThat advice will cost you a few more coppers.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO `npc_trainer` VALUES (80104, 1343, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80104, 1423, 100, 0, 0, 4, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80104, 1738, 100, 0, 0, 4, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80104, 3128, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80104, 6674, 10, 0, 0, 1, 0, 5875);

REPLACE INTO `creature_template` VALUES (80105, 0, 7179, 0, 0, 0, 'Mayten Boomrifle', 'Hunter Trainer', 4648, 8, 8, 334, 334, 297, 297, 20, 126, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 7, 10, 0, 58, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 3, 0, 13.5872, 18.6824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3154, 0, 0, 0, 0, 524298, '');

SET @gossip_menu_id = 56547;
SET @magic_number = 80105; -- Hunter
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Guns, man, I love guns, don’t you, $N?\n\nEverytime I hear that boom, my heart beats faster. Back for more training? You got the coin, right?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO `npc_trainer` VALUES (80105, 1547, 10, 0, 0, 1, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80105, 2003, 100, 0, 0, 4, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80105, 3048, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80105, 5298, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80105, 13164, 50, 0, 0, 4, 0, 5875);

REPLACE INTO `creature_template`VALUES (80106, 0, 15300, 0, 0, 0, 'Leyti Quicktongue', 'Rogue Trainer', 0, 8, 8, 334, 334, 297, 297, 20, 29, 18, 1, 1.14286, 0, 20, 5, 0, 0, 1, 7, 10, 0, 58, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 4, 0, 13.5872, 18.6824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3155, 0, 0, 0, 0, 524298, '');

SET @gossip_menu_id = 56548;
SET @magic_number = 80106; -- Rogue
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Why sell when you can steal, am I right, bub?\n\nCome on, let me teach you a few things. And don’t worry, I already took the coin from your pockets.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO `npc_trainer` VALUES (80106, 1762, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80106, 1780, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80106, 1789, 10, 0, 0, 1, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80106, 2592, 100, 0, 0, 4, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80106, 5167, 100, 0, 0, 4, 0, 5875);

REPLACE INTO `creature_template` VALUES (80107, 0, 9780, 0, 0, 0, 'Amri Demondeal', 'Warlock Trainer', 4670, 9, 9, 372, 372, 333, 333, 20, 29, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 9, 13, 0, 60, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 9, 0, 15.2064, 20.9088, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3156, 0, 0, 0, 0, 524298, '');

SET @gossip_menu_id = 56549;
SET @magic_number = 80107; -- Warlock
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Nobody ever suspects the goblins, $N. Nobody. So come here and let me teach you about the dark arts. Can\’t wait to learn how to summon a succubus! Business before pleasure, though, so give me your coin!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO `npc_trainer` VALUES (80107, 1374, 10, 0, 0, 1, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80107, 1381, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80107, 1393, 100, 0, 0, 4, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80107, 1476, 100, 0, 0, 6, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80107, 6221, 100, 0, 0, 4, 0, 5875);

REPLACE INTO `creature_template` values (80129, 0, 4449, 0, 0, 0, 'Imp', '', 0, 5, 5, 166, 166, 85, 85, 20, 14, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 6, 8, 0, 52, 1, 2000, 2000, 8, 524288, 0, 23, 0, 0, 0, 0, 8.624, 11.858, 100, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3110, 0, 0, 0, 4160, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set faction = 35 where entry = 80129;

REPLACE INTO `creature_template` VALUES (80108, 0, 10745, 0, 0, 0, 'Wizette Icewhistle', 'Mage Trainer', 64, 10, 10, 413, 413, 370, 370, 20, 126, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 7, 7, 0, 62, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 8, 0, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 5884, 0, 0, 0, 0, 524298, '');

update creature_template set faction = 69 where entry = 80129;

SET @gossip_menu_id = 56550;
SET @magic_number = 80108; -- Mage
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'If it ain\’t my best pal, $N, back for more spells. I admire you. You\'ve got the big brains like me. Conjure water, food, portals, cha-ching, coin!\n\nSpeaking of coin, you know these spells ain\’t free, right?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO `npc_trainer` VALUES (80108, 1142, 100, 0, 0, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80108, 1173, 100, 0, 0, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80108, 1249, 100, 0, 0, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80108, 1472, 10, 0, 0, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80108, 2141, 100, 0, 0, 0, 0, 5875);
REPLACE INTO `npc_trainer` VALUES (80108, 5507, 100, 0, 0, 0, 0, 5875);


REPLACE INTO `creature_template` VALUES (80109, 0, 7174, 0, 0, 0, 'Flarnt Tightstitch', 'Cloth & Leather Armor Merchant', 0, 11, 11, 456, 456, 0, 0, 20, 29, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');

REPLACE INTO `npc_vendor` VALUES 
(80109, 2117, 0, 0, 0, 0),
(80109, 2119, 0, 0, 0, 0),
(80109, 2120, 0, 0, 0, 0),
(80109, 2121, 0, 0, 0, 0),
(80109, 2122, 0, 0, 0, 0),
(80109, 2123, 0, 0, 0, 0),
(80109, 2124, 0, 0, 0, 0),
(80109, 2125, 0, 0, 0, 0),
(80109, 2126, 0, 0, 0, 0),
(80109, 2127, 0, 0, 0, 0),
(80109, 3599, 0, 0, 0, 0),
(80109, 3600, 0, 0, 0, 0);

REPLACE INTO `creature_template` VALUES (80110, 0, 7188, 0, 0, 0, 'Toxx Ringweave', 'Venture Co. Mail Armor Trader', 0, 10, 10, 413, 413, 0, 0, 20, 29, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 9, 13, 0, 62, 1, 2000, 2101, 1, 4864, 0, 0, 0, 0, 0, 0, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3161, 0, 0, 0, 0, 524298, '');

REPLACE INTO `npc_vendor` VALUES
(80110, 2129, 0, 0, 0, 0),
(80110, 2379, 0, 0, 0, 0),
(80110, 2380, 0, 0, 0, 0),
(80110, 2381, 0, 0, 0, 0),
(80110, 2383, 0, 0, 0, 0),
(80110, 2384, 0, 0, 0, 0),
(80110, 2385, 0, 0, 0, 0),
(80110, 17184, 0, 0, 0, 0);

update creature_template set equipment_id = 0 where entry = 80110;

REPLACE INTO `creature_template` VALUES (80111, 0, 7180, 0, 0, 0, 'Nagus', 'Venture Co. Field Cook', 0, 14, 14, 594, 594, 0, 0, 20, 29, 6, 1, 1.14286, 0, 20, 5, 0, 0, 1, 15, 19, 0, 70, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 23.0384, 31.6778, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3881, 0, 0, 0, 0, 524298, '');

REPLACE INTO `npc_vendor` VALUES
(80111, 159, 0, 0, 0, 0),
(80111, 16166, 0, 0, 0, 0),
(80111, 6299, 0, 0, 0, 0),
(80111, 19222, 0, 0, 0, 0);

update creature_template set faction = 35 where entry between 80100 and 80111;

-- A New Ad-Venture

REPLACE INTO `creature_template` VALUES (80112, 7, 1159, 0, 0, 0, 'Whirling Whizz-Bot', NULL, 0, 1, 2, 50, 60, 0, 0, 16, 189, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 0, 1, 0, 46, 1, 2000, 2000, 1, 0, 0, 5, 0, 0, 0, 0, 1.76, 2.42, 100, 9, 1, 3098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9074, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 'npc_whizzbot');

update creature_template set 
health_min = 60, health_max = 70, 
armor = 76, dmg_min = 3, dmg_max = 6, attack_power = 50,
spell_id1 = 0, gold_min = 1, gold_max = 7 
where entry = 80112;

delete from broadcast_text where id between 70000 and 70016;
delete from npc_text where id between 70000 and 70016;

/* THIS IS NOT RELATED TO GOBLIN ZONE, BUT SINCE WE ARE NOT USING MIGRATIONS BECAUSE TORTA IS A PUSSY, I MUST MAKE SURE THIS IS APPLIED IN CASE THEY ARE WRONGLY DELETED */
SET @magic_number = 70000;
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Who would have thought combining the usefulness of a telescope with a mining pick would be such a hit! I\'m sure a fine $r like you can see the appeal!$B$BIf you want one yourself, bring me an Ornate Spyglass and some Light Leather, let\'s say around... 10 pieces.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);

SET @magic_number = 70001;
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Do you really think I\'m going to show my mining secrets to just anyone who wanders into town? Ha! Come back to me when people around here considers you a bit more friendlier.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);

SET @magic_number = 70002;
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Hey $r, I see you have there one of my creations. Probably your best choice yet.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
/* END OF SHITTY PREVENTION FIX BECAUSE OF NO MIGRATION */

replace into broadcast_text (ID, MaleText) values (80000, 'We are friends. Do not run.'); replace into npc_text (ID, BroadcastTextID0) values (80000, 80000);
replace into broadcast_text (ID, MaleText) values (80001, 'Target unrecognized. Proceed with extermination.'); replace into npc_text (ID, BroadcastTextID0) values (80001, 80001);
replace into broadcast_text (ID, MaleText) values (80002, 'Target acquired. Termination activated.'); replace into npc_text (ID, BroadcastTextID0) values (80002, 80002);
replace into broadcast_text (ID, MaleText) values (80003, 'Threat detected, activating protocol 66.'); replace into npc_text (ID, BroadcastTextID0) values (80003, 80003);
replace into broadcast_text (ID, MaleText) values (80004, 'Exterminate hostile.'); replace into npc_text (ID, BroadcastTextID0) values (80004, 80004);
replace into broadcast_text (ID, MaleText) values (80005, 'Exterminate.'); replace into npc_text (ID, BroadcastTextID0) values (80005, 80005);

replace into broadcast_text (ID, MaleText) values (80011, 'Error 132: Memory cannot be read.'); replace into npc_text (ID, BroadcastTextID0) values (80011, 80011);
replace into broadcast_text (ID, MaleText) values (80012, 'Error 132: Fatal Exception.'); replace into npc_text (ID, BroadcastTextID0) values (80012, 80012);
replace into broadcast_text (ID, MaleText) values (80013, 'Error 134: Failed to open required archive...'); replace into npc_text (ID, BroadcastTextID0) values (80013, 80013);
replace into broadcast_text (ID, MaleText) values (80014, 'Error 132: Access Violation.'); replace into npc_text (ID, BroadcastTextID0) values (80014, 80014);
replace into broadcast_text (ID, MaleText) values (80015, 'Error... Shutting down.'); replace into npc_text (ID, BroadcastTextID0) values (80015, 80015);
replace into broadcast_text (ID, MaleText) values (80016, 'System processing. Error. Error. Error.'); replace into npc_text (ID, BroadcastTextID0) values (80016, 80016);


update creature_template set scale = 0.8, type = 9 where entry = 80112;

replace into item_template values
 ('80100', '0', '0', '0', 'Whirling Whizmagig', '', '20628', '1', '0', '1', '0', '0', '0', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into item_template values
 ('80101', '0', '4', '2', 'Mud Covered Gloves', '', '17184', '1', '0', '1', '2', '2', '10', '-1', '-1', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '16', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into item_template values
 ('80102', '0', '4', '1', 'Torn Pants', '', '16796', '1', '0', '1', '2', '2', '7', '-1', '-1', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80158', '0', '15', '0', 'Loose Cog', '', '15825', '0', '0', '1', '3', '3', '0', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80159', '0', '15', '0', 'Rusty Screw', '', '1235', '0', '0', '1', '2', '2', '0', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
update creature_template set loot_id = 80112 where entry = 80112; 
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80112, 80100, -100, 0, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80112, 80158, 10, 1, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80112, 80159, 70, 2, 1, 1);

SET @quest_entry = 80100;
SET @quest_zone = 406;
SET @title = 'A New Ad-Venture';
SET @description = 'Alright, pal, listen up. I know this is your first mission for the Venture Company, so I\’ll speak real slow.\n\nWe\’re up here to find a special treasure, y\'hear? Supposed to be worth more than half the jewels in Undermine all by itself. Boss can\’t wait to get his hands on it, but the last guys he sent up here never sent anything back. Thievin\’ jerks think they\’re gonna keep the boss\’s treasure for themselves? Not if I have anything to say about it. Boss says don’t come home unless we get what we came for.\n\nWe busted up a few gizmos on our flyer gettin\’ down here, but luckily for us, it seems like those other guys left some of their bots behind. Run around and grab some whizmagigs from them, would ya?';
SET @objective = 'Gather 8 Whirling Whizmagigs from Whirling Whizz-Bots, then return to Nert Blastentom.';
SET @completetext = 'Nice job, kid. If you keep that up, you might be a foreman in, uh, eighteen or nineteen years.\n\nCompetition\’s tough, y\'know.';
SET @incompletetext = 'You know what they say. Time is money, employee.';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 105;
SET @reward_money = 100; 
SET @quest_level = 1;
SET @min_level = 1;
SET @questgiver_id = 80100;
SET @quest_finisher = 80100;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 0;
SET @RewChoiceItemId1 = 80101; 
SET @RewChoiceItemId2 = 80102; 
SET @RewChoiceItemId3 = 0;
SET @RewChoiceItemId4 = 0; 
SET @RewChoiceItemCount1 = 1;
SET @RewChoiceItemCount2 = 1;
SET @RewChoiceItemCount3 = 0;
SET @RewChoiceItemCount4 = 0;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 0;
SET @creature_to_kill_2 = 0; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 0;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 80100; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 8;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');
	 
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest 
where entry = @quest_entry;	 

-- Venture Vultures

REPLACE INTO `creature_template` VALUES (80113, 0, 10825, 0, 0, 0, 'Plateau Vulture', NULL, 0, 2, 3, 55, 71, 0, 0, 29, 32, 0, 1, 0.857143, 0.71, 20, 5, 0, 0, 1, 3, 5, 0, 48, 1, 2000, 2000, 1, 0, 0, 7, 0, 0, 0, 0, 5.2272, 7.1874, 100, 1, 1, 1509, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5935, 0, 0, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

replace into item_template values
 ('80103', '0', '0', '0', 'Plateau Vulture Meat', '', '25467', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL); 
 
 replace into item_template values
 ('80160', '0', '15', '0', 'Broken Beak', '', '1294', '0', '0', '1', '6', '6', '0', '-1', '-1', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80161', '0', '15', '0', 'Ruffled Feather', '', '19568', '0', '0', '1', '5', '5', '0', '-1', '-1', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
update item_template set stackable = 10 where entry = 80161;
  
update item_template set stackable = 10 where entry = 80103;
update creature_template set loot_id = 80113 where entry = 80113; 
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80113, 80103, -100, 0, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80113, 80160, 30, 1, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80113, 80161, 70, 2, 1, 1);

REPLACE INTO `item_template` VALUES (80104, 0, 0, 0, 'Sprat’s Crunchy Vulture Surprise', '', 22200, 1, 0, 1, 40, 10, 0, -1, -1, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5004, 0, -1, 0, 0, 11, 1000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, NULL);

SET @quest_entry = 80101;
SET @quest_zone = 406;
SET @title = 'Venture Vultures';
SET @description = 'This is the wooooorst!\n\nThe Venture Co. was supposed to be about fun, adventure, and sweet, sweet profits, but all we\’ve done so far is fly up to the middle of nowhere and sit around without any food.\n\nListen, I don\’t care what Nert says. I\’m not workin\’ any more without dinner. You\’re going out into the forest, aren\'t\'cha? Then, you\’re gonna bring me back some meat from those buzzards. It\’s no Booty Bay steak, but you let ol\’ Sprat show ya how it\’s cooked!';
SET @objective = 'Bring Sprat Nozzleton 6 pieces of Plateau Vulture Meat.';
SET @completetext = 'Nice! You just wait, mama Sprat\’s gonna make magic out of these here buzzard bits.\n\nYou won\’t even know you\’re basically eatin\’ a bird that eats rotting stuff!\n\nUh, forget I said that.';
SET @incompletetext = 'I’ve got the best meals anywhere!';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 125;
SET @reward_money = 0; 
SET @quest_level = 2;
SET @min_level = 2;
SET @questgiver_id = 80101;
SET @quest_finisher = 80101;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 0;
SET @RewChoiceItemId1 = 0; 
SET @RewChoiceItemId2 = 0; 
SET @RewChoiceItemId3 = 0;
SET @RewChoiceItemId4 = 0; 
SET @RewChoiceItemCount1 = 0;
SET @RewChoiceItemCount2 = 0;
SET @RewChoiceItemCount3 = 0;
SET @RewChoiceItemCount4 = 0;
SET @reward_item_1 = 80104;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 5;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 0;
SET @creature_to_kill_2 = 0; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 0;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 80103; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 6;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');
	 
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest 
where entry = @quest_entry;	 

-- Green Versus Green

REPLACE INTO `creature_template` VALUES (80114, 0, 4249, 4250, 4247, 4248, 'Stonetalon Environmentalist', NULL, 0, 3, 3, 74, 80, 0, 0, 49, 91, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 3, 5, 0, 50, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 6.9344, 9.5348, 100, 7, 0, 38, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 7, 'EventAI', 1, 3, 0, 0, 3, 38, 0, 0, 0, 0, 0, '');

update creature_template set loot_id = 80114 where entry = 80114; 
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 80157, 80, 0, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 4496,  1, 1, 1, 1); -- Bags
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 5571,  1, 1, 1, 1); -- Bags
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 5572,  1, 1, 1, 1); -- Bags
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 2447,  0.3, 1, 1, 1); -- Peacebloom
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 876,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 3675,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 1378,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 2649,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 2650,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 1367,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 1374,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 1380,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 1370,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 2653,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 2211,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 1368,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 1364,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 2656,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 1376,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 1369,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 3365,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 1429,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 2644,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 2212,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 1418,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 1430,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 1423,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 1433,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 2635,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 1431,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 1419,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 3373,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80114, 2648,  1, 0.5, 1, 1); -- Gear

update creature_template set 
health_min = 60, health_max = 70, dmg_school = 3,
armor = 50, dmg_min = 6, dmg_max = 8, attack_power = 45,
spell_id1 = 0, gold_min = 1, gold_max = 7 
where entry = 80114;

replace into item_template values
 ('80156', '0', '0', '0', 'Highpeak Thistle', '', '1646', '1', '0', '1', '5', '5', '0', '-1', '-1', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '774', '0', '-1', '0', '30000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80157', '0', '15', '0', 'Withered Root', '', '1464', '0', '0', '1', '6', '6', '0', '-1', '-1', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `creature_template` VALUES (80115, 0, 8172, 0, 0, 0, 'Highpeak Lasher', NULL, 0, 3, 3, 40, 45, 0, 0, 50, 91, 0, 0.93, 1.14286, 1, 20, 5, 0, 0, 1, 10, 12, 0, 40, 1, 1960, 2156, 8, 0, 0, 0, 0, 0, 0, 0, 8.624, 11.858, 100, 4, 0, 3569, 0, 0, 0, 5, 5, 5, 10, 5, 0, 0, 0, 0, 0, 0, 1, 4, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 16384, 0, 0, '');

update creature_template set faction = 189,
health_min = 80, health_max = 100, 
armor = 76, dmg_min = 8, dmg_max = 10, attack_power = 60, 
dmg_school = 3 where entry = 80116;

update creature_template set loot_id = 80115 where entry = 80115; 
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 80156, 20, 0, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 80157, 80, 0, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 4496,  1, 1, 1, 1); -- Bags
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 5571,  1, 1, 1, 1); -- Bags
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 5572,  1, 1, 1, 1); -- Bags
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 2447,  0.3, 1, 1, 1); -- Peacebloom
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 876,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 3675,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 1378,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 2649,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 2650,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 1367,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 1374,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 1380,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 1370,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 2653,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 2211,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 1368,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 1364,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 2656,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 1376,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 1369,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 3365,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 1429,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 2644,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 2212,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 1418,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 1430,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 1423,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 1433,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 2635,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 1431,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 1419,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 3373,  1, 0.5, 1, 1); -- Gear
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80115, 2648,  1, 0.5, 1, 1); -- Gear

update creature_template set faction = 189 where entry = 80115;

replace into item_template values
 ('80105', '0', '2', '5', 'Bruiser Club', '', '19544', '1', '0', '1', '2', '2', '17', '-1', '-1', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3500', '0',
 '0', '8', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '3', '0', '0', '35', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80106', '0', '2', '3', 'Miscalibrated Rifle', '', '20738', '1', '0', '1', '2', '2', '15', '-1', '-1', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2800', '35',
 '3', '5', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 update item_template set Range_Mod = 100 where entry = 80106;
 
 replace into item_template values
 ('80107', '0', '2', '10', 'Smooth Wooden Staff', '', '10654', '1', '0', '1', '2', '2', '17', '-1', '-1', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3200', '0',
 '0', '8', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '35', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 update item_template set sheath = 2 where entry = 80107;
 
 replace into item_template values
 ('80113', '0', '2', '15', 'Pocket Knife', '', '6433', '1', '0', '1', '18', '18', '21', '-1', '-1', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1600', '0',
 '0', '4', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
update item_template set sheath = 3 where entry = 80113;

SET @quest_entry = 80102;
SET @quest_zone = 406;
SET @title = 'Green Versus Green';
SET @description = 'You\'ve gotta be kidding me. Here we are, a mile above every mountain pass, and there\’s elves up here?\n\nListen, kid, elves are the most irrational creatures in the world. A good goblin, he looks at a forest and he sees profit! But what does an elf see? Bears? Owls? Little baby squirrels with the big eyes? It makes me sick.\n\nCongratulations, you get to be the muscle today. Go out and cut down a few tree-huggers, would ya? And some of their weird living plants while you\’re at it. I don\’t trust anything that walks around on vines.';
SET @objective = 'Kill 7 Stonetalon Environmentalists and 5 Highpeak Lashers, then return to Nert Blastentom.';
SET @completetext = 'Alright then, recruit, you\’re officially on my good list. Stick with old Nert and you\’re gonna go far!\n\nOh, uh, I guess if you\’re gonna be fighting stuff, it might be good for you to have a weapon. But don\’t tell anyone I gave you one for free!';
SET @incompletetext = 'Stupid elves love trees so much. You know they grew themselves a giant tree to live in off the coast?\n\nThey got the magic to grow a tree the size of a city and they never think of the lumber market. It\’s madness.';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 130;
SET @reward_money = 0; 
SET @quest_level = 2;
SET @min_level = 2;
SET @questgiver_id = 80100;
SET @quest_finisher = 80100;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 0;
SET @RewChoiceItemId1 = 80105; 
SET @RewChoiceItemId2 = 80106; 
SET @RewChoiceItemId3 = 80107;
SET @RewChoiceItemId4 = 80113; 
SET @RewChoiceItemCount1 = 1;
SET @RewChoiceItemCount2 = 1;
SET @RewChoiceItemCount3 = 1;
SET @RewChoiceItemCount4 = 1;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 80114;
SET @creature_to_kill_2 = 80115; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 7;
SET @creature_to_kill_2_count = 5;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 0; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 0;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');

update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest 
where entry = @quest_entry;	

-- Risen Oilblazes

replace into item_template values
 ('80112', '0', '0', '0', 'Living Petroleum', '', '9518', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 update item_template set stackable = 10 where entry = 80112;
 
 replace into item_template values
 ('80114', '0', '0', '0', 'Oil-scorched Note', '', '3020', '1', '0', '1', '0', '0', '0', '-1', '-1', '3',
 '4', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '80105', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 update item_template set max_count = 1 where entry = 80114;
 
 replace into item_template values
 ('80110', '0', '4', '2', 'Scorched Vest', '', '14190', '1', '0', '1', '12', '12', '5', '-1', '-1', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '55', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80109', '0', '4', '1', 'Oil-splattered Robe', '', '12648', '1', '0', '1', '12', '12', '5', '-1', '-1', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80108', '0', '4', '3', 'Charred Chainmail', '', '954', '1', '0', '1', '12', '12', '5', '-1', '-1', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '86', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL); 
 
replace into item_template values
 ('80111', '0', '4', '1', 'Ash-covered Tunic', '', '8717', '1', '0', '1', '12', '12', '5', '-1', '-1', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
REPLACE INTO `creature_template` VALUES (80116, 0, 1070, 0, 0, 0, 'Risen Oilblaze', NULL, 0, 4, 4, 72, 89, 0, 0, 59, 22, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 3, 5, 0, 50, 1, 2000, 2000, 1, 0, 0, 3, 0, 0, 0, 0, 6.9344, 9.5348, 100, 4, 1, 1505, 0, 0, 0, 0, 0, 0, 0, 0, 6751, 0, 0, 0, 0, 5879, 0, 0, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set loot_id = 80116 where entry = 80116; 
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80116, 80114, 30, 0, 1, 1);

replace into item_template values
 ('80162', '0', '15', '0', 'Ash', '', '2480', '0', '0', '1', '6', '6', '0', '-1', '-1', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80163', '0', '15', '0', 'Smoldering Ember', '', '9518', '0', '0', '1', '7', '7', '0', '-1', '-1', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80116, 80112, -100, 1, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80116, 80162, 40, 2, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80116, 80163, 60, 2, 1, 1);

update creature_template set faction = 189,
health_min = 80, health_max = 100, 
armor = 76, dmg_min = 8, dmg_max = 10, attack_power = 60, 
fire_res = 80, dmg_school = 2,
spell_id1 = 11962, gold_min = 4, gold_max = 12, ai_name = "EventAI"
where entry = 80116;

-- Note: spell doesn't work, no idea why.

SET @quest_entry = 80103;
SET @quest_zone = 406;
SET @title = 'Risen Oilblazes';
SET @description = 'Well, I guess we figured out why the elves are up here. The whole dang forest up ahead is on fire! And it\’s gotta be goblin-made, too, because no one else uses the same kind of oil! That\’s Undermine stuff, kid. There\’s not a gnome in the world that can buy that.\n\nI don\’t know what\’s goin\’ on, but I don\’t like it. Go out and get some of that oil. Maybe it\’ll tell us what\’s happening, or at least it\’ll be a nice prize when we go back if not.';
SET @objective = 'Collect 8 Living Petroleums from Risen Oilblazes in the Scorched Stand, then return to Nert Blastentom.';
SET @completetext = 'This doesn\’t make any sense. Why would they leave such valuable stuff behind?\n\nWhere the heck did everybody go?';
SET @incompletetext = 'This stuff will burn for years if you let it. There\’s a reason it\’s a goblin trade secret. But there\’s no profit in burning down a whole forest!';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 150;
SET @reward_money = 250; 
SET @quest_level = 4;
SET @min_level = 3;
SET @questgiver_id = 80100;
SET @quest_finisher = 80100;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 0;
SET @RewChoiceItemId1 = 80108; 
SET @RewChoiceItemId2 = 80109; 
SET @RewChoiceItemId3 = 80110;
SET @RewChoiceItemId4 = 80111; 
SET @RewChoiceItemCount1 = 1;
SET @RewChoiceItemCount2 = 1;
SET @RewChoiceItemCount3 = 1;
SET @RewChoiceItemCount4 = 1;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 0;
SET @creature_to_kill_2 = 0; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 0;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 80112; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 8;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);

replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');

update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest 
where entry = @quest_entry;	

-- The Other White Mech

replace into item_template values
 ('80115', '0', '4', '1', 'Frayed Sash', '', '27958', '1', '0', '1', '13', '13', '6', '-1', '-1', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '16', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('80116', '0', '4', '2', 'Studded Bracers', '', '17002', '1', '0', '1', '12', '12', '9', '-1', '-1', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '18', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80117', '0', '4', '2', 'Charred Boots', '', '16980', '1', '0', '1', '12', '12', '8', '-1', '-1', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '34', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80118', '0', '4', '3', 'Scrapmetal Boots', '', '6903', '1', '0', '1', '12', '12', '8', '-1', '-1', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '62', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '30', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `creature_template` VALUES (80117, 0, 7920, 0, 0, 0, 'Haywire Battlechicken', NULL, 0, 2, 2, 72, 89, 0, 0, 59, 22, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 3, 5, 0, 50, 1, 2000, 2000, 1, 0, 0, 3, 0, 0, 0, 0, 6.9344, 9.5348, 100, 4, 1, 1505, 0, 0, 0, 0, 0, 0, 0, 0, 6751, 0, 0, 0, 0, 5879, 0, 0, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set scale = 3, type = 9 where entry = 80117;
update creature_template set faction = 189, type = 9 where entry = 80117;
update creature_model_info set bounding_radius = 0.1 where modelid = 7920;
update creature_model_info set combat_reach = 0.1 where modelid = 7920;

replace into item_template values
 ('80119', '0', '0', '0', 'Mechanical Drumstick', '', '17923', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);      

update creature_template set loot_id = 80117 where entry = 80117; 
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80117, 80119, -100, 0, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80117, 80158, 30, 1, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80117, 80159, 70, 2, 1, 1);
	 
SET @quest_entry = 80104;
SET @quest_zone = 406;
SET @title = 'The Other White Mech';
SET @description = 'If there’s one thing I like better than crackin\' skulls for profit, it\’s cookin\’ up brand-new mechanical marvels. There\’s a whole butcher\’s shop of parts out there in those burnt woods, and buddy, my mouth is waterin\’ for a big old mechanical feast!\n\nI don\’t know why the other expedition would leave so much behind and I don\’t care - bring me some of those parts!';
SET @objective = 'Collect 5 Mechanical Drumsticks from the mechanical chickens and return to Sprat Nozzleton.';
SET @completetext = 'You know, sometimes farmers tell me their chickens are better than mine because their chickens don\'t blow up.\n\nPersonally, I think my chickens are better - for the exact same reason. Anyways, thanks for picking me up some parts.\n\nHopefully I can whip something up that might be helpful against... whatever is going on in this valley.';
SET @incompletetext = 'Well, what are you waiting for?\n\nYou\’re supposed to be some kind of big tough enforcer now, right? Go get me some parts!';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 160;
SET @reward_money = 100; 
SET @quest_level = 2;
SET @min_level = 1;
SET @questgiver_id = 80101;
SET @quest_finisher = 80101;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 0;
SET @RewChoiceItemId1 = 80115; 
SET @RewChoiceItemId2 = 80116; 
SET @RewChoiceItemId3 = 80117;
SET @RewChoiceItemId4 = 80118; 
SET @RewChoiceItemCount1 = 1;
SET @RewChoiceItemCount2 = 1;
SET @RewChoiceItemCount3 = 1;
SET @RewChoiceItemCount4 = 1;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 0;
SET @creature_to_kill_2 = 0; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 0;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 80119; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 5;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');

update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest 
where entry = @quest_entry;	

-- Ventured Too Far

replace into item_template values
 ('80120', '0', '4', '1', 'Oil Splattered Gloves', '', '16581', '1', '0', '1', '15', '15', '10', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '16', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80121', '0', '4', '2', 'Scorched Gloves', '', '17074', '1', '0', '1', '15', '15', '10', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '33', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
	 
SET @quest_entry = 80105;
SET @quest_zone = 406;
SET @title = 'Ventured Too Far';
SET @description = '<The note is soaked in oil and scorched by the elemental among whose remains you\'ve found it. It\’s difficult to make out most of the writing, but you can decipher one critical fragment.>\n\n...stupid boss didn\’t tell us anythin\’ about...place. Not a norm-…...tomb. Somethin\’ bad buried...-enter of forest...\n\n<This seems like i\t’s worth reporting back to the expedition.>';
SET @objective = 'Bring the Oil-scorched Note to Nert Blastentom back at the landing site.';
SET @completetext = '<Nert reads the note over.>\n\nWell. That probably ain\’t good, but we didn\’t come here to be stopped now, did we? Can\’t go back to the boss empty-handed, right?\n\n<Nert seems like he’s trying to convince himself as much as he is you.>';
SET @incompletetext = 'Why are you bringin\’ me a piece of paper, kid? Do I look like your teacher?';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 200;
SET @reward_money = 0; 
SET @quest_level = 5;
SET @min_level = 4;
SET @questgiver_id = 0;
SET @quest_finisher = 80100;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 0;
SET @RewChoiceItemId1 = 80120; 
SET @RewChoiceItemId2 = 80121; 
SET @RewChoiceItemId3 = 0;
SET @RewChoiceItemId4 = 0; 
SET @RewChoiceItemCount1 = 1;
SET @RewChoiceItemCount2 = 1;
SET @RewChoiceItemCount3 = 0;
SET @RewChoiceItemCount4 = 0;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 0;
SET @creature_to_kill_2 = 0; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 0;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 80114; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 1;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');

update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest 
where entry = @quest_entry;	

-- The Grumbling Grove 

replace into item_template values
 ('80164', '0', '15', '0', 'Rusty Sawblade', '', '15807', '0', '0', '1', '9', '9', '0', '-1', '-1', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80165', '0', '15', '0', 'Smoking Gizmo', '', '7839', '0', '0', '1', '9', '9', '0', '-1', '-1', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `creature_template` VALUES (80118, 0, 18322, 18323, 0, 0, 'Animated Shredder', NULL, 0, 5, 5, 100, 120, 0, 0, 147, 22, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 7, 10, 0, 54, 1, 2000, 2000, 1, 0, 0, 3, 0, 0, 0, 0, 8.58, 11.7975, 100, 9, 1, 30, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 5880, 0, 0, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set loot_id = 80118 where entry = 80118; 
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80118, 80164, 30, 1, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80118, 80164, 70, 2, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80118, 80170, -100, 3, 1, 1);

update creature_template set 
health_min = 100, health_max = 130, dmg_school = 5,
armor = 96, dmg_min = 10, dmg_max = 16, attack_power = 60,
spell_id1 = 0, gold_min = 12, gold_max = 20 
where entry = 80118;

replace into `creature_template_addon` (`entry`, `auras`) values ('80118', '16592');

REPLACE INTO creature_model_info VALUES (18315, 5875, 2, 2, 0, 0, 0),(18316, 5875, 2, 2, 0, 0, 0),(18317, 5875, 2, 2, 0, 0, 0),(18318, 5875, 2, 2, 0, 0, 0);
REPLACE INTO creature_model_info VALUES (18322, 5875, 2, 2, 0, 0, 0),(18323, 5875, 2, 2, 0, 0, 0);

REPLACE INTO `creature_template` VALUES (80119, 0, 1228, 0, 0, 0, 'Muttering Vulture', NULL, 0, 4, 4, 80, 100, 0, 0, 180, 73, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 6, 11, 0, 56, 1, 2000, 2000, 1, 0, 0, 7, 0, 0, 0, 0, 13.4464, 18.4888, 100, 1, 1, 2969, 0, 0, 0, 0, 0, 0, 0, 0, 5708, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
	 
update creature_template set faction = 189,
health_min = 100, health_max = 120, dmg_school = 5,
armor = 76, dmg_min = 8, dmg_max = 12, attack_power = 60,
spell_id1 = 0, gold_min = 9, gold_max = 20 
where entry = 80119;
	 
update creature_template set loot_id = 80119 where entry = 80119; 
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80119, 80160, 30, 1, 1, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80119, 80161, 70, 2, 1, 1);
	 
replace into `creature_template_addon` (`entry`, `auras`) values ('80119', '16592');
	 
replace into item_template values
 ('80122', '0', '4', '1', 'Oil Splattered Boots', '', '27725', '1', '0', '1', '18', '18', '8', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('80123', '0', '4', '2', 'Oilrag Boots', '', '4016', '1', '0', '1', '18', '18', '8', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '36', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL); 
	 
SET @quest_entry = 80106;
SET @quest_zone = 406;
SET @title = 'The Grumbling Grove';
SET @description = 'Okay, look. Any treasure hunter is gonna find some haunted treasure from time to time, see? And we can\’t go back to the boss empty-handed. I mean CAN\’T.\n\nLike, he\’ll have us shipped off to the mines, can\’t.\n\nSo here\’s what we\’re gonna do, okay? We\’re gonna try and get this thing anyway. You\’ve done good so far, kid, so you think you\’re up for a little more “enforcing”? There seem to be more of the first expedition\’s mechs in the little forest on the other side of the valley, and, uh, some vultures that don’t look real natural. Clear \‘em out, and we\’ll see what\’s in there.';
SET @objective = 'Kill 5 Animated Shredders and 5 Muttering Vultures in the Grumbling Grove.';
SET @completetext = 'This place gives me the willies. The sooner we\’re out of here, the better, right kid?';
SET @incompletetext = 'I don’t like the look of \‘em any more than you do, kid. But what choice we got?';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 200;
SET @reward_money = 200; 
SET @quest_level = 6;
SET @min_level = 4;
SET @questgiver_id = 80100;
SET @quest_finisher = 80100;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80105;
SET @RewChoiceItemId1 = 80122; 
SET @RewChoiceItemId2 = 80123; 
SET @RewChoiceItemId3 = 0;
SET @RewChoiceItemId4 = 0; 
SET @RewChoiceItemCount1 = 1;
SET @RewChoiceItemCount2 = 1;
SET @RewChoiceItemCount3 = 0;
SET @RewChoiceItemCount4 = 0;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 80118;
SET @creature_to_kill_2 = 80119; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 5;
SET @creature_to_kill_2_count = 5;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 0; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 0;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');

update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest 
where entry = @quest_entry;	

-- Shadow On The Plateau

replace into item_template values
 ('80124', '0', '4', '2', 'Scorched Belt', '', '16932', '1', '0', '1', '20', '20', '6', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80125', '0', '4', '3', 'Charred Belt', '', '26930', '1', '0', '1', '20', '20', '6', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '58', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80166', '0', '15', '0', 'Bone Shards', '', '1416', '0', '0', '1', '13', '13', '0', '-1', '-1', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `creature_template` VALUES (80120, 0, 4629, 0, 0, 0, 'Tomb Shadow', NULL, 0, 6, 6, 120, 136, 0, 0, 207, 21, 0, 0.888888, 0.857143, 0, 20, 5, 0, 0, 1, 7, 10, 0, 56, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 13.4464, 18.4888, 100, 6, 0, 1520, 1520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 12, '', 1, 1, 0, 0, 3, 1520, 0, 0, 8602131, 0, 0, '');
	 
update creature_template set loot_id = 80120 where entry = 80120; 
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (80120, 80166, 100, 1, 2, 3); 
	 
update creature_template set script_name = "npc_tomb_shadow" where entry = 80120;
update creature_template set movement_type = 0 where entry = 80120;
	 
update creature_template set faction = 22 where entry = 80120;
update creature_template set scale = 1.5 where entry = 80120;
update creature_template set loot_id = 1531 where entry = 80120;
update creature_template set equipment_id = 0 where entry = 80120;

update creature_template set 
health_min = 120, health_max = 160, dmg_school = 5,
armor = 96, dmg_min = 12, dmg_max = 16, attack_power = 60,
spell_id1 = 0, gold_min = 9, gold_max = 29 
where entry = 80120;

update creature_template set script_name = "npc_nert_blastentom" where entry = 80100;

replace into `gameobject_template` values
(3000209, 0, 2, 1189, 'Locked Crypt Door', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_crypt_door');
	 
SET @quest_entry = 80107;
SET @quest_zone = 406;
SET @title = 'Shadow On The Plateau';
SET @description = 'I don\’t envy you right now, kid.\n\nSee, those weird vultures aren\’t the worst thing in the woods. Some of the other bruisers were havin\’ a look around, and they found a tomb that looks like it\'s from Uldaman for how old it is.\n\nTried to get close, but they heard some kind of unholy sound from inside. These guys have been around for some of the boss\' "persuasive" interviews before, and they\'ve never heard sounds like that.\n\nSaid it echoed around the hills all unnatural-like, like it was bouncin\' off trees that weren\'t there.\n\nI\'ll fight elves, I\'ll fight plant monsters, I\'ll fight our own blasted tanks, but I am not messing with some ancient cursed tomb. You go out there and find out what\'s inside so you can kill it, and you and me are friends for good, alright?';
SET @objective = 'Investigate the tomb in the Grumbling Grove, then return to Nert Blastentom.';
SET @completetext = 'The first of many? Nope, nope, nope. I don\’t care what the boss says, I am not gettin\’ cursed by some angry ghost. We gotta get outta here, kid.';
SET @incompletetext = 'This place gives me the heebie-jeebies.';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 250;
SET @reward_money = 0; 
SET @quest_level = 6;
SET @min_level = 4;
SET @questgiver_id = 80100;
SET @quest_finisher = 80100;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80106;
SET @RewChoiceItemId1 = 80124; 
SET @RewChoiceItemId2 = 80125; 
SET @RewChoiceItemId3 = 0;
SET @RewChoiceItemId4 = 0; 
SET @RewChoiceItemCount1 = 1;
SET @RewChoiceItemCount2 = 1;
SET @RewChoiceItemCount3 = 0;
SET @RewChoiceItemCount4 = 0;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 80120;
SET @creature_to_kill_2 = 0; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 1;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 0; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 0;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');

update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest 
where entry = @quest_entry;

-- Part II, Durotar

-- Me Not Any Kind Of Orc

replace into `gameobject_template` values 
(3000100, 0, 1, 330, 'FM Acquisition, Blastentom\'s Property', 0, 0, 0.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_fm_acquisition');

replace into broadcast_text (ID, MaleText) values (100100, 'As you inspect the plane more carefully, you notice the words "Property of Nert Blastentom" scribbled onto the side.\n\nThe plane is decorated with small stickers. Among them are a small coin, a yellow parrot, and a hammer.\n\nThe words "FM Acquisition" are inscribed onto the bottom.');
replace into npc_text (ID, BroadcastTextID0) values (100100, 100100);

replace into item_template values
 ('80126', '0', '2', '8', 'Sharpened Bastard Sword', '', '31400', '2', '0', '1', '235', '235', '17', '-1', '-1', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3100', '0',
 '0', '19', '27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '45', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80127', '0', '2', '3', 'Polished Boomstick', '', '6600', '2', '0', '1', '213', '213', '15', '-1', '-1', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2400', '100',
 '3', '8', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '35', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80128', '0', '2', '10', 'Pearltip Staff', '', '20424', '2', '0', '1', '311', '311', '17', '-1', '-1', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2500', '0',
 '0', '15', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '3', '0', '0', '45', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 update item_template set sheath = 2 where entry = 80128;
 
 replace into item_template values
 ('80129', '0', '2', '15', 'Balanced Hand Blade', '', '6472', '2', '0', '1', '312', '312', '21', '-1', '-1', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1400', '0',
 '0', '6', '11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '5', '0', '0', '30', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
update item_template set sheath = 3 where entry = 80129;

REPLACE INTO `creature_template` VALUES (80121, 0, 7164, 0, 0, 0, 'Nert Blastentom', 'Venture Refugee', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

update creature_template set equipment_id = 0 where entry = 80121;

SET @gossip_menu_id = 59011;
SET @magic_number = 80121; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Durotar ain\'t exactly a vacation destination. Sand and scorpids and harpies, and apparently they\'ve added some sort of demonic cult since my last visit. Still, it\'s better than finding yourself on the wrong end of a Venture Co. brute squad.\n\n<Nert sighs.>\n\nI used to be the brute squad.\n\nAnyways, a good businessman is always looking forward. Where there\'s scarcity, there\'s opportunity. The Horde seems to specialize in colonizing the most hostile wastelands on the face of Azeroth, so with enough know-how, I bet I can make enough to vacation on the South Sea island of my choice.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO `creature_template` VALUES (80122, 0, 10746, 0, 0, 0, 'Sprat Nozzleton', 'Venture Refugee', 0, 3, 3, 219, 219, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

update creature_template set equipment_id = 0 where entry = 80122;	

REPLACE INTO `creature_template` VALUES (80123, 0, 7180, 0, 0, 0, 'Nagus', 'Venture Refugee', 0, 14, 14, 594, 594, 0, 0, 20, 29, 6, 1, 1.14286, 0, 20, 5, 0, 0, 1, 15, 19, 0, 70, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 23.0384, 31.6778, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3881, 0, 0, 0, 0, 524298, '');

update creature_template set equipment_id = 0 where entry = 80123;	

REPLACE INTO `creature_template` VALUES (80124, 0, 7166, 0, 0, 0, 'Grizzie the Enforcer', 'Venture Refugee', 523, 11, 11, 456, 456, 406, 406, 20, 29, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 1, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3153, 0, 0, 0, 0, 524298, '');

REPLACE INTO `creature_template` VALUES (80125, 0, 7179, 0, 0, 0, 'Mayten Boomrifle', 'Venture Refugee', 4648, 8, 8, 334, 334, 297, 297, 20, 126, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 7, 10, 0, 58, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 3, 0, 13.5872, 18.6824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3154, 0, 0, 0, 0, 524298, '');

REPLACE INTO `creature_template`VALUES (80126, 0, 15300, 0, 0, 0, 'Leyti Quicktongue', 'Venture Refugee', 0, 8, 8, 334, 334, 297, 297, 20, 29, 18, 1, 1.14286, 0, 20, 5, 0, 0, 1, 7, 10, 0, 58, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 4, 0, 13.5872, 18.6824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3155, 0, 0, 0, 0, 524298, '');

REPLACE INTO `creature_template` VALUES (80127, 0, 9780, 0, 0, 0, 'Amri Demondeal', 'Venture Refugee', 4670, 9, 9, 372, 372, 333, 333, 20, 29, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 9, 13, 0, 60, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 9, 0, 15.2064, 20.9088, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3156, 0, 0, 0, 0, 524298, '');

REPLACE INTO `creature_template` VALUES (80128, 0, 10745, 0, 0, 0, 'Wizette Icewhistle', 'Venture Refugee', 64, 10, 10, 413, 413, 370, 370, 20, 126, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 7, 7, 0, 62, 1, 2000, 2000, 1, 4864, 0, 0, 0, 0, 8, 0, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 5884, 0, 0, 0, 0, 524298, '');

update creature_template set equipment_id = 0 where entry in (80123,80124,80125,80126,80127,80128);
update creature_template set npc_flags = 0 where entry in (80123,80124,80125,80126,80127,80128);

replace into creature_template_addon (entry, bytes1, emote) values ('80122', '1', 0),('80123', '1', 0); 
	
SET @quest_entry = 80108;
SET @quest_zone = 406;
SET @title = 'Me Not Any Kind Of Orc';
SET @description = 'There\’s only one place in the world that would take in a bunch of smelly refugees with nothing to contribute, kid. The Horde.\n\nYeah, I know they don\’t like us. But they don\’t like us less than our former associates, get it? We got a chance of winning them over, and there\’s no way the Venture Co. is gonna get us if we\’re holed up inside of Orgrimmar!\n\nIt\’s time to go straight, little buddy.';
SET @objective = 'Join Nert Blastentom and travel to Durotar to join the Horde.';
SET @completetext = 'Alright.\n\nWe made it to Durotar. Step 1 complete.\n\nNow, for step 2 of my master plan that I just made up...';
SET @incompletetext = 'Bit of a bumpy flight, but not as bumpy as being tossed off the cliffs of Mulgore, I bet.';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 200;
SET @reward_money = 200; 
SET @quest_level = 6;
SET @min_level = 4;
SET @questgiver_id = 80100;
SET @quest_finisher = 80121;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80107;
SET @RewChoiceItemId1 = 80126; 
SET @RewChoiceItemId2 = 80127; 
SET @RewChoiceItemId3 = 80128;
SET @RewChoiceItemId4 = 80129; 
SET @RewChoiceItemCount1 = 1;
SET @RewChoiceItemCount2 = 1;
SET @RewChoiceItemCount3 = 1;
SET @RewChoiceItemCount4 = 1;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 0;
SET @creature_to_kill_2 = 0; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 0;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 0; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 0;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');

update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest 
where entry = @quest_entry;

-- Zug-zug Or Somethin’
	 
SET @quest_entry = 80109;
SET @quest_zone = 14;
SET @title = 'Zug-zug Or Somethin\’';
SET @description = 'Our situation ain\’t good. If the Horde won\’t help us, I don\’t know where else we could go. But I\’ve got a plan, see.\n\nAn old orc friend of mine is the cook in Razor Hill, the orc town just down below us. We write every now and then, and from what he tells me, the head of the guard there just goes nuts for roasted boar.\n\nWhy don\’t you hunt some of the boar around here, take them to him? I bet he can put in a good word. And as any good goblin knows, one good word is all you need to take it all the way to the top!';
SET @objective = 'Collect 5 Chunks of Boar Meat and bring them to Cook Torka in Razor Hill.';
SET @completetext = 'Boar meat? How did you know to bring boar... oh.\n\nYou\’re friends with Nert, aren\’t you.';
SET @incompletetext = 'Oh, hello there! It’s been a long time since I\’ve seen a goblin around here!';
SET @faction_id = 0;
SET @faction_count = 0;
SET @xp_or_money = 200;
SET @reward_money = 0; 
SET @quest_level = 6;
SET @min_level = 4;
SET @questgiver_id = 80121;
SET @quest_finisher = 3191;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80108;
SET @RewChoiceItemId1 = 159; 
SET @RewChoiceItemId2 = 7097; 
SET @RewChoiceItemId3 = 0;
SET @RewChoiceItemId4 = 0; 
SET @RewChoiceItemCount1 = 5;
SET @RewChoiceItemCount2 = 5;
SET @RewChoiceItemCount3 = 0;
SET @RewChoiceItemCount4 = 0;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 0;
SET @creature_to_kill_2 = 0; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 0;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 769; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 5;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');

update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest 
where entry = @quest_entry;

-- Green Goes Red

replace into item_template values
 ('80131', '0', '4', '2', 'Tanned Hide Vest', '', '17093', '2', '0', '1', '204', '204', '5', '-1', '-1', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '58', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '55', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('80132', '0', '4', '3', 'Chainmail Harness', '', '11382', '2', '0', '1', '181', '181', '5', '-1', '-1', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '115', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '65', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('80133', '0', '4', '1', 'Bloodstained Robe', '', '12687', '2', '0', '1', '203', '203', '5', '-1', '-1', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '45', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('80130', '0', '0', '0', 'Torka’s Boarbecue Ribs', '', '21327', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL); 
 
update creature_template set script_name = "npc_garthok" where entry = 3139;

delete from creature where id = 3139;

replace into `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `deathstate`, `movementtype`, `spawnflags`, `visibilitymod`, `patch_min`, `patch_max`) values (3139, 1, 0, 3139, 280.431, -4713.14, 11.6292, 5.74273, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
	 
SET @quest_entry = 80110;
SET @quest_zone = 14;
SET @title = 'Green Goes Red';
SET @description = 'I owe Nert a favor, but getting you into the Horde is a tall order!\n\nI know Gar\’thok likes boar meat, but I\’d like to think he\’s got a better head on his shoulders than to sign off on you as recruits just for a good lunch.\n\nOh well. Knock yourself out, I guess.\n\nAnd tell Nert I said hi!';
SET @objective = 'Bring Torka\’s Boarbecue Ribs to Gar\’thok in Razor Hill and ask him to help you join the Horde.';
SET @completetext = '<You hand over the boar and begin to explain your situation. Gar\’thok does not appear to be fully listening as he devours the food with relish. It takes him a moment to realize you\’ve finished.>\n\n... Huh? Oh, yes.\n\n<Gar\’thok regains his composure.>\n\nAre you prepared to fight with honor?\n\nTo join the ranks of the Warchief\’s forces?\n\nTo be his fist in lands unknown, and to serve the Horde without question?';
SET @incompletetext = '<Gar\’thok appears to be salivating slightly.>\n\nWhat are you doing here, and why do you smell like Torka\’s cooking?';
SET @faction_id = 76;
SET @faction_count = 250;
SET @xp_or_money = 200;
SET @reward_money = 0; 
SET @quest_level = 6;
SET @min_level = 4;
SET @questgiver_id = 3191;
SET @quest_finisher = 3139;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80109;
SET @RewChoiceItemId1 = 80131; 
SET @RewChoiceItemId2 = 80132; 
SET @RewChoiceItemId3 = 80133;
SET @RewChoiceItemId4 = 0; 
SET @RewChoiceItemCount1 = 1;
SET @RewChoiceItemCount2 = 1;
SET @RewChoiceItemCount3 = 1;
SET @RewChoiceItemCount4 = 0;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0; 
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 0;
SET @creature_to_kill_2 = 0; 
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 0;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 80130; 
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 1;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');

update quest_template set SrcItemId = 80130, SrcItemCount = 1 where entry = @quest_entry;

update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest 
where entry = @quest_entry;

replace into`creature_template` values (80130, 0, 10747, 0, 0, 0, 'Fareck', 'Apprentice Weapon Master', 5271, 50, 50, 6830, 6830, 0, 0, 2999, 12, 17, 1, 1.14286, 0, 20, 5, 0, 1, 1, 292, 333, 0, 226, 1, 1500, 2000, 1, 4096, 0, 0, 2, 0, 0, 0, 55.36, 76.12, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 11867, 0, 0, 0, 0, 524298, '');
update creature_template set npc_flags = 0, trainer_type = 0 where entry = 80130;

update creature_template set faction = 35 where entry = 80130;

-- Grease-stained letter (Warrior)

replace into item_template values
 ('80150', '0', '15', '0', 'Grease-stained Letter', '', '3029', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '80150', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);  
 
replace into page_text values (80150, 'Hey bub, it\’s me, Grizzie the Enforcer, from Undermine, remember me?\n\nProbably not, but anyways, I am writing this here letter for you because I saw you swinging that weapon at them fools that tried to give you the gutter, and it reminded me of the good ol\’ days in our childhood when you saved me from that hobgoblin!\n\nThanks to you I became a big bruiser, and now I am here to help teach others how to smack. Come learn a thing or two, but make sure you bring your coin purse.', 0);

set @quest_entry = 80115;
set @quest_zone = 406;
set @title = 'Grease-stained Letter';
set @description = 'Hey, $N, while you were being the perfect employee doing my--I mean your job, Grizzie the Enforcer was looking for you. Said something about him owing you a favor or whatever. Here, he mentions it in this letter which I may or may have not dropped into my buzzard wings. Don\’t take too long, your break is short for a reason!';
set @objective = 'Read the Grease-stained Letter and speak to Grizzie the Enforcer.';
set @completetext = '$N, pal, great too see ya, let\’s have a quick chat.';
set @incompletetext = 'Move it, $N, or I\'m gonna be taking some coin out of your paycheck.';
set @faction_id = 0;
set @faction_count = 0;
set @xp_or_money = 164;
set @reward_money = 0; 
set @quest_level = 2;
set @min_level = 2;
set @questgiver_id = 80100;
set @quest_finisher = 80104;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80100;
set @RewChoiceItemId1 = 0; 
set @RewChoiceItemId2 = 0; 
set @RewChoiceItemId3 = 0;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 0;
set @RewChoiceItemCount2 = 0;
set @RewChoiceItemCount3 = 0;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 0;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 0;
set @reward_item_2_count = 0;
set @reward_item_3_count = 0;
set @reward_item_4_count = 0;
set @creature_to_kill_1 = 0;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 0;
set @creature_to_kill_2_count = 0;
set @creature_to_kill_3_count = 0;
set @creature_to_kill_4_count = 0;
set @required_item_1 = 80150;
set @required_item_2 = 0;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 1;
set @required_item_2_count = 0;
set @required_item_3_count = 0;
set @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');
	 
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest,
srcItemId = 80150, srcitemcount = 1, RequiredClasses = 1
where entry = @quest_entry;	

-- Ooze-covered Letter (Rogue)

replace into item_template values
 ('80151', '0', '15', '0', 'Ooze-covered Letter', '', '3029', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '80151', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);  
 
replace into page_text values (80151, 'Thief, betrayer, son of a gnome!\n\nI heard you were around, $N. How can you show your face in the same place as I?\n\nYou stole my gig! It was my greatest theft. I would\'ve reaped all of the rewards and fled in the wind!\n\nUnlike you who got caught, and then sent into labor like the fool that you are! In any case, come give me back the money you owe me, $N!\n\nI\'ll teach you who the better rogue is...', 0);

set @quest_entry = 80116;
set @quest_zone = 406;
set @title = 'Ooze-covered Letter';
set @description = 'You’re back, $N. Hey, why won\’t you tell your friend here, me, the latest gossip of the moment, eh?\n\nI hear you owe Leyti Quicktongue some money. Did you gamble all of your savings back home or what?\n\nIs that a loan shark? Do I have to pay you health insurance, \'cause I ain\'t gonna. Now here, read this, but be careful. It has some ugly looking ooze on one of the corners.\n\nShort break, and I mean it! Short!';
set @objective = 'Read the Ooze-covered Letter and speak to Leyti Quicktongue.';
set @completetext = 'If it ain’t $N, you thieving scoundrel.\n\nWhat do you mean it was your gig?';
set @incompletetext = 'Tick-tock, $N. Move it or no lunch break!';
set @faction_id = 0;
set @faction_count = 0;
set @xp_or_money = 164;
set @reward_money = 0; 
set @quest_level = 2;
set @min_level = 2;
set @questgiver_id = 80100;
set @quest_finisher = 80106;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80100;
set @RewChoiceItemId1 = 0; 
set @RewChoiceItemId2 = 0; 
set @RewChoiceItemId3 = 0;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 0;
set @RewChoiceItemCount2 = 0;
set @RewChoiceItemCount3 = 0;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 0;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 0;
set @reward_item_2_count = 0;
set @reward_item_3_count = 0;
set @reward_item_4_count = 0;
set @creature_to_kill_1 = 0;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 0;
set @creature_to_kill_2_count = 0;
set @creature_to_kill_3_count = 0;
set @creature_to_kill_4_count = 0;
set @required_item_1 = 80151;
set @required_item_2 = 0;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 1;
set @required_item_2_count = 0;
set @required_item_3_count = 0;
set @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');
	 
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest,
srcItemId = 80151, srcitemcount = 1, RequiredClasses = 8
where entry = @quest_entry;	

-- Leather-Covered Letter (Hunter)

replace into item_template values
 ('80152', '0', '15', '0', 'Leather-Covered Letter', '', '3029', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '80152', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);  
 
replace into page_text values (80152, '$N, I am the local big-game hunter. Believe it or not, I should\’ve been with Nesingwary himself in Stranglethorn Vale, but my debts to the Venture Co. dragged me here instead. While I can only shoot a buzzard or a crow out here, I also saw you handling a gun. Not the best way of shooting it, but for some coin, I can teach you to be a proper shot!', 0);

set @quest_entry = 80117;
set @quest_zone = 406;
set @title = 'Leather-covered Letter';
set @description = 'Back for more petty jobs, $N? While that is amazingly boring of you, the local hunter wanted me to give you this. Said something about teaching you to shoot properly!\n\nHmph, that guy think he knows how to teach a goblin to blow and shoot stuff... the audacity!\n\nAnyways, take this. Return back quickly or no meal breaks for you today.';
set @objective = 'Read the Leather-covered Letter and speak to Mayten Boomrifle.';
set @completetext = 'Shhhh, $N, not so loud. I\’m trying to take that buzzard out of the sky.';
set @incompletetext = 'I hear we\'ve got buzzard wings on the menu tonight. I\'ll enjoy your share, too, I guess.';
set @faction_id = 0;
set @faction_count = 0;
set @xp_or_money = 164;
set @reward_money = 0; 
set @quest_level = 2;
set @min_level = 2;
set @questgiver_id = 80100;
set @quest_finisher = 80105;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80100;
set @RewChoiceItemId1 = 0; 
set @RewChoiceItemId2 = 0; 
set @RewChoiceItemId3 = 0;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 0;
set @RewChoiceItemCount2 = 0;
set @RewChoiceItemCount3 = 0;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 0;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 0;
set @reward_item_2_count = 0;
set @reward_item_3_count = 0;
set @reward_item_4_count = 0;
set @creature_to_kill_1 = 0;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 0;
set @creature_to_kill_2_count = 0;
set @creature_to_kill_3_count = 0;
set @creature_to_kill_4_count = 0;
set @required_item_1 = 80152;
set @required_item_2 = 0;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 1;
set @required_item_2_count = 0;
set @required_item_3_count = 0;
set @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');
	 
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest,
srcItemId = 80152, srcitemcount = 1, RequiredClasses = 4
where entry = @quest_entry;	

-- Fancy Letter(Mage)

replace into item_template values
 ('80153', '0', '15', '0', 'Fancy Letter', '', '3029', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '80153', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);  
 
replace into page_text values (80153, 'Heya, $N. I hear you got big brains. One day you wished so much to blast something your hands were on fire, just like me, right?!\n\nThat\’s amazing. Another mage in this goblin hole. Ugh. Come, let\’s have a big-brain conversation while I teach you new stuff!\n\nBRING COIN!', 0);

set @quest_entry = 80118;
set @quest_zone = 406;
set @title = 'Fancy Letter';
set @description = 'Good job on those jobs that I sent you to do, $N. As boring as they were, you did your best. Can you conjure me some water? I\'m very thirsty!\n\nWhat, you don\’t know how to do that yet?\n\nSeriously man, here. Read this. Now, go learn something, and don\'t forget to bring me some sparkling water!';
set @objective = 'Read the Fancy Letter and speak to Wizette Icewhistle.';
set @completetext = 'Heya, sweetie, great to see ya. Ready for mama to teach you all these spells?';
set @incompletetext = 'No water, no job. No job, no coin.';
set @faction_id = 0;
set @faction_count = 0;
set @xp_or_money = 164;
set @reward_money = 0; 
set @quest_level = 2;
set @min_level = 2;
set @questgiver_id = 80100;
set @quest_finisher = 80108;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80100;
set @RewChoiceItemId1 = 0; 
set @RewChoiceItemId2 = 0; 
set @RewChoiceItemId3 = 0;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 0;
set @RewChoiceItemCount2 = 0;
set @RewChoiceItemCount3 = 0;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 0;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 0;
set @reward_item_2_count = 0;
set @reward_item_3_count = 0;
set @reward_item_4_count = 0;
set @creature_to_kill_1 = 0;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 0;
set @creature_to_kill_2_count = 0;
set @creature_to_kill_3_count = 0;
set @creature_to_kill_4_count = 0;
set @required_item_1 = 80153;
set @required_item_2 = 0;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 1;
set @required_item_2_count = 0;
set @required_item_3_count = 0;
set @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');
	 
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest,
srcItemId = 80153, srcitemcount = 1, RequiredClasses = 128
where entry = @quest_entry;	

-- Awful-looking Letter (Warlock)

replace into item_template values
 ('80154', '0', '15', '0', 'Awful-looking Letter', '', '3029', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '80154', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);  
 
replace into page_text values (80154, 'Hail, $N. I am Amri Demondeal, aspiring dark arts practitioner extraordinaire. When I first saw you, I felt an aura similar to mine. I think you\'ve got the chops for demon summoning and playing with felfire!\n\nI am very intrigued by your abilites, $N. Meet me in my cave and I will teach you more.', 0);

set @quest_entry = 80119;
set @quest_zone = 406;
set @title = 'Awful-looking Letter';
set @description = 'Pal, $N, back so soon?\n\nEh, we\’re pals, right?\n\nWhy did Amri Demondeal come looking for you? Why won\'t you tell me?\n\nDo you also do the spooky demon stuff like he does? With, like, green fire and all that?\n\nGuess I\’ll see, won\'t I? Here, this is for you from her. I hope she never speaks to me again!';
set @objective = 'Read the Awful-looking Letter and speak to Amri Demondeal.';
set @completetext = '$N, welcome, welcome. The dark arts await.';
set @incompletetext = 'Don\’t tell Amri I said anything about her! I don\'t want her to burn my backside off.';
set @faction_id = 0;
set @faction_count = 0;
set @xp_or_money = 164;
set @reward_money = 0; 
set @quest_level = 2;
set @min_level = 2;
set @questgiver_id = 80100;
set @quest_finisher = 80107;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80100;
set @RewChoiceItemId1 = 0; 
set @RewChoiceItemId2 = 0; 
set @RewChoiceItemId3 = 0;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 0;
set @RewChoiceItemCount2 = 0;
set @RewChoiceItemCount3 = 0;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 0;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 0;
set @reward_item_2_count = 0;
set @reward_item_3_count = 0;
set @reward_item_4_count = 0;
set @creature_to_kill_1 = 0;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 0;
set @creature_to_kill_2_count = 0;
set @creature_to_kill_3_count = 0;
set @creature_to_kill_4_count = 0;
set @required_item_1 = 80154;
set @required_item_2 = 0;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 1;
set @required_item_2_count = 0;
set @required_item_3_count = 0;
set @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');
	 
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest,
srcItemId = 80154, srcitemcount = 1, RequiredClasses = 256
where entry = @quest_entry;	

-- Garbage Man 

REPLACE INTO `creature_template` VALUES (80131, 0, 11353, 0, 0, 0, 'Kazznik', 'Venture Co. Worker', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

update creature_template set equipment_id = 51261 where entry = 80131;
update creature_template set npc_flags = 2 where entry = 80131;

delete from creature where id = 80131;

REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (80131, 1, 0, 51261, 1864.54, 1377.61, 140.293, 1.47031, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);

replace into creature_template_addon (entry, bytes1, emote) values ('80131', '1', 0); 

replace into gameobject_template values 
(3000227, 0, 3, 23550, 'Trash', 0, 0, 0.7, 57, 3000227, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

update gameobject_template set flags = 4 where entry = 3000227;
update gameobject_template set data0 = 43 where entry = 3000227;
update gameobject_template set data2 = 0 where entry = 3000227;
update gameobject_template set data3 = 1 where entry = 3000227;

replace into gameobject_template values 
(3000228, 0, 3, 23556, 'Trash', 0, 0, 0.8, 57, 3000227, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

update gameobject_template set flags = 4 where entry = 3000228;
update gameobject_template set data0 = 43 where entry = 3000228;
update gameobject_template set data2 = 0 where entry = 3000228;
update gameobject_template set data3 = 1 where entry = 3000228;

replace into gameobject_template values 
(3000229, 0, 3, 23542, 'Trash', 0, 0, 0.8, 57, 3000227, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

update gameobject_template set flags = 4 where entry = 3000229;
update gameobject_template set data0 = 43 where entry = 3000229;
update gameobject_template set data2 = 0 where entry = 3000229;
update gameobject_template set data3 = 1 where entry = 3000229;

replace into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) values 
(3000227, 80155, -100, 1, 1, 1, 0, 0, 10);

replace into item_template values
 ('80155', '0', '0', '0', 'Trash', '', '2053', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

set @quest_entry = 80120;
set @quest_zone = 406;
set @title = 'Garbage Man';
set @description = 'Hey, you! Yeah, I\'m talkin\' to you, pal!\n\nI\'ve been picking up our crew\'s trash all day long and I could really use a break.\n\nSay, hows about you clean up for a while?\n\nI\'ll be over here in the shade takin\' a quick snooze. When I wake up, I expect this place to be spotless.\n\nNow get to work!';
set @objective = 'Kazznik has asked you to collect the Trash littered throughout the worksite.';
set @completetext = 'Good job!\n\nDon\'t tell the boss I was taking a break. ';
set @incompletetext = 'Oh, you\'re back already?';
set @faction_id = 0;
set @faction_count = 0;
set @xp_or_money = 178;
set @reward_money = 50; 
set @quest_level = 2;
set @min_level = 2;
set @questgiver_id = 80131;
set @quest_finisher = 80131;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80100;
set @RewChoiceItemId1 = 0; 
set @RewChoiceItemId2 = 0; 
set @RewChoiceItemId3 = 0;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 0;
set @RewChoiceItemCount2 = 0;
set @RewChoiceItemCount3 = 0;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 4957;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 1;
set @reward_item_2_count = 0;
set @reward_item_3_count = 0;
set @reward_item_4_count = 0;
set @creature_to_kill_1 = 0;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 0;
set @creature_to_kill_2_count = 0;
set @creature_to_kill_3_count = 0;
set @creature_to_kill_4_count = 0;
set @required_item_1 = 80155; 
set @required_item_2 = 0;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 8;
set @required_item_2_count = 0;
set @required_item_3_count = 0;
set @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');
	 
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest 
where entry = @quest_entry;	 

delete from gameobject where id in (3000227,3000228,3000229);

REPLACE INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES 

(3000227, 1, 1858.29, 1358.6, 139.31, 4.69788, 0, 0, 0.712218, -0.701959, 160, 350, 100, 1, 0, 0, 0, 10),
(3000227, 1, 1852.47, 1342.3, 142.268, 6.09588, 0, 0, 0.0935137, -0.995618, 160, 350, 100, 1, 0, 0, 0, 10),
(3000227, 1, 1873.56, 1347.98, 142.264, 0.326349, 0, 0, 0.162452, 0.986717, 160, 350, 100, 1, 0, 0, 0, 10),
(3000227, 1, 1879.46, 1326.84, 144.375, 5.88696, 0, 0, 0.196819, -0.98044, 160, 350, 100, 1, 0, 0, 0, 10),
(3000227, 1, 1907.15, 1333.41, 145.331, 0.384462, 0, 0, 0.191049, 0.98158, 160, 350, 100, 1, 0, 0, 0, 10),
(3000227, 1, 1942.3, 1376.07, 150.079, 2.45006, 0, 0, 0.940816, 0.338918, 160, 350, 100, 1, 0, 0, 0, 10),
(3000227, 1, 1913.03, 1391.49, 149.043, 2.69432, 0, 0, 0.975097, 0.221777, 160, 350, 100, 1, 0, 0, 0, 10),
(3000227, 1, 1882.46, 1437.56, 141.919, 2.37466, 0, 0, 0.927374, 0.374137, 160, 350, 100, 1, 0, 0, 0, 10),
(3000227, 1, 1877.63, 1355.71, 140.03, 1.4314, 0, 0, 0.656145, 0.754635, 160, 350, 100, 1, 0, 0, 0, 10),
(3000227, 1, 1872.63, 1365.24, 143.713, 5.19346, 0, 0, 0.518302, -0.855197, 160, 350, 100, 1, 0, 0, 0, 10),
(3000227, 1, 1873.94, 1341.45, 142.264, 3.63836, 0, 0, 0.96931, -0.24584, 160, 350, 100, 1, 0, 0, 0, 10),
(3000227, 1, 1854.47, 1431.07, 141.641, 3.55637, 0, 0, 0.978572, -0.205906, 160, 350, 100, 1, 0, 0, 0, 10),
(3000227, 1, 1838.87, 1425.79, 143.757, 2.93434, 0, 0, 0.994635, 0.103443, 160, 350, 100, 1, 0, 0, 0, 10),
(3000227, 1, 1827.03, 1350.94, 147.019, 5.74685, 0, 0, 0.264963, -0.964258, 160, 350, 100, 1, 0, 0, 0, 10),
(3000227, 1, 1863.91, 1429.28, 140.836, 0.521342, 0, 0, 0.257729, 0.966217, 160, 350, 100, 1, 0, 0, 0, 10),
(3000228, 1, 1878.6, 1373.72, 141.585, 2.92365, 0, 0, 0.994069, 0.108756, 160, 350, 100, 1, 0, 0, 0, 10),
(3000228, 1, 1900.57, 1385.77, 148.469, 1.30259, 0, 0, 0.606215, 0.7953, 160, 350, 100, 1, 0, 0, 0, 10),
(3000228, 1, 1853.42, 1332.94, 144.047, 3.08543, 0, 0, 0.999606, 0.0280757, 160, 350, 100, 1, 0, 0, 0, 10),
(3000228, 1, 1837.14, 1337.41, 144.8, 2.39036, 0, 0, 0.930281, 0.366848, 160, 350, 100, 1, 0, 0, 0, 10),
(3000228, 1, 1824.35, 1350.73, 147.219, 1.25074, 0, 0, 0.585398, 0.810746, 160, 350, 100, 1, 0, 0, 0, 10),
(3000228, 1, 1854.03, 1361.83, 139.741, 6.13719, 0, 0, 0.0729312, -0.997337, 160, 350, 100, 1, 0, 0, 0, 10),
(3000228, 1, 1868.39, 1530.12, 143.347, 1.96359, 0, 0, 0.831495, 0.555532, 160, 350, 100, 1, 0, 0, 0, 10),
(3000228, 1, 1877.05, 1462.72, 142.186, 3.4205, 0, 0, 0.990292, -0.139001, 160, 350, 100, 1, 0, 0, 0, 10),
(3000228, 1, 1853.37, 1429.72, 141.756, 1.76566, 0, 0, 0.77254, 0.634966, 160, 350, 100, 1, 0, 0, 0, 10),
(3000228, 1, 1880.7, 1447.48, 142.546, 3.97866, 0, 0, 0.913685, -0.406423, 160, 350, 100, 1, 0, 0, 0, 10),
(3000229, 1, 1864.5, 1343.92, 142.263, 6.12832, 0, 0, 0.0773566, -0.997003, 160, 350, 100, 1, 0, 0, 0, 10),
(3000229, 1, 1913.87, 1353.1, 144.671, 0.905418, 0, 0, 0.437403, 0.899265, 160, 350, 100, 1, 0, 0, 0, 10),
(3000229, 1, 1869.47, 1369.15, 143.694, 4.96434, 0, 0, 0.612659, -0.790348, 160, 350, 100, 1, 0, 0, 0, 10),
(3000229, 1, 1829.37, 1337.33, 145.608, 0.640724, 0, 0, 0.31491, 0.949121, 160, 350, 100, 1, 0, 0, 0, 10),
(3000229, 1, 1883.26, 1448.56, 142.644, 2.13376, 0, 0, 0.875698, 0.482859, 160, 350, 100, 1, 0, 0, 0, 10);

-- This Is In My Contract (Warlock)

replace into item_template values
 ('80170', '0', '0', '0', 'Howling Crystal', '', '33448', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

set @quest_entry = 80121;
set @quest_zone = 406;
set @title = 'This Is In My Contract';
set @description = 'Nert might be afraid of a little shadow magic, but not us, huh?\n\nIt\’s time for you learn some real demon-summoning. Yeah, I know we\’re in the middle of a crisis, but there\’s no time like the present! We\’re warlocks!\n\nCrises are what we do! And besides, I\’m contractually obligated to help you new enforcers out.\n\nSo, here\’s what you\’re gonna do. You\’re gonna go on Nert\’s little expedition, but you\’re gonna bring me something special. It looks like some of the creatures there have little shards of a purple crystal on them, and purple just so happens to be our favorite color.\n\nBring me one back, and I\’ll teach ya to summon an imp. How\’s that?';
set @objective = 'Collect a Howling Crystal from one of the creatures of the Grumbling Grove.';
set @completetext = 'Nice! This will do nicely.\n\nNow, watch and learn, kid - you only get to rip a demon unwillingly from the void for the first time once.';
set @incompletetext = 'I\'m sorry, did you not understand?\n\nI thought I was crystal clear that I needed a crystal to help you.';
set @faction_id = 0;
set @faction_count = 0;
set @xp_or_money = 184;
set @reward_money = 0; 
set @quest_level = 6;
set @min_level = 4;
set @questgiver_id = 80107;
set @quest_finisher = 80107;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80100;
set @RewChoiceItemId1 = 0; 
set @RewChoiceItemId2 = 0; 
set @RewChoiceItemId3 = 0;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 0;
set @RewChoiceItemCount2 = 0;
set @RewChoiceItemCount3 = 0;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 6516;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 1;
set @reward_item_2_count = 0;
set @reward_item_3_count = 0;
set @reward_item_4_count = 0;
set @creature_to_kill_1 = 0;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 0;
set @creature_to_kill_2_count = 0;
set @creature_to_kill_3_count = 0;
set @creature_to_kill_4_count = 0;
set @required_item_1 = 80170;
set @required_item_2 = 0;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 1;
set @required_item_2_count = 0;
set @required_item_3_count = 0;
set @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');
	 
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest,
srcItemId = 80154, srcitemcount = 1, RequiredClasses = 256
where entry = @quest_entry;	

-- Starting food items:

REPLACE INTO `item_template` VALUES (80167, 0, 0, 0, 'Kaja\'Cola', '', 21794, 1, 0, 5, 25, 1, 0, -1, -1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 430, 0, -1, 0, 0, 59, 1000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `item_template` VALUES (80168, 0, 0, 0, 'Crunchy Murloc Fin', '', 25473, 1, 0, 5, 25, 1, 0, -1, -1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 433, 0, -1, 0, 0, 11, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, NULL);

-- Of Goblins and Future

REPLACE INTO `creature_template` VALUES (80132, 0, 9132, 0, 0, 0, 'Greely', 'Venture Co. Refugee', 59010, 10, 10, 519, 519, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');

update creature_template set equipment_id = 10468 where entry = 80132;
update creature_template set npc_flags = 2 where entry = 80132;

REPLACE INTO `creature_template` VALUES (80133, 0, 7338, 0, 0, 0, 'Szabo', 'Venture Co. Refugee', 59010, 10, 10, 519, 519, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');

update creature_template set equipment_id = 51261 where entry = 80133;

REPLACE INTO `creature_template` VALUES (80134, 0, 7164, 0, 0, 0, 'Nert Blastentom', '', 0, 5, 5, 319, 319, 0, 0, 852, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, 'npc_nert_joining_horde');

update creature_template set npc_flags = 3 where entry = 80134;
update creature_template set equipment_id = 0 where entry = 80134;

update creature_template set gossip_menu_id = 59011 where entry = 80134;

set @quest_entry = 80122;
set @quest_zone = 14;
set @title = 'Of Goblins and Future';
set @description = 'Heya, sweetie. It seems you sticking back was a great idea. You really made a name for yourself around these parts. The way these orcs value honor and whatever kinda gets on my nerves, but as long as we got a place to make a living, I\'m in.\n\n$N, go talk to Nert, our former foreman. He\’s in Orgrimmar waiting to speak with the big man himself, the warchief. Hopefully your deeds and our skills will make him consider us worthy of joining the Horde.';
set @objective = 'Speak to Nert in Orgrimmar and settle our future.';
set @completetext = '$N, good to see you again. pal. I hear you helped the Horde out a lot, and that\'s worth something. Maybe this won\'t be a bust after all.';
set @incompletetext = 'You should really get going. Without you there, we might lose out on this chance.';
SET @faction_id = 0;
SET @faction_count = 0;
set @xp_or_money = 384;
set @reward_money = 0; 
set @quest_level = 10;
set @min_level = 10;
set @questgiver_id = 80132;
set @quest_finisher = 80134;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80100;
set @RewChoiceItemId1 = 0; 
set @RewChoiceItemId2 = 0; 
set @RewChoiceItemId3 = 0;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 0;
set @RewChoiceItemCount2 = 0;
set @RewChoiceItemCount3 = 0;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 0;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 0;
set @reward_item_2_count = 0;
set @reward_item_3_count = 0;
set @reward_item_4_count = 0;
set @creature_to_kill_1 = 0;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 0;
set @creature_to_kill_2_count = 0;
set @creature_to_kill_3_count = 0;
set @creature_to_kill_4_count = 0;
set @required_item_1 = 0;
set @required_item_2 = 0;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 0;
set @required_item_2_count = 0;
set @required_item_3_count = 0;
set @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');
	 
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest
where entry = @quest_entry;	

-- The Old Goblin and His Silver Tongue

replace into`creature_template` values (80135, 0, 0, 0, 0, 0, 'Quest 80123 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

set @quest_entry = 80123;
set @quest_zone = 14;
set @title = 'The Old Goblin and His Silver Tongue';
set @description = 'You did a great job, kid, just as I instructed you. While you were out there pillaging, killing, collecting, wiping dust, or whatever those orcs made you do to earn their trust, I\'ve been waiting to get an audience with the big guy, here. You see, I hear he has a big heart, so we might as well try to exploit it, am I right? Maybe we should beg for our lives?\n\nYou know, us goblins have no real pride. Shining coins is where it\'s at, but I think this warchief would take us more seriously if we told him what we have in store for him. How we can scratch their backs if they scratch ours. Remember, $N, we are no longer being paid by the Venture Co., but at the same time, that gives us the freedom to do our own stuff.\n\nBe at my right, old pal, as we speak to the big boss himself. I need you there for real.';
set @objective = 'Sit through the talk between Nert and Thrall.';
set @completetext = 'For a moment, there, I thought I lost him. Good thing he had history with goblins and he knows our value.';
set @incompletetext = 'Future awaits, coin awaits.';
SET @faction_id = 76;
SET @faction_count = 3000;
set @xp_or_money = 384;
set @reward_money = 0; 
set @quest_level = 10;
set @min_level = 10;
set @questgiver_id = 80134;
set @quest_finisher = 80134;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80122;
set @RewChoiceItemId1 = 0; 
set @RewChoiceItemId2 = 0; 
set @RewChoiceItemId3 = 0;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 0;
set @RewChoiceItemCount2 = 0;
set @RewChoiceItemCount3 = 0;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 0;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 0;
set @reward_item_2_count = 0;
set @reward_item_3_count = 0;
set @reward_item_4_count = 0;
set @creature_to_kill_1 = 80135;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 1;
set @creature_to_kill_2_count = 0;
set @creature_to_kill_3_count = 0;
set @creature_to_kill_4_count = 0;
set @required_item_1 = 0;
set @required_item_2 = 0;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 0;
set @required_item_2_count = 0;
set @required_item_3_count = 0;
set @required_item_4_count = 0;

replace into quest_template values 

(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
     
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');
	 
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest,
objectivetext1='Sit through the talk between Nert and Thrall' 
where entry = @quest_entry;	

update creature set spawntimesecsmin = 60, spawntimesecsmax = 120 where id between 80101 and 80125;
update creature set spawntimesecsmin = 1, spawntimesecsmax = 4 where id = 80100;
