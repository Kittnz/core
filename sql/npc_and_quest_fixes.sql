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
replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010849, 1, 24516, 1, 'Way-Stone of Eldarath', 32, 'go_way_stone');
-- Teleport the player to X:4011.45 , Y:-7131.67 , Z:24.81, Map:1
delete from gameobject_template where entry = 2010850;
replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010850, 1, 24516, 1, 'Way-Stone of Dorath', 32, 'go_way_stone');

-- Restoring the Ley Lines --
delete from quest_template where entry = 40253;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40252,40253,2,16,55,45,0,0,'Restoring the Ley Lines','Welcome to my humble abode, I have kept my duty upon this spire and will continue to do so. Now that the Way-Stones are restablished we can begin to make our presence within the region more known.\n\nTo the southwest is the Temple of Zin-Malor, nestled within the Ruins of Eldarath, it is currently inhabited by the twisted Naga. Within the Temple of Zin-Malor lays secrets that they will never figure out, and that I need you to uncover.\n\nDeep inside the Temple, you will find a distinct stone, etched with bright runes of an even more ancient language. This stone, is known as the Ashan Stone, when you see it, speak the following \'Tizah Ashan Dal\'asha\'. This magic will once again invigor the long inactive Ley-Lines that stretch through Azshara.','Enter the Temple of Zin-Malor and find the Ashan Stone, and activate the dormant Ley-Lines for Keeper Laena in Azshara.','When you have spoken the phrase the magic that once held the stone and made it dormant will be inactive. This spell was placed long ago to deter any outside entities from interfering, if we can act quickly, I will be able to do as I need.','I can feel the energy flowing once again, it will no doubt attract the attention of outside forces, or perhaps those who wish to uncover the secrets of Azshara for themselves. Our next step will be a crucial one, and will be required to keep the mysteries of this land from being uncovered.',0,0,0,0,0,0,0,0,60336,1,0,0,0,0,0,0,0,0,0,6500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ashan Stone activated');

replace into creature_questrelation (id, quest) values (60512, 40253);
replace into creature_involvedrelation (id, quest) values (60512, 40253);

delete from creature_template where entry = 60336;
replace into creature_template (entry, name, display_id1) values (60336, 'quest_40253_dummy_triger', 328);

-- Object Ashan Stone (Uses display ID 2652) , needs to be interactable to complete quest, open a dialogue box when right clicked that says the following '<This stone pulses lightly with a foreign magic>', when on this quest, a small clickable button should appear that says the following 'Tizah Ashan Dal'asha' , clicking this button will complete the quest.
delete from gameobject_template where entry = 2010851;
replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010851, 1, 2652, 1, 'Ashan Stone', 32, 'go_ashan_stone');

REPLACE INTO broadcast_text VALUES 
(100400, '<This stone pulses lightly with a foreign magic>.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into npc_text (id, broadcasttextid0) values (100400, 100400);

-- Keeping Secrets --
delete from quest_template where entry = 40254;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40253,40254,2,16,58,45,0,0,'Keeping Secrets','Our next course of action requires us to be more bold. If we are to deactivate many of the buried secrets of the lost city then we must gather a great source of Ley Energy to channel. Deep within the depths of Dire Maul my Highborne kin have been utilizating a great mass of arcane power. This arcane power from what I can detect is keeping a being of great evil contained. I believe they are using this being to feed whatever magical addiction they may be consumed by.\n\nVenture into the depths of Dire Maul, and slay this creature that is being imprisoned, it should hold Pure Ley Essence, of which we can use to direct a spell out into the buried city.\n\nWith the activation of the Ashan Stone, we will need to be quick, so do not waste time.','Travel to Dire Maul, and slay the great evil being that the Highborne are leeching energy upon, gather from it Pure Ley Essence, and return to Keeper Laena in Azshara.','The energy used in Dire Maul is truly fascinating, I can feel it from all the way here. I believe this will be our only chance of fulfilling our oath as Keepers.','Us Keepers could not fulfill the lengths of our duties, and I imagine we will not last forever, one day the Tower of Eldara will lose its master, and perhaps one day I may fall as well. I know not what has happened to the others, though I still hope they are alive and well.\n\nIf we are to fulfill atleast one of our duties, then we shall dispell much of the great magics buried beneath the waves, under the sands. The last thing we intended was for something much more foul to untangle the web of secrets we created.\n\nI must thank you again $N, for everything you have done, you have assisted us in a time of great need, and perhaps now we may last many more years, especially with the energy of the Ley-Lines flowing, and old secrets dispelled. Me and Keeper Iselus have only you to thank, without you, we would have been aimless in our goals.',60332,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60333,1,60334,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60512, 40254);
replace into creature_involvedrelation (id, quest) values (60512, 40254);

update quest_template set type = 81 where entry = 40254;

delete from item_template where entry = 60332;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60332,34578,'Pure Ley Essence',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 60332 and entry = 11496;
replace into creature_loot_template values
(11496,60332,-100,1,1,1,0);

replace into item_template values
 ('60333',  '2', '10', 'Azshara Keepers Staff', '', '33163', '3', '0', '1', '274856', '68714', '17', '-1', '-1',
 '62', '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '20', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2200',
 '0', '0', '87', '144', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '20', '13604', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '2', '2', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0',
 '0', '0', '1', null);

replace into item_template values
 ('60334',  '4', '0', 'Ring of Eldara', '', '31800', '3', '0', '1', '59468', '14867', '11', '-1', '-1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '8', '3',
 '3', '7', '6', '6', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0',
 '0', '0', '1', null);

-- To Sorrowguard Keep --
delete from quest_template where entry = 40255;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40255,2,1519,35,28,0,0,'To Sorrowguard Keep','A while ago a band of soldiers had departed out to the Swamp of Sorrows. They were tasked with the reclamation of an old keep that laid within the mountains near the western edge of the swamp. Paladin Janathos was the leader of this group, and asked me to say for him and his men a blessing.\n\nNo doubt they will need help out there and perhaps a fresh set of hands could be welcomed. Sorrowguard Keep should be just near the entrance to Deadwind Pass, infact it looms over it. It was once used to protect the kingdoms border, believe it or not.\n\nIf you see Janathos, tell him I said hello!','Deliver Biggs Report to Watch Paladin Janathos.','Hello?','Brother Kristoff asked for you to assist us, he is a kind man, and faithful to the light. We could use all the help we could get around here, this bastion is in a state of disrepair, not to mention the threats all around.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,600,72,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (1444, 40255);
replace into creature_involvedrelation (id, quest) values (92017, 40255);

