-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200
-- gossip_menu				41000-43000
-- creature_equip_template	20000-21000
-- broadcast_text			30000-31000
-- creature_ai_events		2200000-2201000
-- creature_ai_scripts		2200000-2201000

-- Grubgar <Fisher Orc> , display ID 3877, level 12, faction 125, weapon 6256, greeting text: "Nothing is greater then fishing!" 
-- Zantiki <Leatherworking Trainer> , display ID 12041, level 15,faction 126, weapon 2092, greeting text : "Ey mon, you looking to learn to work with nature?"
-- Keeper Laena, display ID 2216, level 58, weapon1 20718, ((Use Keeper Iselus' faction 189)), greeting text: "Well, this is new, I don't often get visitors." 

delete from creature_template where entry between 60510 and 60512;
replace into creature_template VALUES
(60510, 3877, 0, 0, 0, 'Grubgar', 'Fisher Orc', 0, 12, 12, 247, 247, 0, 0, 573, 125, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 26, 30, 0, 66, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 21.2784, 29.2578, 100, 1, 0, 60510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60511, 12041, 0, 0, 0, 'Zantiki', 'Leatherworking Trainer', 0, 15, 15, 328, 328, 0, 0, 660, 126, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 21, 27, 0, 74, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 21.2784, 29.2578, 100, 7, 0, 60511, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 550, 0, 0, 0, 0, 2, 0, ''),
(60512, 2216, 0, 0, 0, 'Keeper Laena', '', 0, 58, 58, 3875, 3875, 0, 0, 3408, 189, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 106, 136, 0, 262, 1, 2000, 2000, 1, 2, 0, 0, 0, 0, 0, 0, 72.9872, 100.357, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 1048578, 0, '');

set @equip_template = 20030; set @weapon_1 = 8196; set @weapon_2 = 0; set @creature = 60510;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20031; set @weapon_1 = 2092; set @weapon_2 = 0; set @creature = 60511;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20032; set @weapon_1 = 20718; set @weapon_2 = 0; set @creature = 60512;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41036; set @magic_number = 60510;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Nothing is greater then fishing!'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41037; set @magic_number = 60511;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Ey mon, you looking to learn to work with nature?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41038; set @magic_number = 60512;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Well, this is new, I don\'t often get visitors.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

delete from npc_trainer where entry = 60510 and 60511;
REPLACE INTO npc_trainer VALUES
-- Grubgar <Fisher Orc>
(60510, 7733, 100, 0, 0, 5),
(60510, 7734, 500, 356, 50, 0),
-- Zantiki <Leatherworking Trainer>
(60511, 2155, 10, 0, 0, 5),
(60511, 2177, 100, 165, 55, 0),
(60511, 2178, 100, 165, 60, 0),
(60511, 2338, 50, 165, 15, 0),
(60511, 2883, 100, 165, 40, 0),
(60511, 3782, 75, 165, 25, 0),
(60511, 3784, 150, 165, 55, 0),
(60511, 3821, 50, 165, 35, 0),
(60511, 9061, 100, 165, 30, 0),
(60511, 9063, 100, 165, 30, 0);

update creature_template set unit_flags = 0 where entry = 60498;
update creature_template set script_name = 'npc_fearoth' where entry = 60499;
update quest_template set limittime = 194 where entry = 40214;

replace into creature_involvedrelation (id, quest) values (80178, 55013);

-- An Old Friend --
delete from quest_template where entry = 40212;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40211,40212,2,409,54,40,0,0,'An Old Friend','My channeling will take some time to uncover the source of what lurks beneath the surface. In the mean time, I would ask of you a favor that means more then these very islands. An old friend of mine, who goes by the name Itharius is currently located within the Swamp of Sorrows. He was originally sent with Eranikus in tasks regarding the sunken temple, and watching over its masters destruction.\n\nUpon my exile, I gave Itharius my necklace, one that holds much of my power, and essence. It is from this very necklace that I will need the energy needed to defeat the evil upon these islands.\n\nI told him a time would come where I would reclaim my birthright, and he may be aprehensive, but he will do as I asked him long ago. Find Itharius, and reclaim my necklace from those swamps.','Speak with Itharius to recover Insom\'ni\'s necklace.','Travel, and with haste, there is much to do, and little time to do it mortal.','Who did you say you were sent by again?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from creature_questrelation where quest = 40212;
delete from creature_involvedrelation where quest = 40212;
replace into creature_questrelation (id, quest) values (60446, 40212);
replace into creature_involvedrelation (id, quest) values (5353, 40212);

-- Necklace of Insomnius --
delete from quest_template where entry = 40251;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40212,40251,2,409,54,40,0,0,'Necklace of Insomnius','Insom\'ni? Is that what he goes by now? I sensed a purpose within your mind as you approached me, and I wondered why it seemed so familiar. This necklace belongs to one named Insomnius, and no matter what he goes by he should remember the reasons of why he was exiled.\n\nRegardless, I promised that I would keep my word. Take this necklace to him, and tell him to not contact me again, for any reasoning. I say this with caution traveler, Insomnius was exiled from our kind for having ambitions that were beyond our tasks, and for dabbling in matters that were not his to interfere.','Return the necklace of Insomnius to Insom\'ni on Kazon Island.','Yes?','<Insom\'ni takes his time to gaze over the necklace, his body seems invigorated, and energized by its very presence. Slowly, he would place it around his neck, and exhale a heavy breath of relief.>\n\nIt has been a long time since I have felt such energy, it is as if both halves to my soul have been reconnected after many long years. I can not even begin to explain such a feeling, too long has it been that I have been seperated from my essence.\n\n<A grin would spread across Insom\'ni, his face taking on a very intense gaze>.\n\nNow, let us begin our work.',60296,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60296,1,0,2150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (5353, 40251);
replace into creature_involvedrelation (id, quest) values (60446, 40251);

update quest_template set prevquestid = 40251 where entry = 40213;

-- The Way-Stones of Old --
delete from quest_template where entry = 40252;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40247,40252,2,16,55,45,0,0,'The Way-Stones of Old','The Way-Stones once allowed us Keepers to travel great distances with ease, they were plentiful within the city, and now very few of them remain. To the south west is the Temple of Arkkoran as it is now known, this used to be a place of great magical energy. Within one of the exterior towers lays a Way-Stone, its energy linked to Keeper Laena.\n\nGo and find the Way-Stone, and press the staff against the crystal, you will find yourself transported across Azshara, and before another of my kind.','Find the Way-Stone at the Temple of Arkkoran, activate it, and speak with Keeper Laena in Azshara.','Can I help you?','I have heard faded messages of someone helping Keeper Iselus, and now I have you before me. The Eldarath Harmonization Gem has been recovered then, good to hear.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60331,1,0,3700,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91722, 40252);
replace into creature_involvedrelation (id, quest) values (60512, 40252);

-- Staff of Eldara (Display ID 2482, display ID 20384, stackable to 1)
delete from item_template where entry = 60331;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60331,2482,'Staff of Eldara',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Teleport the player to Keeper Laena at X:3814.92 , Y:-5526.18, Z: 131, Map:1
delete from gameobject_template where entry = 2010849;
replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010849, 1, 24516, 1, 'Way-Stone of Eldarath', 32, 'go_way_stone_of_eldarath');
-- Teleport the player to X:4011.45 , Y:-7131.67 , Z:24.81, Map:1
delete from gameobject_template where entry = 2010850;
replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010850, 1, 24516, 1, 'Way-Stone of Dorath', 32, 'go_way_stone_of_dorath');