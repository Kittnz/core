
-- Teslinah (Summon)

set @teslinah = 80265;

REPLACE INTO `creature_template` VALUES (@teslinah, 0, 18003, 0, 0, 0, 'Teslinah', NULL, 0, 5, 5, 64, 64, 0, 0, 20, 12, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');
update creature_template set faction = 371 where entry = @teslinah;
update creature_template set npc_flags = 2 where entry = @teslinah;

replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(80410, 15, 2, 'High Elf Orphan Whistle', 'Summon and dismiss the orphan you\'ve agreed to look after.', 15798, 2, 1, 28505, 1500);
replace into custom_pet_entry_relation (item_entry, creature_entry) values (80410, @teslinah);
update creature_template set script_name = 'npc_teslinah' where entry = @teslinah; 

-- Help With a Compassionate Matter

set @quest_entry = 80260;
set @quest_zone = 1519;
set @title = 'Help With a Compassionate Matter';
set @description = 'I have a... troubling issue.\n\nA child was sent from Stormwind and she won’t stop babbling.\n\nQuite frankly she is interfering with my work, I was apparently the most qualified to take care of her but I’d appreciate it if you helped her out with her request since you’re a great hero and all.\n\nYes yes! I will pay you too! Please help!\n\n<Anu’delen clearly appears to be at his wits end.>';
set @objective = 'Talk to Anu’delen again if you wish to help him out.';
set @completetext = 'Thank the Sunwell! You have no idea how much this matters to me...\n\nPeace and quiet is important while doing this vital work.\n\nTalk to the girl and help her out, this whistle can call her.';
set @incompletetext = 'So? Will you help me out?';
set @faction_id = 269;
set @faction_count = 15;
set @xp_or_money = 650;
set @reward_money = 0; 
set @quest_level = 20;
set @min_level = 20;
set @questgiver_id = 80231;
set @quest_finisher = 80231;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80256; 
set @RewChoiceItemId1 = 0; 
set @RewChoiceItemId2 = 0; 
set @RewChoiceItemId3 = 0;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 0;
set @RewChoiceItemCount2 = 0;
set @RewChoiceItemCount3 = 0;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 80410;
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

-- Teslinah’s Search

replace into`creature_template` values (80270, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');
replace into`creature_template` values (80271, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');
replace into`creature_template` values (80272, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');
replace into`creature_template` values (80273, 0, 0, 0, 0, 0, 'Quest 80261 Custom Objective', '', 0, 5, 5, 319, 319, 0, 0, 852, 84, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4276, 0, 0, 0, 0, 2, '');

set @quest_entry = 80261;
set @quest_zone = 1519;
set @title = 'Teslinah’s Search';
set @description = 'My name is Teslinah… Please I need your help!\n\nMy mommy and I were in Farstrider Lodge after fleeing from all the bad up north...\n\nBut when we were in Stormwind we got separated! Miss Elsharin found me and took me here, believing my mommy would be here, but she’s not! Please, will you help me?\n\nPretty please? The grumpy man over there only told me to sit in a corner and be silent, you will help me, won’t you?';
set @objective = 'Find someone who can help in Stormwind!';
set @completetext = 'Her mom is missing you say? Let me see...\n\nThe girl’s name is Teslinah? We do have records of her and her mother’s arrival in Stormwind with the other refugees but she and her mother never showed up at the City hall for their registration.\n\nThis is troubling we can’t have people going missing in Stormwind, I will investigate, until my investigation is complete can I count on you to care for the girl?\n\nSince she was registered here in Stormwind I will issue some bonds to feed her properly.';
set @incompletetext = 'Yes, what can I do for you, $R?';
set @faction_id = 269;
set @faction_count = 75;
set @xp_or_money = 1650;
set @reward_money = 0; 
set @quest_level = 20;
set @min_level = 20;
set @questgiver_id = @teslinah;
set @quest_finisher = @teslinah;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80260; 
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
set @creature_to_kill_1 = 80270;
set @creature_to_kill_2 = 80271; 
set @creature_to_kill_3 = 80272;
set @creature_to_kill_4 = 80273;
set @creature_to_kill_1_count = 1;
set @creature_to_kill_2_count = 1;
set @creature_to_kill_3_count = 1;
set @creature_to_kill_4_count = 1;
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
objectivetext1='Search Mage Tower', 
objectivetext2='Search Mage District', 
objectivetext3='Search Mage District Tavern', 
objectivetext4='Search Mage District Tavern Basement'
where entry = @quest_entry;	

replace into `gameobject_template` values (3000250, 0, 5, 381, 'Teslinah Search: Mage Tower', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
replace into `gameobject_template` values (3000251, 0, 5, 381, 'Teslinah Search: Mage District', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
replace into `gameobject_template` values (3000252, 0, 5, 381, 'Teslinah Search: Mage District Tavern', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');
replace into `gameobject_template` values (3000253, 0, 5, 381, 'Teslinah Search: Mage District Tavern Basement', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_teslinah_search');

-- *Once back in Stormwind’s mage tower* 
-- Text: 

-- *Mage District*
-- Text: I feel the magic in the air! This place is nice but not as pretty or magical as Silvermoon!

-- *Mage District Tavern*
-- Text: Mommy isn’t here… Let’s keep moving!

-- *Mage District Tavern Secret Basement*
-- Text: This place is scary, there’s bad magic here and it smells horrible! Can we leave?! Please???

-- *Stormwind Park Moonwell* 
-- Text: <name>,  <name>! Look it’s a Night elf Priestess! And it’s a Moonwell! I love all the grass and glowing plants! This place is nice! I bet Mommy would like it! Let’s keep searching so we can show it to her!

-- *Dwarf District*
-- Text: Yuck! This place smells...Would Mommy really be here?

-- *Dwarf District Embassy*
-- Text: Oooh, this place looks much more civil… But I am sure my Mommy didn’t go to the Dwarf lands...

-- *Little Silvermoon* (Cut throat alley)
-- Text: Ooh our people have settled here! It’s pretty, not as pretty as Silvermoon but pretty!...This place isn’t large though and Mommy isn’t here...Let’s keep looking!

-- *Deeprun Tram entrance*
-- Text: That looks so weird! The Gnomes made this, right?… I’m sure Mommy isn’t there, that leads to the Dwarf city I think… It’s cold there, mommy hates the cold.

-- *Stormwind Keep*
-- Text :Ooh the King lives there! We shouldn’t disturb him...Mommy isn’t there either, they wouldn’t allow her in, we don’t have much… Mommy is pretty but we lost everything when Quel’thalas fell.

-- *Old town*
-- Text: I heard this place existed before the new town was built!! There’s so many shops but the streets are also so crammed it is a bit scary…

-- *Old town Tavern*
-- Text: This place smells strange… Hm… Mommy isn’t here either, I am worried <name>, where could she be?

-- *Old town Barracks* 
-- Text: The army is there… Could my mom have been arrested? But she didn’t commit any crime… I don’t think this is the place <name>, we can come back here if we don’t find her anywhere else.

-- *Cathedral square*
-- Text: It’s the Cathedral! It’s so huge! <name> that’s amazing!

-- *Orphanage* 
-- Text: ...If mommy is gone, I could end up there… I...I don’t want to think about that…It’s so...sad” <Crying animation plays>

-- *Cathedral* 
-- Text: Ooh! Look at this place! It’s...Amazing! Wow!! <name> look at how pretty this place is! I like the shiny Light, it heals wounds and the priests are all so sweet… 

-- *Cathedral Basement*
-- Text: This place...is not pretty, it smells and is scary, can we leave please? I don’t like how the man in red looks at me...

-- *Cathedral Catacombs*
-- Text: This is bad, this is bad, please let’s go? I’m scared...

-- *Trade District*
-- Text: Oh there’s so many people! I remember when we first arrived here by Gryphon! Their feathers were fluffy! Could Mom be here?


-- *Stormwind Visitor Center*
-- Text: Oh...In there <name> !! That’s the Visitor Center where we first checked in when we arrived, maybe they know something!!

-- Objective:  (Aldwin Laughlin in the Stormwind Visitor Center but this isn’t shown in the Objective, players have to search like in a classic Vanilla quest)


-- Postquest interaction:
-- Text:  <plays laugh animation>

-- final npc -- set @quest_finisher = 4974;