-- Blackrock and Roll --
delete from quest_template where entry = 40256;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40256,2,46,57,48,0,0,'Blackrock and Roll','The Blackrock Clan belongs to the Old Horde, a very large and dangerous enemy to Orgrimmar. Do not be fooled by the distance between the Blackrock Mountain and Orgrimmar. Should the Blackrock Clan ever gain a sizeable amount of strength, they will come to destroy us as well. The Old Horde consists of many factions that remained here on the Eastern Kingdoms during their fights in the First and Second War\'s and are a grizzled enemy that should not be underestimated.\n\nI have been sent here directly from Orgrimmar to be a damper on the Blackrock Clan, and you shall help. It is the honor of the Horde that is at stake after all.\n\nGather me 20 Blackrock Signet\'s, they are worn by all of the Blackrock Clan in the region, kill them, and obtain these signets.','Gather 20 Blackrock Signet\'s from Blackrock Orcs for Tarsokk in Flame Crest.','Have you done as I asked?','We have dealt a blow to the Old Horde and delayed their progress. I have been ordered to pay you in gold for your duties. If you see more of our enemy, make sure to kill them.',60335,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10000,5800,76,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91891, 40256);
replace into creature_involvedrelation (id, quest) values (91891, 40256);

update creature_template set npc_flags = 3 where entry = 91891;

delete from item_template where entry = 60335;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60335,20219,'Blackrock Signet',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'Covered in old orcish runes.',0);

delete from creature_loot_template where item = 60335 and entry between 7025 and 7029;
replace into creature_loot_template values
(7025,60335,-40,1,1,1,0),
(7026,60335,-40,1,1,1,0),
(7027,60335,-40,1,1,1,0),
(7028,60335,-40,1,1,1,0),
(7029,60335,-45,1,1,1,0);

-- Blackrock Slayers --
delete from quest_template where entry = 40257;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40257,2,46,57,48,0,0,'Blackrock Slayers','The Slayers of the Blackrock Clan are a most fearsome foe. They have been known in the past for cleavage down entire regiments of human footmen during the old war. It is them I fear more then many on the field of battle.\n\nThey must be dealt with and be dealt with quickly, you shall find them all over the Burning Steppes, mostly concentrated to the west at the Blackrock Stronghold, but you may also see them in the Pillar of Ash as well.\n\nGo with honor, and kill them in the name of Thrall.','Kill 10 Blackrock Slayer\'s and return to Tarsokk in Flame Crest.','Have they been eliminated?','The Blackrock Slayers were a truly terrifying foe, you have done good work.',0,0,0,0,0,0,0,0,7027,10,0,0,0,0,0,0,0,0,0,5800,76,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91891, 40257);
replace into creature_involvedrelation (id, quest) values (91891, 40257);

-- The Maul Orb --
delete from quest_template where entry = 40258;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40258,2,408,53,45,0,0,'The Maul Orb','The Maul Orb was once a powerful artifact to our tribe, but we lost it a long time ago.\n\nIn olden days we were once apart of the larger Gor\'dosh tribe and dominated both Gillijim and Lapidis. The Maul Orb was created in those days, and since the tribes split, it has been lost in their hands.\n\nThere is no doubt that the Maul Orb still exists, tucked away within the Gor\'dosh Heights, the Heights are located on Lapidis Isle, far to the north, on its north western edge, go there, and recover it.','Reclaim The Maul Orb from Gor\'dosh Heights on Lapidis Isle and return to Embergut at Maul\'ogg Post.','Have you found the orb?','<A grin would spread from ear to ear across Emberguts face> So long it has been gone, and here it is!\n\nYou\'ve done well, I never thought I would see it again and it is in my hands. Maybe now Embergut can be the strongest ogre!',60336,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2500,5400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60476, 40258);
replace into creature_involvedrelation (id, quest) values (60476, 40258);

delete from item_template where entry = 60336;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60336,23727,'The Maul Orb',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Covered in old orcish runes.',0);

