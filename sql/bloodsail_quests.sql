-- Reserved.
-- quest_template			40000-41000
-- creature_template		60300-61000
-- gameobject_template		2010700-2011000
-- item_template			60000-61000
-- gossip_menu				41000-43000
-- creature_equip_template	20000-21000
-- broadcast_text			30000-31000
-- creature_ai_events		2200000-2201000
-- creature_ai_scripts		2200000-2201000

-- Naming the Vessel --
delete from quest_template where entry = 40354;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40354,2,33,48,42,0,0,'Naming the Vessel','Seems like the pirate life suits ye, ye scoundrel. Ah, I remember of me own adventures, to be young again. Anyway, since the ship\'s all yours and all, thought it\'d be the time for you to name it, savvy?\n\nI bet ye already got a name in mind, whenever ye feel ready.','Decide the name of the ship.','Any idea yet mate?','Hm, not something I would\'ve gone with. Alas, it be yer ship \'afore all.',0,0,0,0,0,0,0,0,60354,1,0,0,0,0,0,0,0,0,5934,1250,87,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Give your ship a name');

replace into creature_questrelation (id, quest) values (60496, 40354);
replace into creature_involvedrelation (id, quest) values (60496, 40354);

delete from creature_template where entry = 60354;
replace into creature_template (entry, name, display_id1) values (60354, 'quest_40354_dummy_triger', 328);

-- Sark's Grudge --
delete from quest_template where entry = 40355;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40355,2,33,48,42,0,0,'Sark\'s Grudge','The Admiral tells me Fleet Master Firallon picked a Dragonmaw nobody from the Wetlands to train and eventually lead one of our vessels because of his orcish battle experience. Long has it been since I was this insulted! Earn my favor, will you $r?\n\nThis "Ironpatch" is right next to Firallon on one of the three ships at the Wild Shore. Challenge him to battle and bring me his head!\n\nBlood and thunder, victory or death.','Bring Ironpatch\'s Head back to Sark Blacktooth.','Is the fool dead?','This pleases me greatly <name>, you\'ve begun your way towards my respect, thank you.',51895,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5934,1250,87,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60449, 40355);
replace into creature_involvedrelation (id, quest) values (60449, 40355);

update creature_template set script_name = 'npc_ironpatch' where entry = 2547;

set @gossip_menu_id = 41071; set @magic_number = 2547;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I\'ve been chosen by the Fleet Master to put you, pirates, back into shape.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Elf in the Jungle --
delete from quest_template where entry = 40356;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40356,2,33,48,42,0,0,'Elf in the Jungle','\'ello there boss mon! Time for Vil\'do to send ya out for dat booty! What, were ya just thinkin\' that ya\'d be only drinkin\' rum for da rest of ya days? No boss mon, ya must be huntin\' treasure so ya can afford da money lust and whatever else ya got. Vil\'do wouldn\'t guess and he shouldn\'t either.\n\nDa loa say Vil\'do would one day die talkin\' since he be talkin\' so much, but Vil\'do don’t listen to them and neither should ya mon.\n\nOne of da boys from da Bloodsail Compound said dey be seein\' some weirdo night elf fightin\' nagas, said somethin’ about him wavin\' his hand in da air and magic goin\' "woosh".\n\nNo idea where he be goin\' but Vil\'do sees opportunity here and Vil\'do thinks dis will lead boss mon to booty.','Find the Night Elf close to Bloodsail Compound.','The notes appear to be torn and dirty.','The language is unreadable to you and you bet it\'d be unreadable for the rest of your crewmates back at the retreat, it is by now you realize you should\'ve probably recruited a historian.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6972,1250,87,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60459, 40356);
replace into gameobject_involvedrelation (id, quest) values (2010870, 40356);

-- NPC Arcanist Sovatir, DisplayID: 14420, should de dead.
REPLACE INTO creature_template VALUES
(60642, 14420, 0, 0, 0, 'Arcanist Sovatir', NULL, 0, 48, 48, 2062, 2062, 1695, 1695, 2386, 290, 0, 1.1, 1.14286, 0, 18, 5, 0, 0, 1, 77, 96, 0, 220, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 62.8672, 86.4424, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

update creature_template set dynamic_flags = 36 where entry = 60642;
update creature_template set unit_flags = 33554434 where entry = 60642;

delete from gameobject_template where entry = 2010870;
replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010870, 2, 8348, 1, 'Arcanist Sovatir\'s Torn Notes', 32, '');

