-- Captain Grayson's Revenge
delete from quest_template where entry = 40396;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40395,40396,2,1581,22,15,0,0,'Captain Grayson\'s Revenge','This is Cookie\'s cookbook, it\'s how I taught him to understand our tongue and how to make a somewhat decent meal.\n\nI tell you, I am not sure if it’s because he\'s a Murloc or not but he barely has a taste for flavor.\n\nI am getting off the sails here.\n\nThe night the ship sank, Cookie fled, leaving all of us to perish. I almost forgot!\n\nI guess my mind gets foggy nowadays, not that I still have a working brain or a consciousness, mind you.\n\nThat motherless Murloc must pay for this bloody mutiny. Bring me proof of his death and I will reward you handsomely\n\nPerhaps I will even be able to move on...','End Cookie.','Is he done with?','I can\'t believe he didn\'t toss this away.\n\nIn my anger I might\'ve mistaken Cookie’s actions, he was always a scared catfish. He must\'ve panicked.\n\n<Grayson sighs for a moment>.\n\nDrying the book, keeping this necklace...\n\nOh $N, what have I done.',60526,1,0,0,0,0,0,0,645,1,0,0,0,0,0,0,0,0,600,1950,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

update quest_template set rewitemid1 = 70070, rewitemcount1 = 1, questflags = 512 where entry = 40396;

replace into creature_questrelation (id, quest) values (392, 40396);
replace into creature_involvedrelation (id, quest) values (392, 40396);

replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, random_property, required_reputation_faction, required_reputation_rank) values (70070, 'Grayson’s Hat', '', 4, 1, 7, 2, 16545, 1, 0, 0, -1, -1, 10204, 2551, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 25, 20, 0, 0, 23, 0, 7, 0, 0, 0, 0, 0, 0, 7, 2, 6, 3, 0, 0, 0);

REPLACE INTO item_template VALUES
(60526, 12, 0, 'Grayson\'s Pendant', '', 9854, 1, 2048, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

delete from creature_loot_template where item = 60526;
replace into creature_loot_template values
(645,60526,-100,1,1,1,0);

REPLACE INTO creature_template VALUES
(60709, 1305, 0, 0, 0, 'Cookie', 'The Ship\'s Cook', 0, 20, 20, 2904, 2904, 0, 0, 852, 35, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 85, 110, 0, 90, 1, 2000, 2000, 1, 32832, 0, 0, 0, 0, 0, 0, 26.24, 36.08, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 645, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO creature_template_addon VALUES
(60709, 0, 0, 0, 0, 0, 0, '9617');

update creature_template set script_name = 'npc_captain_grayson' where entry = 392;

set @gossip_menu_id = 41095; set @magic_number = 392;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Do not be alarmed, $r. I have long since passed from this land but I intend no harm to your kind. I have witnessed too much death in my time. My only wish now is for peace. Perhaps you can help my cause.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @magic_number = 30019;
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I took Cookie on the ship when he was very young, he was hostile and bitter at first but through that book, you\'ve found we had developed a bond. In a way Cookie was able to understand anyone without actually knowing a word they were saying.\n\nNot sure what to tell you matey, Cookie was my friend and I\'ve sent you to end him, which may be my greatest regret yet.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);