delete from gameobject_template where entry = 2010852;
replace into gameobject_template values
(2010852,3,25452,'Gor\'dosh Basket',0,4,1,43,2010852,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from gameobject_loot_template where entry = 2010852;
replace into gameobject_loot_template values 
(2010852,60336,-100,0,1,1,0);

-- The Dark-Rune Anvil --
delete from quest_template where entry = 40259;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40241,40259,2,139,58,55,0,0,'The Dark-Rune Anvil','I did some digging over the book a bit ago, it would appear that crafting of runic weapons and armor requires a Dark-Rune Anvil. I certainly don\'t have any sort of thing around here, but I do know a place that may.\n\nWithin the depths of Stratholme is a large slaughterhouse, it is where Baron Rivendare has called home for the time being. The Dark-Rune Anvil should be located there, and from it, you shall temper the blade!\n\nI have learned a lot, and I thank you plenty friend! I will continue my studies and perhaps one day we may be able to outright nullify our enemies equipment through my research.\n\nGo, and venture into the depths of that place, and claim what is yours, oh and if anyone asks, we haven\'t spoken!','Reach the Dark-Rune Anvil deep within Stratholme, with it, temper the Untempered Runeblade and claim your rightful prize.','<The Anvil\'s presence is intimidating>.','<A humming, radiant energy comes from the surface of the dark metal, its energy is almost mystifying to your mind. As you stand before it, the knowledge of runes swells within your mind, and guides your hand. With the materials provided, you begin the process of tempering the Runeblade>.\n\n<After the process is complete, you feel whole, you feel complete. You can feel sheer power flowing from the blade, it is calling you, it is urging you toward destruction. Within that moment, you lose all knowledge of the processes which drove your hands to create such a weapon, it\'s touch within your hands is euphoric. You were made for this very moment, you have found your purpose on this world>.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8500,529,-500,0,0,0,0,0,0,0,0,0,81060,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (16376, 40259);
replace into gameobject_involvedrelation (id, quest) values (3000512, 40259);

update quest_template set questflags = 512 where entry = 40259;
update quest_template set requiredskill = 164, requiredskillvalue = 200 where entry = 40259;

update gameobject_template set type = 2 where entry = 3000512;
update gameobject_template set data0 = 0 where entry = 3000512;
update gameobject_template set data1 = 0 where entry = 3000512;
update quest_template set limittime = 0 where entry = 40214;

update gameobject_template set size = 2.8 where entry = 2010849 and 2010850;
update creature_template set type = 1 where entry between 1547 and 1549;
update creature_template set beast_family = 1 where entry between 1547 and 1549;

REPLACE INTO item_template VALUES
(60329, 12, 0, 'Taming Rod', '', 26595, 1, 64, 1, 0, 0, 0, 2047, -1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50901, 0, 3, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(60330, 12, 0, 'Taming Rod', '', 26595, 1, 64, 1, 0, 0, 0, 2047, -1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50902, 0, 3, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(60331, 12, 0, 'Taming Rod', '', 26595, 1, 64, 1, 0, 0, 0, 2047, -1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50903, 0, 3, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- A Dark Ranger’s Mastery --
delete from quest_template where entry = 40260;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40220,40260,2,85,5,5,0,0,'A Dark Ranger\’s Mastery','Ah, a very promising hunter you are, but I am afraid there\’s nothing left that I could teach you, as you\’ve kept doing your tasks to serve the Forsaken and our queen, I suppose it\’s time for you to advance to Brill.\n\nAfter you\’re done with all your tasks here, seek Dark Ranger Lanissa, she will be in a tent in the town of Brill.\n\nShe will teach you whatever you need to know to continue your mission, these dark rangers were brought with our Lady Sylvannas from Quel\’thalas, as per their name they are very skilled when it comes to marksmanship.\n\nFarewell, and remember to stick to the shadows, for the Forsaken.','Speak with Dark Ranger Lanissa in Brill.','Be quick about your business, I don\’t have the leisure to be here all day.','Morpheus sent you, from Deathknell?\n\nIt\’s been a while since I had seen someone wish to talk this path, you are most welcome, that is if you can keep up with the training.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60483, 40260);
replace into creature_involvedrelation (id, quest) values (81050, 40260);

update creature_template set npc_flags = 19 where entry = 81050;

-- The Hunter’s Path --
delete from quest_template where entry = 40261;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40260,40261,2,85,10,10,0,0,'The Hunter\’s Path','Hail aspiring hunter. By now you should be able to train a beast and claim it as your own, I am afraid I will not be the one to aid you with that although I have played a role in your training.\n\nYou must speak to Liott Maneskin, it seems others such as you have found a way to enthrall a creature as your own.','Speak with Liott Maneskin in Brill.','And who are you?','Ah, both Morpheus and Dark Ranger Lanissa mentioned you, I guess it\’s time to offer you a lesson.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (81050, 40261);
replace into creature_involvedrelation (id, quest) values (60484, 40261);

update quest_template set requiredraces = 16 where entry = 40261;

-- Taming the Beast I --
delete from quest_template where entry = 40248;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40261,40248,2,-261,10,10,0,0,'Taming the Beast I','As once people of Lordaeron, we have ventured into the forests before, I suppose you are no stranger to the wolves we once had to fear in the midst of the night.\n\nEven these wolves were plagued and corrupted by the Scourge, as you may see, I carry one at my side currently. Blackpaw here is a darkhound, one I\’ve been able to tame without the need of any special skill.\n\nRegarding our condition, some beasts will still be approachable as they wouldn\’t mind the actual smell of death, but others will probably attempt to have a bite out of you, for that, I have something I will bestow upon you at the end of this training since you must be able to tame a beast without it as well.\n\nNow go, and return with a Darkhound.','Use the Taming Rod to tame a Decrepit Darkhound. Practice your skills, then return the Taming Rod to Liott Maneskin in Brill.','Trust in your skills. Tame that Darkhound.','I can see it\’s very eager to gnaw on some Scourge bones, you\’ve done well.',60329,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60329,1,0,850,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60484, 40248);
replace into creature_involvedrelation (id, quest) values (60484, 40248);

update quest_template set questflags = 2 where entry = 40248;
update quest_template set specialflags = 2 where entry = 40248;
update quest_template set completeemote = 1 where entry = 40248;

-- Taming the Beast II --
delete from quest_template where entry = 40249;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40248,40249,2,-261,10,10,0,0,'Taming the Beast II','The darkhound wasn\’t quite the hardest beast to tame, but I admire you for doing it.\n\nThe next beast you will be tasked to tame is a duskbat, these can grow very huge in size, we use them as means of transportation when they grow in size. The bat also has a very specific screech that would even affect the undead, remember this as you go on in this world, every beast has its own way of fighting, although nature itself tends to adapt to an abomination such as you, the beasts will not.\n\nYou must focus on training with them, at your side, learn from one another. Do not ever believe that you aren\’t able to learn new things, as long as your mind still reigns over your body, you will be able to do to great things.\n\nTame a duskbat, train with it, and then return to me.','Use the Taming Rod to tame a Greater Duskbat. Practice your skills, then return the Taming Rod to Liott Maneskin in Brill.','Being undead does not make you a cripple, never forget that.','It seems to fly circles around your head, which means it likes you, great job.',60330,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60330,1,0,850,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60484, 40249);
replace into creature_involvedrelation (id, quest) values (60484, 40249);

update quest_template set questflags = 2 where entry = 40249;
update quest_template set specialflags = 2 where entry = 40249;

-- Taming the Beast III --
delete from quest_template where entry = 40250;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40249,40250,2,-261,10,10,0,0,'Taming the Beast III','As I\’ve mentioned before, our lands barely has any kind of alive creature, your next task will once again have you tame a beast that such as yourself fell prey to the Scourge.\n\nLordaeron used to have brown bears, they\’d often come from Silverpine in the summer, hiding in our forests, those that remained behind are now, here forever.\n\nDealing with an undead pet is quite harder since like yourself they are no longer part of the cycle of life and death. Lost and unaware.\n\nAs you grow in skill, so will your beasts and you will be able to train them in the future, remember that it takes time and dedication to train something that is no longer alive, but you already knew that as you’d need that for yourself.\n\nThe bear is a strong companion, they will stand in front of you and deal with your enemy will you stand back from afar and shoot them down, find one and bring it back to me.','Use the Taming Rod to tame a Plagued Bear. Practice your skills, then return the Taming Rod to Liott Maneskin in Brill.','Time and dedication, luckily you have both.','It seems this beast no longer feels lost, by showing it affection you’ve managed to activate certain emotions in it.\n\nRemember every beast has its own story and you may be the trigger that will either save them or bring them to an end.',60331,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60331,1,0,850,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60484, 40250);
replace into creature_involvedrelation (id, quest) values (60484, 40250);

update quest_template set questflags = 2 where entry = 40250;
update quest_template set specialflags = 2 where entry = 40250;

-- Taming the Beast IV --
delete from quest_template where entry = 40262;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40250,40262,2,-261,10,10,0,0,'Taming the Beast IV','You have learned how to tame a beast using your own skills, you must also know how to train it.\n\nBefore we move with that, I want you to know this. Some beasts do not accept the undead as their masters, either because you seem a delicious snack or since their natural mechanism advises them not to. Luckily with the aid of the Cult of Forgotten Shadow, we hunters were thought a small incantation that would soothe the mind of the beast, and it would merely alter the thought that you\’d be alive.\n\nOnly use this incantation on pets that will not accept an undead master!\n\nNow, as I\’ve mentioned before, on your countless adventures that are to follow, you will gain skills and you must train your pet to do so as well, I am afraid I am not able to teach you how to do that, but I know who can.\n\nTravel to the Undercity, in the War Quarter speak to Diane Willowfield, she will be the one to instruct the basics of the pet training.\n\nIt has been my utmost pleasure to teach you. Go now and show the living that the Forsaken are no mere walking corpses.','Talk to Diane Willowfield in the War Quarter of the Undercity to learn how to train your pet.','Quick, before my patience runs out.','Oh my! What a gorgeous beast you\’ve brought with you, I assume you wish to train it?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,850,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60484, 40262);
replace into creature_involvedrelation (id, quest) values (60488, 40262);

-- A Demonstration of Skill --
delete from quest_template where entry = 40263;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40262,40263,2,-261,10,10,0,0,'A Demonstration of Skill','Dark Ranger Lanissa advised me to put you on this path after you’ve finished your training.\n\nBoth she and I wish for you to hunt a particular Scourge fiend, his name is Boltrus, he hides in Balnir Farmstead, inside the barn.\n\nBoltrus used to be the servant of our great mayor, here in Brill, the mayor asked us to put an end to his suffering, as it didn\’t seem Boltrus was sane anymore. He used to be sweet with one of the farmstead girls, and it seems that his only memory clings to the nights they spent in that barn.\n\nHunt him down and bring his head back to Dark Ranger Lanissa, then you will be rewarded.','Hunt Boltrus and bring his head back to Dark Ranger Lanissa in Brill.','How goes your task?','You’ve done well.\n\nSadly the Scourge took more than the sanity from some of us, I admire the fact that this creature was still clinging to its moral self, I sometimes wonder what would’ve happened to me if I was nothing more than a mindless husk.\n\nAlas, here, I have two weapons of choice.',60337,1,0,0,0,0,0,0,60513,1,0,0,0,0,0,0,0,0,250,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60338,1,60339,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60484, 40263);
replace into creature_involvedrelation (id, quest) values (81050, 40263);

