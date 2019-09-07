
-- Daisy <Race Starter Girl>:
update creature_template set script_name='npc_daisy' where entry=4507;
update creature_template set npc_flags=1 where entry=4507;		

delete from creature where id = 4507;
replace into creature (id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, spawnFlags, visibilitymod, patch_min, patch_max) values 
(4507, 1, 0, 4507, -6201.48, -3901.95, -60.2818, 0.00305557, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);

replace into gameobject_template (entry, patch, type, displayid, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, script_name) values 
(1000028, 0, 5, 3671, 'Salt Flats Racer Speed (Invisible)', 0, 0, 0.3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_speed_up'),
(1000029, 0, 5, 3671, 'Explosive "Boom" Box', 0, 0, 0.3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_speed_down'),
(1000030, 0, 5, 3671, 'Salt Flats Racer Normal (Invisible)', 0, 0, 0.3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_speed_normal');

replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, script_name) values 
(50513, 0, 3886, 0, 0, 0, 'Sheep', 'Definitely Non-Explosive', 90200, 30, 30, 1605, 1605, 0, 0, 1200, 11, 135, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 10, 'npc_raceaway_sheep');

-- Goblin Engineer
replace into `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) values ('50521', '0', '7229', '0', '0', '0', 'Kruzak', 'Chief Engineer', '90200', '30', '30', '1605', '1605', '0', '0', '1200', '35', '135', '1.08', '1.14286', '0', '20', '5', '0', '0', '1', '42', '53', '0', '122', '1', '1000', '2000', '1', '4608', '0', '0', '0', '0', '0', '0', '45.144', '62.073', '100', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '0', '0', '3', '0', '0', '100', '0', '0', '10', '');
-- Should be questgiver:
update creature_template set npc_flags=2 where entry=50521;	

-- Gnome Engineer
replace into `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) values ('50522', '0', '5438', '0', '0', '0', 'Crashbash', 'Chief Engineer', '90200', '30', '30', '1605', '1605', '0', '0', '1200', '35', '135', '1.08', '1.14286', '0', '20', '5', '0', '0', '1', '42', '53', '0', '122', '1', '1000', '2000', '1', '4608', '0', '0', '0', '0', '0', '0', '45.144', '62.073', '100', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '0', '0', '3', '0', '0', '100', '0', '0', '10', '');
-- Should be questgiver:
update creature_template set npc_flags=2 where entry=50522;	

-- Goblin Test Quest
replace into quest_template (entry, minlevel, questlevel, requiredraces, title, details, objectives, offerrewardtext, requestitemstext, prevquestid, nextquestid, rewitemid1, reqcreatureorgoid1, reqcreatureorgocount1, rewmoneymaxlevel, zoneorsort, rewitemcount1, reqitemid1, reqitemcount1) values
(50310, 1, 60, 0, 'Goblin Engineering At It\'s Finest!', 
'Ey, kid! Yes, you! I see you\'re an adventuring type and ready to jump into any frey if only there\'s one to jump into, right? Just as I thought. What? Of course there\'s a reward involved, how else could it be around here? It\'s a Mirage Raceway after all!\n\nWhat to do? Oh, that\'s so simple, I\'m sure that even a gnome would manage to test our jolly vehicle on the sustain for … errh, durability conditions! Yes! So, if you\'re ready to earn some coins and crack some scorpids flat then you\'re at the right spot, kid! What helmet? Instruction? Bah! Who needs\'em anyway?!\n\nLet\'s blast it!',
'Ride a goblin race car to see if it survives the start at all.',
'What helmet? Instruction? Bah! Who needs\'em anyway?!',
'You got it, eh?',
 0, -- PrevQuestId
 0, -- NextQuestId
 50522, 0, 0, 2400, 0, 1, 0, 0 );
replace into creature_questrelation (id, quest)    values (50521, 50310); 
replace into creature_involvedrelation (id, quest) values (50521, 50310);

-- Goblin Repeatable Quest
replace into quest_template (entry, minlevel, questlevel, requiredraces, title, details, objectives, offerrewardtext, requestitemstext, prevquestid, nextquestid, rewitemid1, reqcreatureorgoid1, reqcreatureorgocount1, rewmoneymaxlevel, zoneorsort, rewitemcount1, reqitemid1, reqitemcount1) values
(50311, 1, 60, 0, 'Mirage Raceway: Goblin\'s Team', 
'Oh, so nice you\'re alive and back in one piece! I had no doubts in you, of course.\n\nSo you\'re ready for another run on our goblin engineering masterpiece, eh? Well then if you know the drill you better get ready and take the first place yet again!',
'Complete the lap with best time.',
'Don\'t swap the pedals!',
'You got it, eh?',
 50310, -- PrevQuestId
 0, -- NextQuestId
 0, 0, 0, 2400, 0, 0, 0, 0 );
 -- Todo: quest reward.
replace into creature_questrelation (id, quest)    values (50521, 50311); 
replace into creature_involvedrelation (id, quest) values (50521, 50311);

-- Providing Goblin Camera Key, TODO: attach item script.
update quest_template set SrcItemId=5937, SrcItemCount=1 where entry in (50310, 50311);
update quest_template set rewitemid2=5916, rewitemcount1=1 where entry in (50310, 50311);

-- Gnome Test Quest
replace into quest_template (entry, minlevel, questlevel, requiredraces, title, details, objectives, offerrewardtext, requestitemstext, prevquestid, nextquestid, rewitemid1, reqcreatureorgoid1, reqcreatureorgocount1, rewmoneymaxlevel, zoneorsort, rewitemcount1, reqitemid1, reqitemcount1) values
(50312, 1, 60, 0, 'Gnomes Are Genuine Inventors', 
'I am sure that you\'re very well aware of the fact about us, gnomes, we\'re the best inventors. Assuming you\'re striving to improve your skills and knowledge you will eventually be considered to study from us. Obviously, no gnome is that stupid to decline this intriguing and exciting partnership, alas it might be costly sometimes.\n\nSpeaking shorter; we need someone to compliment our natural resourcefulness of brain activity with their muscle and durability!\n\nIf you successfully ride this awesome masterpiece of gnomish engineering any other dimwit goblin would simply call a race car then you will be granted an opportunity to represent our bright society of inventors even further in Mirage Races!\n\nCool, right?\n\nWell, here\'s the instructions we\'ve specifically designed for other races for better understanding and comprehension.\n\nGood luck, sentient one!',
'Ride a goblin race car to see if it survives the start at all.',
'What helmet? Instruction? Bah! Who needs\'em anyway?!',
'Starts the engine, of course! Levers for stearing.',
 0, -- PrevQuestId
 0, -- NextQuestId
 50523, 0, 0, 2400, 0, 1, 0, 0 );
replace into creature_questrelation (id, quest)    values (50522, 50312); 
replace into creature_involvedrelation (id, quest) values (50522, 50312);

-- Gnome Repeatable Quest
replace into quest_template (entry, minlevel, questlevel, requiredraces, title, details, objectives, offerrewardtext, requestitemstext, prevquestid, nextquestid, rewitemid1, reqcreatureorgoid1, reqcreatureorgocount1, rewmoneymaxlevel, zoneorsort, rewitemcount1, reqitemid1, reqitemcount1) values
(50313, 1, 60, 0, 'Mirage Raceway: Gnome\'s Team', 
'Salutations, sentient one! We\'re very much satisfied with the results you have achieved with the test drive for our mechanical engineering device and proved to be very useful for providing us so much needed data for analysis.We\'re ready to allow you continuous partial involvement with our research team and have agreed on supplying you for your efforts.\n\nWhen you\'re ready to proceed with data gathering be sure to remember the instructions provided and safety measures recommended.\n\nHave a great day!',
'Complete the lap with best time.',
'Don\'t swap the pedals!',
'You got it, eh?',
 50312, -- PrevQuestId
 0,     -- NextQuestId
 0, 0, 0, 2400, 0, 0, 0, 0 );
 -- Todo: quest reward.
replace into creature_questrelation (id, quest)    values (50522, 50313); 
replace into creature_involvedrelation (id, quest) values (50522, 50313);

-- Providing Gnome Camera Key, TODO: attach item script.
update quest_template set SrcItemId=5916, SrcItemCount=1 where entry in (50312, 50313);
update quest_template set rewitemid2=5916, rewitemcount1=1 where entry in (50312, 50313);

 
 