-- Lift the Anchor! --
delete from quest_template where entry = 40357;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40356,40357,2,33,48,42,0,0,'Lift the Anchor!','While making a note to yourself about the thought you just had you try to put one and two together and see if there\'s something useful in these notes. Lady Luck seems to be smiling to your wicked self once more.\n\nA map and drawings of statues can be somewhat seen in the journal, as far as you can tell this journey will take you to Feralas to hunt for one of the most glorious things you\'d ever see: Gold.\n\nFeralas is a long way, you decide to return to your crew.','Return to Vil\'do.','Got anythin\' boss mon?','Told ya Vil\'do’s got a nose for dis things! But look at ya figurin\' out where to go and what we be huntin\'!',60510,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60510,1,0,1250,87,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_questrelation (id, quest) values (2010870, 40357);
replace into creature_involvedrelation (id, quest) values (60459, 40357);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60510,8093,'Arcanist Sovatir\'s Torn Notes',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Golden Elves of Feralas --
delete from quest_template where entry = 40358;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40357,40358,2,33,48,42,0,0,'Golden Elves of Feralas','Get ready boss mon, da trip be a long one! Vil\'do will make sure to be makin\' some room for the treasure ya be comin\' back with. Remember what ya got from ya notes, ya be lookin’ for golden elves! Well ya know statues of golden elves but who cares.\n\nYa do dis and dis be da best haul da Bloodsail got in a long time. Make us proud eh, boss mon?','Find the Golden Elf.','Comparing the drawing from the journal it seems you\'re in the right place and this is the right statue.','You stare at the huge statue and can\'t believe your eyes, it\'s made of pure gold! You dare question with it\'s still there when you realize you will not be able to move it one inch.\n\nSeveral curses come out of your mind when you remember Vil\'do\'s words. Not only did you come this far, but you can\'t even grab them!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60510,1,0,1250,87,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60459, 40358);
replace into gameobject_involvedrelation (id, quest) values (2010871, 40358);

delete from gameobject_template where entry = 2010871;
replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010871, 2, 26196, 1, 'Lyvdia Dawnbird', 32, '');

update creature_template set script_name = 'npc_vildo_onetusk' where entry = 60459;

set @gossip_menu_id = 41079; set @magic_number = 30015;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Oh boss mon, ya can\'t take da whole crew with ya, da rest got stuff of dey own to do and da ship be not ready to sail yet. Ya gonna have to do dis da hard way.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- NPC Fazgel Mechaflame, Health 1800, Level 47, DisplayID 8009, weapon 4379, cast 16723, text line: “Hands off my haul bub!”,should be phased in when you turn in the quest.
REPLACE INTO creature_template VALUES
(60643, 8009, 0, 0, 0, 'Fazgel Mechaflame', NULL, 0, 47, 47, 1800, 1800, 0, 0, 2386, 290, 3, 1.1, 1.14286, 0, 18, 5, 0, 0, 1, 77, 96, 0, 220, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.8672, 86.4424, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 1500, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 40357, '');

set @equip_template = 20071; set @weapon_1 = 4379; set @weapon_2 = 0; set @creature = 60643;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41080; set @magic_number = 60643;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Hands off my haul bub!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

delete from creature_ai_scripts where id = 2200018;
delete from creature_ai_events where id = 2200018;

REPLACE INTO creature_template_addon VALUES (60643, 0, 0, 2, 0, 0, 0, 0);

-- Mechaflame's Bargain --
delete from quest_template where entry = 40359;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40358,40359,2,33,48,42,0,0,'Mechaflame\'s Bargain','All right bub, I don\'t know who you are but I\'ve been eyeing these statues forever! I\'m not gonna let some no good $r come in and steal MY loot, all right? But since neither of us can move them it\'s gonna be a real problem, and yea I\'m saying them, there\'s like four more around these blasted ruins.\n\nSay what bub, let\'s call a truce, you get me some parts and I will make them easier to carry, then we split them up, I get three you get two since you know I\'ll be the one that comes up with the solution here!\n\nAnyway, you gotta get me these mats and I will build some boring gnomish thing that will shrunk them to size, got it? Luckily I still got some mojo.','Gather the materials and return to Ruins of Isildien.','Got them yet?','Okay bub, stand back while I assemble this thing, yeah?',10559,1,3860,4,1529,2,0,0,0,0,0,0,0,0,0,0,0,0,0,1250,87,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60643, 40359);
replace into creature_involvedrelation (id, quest) values (60643, 40359);

-- Highly Unexpected Event --
delete from quest_template where entry = 40360;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40359,40360,2,33,48,42,0,0,'Highly Unexpected Event','It\'s done! Quite boring little thing but you know gnomes, blah, I hate gnomes. No refinement when it comes to these things, just look at this thing, the perfect way to steal stuff, and not to mention increase your own profit!\n\nThis thing was only supposed to shrink the statues, but guess what, it can now enlarge them too! Anyway let\'s be done with it yeah, no reason to wait any longer.','Kill Fazgel Mechaflame.','You stare at the statue with the engraved name once more and get ready to pull the trigger.','As you push the button the shrink ray activates! Mumbling all sorts of sounds at first you start cursing the corpse of the goblin who built this, not only was he a double-crosser but he was no engineer! Or so you\'d think, sooner than later the statue began to shrink, no weighing less, and could easily be placed in your backpack.',60511,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1250,87,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60643, 40360);
replace into gameobject_involvedrelation (id, quest) values (2010871, 40360);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60511,20626,'Fazgel\'s Shrink Ray',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set script_name = 'npc_fazgel_mechaflame', loot_id = 60643 where entry = 60643;

delete from creature_loot_template where item = 60511;
replace into creature_loot_template values
(60643,60511,-100,1,1,1,0);