delete from creature_template where entry = 60513;
REPLACE INTO creature_template VALUES
(60513, 1198, 0, 0, 0, 'Boltrus', NULL, 0, 12, 12, 500, 500, 0, 0, 20, 14, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 17, 22, 0, 66, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 21.2784, 29.2578, 100, 6, 0, 60513, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 20, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

delete from item_template where entry = 60337;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60337,14023,'Boltrus`s Head',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 60337 and entry = 60513;
replace into creature_loot_template values
(60513,60337,-100,1,1,1,0);

update item_template set display_id = 1037 where entry = 60149;

replace into item_template values
 ('81061', '4', '2', 'Primalist\'s Gloves', '', '60883', '2', '0', '1', '28356', '7089', '10', '-1', '-1', '54',
 '49', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '11', '6', '6',
 '7', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '88', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '8', '1', '0', '0', '30', '0', '0', '0', '0', '8', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81062', '4', '2', 'Primalist\'s Shoulders', '', '60886', '2', '0', '1', '47364', '11841', '3', '-1', '-1', '56',
 '51', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '12', '6', '6',
 '7', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '109', '0', '0', '0',
 '0', '0', '0', '7677', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '8', '1', '0', '0', '50', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81063', '4', '2', 'Primalist\'s Headdress', '', '40206', '2', '0', '1', '43956', '10989', '1', '-1', '-1', '55',
 '50', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '12', '6', '7',
 '7', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '117', '0', '0', '0',
 '0', '0', '0', '18384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '8', '1', '0', '0', '50', '0', '0', '0', '0', '28', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81064', '4', '2', 'Primalist\'s Pants', '', '60881', '2', '0', '1', '57132', '14283', '7', '-1', '-1', '56',
 '51', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '16', '6', '7',
 '7', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '127', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '8', '1', '0', '0', '65', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81065', '4', '2', 'Primalist\'s Boots', '', '60880', '2', '0', '1', '40748', '10187', '8', '-1', '-1', '54',
 '49', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '10', '6', '7',
 '7', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '96', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '8', '1', '0', '0', '45', '0', '0', '0', '0', '8', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81066', '4', '2', 'Primalist\'s Vest', '', '60879', '3', '0', '1', '80780', '20195', '5', '-1', '-1', '57',
 '52', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '11', '6', '5',
 '7', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '162', '0', '0', '0',
 '0', '0', '0', '9317', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '8', '1', '0', '0', '100', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '1', NULL);
 
 
-- The Maul'ogg Crisis I --
delete from quest_template where entry = 40264;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40264,2,408,53,45,0,0,'The Maul\'ogg Crisis I','Hello, and welcome to Maul\'ogg Refuge, we are a battered people, stuck in a constant fight for dominance. I am Haz\'gorg, and I am the head of the seers.\n\nLong have I seen the desruction of my people, fortold in long fever dreams and visions within the dark hours of twilight. I fear that the constant state of warfare we are engulfed will do nothing but bring our end.\n\nI ask of you to speak with Lord Cruk\'Zogg on my behalf, tell him that I believe this foolhardy aggresion will bring nothing but suffering.','Convince Lord Cruk\'Zogg to end his foolhardly aggresion on behalf of Haz\'gorg the Great Seer.','So, have you spoken with him?','I see. Lord Cruk\'Zogg will bring us into ruin, I must come up with a new way to make him be convinced.',0,0,0,0,0,0,0,0,60337,1,0,0,0,0,0,0,0,0,0,450,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Convince Lord Cruk\'Zogg to end his foolhardly aggresion');

replace into creature_questrelation (id, quest) values (92184, 40264);
replace into creature_involvedrelation (id, quest) values (92184, 40264);

update creature_template set script_name = 'npc_lord_crukzogg' where entry = 92180;

delete from creature_template where entry = 60337;
replace into creature_template (entry, name, display_id1) values (60337, 'quest_40264_dummy_triger', 328);

-- The Maul'ogg Crisis II --
delete from quest_template where entry = 40265;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40264,40265,2,408,53,45,0,0,'The Maul\'ogg Crisis II','If there is to be a chance for my people then I must conjure a great vision, to do as such will require materials from across the island. I ask of you to gather me the following items. 10 Basilisk Eye\'s from the Basilisks, 6 Crawler Pincers from the Crawlers, and 3 Deepsnap Tails from the crocolisks.\n\n Once you have gotten these materials for me, I can begin to see what must be done.','Gather 10 Basilisk Eyes, 6 Crawler Pincers and 3 Deepsnap Tails for Haz\'gorg the Great Seer in Maul\'ogg Refuge.','Have you had the opportunity to collect what it is I asked?','I see a great future in you, you have done well, now, let us begin.',60341,10,60342,6,60340,3,0,0,0,0,0,0,0,0,0,0,0,0,0,4800,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92184, 40265);
replace into creature_involvedrelation (id, quest) values (92184, 40265);

delete from item_template where entry between 60340 and 60342;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60341,7986,'Basilisk Eye',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0),
(60342,2627,'Crawler Pincer',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0),
(60340,1225,'Deepsnap Tail',12,1,2048,1,-1,-1,1,3,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 91964 where entry = 91964;
update creature_template set loot_id = 91963 where entry = 91963;
update creature_template set loot_id = 92147 where entry = 92147;
update creature_template set loot_id = 92146 where entry = 92146;
update creature_template set loot_id = 91962 where entry = 91962;

delete from creature_loot_template where entry = 91964;
replace into creature_loot_template values
(91964, 770, 54.413, 0, 1, 3, 0),
(91964, 3914, 0.097, 0, 1, 1, 0),
(91964, 4637, 0.291, 0, 1, 1, 0),
(91964, 7909, 0.097, 0, 1, 1, 0),
(91964, 7910, 0.097, 0, 1, 1, 0),
(91964, 30025, 0.5, 0, -30025, 1, 0),
(91964, 30029, 0.5, 0, -30029, 1, 0),
(91964, 30049, 0.5, 0, -30049, 1, 0),
(91964, 30072, 0.5, 0, -30072, 1, 0),
(91964, 60341,-55,1,1,1,0);

delete from creature_loot_template where entry = 91963;
replace into creature_loot_template values
(91963, 770, 54.413, 0, 1, 3, 0),
(91963, 3914, 0.097, 0, 1, 1, 0),
(91963, 4637, 0.291, 0, 1, 1, 0),
(91963, 7909, 0.097, 0, 1, 1, 0),
(91963, 7910, 0.097, 0, 1, 1, 0),
(91963, 30025, 0.5, 0, -30025, 1, 0),
(91963, 30029, 0.5, 0, -30029, 1, 0),
(91963, 30049, 0.5, 0, -30049, 1, 0),
(91963, 30072, 0.5, 0, -30072, 1, 0),
(91963, 60341,-65,1,1,1,0);

delete from creature_loot_template where entry = 92147;
replace into creature_loot_template values
(92147, 1529, 0.02, 0, 1, 1, 0),
(92147, 1645, 0.02, 0, 1, 1, 0),
(92147, 1685, 0.02, 0, 1, 1, 0),
(92147, 1708, 0.02, 0, 1, 1, 0),
(92147, 1711, 0.02, 0, 1, 1, 0),
(92147, 1725, 0.02, 0, 1, 1, 0),
(92147, 2290, 0.02, 0, 1, 1, 0),
(92147, 2772, 0.02, 0, 1, 1, 0),
(92147, 2838, 0.02, 0, 1, 1, 0),
(92147, 3010, 15.1718, 0, 1, 1, 0),
(92147, 3357, 0.02, 0, 1, 1, 0),
(92147, 3771, 0.02, 0, 1, 1, 0),
(92147, 3827, 0.02, 0, 1, 1, 0),
(92147, 3832, 0.02, 0, 1, 1, 0),
(92147, 3858, 0.06, 0, 1, 1, 0),
(92147, 3864, 0.0892, 0, 1, 1, 0),
(92147, 3867, 0.02, 0, 1, 1, 0),
(92147, 3868, 0.02, 0, 1, 1, 0),
(92147, 3914, 0.02, 0, 1, 1, 0),
(92147, 3927, 0.02, 0, 1, 1, 0),
(92147, 4100, 0.02, 0, 1, 1, 0),
(92147, 4101, 0.02, 0, 1, 1, 0),
(92147, 4102, 0.04, 0, 1, 1, 0),
(92147, 4544, 0.02, 0, 1, 1, 0),
(92147, 4601, 0.02, 0, 1, 1, 0),
(92147, 4602, 0.02, 0, 1, 1, 0),
(92147, 4636, 0.1339, 0, 1, 1, 0),
(92147, 4637, 0.12, 0, 1, 1, 0),
(92147, 5498, 0.02, 0, 1, 1, 0),
(92147, 5500, 0.02, 0, 1, 1, 0),
(92147, 5569, 35.8768, 0, 1, 1, 0),
(92147, 5774, 0.02, 0, 1, 1, 0),
(92147, 5974, 0.02, 0, 1, 1, 0),
(92147, 7084, 0.02, 0, 1, 1, 0),
(92147, 7090, 0.02, 0, 1, 1, 0),
(92147, 7909, 0.16, 0, 1, 1, 0),
(92147, 7910, 0.06, 0, 1, 1, 0),
(92147, 7912, 0.02, 0, 1, 1, 0),
(92147, 7971, 0.04, 0, 1, 1, 0),
(92147, 7973, 35.8768, 0, 1, 1, 0),
(92147, 7992, 0.02, 0, 1, 1, 0),
(92147, 8364, 0.02, 0, 1, 1, 0),
(92147, 8386, 0.02, 0, 1, 1, 0),
(92147, 8831, 0.02, 0, 1, 1, 0),
(92147, 10300, 0.02, 0, 1, 1, 0),
(92147, 10301, 0.02, 0, 1, 1, 0),
(92147, 10315, 0.02, 0, 1, 1, 0),
(92147, 10603, 0.02, 0, 1, 1, 0),
(92147, 10605, 0.02, 0, 1, 1, 0),
(92147, 10606, 0.02, 0, 1, 1, 0),
(92147, 11202, 0.02, 0, 1, 1, 0),
(92147, 12206, 36.0107, 0, 1, 1, 0),
(92147, 13926, 0.02, 0, 1, 1, 0),
(92147, 17057, 36.9032, 0, 1, 1, 0),
(92147, 30025, 0.5, 0, -30025, 1, 0),
(92147, 30026, 0.01, 0, -30026, 1, 0),
(92147, 30027, 0.5, 0, -30027, 1, 0),
(92147, 30028, 0.01, 0, -30028, 1, 0),
(92147, 30029, 0.5, 0, -30029, 1, 0),
(92147, 30030, 0.01, 0, -30030, 1, 0),
(92147, 30031, 0.5, 0, -30031, 1, 0),
(92147, 30033, 0.5, 0, -30033, 1, 0),
(92147, 30034, 0.01, 0, -30034, 1, 0),
(92147, 30035, 0.0025, 0, -30035, 1, 0),
(92147, 81013, -40, 7, 1, 1, 0),
(92147, 60342,-35,1,1,1,0);

delete from creature_loot_template where entry = 92146;
replace into creature_loot_template values
(92146, 1529, 0.02, 0, 1, 1, 0),
(92146, 1645, 0.02, 0, 1, 1, 0),
(92146, 1685, 0.02, 0, 1, 1, 0),
(92146, 1708, 0.02, 0, 1, 1, 0),
(92146, 1711, 0.02, 0, 1, 1, 0),
(92146, 1725, 0.02, 0, 1, 1, 0),
(92146, 2290, 0.02, 0, 1, 1, 0),
(92146, 2772, 0.02, 0, 1, 1, 0),
(92146, 2838, 0.02, 0, 1, 1, 0),
(92146, 3010, 15.1718, 0, 1, 1, 0),
(92146, 3357, 0.02, 0, 1, 1, 0),
(92146, 3771, 0.02, 0, 1, 1, 0),
(92146, 3827, 0.02, 0, 1, 1, 0),
(92146, 3832, 0.02, 0, 1, 1, 0),
(92146, 3858, 0.06, 0, 1, 1, 0),
(92146, 3864, 0.0892, 0, 1, 1, 0),
(92146, 3867, 0.02, 0, 1, 1, 0),
(92146, 3868, 0.02, 0, 1, 1, 0),
(92146, 3914, 0.02, 0, 1, 1, 0),
(92146, 3927, 0.02, 0, 1, 1, 0),
(92146, 4100, 0.02, 0, 1, 1, 0),
(92146, 4101, 0.02, 0, 1, 1, 0),
(92146, 4102, 0.04, 0, 1, 1, 0),
(92146, 4544, 0.02, 0, 1, 1, 0),
(92146, 4601, 0.02, 0, 1, 1, 0),
(92146, 4602, 0.02, 0, 1, 1, 0),
(92146, 4636, 0.1339, 0, 1, 1, 0),
(92146, 4637, 0.12, 0, 1, 1, 0),
(92146, 5498, 0.02, 0, 1, 1, 0),
(92146, 5500, 0.02, 0, 1, 1, 0),
(92146, 5569, 35.8768, 0, 1, 1, 0),
(92146, 5774, 0.02, 0, 1, 1, 0),
(92146, 5974, 0.02, 0, 1, 1, 0),
(92146, 7084, 0.02, 0, 1, 1, 0),
(92146, 7090, 0.02, 0, 1, 1, 0),
(92146, 7909, 0.16, 0, 1, 1, 0),
(92146, 7910, 0.06, 0, 1, 1, 0),
(92146, 7912, 0.02, 0, 1, 1, 0),
(92146, 7971, 0.04, 0, 1, 1, 0),
(92146, 7973, 35.8768, 0, 1, 1, 0),
(92146, 7992, 0.02, 0, 1, 1, 0),
(92146, 8364, 0.02, 0, 1, 1, 0),
(92146, 8386, 0.02, 0, 1, 1, 0),
(92146, 8831, 0.02, 0, 1, 1, 0),
(92146, 10300, 0.02, 0, 1, 1, 0),
(92146, 10301, 0.02, 0, 1, 1, 0),
(92146, 10315, 0.02, 0, 1, 1, 0),
(92146, 10603, 0.02, 0, 1, 1, 0),
(92146, 10605, 0.02, 0, 1, 1, 0),
(92146, 10606, 0.02, 0, 1, 1, 0),
(92146, 11202, 0.02, 0, 1, 1, 0),
(92146, 12206, 36.0107, 0, 1, 1, 0),
(92146, 13926, 0.02, 0, 1, 1, 0),
(92146, 17057, 36.9032, 0, 1, 1, 0),
(92146, 30025, 0.5, 0, -30025, 1, 0),
(92146, 30026, 0.01, 0, -30026, 1, 0),
(92146, 30027, 0.5, 0, -30027, 1, 0),
(92146, 30028, 0.01, 0, -30028, 1, 0),
(92146, 30029, 0.5, 0, -30029, 1, 0),
(92146, 30030, 0.01, 0, -30030, 1, 0),
(92146, 30031, 0.5, 0, -30031, 1, 0),
(92146, 30033, 0.5, 0, -30033, 1, 0),
(92146, 30034, 0.01, 0, -30034, 1, 0),
(92146, 30035, 0.0025, 0, -30035, 1, 0),
(92146, 81013, -40, 7, 1, 1, 0),
(92146, 60342,-30,1,1,1,0);

delete from creature_loot_template where entry = 91962;
replace into creature_loot_template values
(91962, 770, 54.413, 0, 1, 3, 0),
(91962, 3914, 0.097, 0, 1, 1, 0),
(91962, 4637, 0.291, 0, 1, 1, 0),
(91962, 7909, 0.097, 0, 1, 1, 0),
(91962, 7910, 0.097, 0, 1, 1, 0),
(91962, 30025, 0.5, 0, -30025, 1, 0),
(91962, 30029, 0.5, 0, -30029, 1, 0),
(91962, 30049, 0.5, 0, -30049, 1, 0),
(91962, 30072, 0.5, 0, -30072, 1, 0),
(91962, 60340,-20,1,1,1,0);

-- The Maul'ogg Crisis III --
delete from quest_template where entry = 40266;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40265,40266,2,408,53,45,0,0,'The Maul\'ogg Crisis III','I have seen, a great many things, a great darkness that has enveloped not just this island, but all around us. My people did the bidding of a greater power, and followed it into the darkness willingly. We were nothing more then pawns until our demise.\n\nI did, however, see more then just misery, I saw the Seer of the Gor\'dosh ogres, a once old friend of mine. Perhaps it is he that can offer some wisdom, or suggestion on how to continue, maybe it is he, who has the answers.\n\nSeer Bol\'ukk resides within the Gor\'dosh Heights amongst the rest of his tribe, you should find him on Lapidis Isle far to the north, the Gor\'dosh Heights rest at its north western side.','Speak with Seer Bol\'ukk at the Gor\'dosh Heights, and return to Haz\'gorg the Great Seer with information.','Have you spoken with Seer Bol\'ukk?','A bold plan he has come up with, I would not have suspected Bol\'ukk to speak such words. But perhaps there is no other option, I will begin to work on an elixir.',0,0,0,0,0,0,0,0,60338,1,0,0,0,0,0,0,0,0,0,4800,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Speak with Bol\'ukk');

replace into creature_questrelation (id, quest) values (92184, 40266);
replace into creature_involvedrelation (id, quest) values (92184, 40266);

update creature_template set script_name = 'npc_seer_bolukk' where entry = 91854;

delete from creature_template where entry = 60338;
replace into creature_template (entry, name, display_id1) values (60338, 'quest_40266_dummy_triger', 328);

-- The Maul'ogg Crisis IV --
delete from quest_template where entry = 40267;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40266,40267,2,408,53,45,0,0,'The Maul\'ogg Crisis IV','So much thinking, and so many dead ends, I do not think that I possess the abilities, or magics strong enough to bring Lord Cruk\'zoggs mind to a state of ease.. Or in such a way that the rest of the tribe wouldn\'t notice.\n\nI do, however know of a powerful being that potentially could be of assistance to me. There is a troll of mystique located on Kazon Island to the north, nestled between Gillijim and Lapidis. He is one of considerable power of which I met long ago, and spoke of in fever dreams of the night.\n\nHis powers were once strong enough to do battle with a great sea beast and destroy it with ease. If there is any that could make such a spell, it would be him.','Find Insom\'ni on Kazon Island.','Yes?','So, Haz\'gorg sent you. It\'s been some time, now, tell me what he desires from me, cause no doubt he needed something!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3050,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92184, 40267);
replace into creature_involvedrelation (id, quest) values (60446, 40267);

-- The Maul'ogg Crisis V --
delete from quest_template where entry = 40268;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40267,40268,2,408,53,45,0,0,'The Maul\'ogg Crisis V','<The troll would listen to the story with interest, a small grin would mark from ear to ear with interest>. I could certainly do this, though I ask why to you, why would I? My magic is that of great power, and something I would not freely give to you.\n\nIf you desire my help then I would desire a favor. There is a satyr that I met quite some time ago, one who walks without care even to this day. He is a vile, trecherous snake of a creature who needs to be dealt with in a manner less then savory.\n\nLet us just say, his actions have wronged me greatly.\n\n Travel to Felwood, to the Ruins of Constellas, you will find Pethax Blackhorn there, it is his horn I desire from his battered corpse.','Obtain Pethax\'s Horn for Insom\'ni on Kazon Island.','Have you found that blackhearted mongrel yet?','<The troll looks almost filled with glee> You have done well, this wretch had much worse coming to him, but this shall do, especially given my current state. I will do as asked, and assist Haz\'gorg.',60243,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4750,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60446, 40268);
replace into creature_involvedrelation (id, quest) values (60446, 40268);

-- The Maul'ogg Crisis VI --
delete from quest_template where entry = 40269;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40268,40269,2,408,53,45,0,0,'The Maul\'ogg Crisis VI','To create a spell of such magnitude will require a few items, the first of which shall be relatively easy to obtain. I require a Gorilla Ligment from Un\'goro Crater, its essence of power will be used to conduct the sheer strength of the spell and channel its abilities onto Lord Cruk\'Zogg.\n\nYou can find Un\'goro Crater deep within Kalimdor, it is a place of danger, so I would watch your step mortal. Return to me with a Gorilla Ligment from the apes there.','Obtain a Gorilla Ligment from Un\'goro Crater and return to Insom\'ni on Kazon Island.','Why are you here, you should be searching for a Ligment.','<Insom\'ni would inspect the Ligment curiously, and nod his head>. This shall do just fine.',60343,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4850,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60446, 40269);
replace into creature_involvedrelation (id, quest) values (60446, 40269);

delete from item_template where entry = 60343;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60343,25467,'Gorilla Ligment',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 60343 and entry between 6513 and 6516;
delete from creature_loot_template where item = 60343 and entry = 9622 ;
delete from creature_loot_template where item = 60343 and entry = 6585 ;
replace into creature_loot_template values
(6513, 60343,-10,1,1,1,0),
(6514, 60343,-12,1,1,1,0),
(6516, 60343,-15,1,1,1,0),
(9622, 60343,-20,1,1,1,0),
(6585, 60343,-20,1,1,1,0);

-- The Maul'ogg Crisis VII --
delete from quest_template where entry = 40270;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40269,40270,2,408,54,45,0,0,'The Maul\'ogg Crisis VII','I have had many encounters within the Temple of Atal\'Hakkar, long ages spent gazing upon its walls. It is a place of darkness and foul energies that have corrupted its once defenders. The Prophet Jammal\'an speaks his foul, misbegotten words into the decaying remains of his people that call this place home. I desire you to venture into the catacombs of this place, to find the Prophet and gather from him the Atal\'ai Rod. It should be kept close to where this troll channels his magic.\n\nThe Atal\'ai Rod holds power in the magic of control, and should assist us in subjugating Lord Cruk\'zogg.','Venture into the depths of the Temple of Atal\'Hakkar and gather the Atal\'ai Rod, bring it to Insom\'ni to finish the spell.','','<Insom\'ni would inspect the Ligment curiously, and nod his head>. This shall do just fine. This shall do just fine.',60344,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60446, 40270);
replace into creature_involvedrelation (id, quest) values (60446, 40270);

update quest_template set type = 81 where entry = 40270;

delete from item_template where entry = 60344;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60344,18261,'Atal\'ai Rod',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010853;
replace into gameobject_template values
(2010853,3,23435,'Atal\'ai Chest',0,4,1,43,2010853,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from gameobject_loot_template where entry = 2010853;
replace into gameobject_loot_template values 
(2010853,60344,-100,0,1,1,0);

-- The Maul'ogg Crisis VIII --
delete from quest_template where entry = 40271;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40270,40271,2,408,54,45,0,0,'The Maul\'ogg Crisis VIII','With the elements recovered, and the Atal\'ai Rod in posession, I can now begin to manifest my energies into the creation of an elixir. This elixir will bring the mind of Lord Cruk\'Zogg into the hands of Haz\'gorg to do as he pleases.\n\nThis will require some concentration on my part, so I do ask you mortal, to keep your mouth quiet while I work.','Wait for Insom\'ni to finish his magic, then return to Haz\'gorg the Great Seer.','Yes?','',60345,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,850,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60446, 40271);
replace into creature_involvedrelation (id, quest) values (92184, 40271);

delete from item_template where entry = 60345;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60345,21531,'The Elixir of Insom\'ni',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- The Maul'ogg Crisis IX --
delete from quest_template where entry = 40272;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40271,40272,2,408,54,45,0,0,'The Maul\'ogg Crisis IX','It would appear the time has come, you have done extremely well in everything I have asked, but now I must ask you to do what is required for the good of my people. Long have we suffered, not at the hands of our enemies, but at the hands of our leadership.\n\nIf there is to be a future for the Maul\'ogg then it must be a future of reasoning, we cannot secure ourselves a place within the Horde if we are constantly engaged in self destructive warfare.\n\nBring the Elixir of Insom\'ni to Lord Cruk\'zogg, inform him that it is a potion of great power that I created for him. When all is done, return to me.','Give the Elixir of Insom\'ni to Lord Cruk\'zogg to sway his mind, and then return to Haz\'gorg the Great Seer in Maul\'ogg Refuge.','Is it done?','<Haz\'gorg would let out a great sigh of relief> What has been done here today cannot be celebrated with great enthusiasm, we have done but a small evil for the good of the Maul\'ogg. Unknowingly, my kind will be thankful for your efforts, even if they do not know anything has transpired. I ask of you to keep your silence, and for your assistance, I offer you a gift from my kind.',0,0,0,0,0,0,0,0,60339,1,0,0,0,0,0,0,60345,1,0,6150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60346,1,60347,1,60348,1,0,0,0,0,'Lord Cruk\'zogg drank Elixir of Insom\'ni');

replace into creature_questrelation (id, quest) values (92184, 40272);
replace into creature_involvedrelation (id, quest) values (92184, 40272);

delete from creature_template where entry = 60339;
replace into creature_template (entry, name, display_id1) values (60339, 'quest_40272_dummy_triger', 328);

replace into item_template values
 ('60346', '4', '2', 'The Ogre Mantle', '', '14696', '3', '0', '1', '70152', '17538', '3', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '19', '7', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '126', '0', '0', '0',
 '0', '0', '0', '9139', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '60', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60347', '2', '10', 'Staff of the Ogre Seer', '', '5540', '3', '0', '1', '231588', '57897', '17', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '21', '6', '21',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3000', '0',
 '0', '130', '168', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '2', '0', '0', '100', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60348', '4', '0', 'Favor of Cruk\'Zogg', '', '9658', '3', '0', '1', '98936', '24734', '2', '-1', '-1', '59',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '8', '7', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '13384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '1', NULL);
 
-- Karazhan Crypt Loot:
-- MARROWSPIKE 
 
 replace into item_template values
 ('83440', '2', '5', 'Boneshatter Maul', '', '9057', '3', '0', '1', '307236', '76809', '17', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '32', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3700', '0',
 '0', '156', '250', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83441', '4', '4', 'Splintercage Breastplate', '', '35398', '3', '0', '1', '99588', '24897', '5', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '20', '7', '8',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '784', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '135', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83442', '4', '2', 'Miasma Walkers', '', '31166', '3', '0', '1', '97204', '24301', '8', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '20', '4', '9',
 '7', '9', '6', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '131', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '50', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83443', '4', '3', 'The Crown of Shattering', '', '26220', '3', '0', '1', '110724', '27681', '1', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '18', '7', '13',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '311', '0', '0', '0',
 '0', '0', '0', '23727', '1', '0', '0', '-1', '0', '-1', '9409', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '70', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83444', '4', '6', 'Bonewall', '', '4107', '3', '0', '1', '151564', '37891', '14', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '12', '4', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '42', '2206', '0', '0', '0',
 '0', '5', '0', '13386', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '4', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83445', '2', '13', 'Marrowclaw Knuckles', '', '7430', '3', '0', '1', '258028', '64507', '21', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '10', '4', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2600', '0',
 '0', '76', '145', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '65', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 -- HIVAXXIS
 
 replace into item_template values
 ('83446', '2', '15', 'Venom\'s Touch', '', '20273', '3', '0', '1', '237456', '59364', '13', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1600', '0',
 '0', '45', '80', '0', '5', '10', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '65', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83447', '4', '2', 'Clutch of Hivaxxis', '', '15411', '3', '0', '1', '63052', '15763', '6', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '157', '0', '0', '0',
 '0', '0', '0', '9333', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '35', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83448', '4', '1', 'Amice of the Webweaver', '', '32404', '3', '0', '1', '69992', '17438', '3', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '18', '6', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '68', '0', '0', '0',
 '0', '0', '0', '23727', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '50', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83449', '4', '0', 'Darksoul Band', '', '28733', '3', '0', '1', '76424', '19106', '11', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '21626', '1', '0', '0', '-1', '0', '-1', '21348', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83450', '4', '0', 'Soul of the Spider', '', '37215', '3', '0', '1', '69236', '17309', '12', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '17330', '0', '0', '0', '180000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83451', '4', '1', 'Cowl of Mivax', '', '28762', '3', '0', '1', '71124', '17781', '1', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '8', '6', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '73', '0', '0', '0',
 '0', '0', '0', '18030', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '50', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 -- ARCHLICH ENKHRAZ
 
 replace into item_template values
 ('83452', '2', '2', 'Windbreaker', '', '28572', '3', '0', '1', '184432', '46108', '15', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2300', '100',
 '2', '44', '96', '0', '7', '14', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '5', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '75', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83453', '4', '0', 'Tome of Shivering Secrets', '', '23177', '3', '0', '1', '144436', '36109', '23', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '5', '0', '0', '9307', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83454', '4', '2', 'Deathrune Leggings', '', '25169', '3', '0', '1', '113236', '28309', '7', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '5', '4', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '159', '0', '0', '0',
 '5', '5', '0', '7598', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '75', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83455', '4', '3', 'Frostchain Greaves', '', '27343', '3', '0', '1', '54768', '13692', '8', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '19', '5', '15',
 '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '261', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '60', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83456', '4', '1', 'Shroud of the Archlich', '', '23031', '3', '0', '1', '71216', '17804', '16', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '47', '0', '0', '0',
 '10', '0', '0', '18384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83457', '4', '0', 'Glacier Pendant', '', '9853', '3', '0', '1', '53460', '13365', '2', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '25', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 -- CORPSEMUNCHER
 
 replace into item_template values
 ('83458', '4', '0', 'Wormheart', '', '3320', '3', '0', '1', '45132', '11283', '2', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '-20', '7', '20',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '50', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '3', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83459', '4', '4', 'Consumer Shackles', '', '9388', '3', '0', '1', '51736', '12934', '9', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '9', '6', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '291', '0', '0', '0',
 '0', '0', '0', '21602', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '45', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83460', '4', '0', 'Deepearth Signet', '', '26537', '3', '0', '1', '65232', '16308', '11', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9315', '1', '0', '0', '-1', '0', '-1', '21619', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83461', '2', '6', 'Cryptkeeper\'s Pike', '', '22242', '3', '0', '1', '300424', '75106', '17', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '18', '6', '18',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3700', '0',
 '0', '160', '245', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '2', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83462', '4', '3', 'Cadaverlink Vest', '', '12595', '3', '0', '1', '147236', '36809', '5', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '16', '5', '7',
 '6', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '376', '0', '0', '0',
 '0', '0', '0', '8815', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '120', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83463', '4', '2', 'Rotworm Grips', '', '17225', '3', '0', '1', '45840', '11460', '10', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '22', '7', '9',
 '3', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '113', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '35', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 -- ALARUS ((ALARUS IS THE LAST BOSS, AND SHOULD DROP 2 ITEMS EVERY TIME HE IS KILLED! ALL ITEMS ALSO SHOULD HAVE THE SAME DROP % EXCEPT THE LAST ITEM POSTED THAT SAYS 0.25%))

replace into item_template values
 ('83464', '4', '1', 'Mantle of Twisted Damnation', '', '50156', '4', '0', '1', '100432', '25108', '3', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '16', '7', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '184', '0', '0', '0',
 '0', '0', '0', '14521', '1', '0', '0', '-1', '0', '-1', '9414', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '60', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83465', '4', '1', 'Shroud of Haunted Torment', '', '28652', '3', '0', '1', '69276', '17319', '16', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '0', '0', '9343', '1', '0', '0', '-1', '0', '-1', '14521', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83466', '4', '4', 'Baneforged Leggings', '', '35069', '3', '0', '1', '97468', '24367', '7', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '18', '3', '7',
 '6', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '582', '0', '0', '0',
 '0', '7', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83467', '2', '19', 'Cryptwatcher\'s Call', '', '21027', '3', '0', '1', '184300', '46075', '15', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '6', '6', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1400', '100',
 '0', '62', '121', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '65', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83468', '4', '0', 'Corpsekeeper\'s Charge', '', '9839', '3', '0', '1', '76832', '19208', '11', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '-25', '5', '5',
 '7', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '5', '0', '18384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83469', '4', '1', 'Cryptstone Circlet', '', '26330', '3', '0', '1', '74776', '18694', '1', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '18', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '91', '0', '0', '0',
 '0', '0', '0', '13390', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '55', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83470', '4', '3', 'Wraithscale Leggings', '', '26163', '3', '0', '1', '148432', '37108', '7', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '15', '7', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '329', '0', '0', '0',
 '0', '0', '0', '9345', '1', '0', '0', '-1', '0', '-1', '21625', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '90', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83471', '2', '10', 'Staff of Alarus', '', '24517', '3', '0', '1', '292832', '73208', '17', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '29', '5', '18',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2800', '0',
 '0', '119', '188', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83472', '4', '1', 'Cover of the Necromancer', '', '50638', '3', '0', '1', '74432', '18608', '1', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '17', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '74', '0', '0', '0',
 '0', '5', '0', '21599', '1', '0', '0', '-1', '0', '-1', '14798', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '50', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);