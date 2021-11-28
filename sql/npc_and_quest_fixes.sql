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
(91962, 60340,-25,1,1,1,0);

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
(6513, 60343,-15,1,1,1,0),
(6514, 60343,-17,1,1,1,0),
(6516, 60343,-22,1,1,1,0),
(9622, 60343,-25,1,1,1,0),
(6585, 60343,-25,1,1,1,0);

-- The Maul'ogg Crisis VII --
delete from quest_template where entry = 40270;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40269,40270,2,408,54,45,0,0,'The Maul\'ogg Crisis VII','I have had many encounters within the Temple of Atal\'Hakkar, long ages spent gazing upon its walls. It is a place of darkness and foul energies that have corrupted its once defenders. The Prophet Jammal\'an speaks his foul, misbegotten words into the decaying remains of his people that call this place home. I desire you to venture into the catacombs of this place, to find the Prophet and gather from him the Atal\'ai Rod. It should be kept close to where this troll channels his magic.\n\nThe Atal\'ai Rod holds power in the magic of control, and should assist us in subjugating Lord Cruk\'zogg.','Venture into the depths of the Temple of Atal\'Hakkar and gather the Atal\'ai Rod, bring it to Insom\'ni to finish the spell.','Have you ventured within the Sunken Temple?','<Insom\'ni would inspect the Ligment curiously, and nod his head>. This shall do just fine. This shall do just fine.',60344,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

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
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40270,40271,2,408,54,45,0,0,'The Maul\'ogg Crisis VIII','With the elements recovered, and the Atal\'ai Rod in posession, I can now begin to manifest my energies into the creation of an elixir. This elixir will bring the mind of Lord Cruk\'Zogg into the hands of Haz\'gorg to do as he pleases.\n\nThis will require some concentration on my part, so I do ask you mortal, to keep your mouth quiet while I work.','Wait for Insom\'ni to finish his magic, then return to Haz\'gorg the Great Seer.','I see.. Then let us finish what we have set out to do.','',60345,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,850,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60446, 40271);
replace into creature_involvedrelation (id, quest) values (92184, 40271);

delete from item_template where entry = 60345;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60345,21531,'The Elixir of Insom\'ni',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- The Maul'ogg Crisis IX --
delete from quest_template where entry = 40272;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40271,40272,2,408,54,45,0,0,'The Maul\'ogg Crisis IX','It would appear the time has come, you have done extremely well in everything I have asked, but now I must ask you to do what is required for the good of my people. Long have we suffered, not at the hands of our enemies, but at the hands of our leadership.\n\nIf there is to be a future for the Maul\'ogg then it must be a future of reasoning, we cannot secure ourselves a place within the Horde if we are constantly engaged in self destructive warfare.\n\nBring the Elixir of Insom\'ni to Lord Cruk\'zogg, inform him that it is a potion of great power that I created for him. When all is done, return to me.','Give the Elixir of Insom\'ni to Lord Cruk\'zogg to sway his mind, and then return to Haz\'gorg the Great Seer in Maul\'ogg Refuge.','Is it done?','<Haz\'gorg would let out a great sigh of relief> What has been done here today cannot be celebrated with great enthusiasm, we have done but a small evil for the good of the Maul\'ogg. Unknowingly, my kind will be thankful for your efforts, even if they do not know anything has transpired. I ask of you to keep your silence, and for your assistance, I offer you a gift from my kind.',0,0,0,0,0,0,0,0,60339,1,0,0,0,0,0,0,60345,1,0,6150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60346,1,60347,1,60348,1,0,0,0,0,'Lord Cruk\'zogg drank Elixir of Insom\'ni');

update quest_template set questflags = 512 where entry = 40272;

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

replace into taxi_nodes values
(300, 0, 0, 0, 0, 'Boat: Stormwind to Auberdine', 0, 0),
(348, 1, 0, 0, 0, 'Zeppelin: Orgrimmar to Thunder Bluff', 0, 0),
(400, 1, 0, 0, 0, 'Boat: Sparkwater to Revantusk Village',  0, 0),
(401, 0, 0, 0, 0, 'Boat: Revanstusk to Sparkwater', 0, 0),
(502, 0, -6657.53, -2219.37, 275.68, 'Zeppelin: Kargath to Orgrimmar', 0, 0),
(503, 1, 1168.83, -4190, 50.34, 'Zeppelin: Orgrimmar to Kargath', 0, 0),
(182, 0, -11864.9, 3188.4, 20, 'Lapidis, Caelan\'s Rest',0, 541),
(183, 0, -14087.2, 2269.2, 67, 'Gilijim, Maul\'Ogg Refuge',9297, 0);

replace into area_template values
(1, 0, 0, 119, 65, 0, 'Dun Morogh', 2, 0),
(2, 0, 40, 120, 64, 0, 'Longshore', 0, 0),
(3, 0, 0, 121, 64, 0, 'Badlands', 0, 0),
(4, 0, 0, 122, 64, 0, 'Blasted Lands', 0, 0),
(7, 0, 33, 123, 64, 0, 'Blackwater Cove', 0, 0),
(8, 0, 0, 124, 64, 0, 'Swamp of Sorrows', 0, 0),
(9, 0, 12, 125, 64, 0, 'Northshire Valley', 0, 0),
(10, 0, 0, 617, 64, 0, 'Duskwood', 0, 0),
(11, 0, 0, 618, 64, 0, 'Wetlands', 0, 0),
(12, 0, 0, 126, 64, 0, 'Elwynn Forest', 2, 0),
(13, 0, 10, 555, 64, 0, 'The World Tree', 0, 0),
(14, 1, 0, 127, 64, 0, 'Durotar', 4, 0),
(15, 1, 0, 128, 64, 0, 'Dustwallow Marsh', 0, 0),
(16, 1, 0, 129, 64, 0, 'Azshara', 0, 0),
(17, 1, 0, 130, 64, 0, 'The Barrens', 4, 0),
(18, 0, 12, 131, 64, 7, 'Crystal Lake', 0, 0),
(19, 0, 33, 574, 64, 40, 'Zul\'Gurub', 0, 0),
(20, 0, 40, 132, 64, 14, 'Moonbrook', 0, 0),
(21, 0, 0, 133, 64, 0, 'Kul Tiras', 0, 0),
(22, 451, 0, 547, 64, 0, 'Programmer Isle', 0, 0),
(23, 0, 12, 134, 64, 0, 'Northshire River', 0, 0),
(24, 0, 12, 135, 64, 0, 'Northshire Abbey', 0, 0),
(25, 0, 0, 136, 64, 0, 'Blackrock Mountain', 0, 0),
(26, 0, 40, 602, 64, 0, 'Lighthouse', 0, 0),
(28, 0, 0, 137, 64, 0, 'Western Plaguelands', 0, 0),
(30, 0, 0, 138, 64, 0, 'Nine', 0, 0),
(32, 0, 10, 139, 64, 0, 'The Cemetary', 0, 0),
(33, 0, 0, 140, 64, 0, 'Stranglethorn Vale', 0, 0),
(34, 0, 12, 141, 64, 0, 'Echo Ridge Mine', 0, 0),
(35, 0, 33, 142, 64, 42, 'Booty Bay', 0, 0),
(36, 0, 0, 143, 64, 0, 'Alterac Mountains', 0, 0),
(37, 0, 33, 144, 64, 36, 'Lake Nazferiti', 0, 0),
(38, 0, 0, 145, 64, 0, 'Loch Modan', 2, 0),
(40, 0, 0, 146, 64, 0, 'Westfall', 2, 0),
(41, 0, 0, 556, 64, 0, 'Deadwind Pass', 0, 0),
(42, 0, 10, 147, 64, 25, 'Darkshire', 0, 0),
(43, 0, 33, 148, 64, 42, 'Wild Shore', 0, 0),
(44, 0, 0, 149, 64, 0, 'Redridge Mountains', 0, 0),
(45, 0, 0, 150, 64, 0, 'Arathi Highlands', 0, 0),
(46, 0, 0, 151, 64, 0, 'Burning Steppes', 0, 0),
(47, 0, 0, 152, 64, 0, 'The Hinterlands', 0, 0),
(49, 0, 22, 153, 64, 0, 'Dead Man\'s Hole', 0, 0),
(51, 0, 0, 154, 64, 0, 'Searing Gorge', 0, 0),
(53, 0, 12, 155, 64, 0, 'Thieves Camp', 0, 0),
(54, 0, 12, 550, 64, 8, 'Jasperlode Mine', 0, 0),
(55, 0, 12, 156, 64, 0, 'Valley of Heroes UNUSED', 0, 0),
(56, 0, 12, 157, 64, 0, 'Heroes\' Vigil', 0, 0),
(57, 0, 12, 158, 64, 5, 'Fargodeep Mine', 0, 0),
(59, 0, 12, 159, 64, 0, 'Northshire Vineyards', 0, 0),
(60, 0, 12, 606, 64, 8, 'Forest\'s Edge', 0, 0),
(61, 0, 12, 160, 64, 0, 'Thunder Falls', 0, 0),
(62, 0, 12, 161, 64, 8, 'Brackwell Pumpkin Patch', 0, 0),
(63, 0, 12, 162, 64, 6, 'The Stonefield Farm', 0, 0),
(64, 0, 12, 163, 64, 6, 'The Maclure Vineyards', 0, 0),
(65, 0, 0, 164, 68, 0, '***On Map Dungeon***', 0, 0),
(66, 1, 0, 165, 68, 0, '***On Map Dungeon***', 0, 0),
(67, 17, 0, 166, 68, 0, '***On Map Dungeon***', 0, 0),
(68, 0, 44, 557, 64, 16, 'Lake Everstill', 0, 0),
(69, 0, 44, 167, 64, 15, 'Lakeshire', 0, 0),
(70, 0, 44, 168, 64, 24, 'Stonewatch', 0, 0),
(71, 0, 44, 627, 64, 20, 'Stonewatch Falls', 0, 0),
(72, 0, 4, 169, 64, 63, 'The Dark Portal', 0, 0),
(73, 0, 4, 170, 64, 50, 'The Tainted Scar', 0, 0),
(74, 0, 8, 171, 64, 43, 'Pool of Tears', 0, 0),
(75, 0, 8, 172, 64, 37, 'Stonard', 0, 0),
(76, 0, 8, 173, 64, 37, 'Fallow Sanctuary', 0, 0),
(77, 0, 1, 174, 64, 0, 'Anvilmar', 0, 0),
(80, 0, 12, 175, 64, 10, 'Stormwind Mountains', 2, 0),
(81, 451, 22, 575, 64, 0, 'Jeff NE Quadrant Changed', 0, 0),
(82, 451, 22, 176, 64, 0, 'Jeff NW Quadrant', 0, 0),
(83, 451, 22, 177, 64, 0, 'Jeff SE Quadrant', 0, 0),
(84, 451, 22, 178, 64, 0, 'Jeff SW Quadrant', 0, 0),
(85, 0, 0, 179, 64, 0, 'Tirisfal Glades', 4, 0),
(86, 0, 12, 180, 64, 8, 'Stone Cairn Lake', 0, 0),
(87, 0, 12, 548, 64, 5, 'Goldshire', 0, 0),
(88, 0, 12, 181, 64, 6, 'Eastvale Logging Camp', 0, 0),
(89, 0, 12, 182, 64, 0, 'Mirror Lake Orchard', 0, 0),
(91, 0, 12, 183, 64, 8, 'Tower of Azora', 0, 0),
(92, 0, 12, 558, 64, 0, 'Mirror Lake', 0, 0),
(93, 0, 10, 628, 64, 28, 'Vul\'Gol Ogre Mound', 0, 0),
(94, 0, 10, 184, 64, 24, 'Raven Hill', 0, 0),
(95, 0, 44, 185, 64, 20, 'Redridge Canyons', 0, 0),
(96, 0, 44, 186, 64, 25, 'Tower of Ilgalar', 0, 0),
(97, 0, 44, 187, 64, 19, 'Alther\'s Mill', 0, 0),
(98, 0, 44, 188, 64, 17, 'Rethban Caverns', 0, 0),
(99, 0, 33, 189, 64, 30, 'Rebel Camp', 0, 0),
(100, 0, 33, 585, 64, 31, 'Nesingwary\'s Expedition', 0, 0),
(101, 0, 33, 190, 64, 32, 'Kurzen\'s Compound', 0, 0),
(102, 0, 33, 586, 64, 41, 'Ruins of Zul\'Kunda', 0, 0),
(103, 0, 33, 191, 64, 40, 'Ruins of Zul\'Mamwe', 0, 0),
(104, 0, 33, 192, 64, 37, 'The Vile Reef', 0, 0),
(105, 0, 33, 193, 64, 42, 'Mosh\'Ogg Ogre Mound', 0, 0),
(106, 0, 33, 194, 64, 0, 'The Stockpile', 0, 0),
(107, 0, 40, 195, 64, 14, 'Saldean\'s Farm', 0, 0),
(108, 0, 40, 196, 64, 15, 'Sentinel Hill', 0, 0),
(109, 0, 40, 197, 64, 15, 'Furlbrow\'s Pumpkin Farm', 0, 0),
(111, 0, 40, 198, 64, 12, 'Jangolode Mine', 0, 0),
(113, 0, 40, 576, 64, 15, 'Gold Coast Quarry', 0, 0),
(115, 0, 40, 199, 64, 17, 'Westfall Lighthouse', 0, 0),
(116, 0, 8, 200, 64, 39, 'Misty Valley', 0, 0),
(117, 0, 33, 629, 64, 35, 'Grom\'gol Base Camp', 0, 0),
(118, 0, 11, 201, 64, 22, 'Whelgar\'s Excavation Site', 0, 0),
(120, 0, 12, 559, 64, 8, 'Westbrook Garrison', 0, 0),
(121, 0, 10, 202, 64, 28, 'Tranquil Gardens Cemetery', 0, 0),
(122, 0, 33, 203, 64, 37, 'Zuuldaia Ruins', 0, 0),
(123, 0, 33, 204, 64, 34, 'Bal\'lal Ruins', 0, 0),
(125, 0, 33, 205, 64, 35, 'Kal\'ai Ruins', 0, 0),
(126, 0, 33, 206, 64, 0, 'Tkashi Ruins', 0, 0),
(127, 0, 33, 207, 64, 40, 'Balia\'mah Ruins', 0, 0),
(128, 0, 33, 208, 64, 36, 'Ziata\'jai Ruins', 0, 0),
(129, 0, 33, 209, 64, 37, 'Mizjah Ruins', 0, 0),
(130, 0, 0, 210, 64, 0, 'Silverpine Forest', 4, 0),
(131, 0, 1, 211, 64, 5, 'Kharanos', 0, 0),
(132, 0, 1, 212, 64, 0, 'Coldridge Valley', 0, 0),
(133, 0, 1, 213, 64, 10, 'Gnomeregan', 0, 0),
(134, 0, 1, 214, 64, 10, 'Gol\'Bolar Quarry', 0, 0),
(135, 0, 1, 215, 64, 7, 'Frostmane Hold', 0, 0),
(136, 0, 1, 216, 64, 5, 'The Grizzled Den', 0, 0),
(137, 0, 1, 217, 64, 7, 'Brewnall Village', 0, 0),
(138, 0, 1, 218, 64, 7, 'Misty Pine Refuge', 0, 0),
(139, 0, 0, 219, 64, 0, 'Eastern Plaguelands', 0, 0),
(141, 1, 0, 220, 64, 0, 'Teldrassil', 2, 0),
(142, 0, 38, 221, 64, 15, 'Ironband\'s Excavation Site', 0, 0),
(143, 0, 38, 222, 64, 18, 'Mo\'grosh Stronghold', 0, 0),
(144, 0, 38, 223, 64, 10, 'Thelsamar', 0, 0),
(145, 0, 38, 224, 64, 18, 'Algaz Gate', 0, 0),
(146, 0, 38, 225, 64, 15, 'Stonewrought Dam', 0, 0),
(147, 0, 38, 226, 64, 15, 'The Farstrider Lodge', 0, 0),
(148, 1, 0, 227, 64, 0, 'Darkshore', 2, 0),
(149, 0, 38, 228, 64, 12, 'Silver Stream Mine', 0, 0),
(150, 0, 11, 229, 64, 20, 'Menethil Harbor', 0, 0),
(151, 451, 0, 560, 64, 0, 'Designer Island', 0, 0),
(152, 0, 85, 230, 64, 9, 'The Bulwark', 0, 0),
(153, 0, 85, 607, 64, 10, 'Ruins of Lordaeron', 0, 0),
(154, 0, 85, 231, 64, 0, 'Deathknell', 0, 0),
(155, 0, 85, 232, 64, 0, 'Night Web\'s Hollow', 0, 0),
(156, 0, 85, 233, 64, 6, 'Solliden Farmstead', 0, 0),
(157, 0, 85, 234, 64, 8, 'Agamand Mills', 0, 0),
(158, 0, 85, 235, 64, 0, 'Agamand Family Crypt', 0, 0),
(159, 0, 85, 236, 64, 5, 'Brill', 0, 0),
(160, 0, 85, 237, 64, 12, 'Whispering Gardens', 0, 0),
(161, 0, 85, 238, 64, 10, 'Terrace of Repose', 0, 0),
(162, 0, 85, 239, 64, 7, 'Brightwater Lake', 0, 0),
(163, 0, 85, 240, 64, 0, 'Gunther\'s Retreat', 0, 0),
(164, 0, 85, 241, 64, 7, 'Garren\'s Haunt', 0, 0),
(165, 0, 85, 242, 64, 5, 'Balnir Farmstead', 0, 0),
(166, 0, 85, 243, 64, 5, 'Cold Hearth Manor', 0, 0),
(167, 0, 85, 244, 64, 8, 'Crusader Outpost', 0, 0),
(168, 0, 85, 245, 64, 0, 'The North Coast', 0, 0),
(169, 0, 85, 577, 64, 0, 'Whispering Shore', 0, 0),
(170, 0, 0, 246, 64, 0, 'Lordamere Lake', 0, 0),
(172, 0, 130, 247, 64, 18, 'Fenris Isle', 0, 0),
(173, 0, 85, 620, 64, 0, 'Faol\'s Rest', 0, 0),
(186, 1, 141, 622, 64, 5, 'Dolanaar', 0, 0),
(187, 1, 141, 248, 64, 7, 'Darnassus UNUSED', 0, 0),
(188, 1, 141, 561, 64, 0, 'Shadowglen', 0, 0),
(189, 0, 1, 249, 64, 5, 'Steelgrill\'s Depot', 0, 0),
(190, 0, 28, 250, 64, 56, 'Hearthglen', 0, 0),
(192, 0, 28, 251, 64, 55, 'Northridge Lumber Camp', 0, 0),
(193, 0, 28, 252, 64, 55, 'Ruins of Andorhal', 0, 0),
(195, 0, 28, 253, 64, 0, 'School of Necromancy', 0, 0),
(196, 0, 28, 578, 64, 0, 'Uther\'s Tomb', 0, 0),
(197, 0, 28, 254, 64, 50, 'Sorrow Hill', 0, 0),
(198, 0, 28, 255, 64, 55, 'The Weeping Cave', 0, 0),
(199, 0, 28, 256, 64, 50, 'Felstone Field', 0, 0),
(200, 0, 28, 257, 64, 54, 'Dalson\'s Tears', 0, 0),
(201, 0, 28, 258, 64, 57, 'Gahrron\'s Withering', 0, 0),
(202, 0, 28, 259, 64, 46, 'The Writhing Haunt', 0, 0),
(203, 0, 28, 260, 64, 0, 'Mardenholde Keep', 0, 0),
(204, 0, 130, 261, 64, 15, 'Pyrewood Village', 0, 0),
(205, 0, 11, 262, 64, 28, 'Dun Modr', 0, 0),
(206, 36, 0, 263, 64, 0, 'Westfall', 0, 0),
(207, 36, 0, 264, 64, 0, 'The Great Sea', 0, 0),
(208, 36, 0, 265, 64, 0, 'Unused Ironcladcove', 0, 0),
(209, 33, 0, 266, 0, 16, 'Shadowfang Keep', 4, 0),
(210, 36, 0, 267, 68, 0, '***On Map Dungeon***', 0, 0),
(211, 0, 1, 268, 64, 7, 'Iceflow Lake', 0, 0),
(212, 0, 1, 269, 64, 8, 'Helm\'s Bed Lake', 0, 0),
(213, 0, 130, 270, 64, 13, 'Deep Elem Mine', 0, 0),
(214, 0, 0, 271, 64, 0, 'The Great Sea', 0, 0),
(215, 1, 0, 272, 64, 0, 'Mulgore', 4, 0),
(219, 0, 40, 273, 64, 15, 'Alexston Farmstead', 0, 0),
(220, 1, 215, 562, 64, 0, 'Red Cloud Mesa', 0, 0),
(221, 1, 215, 274, 64, 0, 'Camp Narache', 0, 0),
(222, 1, 215, 275, 64, 5, 'Bloodhoof Village', 0, 0),
(223, 1, 215, 276, 64, 0, 'Stonebull Lake', 0, 0),
(224, 1, 215, 277, 64, 7, 'Ravaged Caravan', 0, 0),
(225, 1, 215, 278, 64, 9, 'Red Rocks', 0, 0),
(226, 0, 130, 551, 64, 11, 'The Skittering Dark', 0, 0),
(227, 0, 130, 279, 64, 11, 'Valgan\'s Field', 0, 0),
(228, 0, 130, 280, 64, 10, 'The Sepulcher', 0, 0),
(229, 0, 130, 281, 64, 12, 'Olsen\'s Farthing', 0, 0),
(230, 0, 130, 282, 64, 18, 'The Greymane Wall', 0, 0),
(231, 0, 130, 283, 64, 20, 'Beren\'s Peril', 0, 0),
(232, 0, 130, 284, 64, 0, 'The Dawning Isles', 0, 0),
(233, 0, 130, 285, 64, 15, 'Ambermill', 0, 0),
(235, 0, 130, 608, 64, 0, 'Fenris Keep', 0, 0),
(236, 0, 130, 286, 64, 16, 'Shadowfang Keep', 0, 0),
(237, 0, 130, 287, 64, 16, 'The Decrepit Ferry', 0, 0),
(238, 0, 130, 587, 64, 0, 'Malden\'s Orchard', 0, 0),
(239, 0, 130, 588, 64, 11, 'The Ivar Patch', 0, 0),
(240, 0, 130, 288, 64, 12, 'The Dead Field', 0, 0),
(241, 0, 10, 289, 64, 26, 'The Rotting Orchard', 0, 0),
(242, 0, 10, 290, 64, 28, 'Brightwood Grove', 0, 0),
(243, 0, 10, 291, 64, 0, 'Forlorn Rowe', 0, 0),
(244, 0, 10, 292, 64, 0, 'The Whipple Estate', 0, 0),
(245, 0, 10, 563, 64, 25, 'The Yorgen Farmstead', 0, 0),
(246, 0, 51, 293, 64, 48, 'The Cauldron', 0, 0),
(247, 0, 51, 294, 64, 45, 'Grimesilt Dig Site', 0, 0),
(249, 0, 46, 1, 64, 50, 'Dreadmaul Rock', 0, 0),
(250, 0, 46, 579, 64, 54, 'Ruins of Thaurissan', 0, 0),
(251, 0, 46, 2, 64, 0, 'Flame Crest', 0, 0),
(252, 0, 46, 3, 64, 57, 'Blackrock Stronghold', 0, 0),
(253, 0, 46, 4, 64, 56, 'The Pillar of Ash', 0, 0),
(254, 0, 46, 630, 64, 55, 'Blackrock Mountain', 0, 0),
(255, 0, 46, 5, 64, 59, 'Altar of Storms', 0, 0),
(256, 1, 141, 6, 64, 0, 'Aldrassil', 0, 0),
(257, 1, 141, 7, 64, 0, 'Shadowthread Cave', 0, 0),
(258, 1, 141, 8, 64, 0, 'Fel Rock', 0, 0),
(259, 1, 141, 9, 64, 5, 'Lake Al\'Ameth', 0, 0),
(260, 1, 141, 10, 64, 6, 'Starbreeze Village', 0, 0),
(261, 1, 141, 11, 64, 8, 'Gnarlpine Hold', 0, 0),
(262, 1, 141, 12, 64, 0, 'Ban\'ethil Barrow Den', 0, 0),
(263, 1, 141, 13, 64, 0, 'The Cleft', 0, 0),
(264, 1, 141, 14, 64, 9, 'The Oracle Glade', 0, 0),
(265, 1, 141, 15, 64, 11, 'Wellspring River', 0, 0),
(266, 1, 141, 16, 64, 9, 'Wellspring Lake', 0, 0),
(267, 0, 0, 17, 64, 0, 'Hillsbrad Foothills', 0, 0),
(268, 37, 0, 580, 64, 0, 'Azshara Crater', 0, 0),
(269, 0, 0, 18, 64, 18, 'Dun Algaz', 0, 0),
(271, 0, 267, 615, 64, 22, 'Southshore', 0, 0),
(272, 0, 267, 19, 64, 20, 'Tarren Mill', 0, 0),
(275, 0, 267, 20, 64, 21, 'Durnholde Keep', 0, 0),
(276, 0, 0, 564, 64, 0, 'UNUSED Stonewrought Pass', 0, 0),
(277, 0, 36, 21, 64, 0, 'The Foothill Caverns', 0, 0),
(278, 0, 36, 22, 64, 32, 'Lordamere Internment Camp', 0, 0),
(279, 0, 36, 23, 64, 30, 'Dalaran', 0, 0),
(280, 0, 36, 24, 64, 34, 'Strahnbrad', 0, 0),
(281, 0, 36, 25, 64, 36, 'Ruins of Alterac', 0, 0),
(282, 0, 36, 26, 64, 35, 'Crushridge Hold', 0, 0),
(283, 0, 36, 27, 64, 35, 'Slaughter Hollow', 0, 0),
(284, 0, 36, 28, 64, 27, 'The Uplands', 0, 0),
(285, 0, 267, 29, 64, 21, 'Southpoint Tower', 0, 0),
(286, 0, 267, 30, 64, 22, 'Hillsbrad Fields', 0, 0),
(287, 0, 267, 31, 64, 0, 'Hillsbrad', 0, 0),
(288, 0, 267, 32, 64, 27, 'Azurelode Mine', 0, 0),
(289, 0, 267, 33, 64, 26, 'Nethander Stead', 0, 0),
(290, 0, 267, 34, 64, 30, 'Dun Garok', 0, 0),
(293, 0, 0, 35, 64, 30, 'Thoradin\'s Wall', 0, 0),
(294, 0, 267, 36, 64, 30, 'Eastern Strand', 0, 0),
(295, 0, 267, 616, 64, 30, 'Western Strand', 0, 0),
(296, 0, 0, 37, 64, 0, 'South Seas UNUSED', 0, 0),
(297, 0, 33, 38, 64, 50, 'Jaguero Isle', 0, 0),
(298, 0, 11, 39, 64, 0, 'Baradin Bay', 0, 0),
(299, 0, 11, 40, 64, 0, 'Menethil Bay', 0, 0),
(300, 0, 8, 41, 64, 41, 'Misty Reed Strand', 0, 0),
(301, 0, 33, 42, 64, 0, 'The Savage Coast', 0, 0),
(302, 0, 33, 565, 64, 0, 'The Crystal Shore', 0, 0),
(303, 0, 33, 43, 64, 0, 'Shell Beach', 0, 0),
(305, 0, 130, 44, 64, 0, 'North Tide\'s Run', 0, 0),
(306, 0, 130, 45, 64, 0, 'South Tide\'s Run', 0, 0),
(307, 0, 47, 46, 64, 48, 'The Overlook Cliffs', 0, 0),
(308, 0, 0, 631, 64, 0, 'The Forbidding Sea', 0, 0),
(309, 0, 11, 47, 64, 24, 'Ironbeard\'s Tomb', 0, 0),
(310, 0, 33, 48, 64, 41, 'Crystalvein Mine', 0, 0),
(311, 0, 33, 589, 64, 44, 'Ruins of Aboraz', 0, 0),
(312, 0, 33, 49, 64, 0, 'Janeiro\'s Point', 0, 0),
(313, 0, 45, 632, 64, 31, 'Northfold Manor', 0, 0),
(314, 0, 45, 50, 64, 33, 'Go\'Shek Farm', 0, 0),
(315, 0, 45, 590, 64, 31, 'Dabyrie\'s Farmstead', 0, 0),
(316, 0, 45, 51, 64, 35, 'Boulderfist Hall', 0, 0),
(317, 0, 45, 609, 64, 33, 'Witherbark Village', 0, 0),
(318, 0, 45, 52, 64, 36, 'Drywhisker Gorge', 0, 0),
(320, 0, 45, 53, 64, 30, 'Refuge Pointe', 0, 0),
(321, 0, 45, 54, 64, 30, 'Hammerfall', 0, 0),
(322, 0, 45, 581, 64, 0, 'Blackwater Shipwrecks', 0, 0),
(323, 0, 45, 55, 64, 0, 'O\'Breen\'s Camp', 0, 0),
(324, 0, 45, 56, 64, 36, 'Stromgarde Keep', 0, 0),
(325, 0, 45, 57, 64, 0, 'The Tower of Arathor', 0, 0),
(326, 0, 45, 58, 64, 0, 'The Sanctum', 0, 0),
(327, 0, 45, 59, 64, 40, 'Faldir\'s Cove', 0, 0),
(328, 0, 45, 566, 64, 0, 'The Drowned Reef', 0, 0),
(330, 0, 0, 60, 64, 0, 'Thandol Span', 0, 0),
(331, 1, 0, 61, 64, 0, 'Ashenvale', 0, 0),
(332, 1, 0, 62, 64, 0, 'The Great Sea', 0, 0),
(333, 0, 45, 63, 64, 38, 'Circle of East Binding', 0, 0),
(334, 0, 45, 64, 64, 38, 'Circle of West Binding', 0, 0),
(335, 0, 45, 65, 64, 38, 'Circle of Inner Binding', 0, 0),
(336, 0, 45, 66, 64, 38, 'Circle of Outer Binding', 0, 0),
(337, 0, 3, 67, 64, 36, 'Apocryphan\'s Rest', 0, 0),
(338, 0, 3, 633, 64, 39, 'Angor Fortress', 0, 0),
(339, 0, 3, 634, 64, 45, 'Lethlor Ravine', 0, 0),
(340, 0, 3, 68, 64, 38, 'Kargath', 0, 0),
(341, 0, 3, 69, 64, 36, 'Camp Kosh', 0, 0),
(342, 0, 3, 70, 64, 39, 'Camp Boff', 0, 0),
(343, 0, 3, 71, 64, 0, 'Camp Wurg', 0, 0),
(344, 0, 3, 72, 64, 43, 'Camp Cagg', 0, 0),
(345, 0, 3, 73, 64, 39, 'Agmond\'s End', 0, 0),
(346, 0, 3, 74, 64, 36, 'Hammertoe\'s Digsite', 0, 0),
(347, 0, 3, 75, 64, 43, 'Dustbelch Grotto', 0, 0),
(348, 0, 47, 76, 64, 41, 'Aerie Peak', 0, 0),
(349, 0, 47, 77, 64, 0, 'Wildhammer Keep', 0, 0),
(350, 0, 47, 78, 64, 45, 'Quel\'Danil Lodge', 0, 0),
(351, 0, 47, 79, 64, 48, 'Skulk Rock', 0, 0),
(352, 0, 47, 80, 64, 0, 'Zun\'watha', 0, 0),
(353, 0, 47, 81, 64, 44, 'Shadra\'Alor', 0, 0),
(354, 0, 47, 591, 64, 45, 'Jintha\'Alor', 0, 0),
(355, 0, 47, 592, 64, 46, 'The Altar of Zul', 0, 0),
(356, 0, 47, 82, 64, 41, 'Seradane', 0, 0),
(357, 1, 0, 83, 64, 0, 'Feralas', 0, 0),
(358, 1, 215, 84, 64, 0, 'Brambleblade Ravine', 0, 0),
(359, 1, 17, 85, 64, 25, 'Bael Modan', 0, 0),
(360, 1, 215, 86, 64, 7, 'The Venture Co. Mine', 0, 0),
(361, 1, 0, 87, 64, 0, 'Felwood', 0, 0),
(362, 1, 14, 88, 64, 5, 'Razor Hill', 0, 0),
(363, 1, 14, 89, 64, 0, 'Valley of Trials', 0, 0),
(364, 1, 14, 90, 64, 0, 'The Den', 0, 0),
(365, 1, 14, 91, 64, 0, 'Burning Blade Coven', 0, 0),
(366, 1, 14, 92, 64, 7, 'Kolkar Crag', 0, 0),
(367, 1, 14, 93, 64, 6, 'Sen\'jin Village', 0, 0),
(368, 1, 14, 94, 64, 7, 'Echo Isles', 0, 0),
(369, 1, 14, 95, 64, 9, 'Thunder Ridge', 0, 0),
(370, 1, 14, 96, 64, 8, 'Drygulch Ravine', 0, 0),
(371, 1, 14, 567, 64, 0, 'Dustwind Cave', 0, 0),
(372, 1, 14, 97, 64, 6, 'Tiragarde Keep', 0, 0),
(373, 1, 14, 98, 64, 0, 'Scuttle Coast', 0, 0),
(374, 1, 14, 99, 64, 0, 'Bladefist Bay', 0, 0),
(375, 1, 14, 100, 64, 0, 'Deadeye Shore', 0, 0),
(377, 1, 0, 101, 64, 9, 'Southfury River', 0, 0),
(378, 1, 17, 102, 64, 10, 'Camp Taurajo', 0, 0),
(379, 1, 17, 103, 64, 10, 'Far Watch Post', 0, 0),
(380, 1, 17, 104, 64, 15, 'The Crossroads', 0, 0),
(381, 1, 17, 105, 64, 17, 'Boulder Lode Mine', 0, 0),
(382, 1, 17, 552, 64, 15, 'The Sludge Fen', 0, 0),
(383, 1, 17, 106, 64, 14, 'The Dry Hills', 0, 0),
(384, 1, 17, 107, 64, 11, 'Dreadmist Peak', 0, 0),
(385, 1, 17, 108, 64, 15, 'Northwatch Hold', 0, 0),
(386, 1, 17, 109, 64, 12, 'The Forgotten Pools', 0, 0),
(387, 1, 17, 582, 64, 12, 'Lushwater Oasis', 0, 0),
(388, 1, 17, 110, 64, 15, 'The Stagnant Oasis', 0, 0),
(390, 1, 17, 111, 64, 20, 'Field of Giants', 0, 0),
(391, 1, 17, 112, 64, 12, 'The Merchant Coast', 0, 0),
(392, 1, 17, 113, 64, 15, 'Ratchet', 0, 0),
(393, 1, 14, 114, 64, 0, 'Darkspear Strand', 0, 0),
(394, 0, 0, 115, 64, 0, 'Darrowmere Lake UNUSED', 0, 0),
(395, 0, 394, 116, 64, 0, 'Caer Darrow UNUSED', 0, 0),
(396, 1, 215, 117, 64, 6, 'Winterhoof Water Well', 0, 0),
(397, 1, 215, 118, 64, 7, 'Thunderhorn Water Well', 0, 0),
(398, 1, 215, 441, 64, 8, 'Wildmane Water Well', 0, 0),
(399, 1, 215, 610, 64, 6, 'Skyline Ridge', 0, 0),
(400, 1, 0, 442, 64, 0, 'Thousand Needles', 0, 0),
(401, 1, 17, 443, 64, 0, 'The Tidus Stair', 0, 0),
(403, 1, 15, 568, 64, 0, 'Shady Rest Inn', 0, 0),
(404, 1, 215, 444, 64, 8, 'Bael\'dun Digsite', 0, 0),
(405, 1, 0, 445, 64, 0, 'Desolace', 0, 0),
(406, 1, 0, 446, 64, 0, 'Stonetalon Mountains', 0, 0),
(407, 1, 14, 447, 64, 10, 'Orgrimmar UNUSED', 0, 0),
(408, 0, 0, 448, 64, 0, 'Gillijim\'s Isle', 0, 0),
(409, 0, 0, 449, 64, 0, 'Lapidis Isle', 0, 0),
(410, 1, 14, 450, 64, 8, 'Razorwind Canyon', 0, 0),
(411, 1, 331, 451, 64, 0, 'Bathran\'s Haunt', 0, 0),
(412, 1, 331, 625, 64, 0, 'The Ruins of Ordil\'Aran', 0, 0),
(413, 1, 331, 452, 64, 19, 'Maestra\'s Post', 0, 0),
(414, 1, 331, 453, 64, 20, 'The Zoram Strand', 0, 0),
(415, 1, 331, 454, 64, 20, 'Astranaar', 0, 0),
(416, 1, 331, 455, 64, 23, 'The Shrine of Aessina', 0, 0),
(417, 1, 331, 456, 64, 25, 'Fire Scar Shrine', 0, 0),
(418, 1, 331, 457, 64, 23, 'The Ruins of Stardust', 0, 0),
(419, 1, 331, 458, 64, 28, 'The Howling Vale', 0, 0),
(420, 1, 331, 459, 64, 25, 'Silverwind Refuge', 0, 0),
(421, 1, 331, 460, 64, 25, 'Mystral Lake', 0, 0),
(422, 1, 331, 461, 64, 26, 'Fallen Sky Lake', 0, 0),
(424, 1, 331, 462, 64, 22, 'Iris Lake', 0, 0),
(425, 1, 331, 549, 64, 0, 'Moonwell', 0, 0),
(426, 1, 331, 463, 64, 24, 'Raynewood Retreat', 0, 0),
(427, 1, 331, 464, 64, 0, 'The Shady Nook', 0, 0),
(428, 1, 331, 569, 64, 25, 'Night Run', 0, 0),
(429, 1, 331, 611, 64, 0, 'Xavian', 0, 0),
(430, 1, 331, 465, 64, 28, 'Satyrnaar', 0, 0),
(431, 1, 331, 553, 64, 25, 'Splintertree Post', 0, 0),
(432, 1, 331, 466, 64, 30, 'The Dor\'Danil Barrow Den', 0, 0),
(433, 1, 331, 467, 64, 0, 'Falfarren River', 0, 0),
(434, 1, 331, 570, 64, 29, 'Felfire Hill', 0, 0),
(435, 1, 331, 468, 64, 0, 'Demon Fall Canyon', 0, 0),
(436, 1, 331, 469, 64, 0, 'Demon Fall Ridge', 0, 0),
(437, 1, 331, 612, 64, 22, 'Warsong Lumber Camp', 0, 0),
(438, 1, 331, 470, 64, 20, 'Bough Shadow', 0, 0),
(439, 1, 400, 471, 64, 35, 'The Shimmering Flats', 0, 0),
(440, 1, 0, 472, 64, 0, 'Tanaris', 0, 0),
(441, 1, 331, 473, 64, 20, 'Lake Falathim', 0, 0),
(442, 1, 148, 474, 64, 12, 'Auberdine', 0, 0),
(443, 1, 148, 475, 64, 19, 'Ruins of Mathystra', 0, 0),
(444, 1, 148, 476, 64, 16, 'Tower of Althalaxx', 0, 0),
(445, 1, 148, 477, 64, 14, 'Cliffspring Falls', 0, 0),
(446, 1, 148, 478, 64, 11, 'Bashal\'Aran', 0, 0),
(447, 1, 148, 479, 64, 11, 'Ameth\'Aran', 0, 0),
(448, 1, 148, 480, 64, 15, 'Grove of the Ancients', 0, 0),
(449, 1, 148, 481, 64, 16, 'The Master\'s Glaive', 0, 0),
(450, 1, 148, 482, 64, 19, 'Remtravel\'s Excavation', 0, 0),
(452, 1, 148, 483, 64, 0, 'Mist\'s Edge', 0, 0),
(453, 1, 148, 583, 64, 0, 'The Long Wash', 0, 0),
(454, 1, 148, 484, 64, 0, 'Wildbend River', 0, 0),
(455, 1, 148, 485, 64, 0, 'Blackwood Den', 0, 0),
(456, 1, 148, 486, 64, 14, 'Cliffspring River', 0, 0),
(457, 1, 0, 571, 64, 0, 'The Veiled Sea', 0, 0),
(458, 1, 17, 487, 64, 0, 'Gold Road', 0, 0),
(459, 0, 85, 375, 64, 10, 'Scarlet Watch Post', 0, 0),
(460, 1, 406, 488, 64, 20, 'Sun Rock Retreat', 0, 0),
(461, 1, 406, 489, 64, 20, 'Windshear Crag', 0, 0),
(463, 1, 406, 490, 64, 0, 'Cragpool Lake', 0, 0),
(464, 1, 406, 491, 64, 21, 'Mirkfallon Lake', 0, 0),
(465, 1, 406, 492, 64, 25, 'The Charred Vale', 0, 0),
(466, 1, 406, 493, 64, 0, 'Valley of the Bloodfuries', 0, 0),
(467, 1, 406, 613, 64, 25, 'Stonetalon Peak', 0, 0),
(468, 1, 406, 494, 64, 0, 'The Talon Den', 0, 0),
(469, 1, 406, 495, 64, 0, 'Greatwood Vale', 0, 0),
(470, 1, 215, 496, 64, 10, 'Thunder Bluff UNUSED', 0, 0),
(471, 1, 215, 497, 64, 0, 'Brave Wind Mesa', 0, 0),
(472, 1, 215, 498, 64, 0, 'Fire Stone Mesa', 0, 0),
(473, 1, 215, 554, 64, 0, 'Mantle Rock', 0, 0),
(474, 1, 215, 499, 64, 0, 'Hunter Rise UNUSED', 0, 0),
(475, 1, 215, 500, 64, 0, 'Spirit RiseUNUSED', 0, 0),
(476, 1, 215, 501, 64, 0, 'Elder RiseUNUSED', 0, 0),
(477, 0, 33, 502, 64, 43, 'Ruins of Jubuwal', 0, 0),
(478, 1, 141, 503, 64, 8, 'Pools of Arlithrien', 0, 0),
(479, 1, 400, 504, 64, 0, 'The Rustmaul Dig Site', 0, 0),
(480, 1, 400, 505, 64, 30, 'Camp E\'thok', 0, 0),
(481, 1, 400, 572, 64, 24, 'Splithoof Crag', 0, 0),
(482, 1, 400, 506, 64, 29, 'Highperch', 0, 0),
(483, 1, 400, 507, 64, 30, 'The Screeching Canyon', 0, 0),
(484, 1, 400, 508, 64, 26, 'Freewind Post', 0, 0),
(485, 1, 400, 509, 64, 25, 'The Great Lift', 0, 0),
(486, 1, 400, 510, 64, 0, 'Galak Hold', 0, 0),
(487, 1, 400, 511, 64, 0, 'Roguefeather Den', 0, 0),
(488, 1, 400, 512, 64, 0, 'The Weathered Nook', 0, 0),
(489, 1, 357, 513, 64, 0, 'Thalanaar', 0, 0),
(490, 1, 0, 514, 64, 0, 'Un\'Goro Crater', 0, 0),
(491, 47, 0, 515, 0, 0, 'Razorfen Kraul', 4, 0),
(492, 0, 10, 516, 64, 26, 'Raven Hill Cemetery', 0, 0),
(493, 1, 0, 517, 64, 0, 'Moonglade', 0, 0),
(495, 0, 0, 519, 64, 0, 'DELETE ME', 0, 0),
(496, 1, 15, 518, 64, 36, 'Brackenwall Village', 0, 0),
(497, 1, 15, 520, 64, 0, 'Swamplight Manor', 0, 0),
(498, 1, 15, 521, 64, 0, 'Bloodfen Burrow', 0, 0),
(499, 1, 15, 522, 64, 0, 'Darkmist Cavern', 0, 0),
(500, 1, 15, 623, 64, 0, 'Moggle Point', 0, 0),
(501, 1, 15, 614, 64, 0, 'Beezil\'s Wreck', 0, 0),
(502, 1, 15, 624, 64, 36, 'Witch Hill', 0, 0),
(503, 1, 15, 573, 64, 0, 'Sentry Point', 0, 0),
(504, 1, 15, 523, 64, 0, 'North Point Tower', 0, 0),
(505, 1, 15, 524, 64, 0, 'West Point Tower', 0, 0),
(506, 1, 15, 525, 64, 0, 'Lost Point', 0, 0),
(507, 1, 15, 526, 64, 36, 'Bluefen', 0, 0),
(508, 1, 15, 527, 64, 0, 'Stonemaul Ruins', 0, 0),
(509, 1, 15, 528, 64, 38, 'The Den of Flame', 0, 0),
(510, 1, 15, 584, 64, 0, 'The Dragonmurk', 0, 0),
(511, 1, 15, 529, 64, 43, 'Wyrmbog', 0, 0),
(512, 1, 15, 530, 64, 0, 'Onyxia\'s Lair UNUSED', 0, 0),
(513, 1, 15, 531, 64, 36, 'Theramore Isle', 0, 0),
(514, 1, 15, 532, 64, 0, 'Foothold Citadel', 0, 0),
(515, 1, 15, 533, 64, 0, 'Ironclad Prison', 0, 0),
(516, 1, 15, 534, 64, 0, 'Dustwallow Bay', 0, 0),
(517, 1, 15, 535, 64, 0, 'Tidefury Cove', 0, 0),
(518, 1, 15, 536, 64, 36, 'Dreadmurk Shore', 0, 0),
(536, 0, 10, 537, 64, 24, 'Addle\'s Stead', 0, 0),
(537, 1, 490, 538, 64, 55, 'Fire Plume Ridge', 0, 0),
(538, 1, 490, 539, 64, 49, 'Lakkari Tar Pits', 0, 0),
(539, 1, 490, 540, 64, 53, 'Terror Run', 0, 0),
(540, 1, 490, 541, 64, 51, 'The Slithering Scar', 0, 0),
(541, 1, 490, 542, 64, 0, 'Marshal\'s Refuge', 0, 0),
(542, 1, 490, 543, 64, 0, 'Fungal Rock', 0, 0),
(543, 1, 490, 544, 64, 53, 'Golakka Hot Springs', 0, 0),
(556, 0, 38, 545, 64, 12, 'The Loch', 0, 0),
(576, 0, 10, 546, 64, 25, 'Beggar\'s Haunt', 0, 0),
(596, 1, 405, 593, 64, 35, 'Kodo Graveyard', 0, 0),
(597, 1, 405, 594, 64, 0, 'Ghost Walker Post', 0, 0),
(598, 1, 405, 595, 64, 0, 'Sar\'theris Strand', 0, 0),
(599, 1, 405, 596, 64, 30, 'Thunder Axe Fortress', 0, 0),
(600, 1, 405, 597, 64, 0, 'Bolgan\'s Hole', 0, 0),
(602, 1, 405, 599, 64, 39, 'Mannoroc Coven', 0, 0),
(603, 1, 405, 600, 64, 31, 'Sargeron', 0, 0),
(604, 1, 405, 601, 64, 36, 'Magram Village', 0, 0),
(606, 1, 405, 603, 64, 34, 'Gelkis Village', 0, 0),
(607, 1, 405, 604, 64, 37, 'Valley of Spears', 0, 0),
(608, 1, 405, 605, 64, 30, 'Nijel\'s Point', 0, 0),
(609, 1, 405, 598, 64, 32, 'Kolkar Village', 0, 0),
(616, 1, 0, 619, 64, 0, 'Hyjal', 0, 0),
(618, 1, 0, 621, 65, 0, 'Winterspring', 0, 0),
(636, 1, 406, 626, 64, 0, 'Blackwolf River', 0, 0),
(637, 1, 215, 635, 64, 0, 'Kodo Rock', 0, 0),
(638, 1, 14, 636, 64, 0, 'Hidden Path', 0, 0),
(639, 1, 14, 637, 64, 0, 'Spirit Rock', 0, 0),
(640, 1, 14, 638, 64, 0, 'Shrine of the Dormant Flame', 0, 0),
(656, 1, 493, 295, 64, 15, 'Lake Elune\'ara', 0, 0),
(657, 0, 8, 296, 64, 37, 'The Harborage', 0, 0),
(676, 150, 0, 297, 64, 60, 'Outland', 0, 0),
(696, 1, 141, 298, 64, 0, 'Craftsmen\'s Terrace UNUSED', 0, 0),
(697, 1, 141, 299, 64, 0, 'Tradesmen\'s Terrace UNUSED', 0, 0),
(698, 1, 141, 300, 64, 0, 'The Temple Gardens UNUSED', 0, 0),
(699, 1, 141, 301, 64, 0, 'Temple of Elune UNUSED', 0, 0),
(700, 1, 141, 302, 64, 0, 'Cenarion Enclave UNUSED', 0, 0),
(701, 1, 141, 303, 64, 0, 'Warrior\'s Terrace UNUSED', 0, 0),
(702, 1, 141, 304, 64, 11, 'Rut\'theran Village', 0, 0),
(716, 0, 1, 639, 64, 0, 'Ironband\'s Compound', 0, 0),
(717, 34, 0, 640, 0, 0, 'The Stockade', 2, 0),
(718, 43, 0, 641, 0, 0, 'Wailing Caverns', 4, 0),
(719, 48, 0, 642, 0, 0, 'Blackfathom Deeps', 0, 0),
(720, 1, 17, 643, 64, 0, 'Fray Island', 0, 0),
(721, 90, 0, 305, 0, 0, 'Gnomeregan', 2, 0),
(722, 129, 0, 644, 3, 0, 'Razorfen Downs', 4, 0),
(736, 1, 141, 645, 64, 8, 'Ban\'ethil Hollow', 0, 0),
(796, 189, 0, 646, 0, 0, 'Scarlet Monastery', 4, 0),
(797, 0, 12, 647, 64, 8, 'Jerod\'s Landing', 0, 0),
(798, 0, 12, 648, 64, 8, 'Ridgepoint Tower', 0, 0),
(799, 0, 10, 649, 64, 10, 'The Darkened Bank', 0, 0),
(800, 0, 1, 650, 64, 4, 'Coldridge Pass', 0, 0),
(801, 0, 1, 651, 64, 8, 'Chill Breeze Valley', 0, 0),
(802, 0, 1, 652, 64, 8, 'Shimmer Ridge', 0, 0),
(803, 0, 1, 653, 64, 7, 'Amberstill Ranch', 0, 0),
(804, 0, 1, 654, 64, 8, 'The Tundrid Hills', 0, 0),
(805, 0, 1, 655, 64, 0, 'South Gate Pass', 0, 0),
(806, 0, 1, 656, 64, 12, 'South Gate Outpost', 0, 0),
(807, 0, 1, 657, 64, 0, 'North Gate Pass', 0, 0),
(808, 0, 1, 658, 64, 11, 'North Gate Outpost', 0, 0),
(809, 0, 1, 659, 64, 7, 'Gates of Ironforge', 0, 0),
(810, 0, 85, 660, 64, 7, 'Stillwater Pond', 0, 0),
(811, 0, 85, 661, 64, 5, 'Nightmare Vale', 0, 0),
(812, 0, 85, 662, 64, 10, 'Venomweb Vale', 0, 0),
(813, 0, 28, 663, 64, 52, 'The Bulwark', 0, 0),
(814, 1, 14, 664, 64, 0, 'Southfury River', 0, 0),
(815, 1, 17, 665, 64, 0, 'Southfury River', 0, 0),
(816, 1, 14, 666, 64, 8, 'Razormane Grounds', 0, 0),
(817, 1, 14, 667, 64, 10, 'Skull Rock', 0, 0),
(818, 1, 215, 668, 64, 5, 'Palemane Rock', 0, 0),
(819, 1, 215, 669, 64, 9, 'Windfury Ridge', 0, 0),
(820, 1, 215, 670, 64, 5, 'The Golden Plains', 0, 0),
(821, 1, 215, 671, 64, 8, 'The Rolling Plains', 0, 0),
(836, 0, 11, 672, 64, 20, 'Dun Algaz', 0, 0),
(837, 0, 38, 673, 64, 0, 'Dun Algaz', 0, 0),
(838, 0, 38, 306, 64, 0, 'North Gate Pass', 0, 0),
(839, 0, 38, 307, 64, 0, 'South Gate Pass', 0, 0),
(856, 0, 10, 674, 64, 19, 'Twilight Grove', 0, 0),
(876, 1, 0, 675, 64, 0, 'GM Island', 0, 0),
(877, 1, 17, 676, 64, 0, 'Delete ME', 0, 0),
(878, 1, 16, 677, 64, 0, 'Southfury River', 0, 0),
(879, 1, 331, 678, 64, 0, 'Southfury River', 0, 0),
(880, 0, 45, 679, 64, 30, 'Thandol Span', 0, 0),
(881, 0, 11, 680, 64, 0, 'Thandol Span', 0, 0),
(896, 0, 267, 308, 64, 30, 'Purgation Isle', 0, 0),
(916, 0, 40, 681, 64, 9, 'The Jansen Stead', 0, 0),
(917, 0, 40, 682, 64, 18, 'The Dead Acre', 0, 0),
(918, 0, 40, 683, 64, 14, 'The Molsen Farm', 0, 0),
(919, 0, 40, 684, 64, 14, 'Stendel\'s Pond', 0, 0),
(920, 0, 40, 309, 64, 17, 'The Dagger Hills', 0, 0),
(921, 0, 40, 310, 64, 16, 'Demont\'s Place', 0, 0),
(922, 0, 40, 311, 64, 18, 'The Dust Plains', 0, 0),
(923, 0, 38, 312, 64, 13, 'Stonesplinter Valley', 0, 0),
(924, 0, 38, 313, 64, 11, 'Valley of Kings', 0, 0),
(925, 0, 38, 314, 64, 12, 'Algaz Station', 0, 0),
(926, 0, 130, 315, 64, 0, 'Bucklebree Farm', 0, 0),
(927, 0, 130, 316, 64, 14, 'The Shining Strand', 0, 0),
(928, 0, 130, 317, 64, 0, 'North Tide\'s Hollow', 0, 0),
(936, 0, 38, 318, 64, 12, 'Grizzlepaw Ridge', 0, 0),
(956, 169, 0, 319, 64, 0, 'The Verdant Fields', 0, 0),
(976, 1, 440, 320, 64, 40, 'Gadgetzan', 0, 0),
(977, 1, 440, 390, 64, 40, 'Steamwheedle Port', 0, 0),
(978, 1, 440, 321, 64, 45, 'Zul\'Farrak', 0, 0),
(979, 1, 440, 322, 64, 44, 'Sandsorrow Watch', 0, 0),
(980, 1, 440, 323, 64, 49, 'Thistleshrub Valley', 0, 0),
(981, 1, 440, 324, 64, 48, 'The Gaping Chasm', 0, 0),
(982, 1, 440, 325, 64, 48, 'The Noxious Lair', 0, 0),
(983, 1, 440, 326, 64, 47, 'Dunemaul Compound', 0, 0),
(984, 1, 440, 327, 64, 47, 'Eastmoon Ruins', 0, 0),
(985, 1, 440, 328, 64, 44, 'Waterspring Field', 0, 0),
(986, 1, 440, 329, 64, 45, 'Zalashji\'s Den', 0, 0),
(987, 1, 440, 330, 64, 48, 'Land\'s End Beach', 0, 0),
(988, 1, 440, 331, 64, 0, 'Wavestrider Beach', 0, 0),
(989, 1, 440, 332, 64, 0, 'Uldum', 0, 0),
(990, 1, 440, 333, 64, 50, 'Valley of the Watchers', 0, 0),
(991, 1, 440, 334, 64, 0, 'Gunstan\'s Post', 0, 0),
(992, 1, 440, 335, 64, 47, 'Southmoon Ruins', 0, 0),
(996, 0, 44, 408, 64, 22, 'Render\'s Camp', 0, 0),
(997, 0, 44, 409, 64, 20, 'Render\'s Valley', 0, 0),
(998, 0, 44, 410, 64, 25, 'Render\'s Rock', 0, 0),
(999, 0, 44, 411, 64, 0, 'Stonewatch Tower', 0, 0),
(1000, 0, 44, 412, 64, 22, 'Galardell Valley', 0, 0),
(1001, 0, 44, 336, 64, 16, 'Lakeridge Highway', 0, 0),
(1002, 0, 44, 337, 64, 16, 'Three Corners', 0, 0),
(1016, 0, 11, 338, 64, 28, 'Direforge Hill', 0, 0),
(1017, 0, 11, 339, 64, 30, 'Raptor Ridge', 0, 0),
(1018, 0, 11, 340, 64, 25, 'Black Channel Marsh', 0, 0),
(1019, 0, 139, 341, 64, 0, 'The Green Belt', 0, 0),
(1020, 0, 11, 342, 64, 22, 'Mosshide Fen', 0, 0),
(1021, 0, 11, 343, 64, 22, 'Thelgen Rock', 0, 0),
(1022, 0, 11, 344, 64, 24, 'Bluegill Marsh', 0, 0),
(1023, 0, 11, 345, 64, 25, 'Saltspray Glen', 0, 0),
(1024, 0, 11, 346, 64, 20, 'Sundown Marsh', 0, 0),
(1025, 0, 11, 347, 64, 21, 'The Green Belt', 0, 0),
(1036, 0, 11, 391, 64, 28, 'Angerfang Encampment', 0, 0),
(1037, 0, 11, 392, 64, 25, 'Grim Batol', 0, 0),
(1038, 0, 11, 393, 64, 25, 'Dragonmaw Gates', 0, 0),
(1039, 0, 11, 394, 64, 25, 'The Lost Fleet', 0, 0),
(1056, 0, 267, 348, 64, 31, 'Darrow Hill', 0, 0),
(1057, 0, 267, 349, 64, 0, 'Thoradin\'s Wall', 0, 0),
(1076, 1, 406, 368, 64, 21, 'Webwinder Path', 0, 0),
(1097, 0, 10, 351, 64, 19, 'The Hushed Bank', 0, 0),
(1098, 0, 10, 352, 64, 30, 'Manor Mistmantle', 0, 0),
(1099, 1, 357, 353, 64, 42, 'Camp Mojache', 0, 0),
(1100, 1, 357, 395, 64, 41, 'Grimtotem Compound', 0, 0),
(1101, 1, 357, 396, 64, 44, 'The Writhing Deep', 0, 0),
(1102, 1, 357, 350, 64, 0, 'Wildwind Lake', 0, 0),
(1103, 1, 357, 397, 64, 42, 'Gordunni Outpost', 0, 0),
(1104, 1, 357, 398, 64, 0, 'Mok\'Gordun', 0, 0),
(1105, 1, 357, 354, 64, 44, 'Feral Scar Vale', 0, 0),
(1106, 1, 357, 399, 64, 46, 'Frayfeather Highlands', 0, 0),
(1107, 1, 357, 400, 64, 0, 'Idlewind Lake', 0, 0),
(1108, 1, 357, 355, 64, 49, 'The Forgotten Coast', 0, 0),
(1109, 1, 357, 401, 64, 0, 'East Pillar', 0, 0),
(1110, 1, 357, 402, 64, 0, 'West Pillar', 0, 0),
(1111, 1, 357, 403, 64, 60, 'Dream Bough', 0, 0),
(1112, 1, 357, 404, 64, 0, 'Jademir Lake', 0, 0),
(1113, 1, 357, 405, 64, 60, 'Oneiros', 0, 0),
(1114, 1, 357, 356, 64, 49, 'Ruins of Ravenwind', 0, 0),
(1115, 1, 357, 357, 64, 0, 'Rage Scar Hold', 0, 0),
(1116, 1, 357, 358, 64, 0, 'Feathermoon Stronghold', 0, 0),
(1117, 1, 357, 359, 64, 0, 'Ruins of Solarsal', 0, 0),
(1118, 1, 357, 360, 64, 0, 'Lower Wilds UNUSED', 0, 0),
(1119, 1, 357, 369, 64, 48, 'The Twin Colossals', 0, 0),
(1120, 1, 357, 413, 64, 43, 'Sardor Isle', 0, 0),
(1121, 1, 357, 414, 64, 44, 'Isle of Dread', 0, 0),
(1136, 1, 357, 361, 64, 0, 'High Wilderness', 0, 0),
(1137, 1, 357, 370, 64, 42, 'Lower Wilds', 0, 0),
(1156, 1, 17, 362, 64, 0, 'Southern Barrens', 0, 0),
(1157, 1, 17, 406, 64, 0, 'Southern Gold Road', 0, 0),
(1176, 209, 0, 371, 0, 0, 'Zul\'Farrak', 0, 0),
(1196, 1, 0, 363, 64, 0, 'UNUSEDAlcaz Island', 0, 0),
(1216, 1, 16, 364, 64, 49, 'Timbermaw Hold', 0, 0),
(1217, 1, 16, 365, 64, 0, 'Vanndir Encampment', 0, 0),
(1218, 1, 16, 366, 64, 0, 'TESTAzshara', 0, 0),
(1219, 1, 16, 367, 64, 52, 'Legash Encampment', 0, 0),
(1220, 1, 16, 415, 64, 52, 'Thalassian Base Camp', 0, 0),
(1221, 1, 16, 416, 64, 48, 'Ruins of Eldarath ', 0, 0),
(1222, 1, 16, 417, 64, 0, 'Hetaera\'s Clutch', 0, 0),
(1223, 1, 16, 418, 64, 0, 'Temple of Zin-Malor', 0, 0),
(1224, 1, 16, 419, 64, 0, 'Bear\'s Head', 0, 0),
(1225, 1, 16, 420, 64, 49, 'Ursolan', 0, 0),
(1226, 1, 16, 421, 64, 55, 'Temple of Arkkoran', 0, 0),
(1227, 1, 16, 422, 64, 50, 'Bay of Storms', 0, 0),
(1228, 1, 16, 423, 64, 52, 'The Shattered Strand', 0, 0),
(1229, 1, 16, 424, 64, 53, 'Tower of Eldara', 0, 0),
(1230, 1, 16, 425, 64, 51, 'Jagged Reef', 0, 0),
(1231, 1, 16, 426, 64, 52, 'Southridge Beach', 0, 0),
(1232, 1, 16, 427, 64, 54, 'Ravencrest Monument', 0, 0),
(1233, 1, 16, 428, 64, 49, 'Forlorn Ridge', 0, 0),
(1234, 1, 16, 429, 64, 52, 'Lake Mennar', 0, 0),
(1235, 1, 16, 430, 64, 46, 'Shadowsong Shrine', 0, 0),
(1236, 1, 16, 431, 64, 45, 'Haldarr Encampment', 0, 0),
(1237, 1, 16, 432, 64, 49, 'Valormok', 0, 0),
(1256, 1, 16, 433, 64, 42, 'The Ruined Reaches', 0, 0),
(1276, 1, 331, 434, 64, 0, 'The Talondeep Path', 0, 0),
(1277, 1, 406, 435, 64, 20, 'The Talondeep Path', 0, 0),
(1296, 1, 14, 372, 64, 0, 'Rocktusk Farm', 0, 0),
(1297, 1, 14, 407, 64, 0, 'Jaggedswine Farm', 0, 0),
(1316, 1, 17, 436, 64, 33, 'Razorfen Downs', 0, 0),
(1336, 1, 440, 373, 64, 45, 'Lost Rigger Cove', 0, 0),
(1337, 70, 0, 437, 0, 0, 'Uldaman', 0, 0),
(1338, 0, 130, 438, 64, 0, 'Lordamere Lake', 0, 0),
(1339, 0, 36, 439, 64, 0, 'Lordamere Lake', 0, 0),
(1357, 0, 36, 440, 64, 36, 'Gallows\' Corner', 0, 0),
(1377, 1, 0, 374, 64, 0, 'Silithus', 0, 0),
(1397, 169, 0, 376, 64, 0, 'Emerald Forest', 0, 0),
(1417, 109, 0, 377, 0, 0, 'Sunken Temple', 0, 0),
(1437, 0, 4, 378, 64, 47, 'Dreadmaul Hold', 0, 0),
(1438, 0, 4, 379, 64, 50, 'Nethergarde Keep', 0, 0),
(1439, 0, 4, 380, 64, 55, 'Dreadmaul Post', 0, 0),
(1440, 0, 4, 381, 64, 51, 'Serpent\'s Coil', 0, 0),
(1441, 0, 4, 382, 64, 54, 'Altar of Storms', 0, 0),
(1442, 0, 51, 383, 64, 48, 'Firewatch Ridge', 0, 0),
(1443, 0, 51, 384, 64, 0, 'The Slag Pit', 0, 0),
(1444, 0, 51, 385, 64, 56, 'The Sea of Cinders', 0, 0),
(1445, 0, 51, 386, 64, 0, 'Blackrock Mountain', 0, 0),
(1446, 0, 51, 387, 64, 0, 'Thorium Point', 0, 0),
(1457, 0, 4, 388, 64, 47, 'Garrison Armory', 0, 0),
(1477, 0, 0, 389, 0, 0, 'The Temple of Atal\'Hakkar', 0, 0),
(1497, 0, 0, 685, 312, 10, 'Undercity', 4, 0),
(1517, 0, 3, 686, 64, 0, 'Uldaman', 0, 0),
(1518, 0, 40, 687, 64, 0, 'Not Used Deadmines', 0, 0),
(1519, 0, 0, 688, 312, 10, 'Stormwind City', 2, 0),
(1537, 0, 0, 689, 312, 10, 'Ironforge', 2, 0),
(1557, 1, 400, 690, 64, 0, 'Splithoof Hold', 0, 0),
(1577, 0, 33, 691, 64, 0, 'The Cape of Stranglethorn', 0, 0),
(1578, 0, 33, 692, 64, 0, 'Southern Savage Coast', 0, 0),
(1579, 0, 0, 693, 64, 0, 'Unused The Deadmines 002', 2, 0),
(1580, 36, 1579, 694, 64, 0, 'Unused Ironclad Cove 003', 0, 0),
(1581, 36, 0, 695, 0, 0, 'The Deadmines', 2, 0),
(1582, 36, 1581, 696, 0, 0, 'Ironclad Cove', 2, 0),
(1583, 0, 0, 697, 0, 0, 'Blackrock Spire', 0, 0),
(1584, 0, 0, 698, 0, 0, 'Blackrock Depths', 0, 0),
(1597, 1, 17, 699, 64, 0, 'Raptor Grounds UNUSED', 4, 0),
(1598, 1, 17, 700, 64, 0, 'Grol\'dom Farm UNUSED', 4, 0),
(1599, 1, 17, 701, 64, 0, 'Mor\'shan Base Camp', 4, 0),
(1600, 1, 17, 702, 64, 0, 'Honor\'s Stand UNUSED', 4, 0),
(1601, 1, 17, 703, 64, 0, 'Blackthorn Ridge UNUSED', 4, 0),
(1602, 1, 17, 704, 64, 0, 'Bramblescar UNUSED', 4, 0),
(1603, 1, 17, 705, 64, 0, 'Agama\'gor UNUSED', 4, 0),
(1617, 0, 1519, 706, 64, 0, 'Valley of Heroes', 2, 0),
(1637, 1, 0, 707, 312, 10, 'Orgrimmar', 4, 0),
(1638, 1, 0, 708, 312, 10, 'Thunder Bluff', 4, 0),
(1639, 1, 1638, 709, 64, 0, 'Elder Rise', 4, 0),
(1640, 1, 1638, 710, 64, 0, 'Spirit Rise', 4, 0),
(1641, 1, 1638, 711, 64, 0, 'Hunter Rise', 4, 0),
(1657, 1, 0, 712, 312, 10, 'Darnassus', 2, 0),
(1658, 1, 1657, 713, 64, 0, 'Cenarion Enclave', 2, 0),
(1659, 1, 1657, 714, 64, 0, 'Craftsmen\'s Terrace', 2, 0),
(1660, 1, 1657, 715, 64, 0, 'Warrior\'s Terrace', 2, 0),
(1661, 1, 1657, 716, 64, 0, 'The Temple Gardens', 2, 0),
(1662, 1, 1657, 717, 64, 0, 'Tradesmen\'s Terrace', 2, 0),
(1677, 0, 36, 718, 64, 33, 'Gavin\'s Naze', 0, 0),
(1678, 0, 36, 719, 64, 33, 'Sofera\'s Naze', 0, 0),
(1679, 0, 36, 720, 64, 33, 'Corrahn\'s Dagger', 0, 0),
(1680, 0, 36, 721, 64, 34, 'The Headland', 0, 0),
(1681, 0, 36, 722, 64, 31, 'Misty Shore', 0, 0),
(1682, 0, 36, 723, 64, 39, 'Dandred\'s Fold', 0, 0),
(1683, 0, 36, 724, 64, 34, 'Growless Cave', 0, 0),
(1684, 0, 36, 725, 64, 30, 'Chillwind Point', 0, 0),
(1697, 1, 17, 726, 64, 18, 'Raptor Grounds', 4, 0),
(1698, 1, 17, 727, 64, 20, 'Bramblescar', 4, 0),
(1699, 1, 17, 728, 64, 13, 'Thorn Hill', 4, 0),
(1700, 1, 17, 729, 64, 19, 'Agama\'gor', 4, 0),
(1701, 1, 17, 730, 64, 20, 'Blackthorn Ridge', 4, 0),
(1702, 1, 17, 731, 64, 18, 'Honor\'s Stand', 4, 0),
(1703, 1, 17, 732, 64, 17, 'The Mor\'shan Rampart', 4, 0),
(1704, 1, 17, 733, 64, 11, 'Grol\'dom Farm', 4, 0),
(1717, 1, 17, 734, 64, 24, 'Razorfen Kraul', 4, 0),
(1718, 1, 17, 735, 64, 0, 'The Great Lift', 4, 0),
(1737, 0, 33, 736, 64, 40, 'Mistvale Valley', 0, 0),
(1738, 0, 33, 737, 64, 43, 'Nek\'mani Wellspring', 0, 0),
(1739, 0, 33, 738, 64, 42, 'Bloodsail Compound', 0, 0),
(1740, 0, 33, 739, 64, 36, 'Venture Co. Base Camp', 0, 0),
(1741, 0, 33, 740, 64, 43, 'Gurubashi Arena', 0, 0),
(1742, 0, 33, 741, 64, 0, 'Spirit Den', 0, 0),
(1757, 0, 33, 742, 64, 0, 'The Crimson Veil', 0, 0),
(1758, 0, 33, 743, 64, 0, 'The Riptide', 0, 0),
(1759, 0, 33, 744, 64, 0, 'The Damsel\'s Luck', 0, 0),
(1760, 0, 33, 745, 64, 0, 'Venture Co. Operations Center', 0, 0),
(1761, 1, 361, 746, 64, 47, 'Deadwood Village', 0, 0),
(1762, 1, 361, 747, 64, 54, 'Felpaw Village', 0, 0),
(1763, 1, 361, 748, 64, 51, 'Jaedenar', 0, 0),
(1764, 1, 361, 749, 64, 0, 'Bloodvenom River', 0, 0),
(1765, 1, 361, 750, 64, 52, 'Bloodvenom Falls', 0, 0),
(1766, 1, 361, 751, 64, 53, 'Shatter Scar Vale', 0, 0),
(1767, 1, 361, 752, 64, 53, 'Irontree Woods', 0, 0),
(1768, 1, 361, 753, 64, 0, 'Irontree Cavern', 0, 0),
(1769, 1, 361, 754, 64, 54, 'Timbermaw Hold', 0, 0),
(1770, 1, 361, 755, 64, 0, 'Shadow Hold', 0, 0),
(1771, 1, 361, 756, 64, 0, 'Shrine of the Deceiver', 0, 0),
(1777, 0, 8, 757, 64, 36, 'Itharius\'s Cave', 0, 0),
(1778, 0, 8, 758, 64, 41, 'Sorrowmurk', 0, 0),
(1779, 0, 8, 759, 64, 0, 'Draenil\'dur Village', 0, 0),
(1780, 0, 8, 760, 64, 36, 'Splinterspear Junction', 0, 0),
(1797, 0, 8, 761, 64, 41, 'Stagalbog', 0, 0),
(1798, 0, 8, 762, 64, 36, 'The Shifting Mire', 0, 0),
(1817, 0, 8, 763, 64, 0, 'Stagalbog Cave', 0, 0),
(1837, 0, 45, 764, 64, 0, 'Witherbark Caverns', 0, 0),
(1857, 0, 45, 765, 64, 32, 'Thoradin\'s Wall', 0, 0),
(1858, 0, 45, 766, 64, 32, 'Boulder\'gor', 0, 0),
(1877, 0, 3, 767, 64, 42, 'Valley of Fangs', 0, 0),
(1878, 0, 3, 768, 64, 39, 'The Dustbowl', 0, 0),
(1879, 0, 3, 769, 64, 40, 'Mirage Flats', 0, 0),
(1880, 0, 47, 770, 64, 0, 'Featherbeard\'s Hovel', 0, 0),
(1881, 0, 47, 771, 64, 0, 'Shindigger\'s Camp', 0, 0),
(1882, 0, 47, 772, 64, 45, 'Plaguemist Ravine', 0, 0),
(1883, 0, 47, 773, 64, 48, 'Valorwind Lake', 0, 0),
(1884, 0, 47, 774, 64, 46, 'Agol\'watha', 0, 0),
(1885, 0, 47, 775, 64, 42, 'Hiri\'watha', 0, 0),
(1886, 0, 47, 776, 64, 47, 'The Creeping Ruin', 0, 0),
(1887, 0, 47, 777, 64, 0, 'Bogen\'s Ledge', 0, 0),
(1897, 0, 3, 778, 64, 36, 'The Maker\'s Terrace', 0, 0),
(1898, 0, 3, 779, 64, 39, 'Dustwind Gulch', 0, 0),
(1917, 0, 47, 780, 64, 49, 'Shaol\'watha', 0, 0),
(1937, 1, 440, 781, 64, 42, 'Noonshade Ruins', 0, 0),
(1938, 1, 440, 782, 64, 45, 'Broken Pillar', 0, 0),
(1939, 1, 440, 783, 64, 45, 'Abyssal Sands', 0, 0),
(1940, 1, 440, 784, 64, 49, 'Southbreak Shore', 0, 0),
(1941, 1, 0, 785, 64, 0, 'Caverns of Time', 0, 0),
(1942, 1, 490, 786, 64, 48, 'The Marshlands', 0, 0),
(1943, 1, 490, 787, 64, 50, 'Ironstone Plateau', 0, 0),
(1957, 0, 51, 788, 64, 47, 'Blackchar Cave', 0, 0),
(1958, 0, 51, 789, 64, 43, 'Tanner Camp', 0, 0),
(1959, 0, 51, 790, 64, 45, 'Dustfire Valley', 0, 0),
(1977, 309, 0, 791, 0, 0, 'Zul\'Gurub', 0, 0),
(1978, 0, 8, 792, 64, 41, 'Misty Reed Post', 0, 0),
(1997, 1, 361, 793, 64, 0, 'Bloodvenom Post ', 0, 0),
(1998, 1, 361, 794, 64, 53, 'Talonbranch Glade ', 0, 0),
(2017, 329, 0, 795, 0, 0, 'Stratholme', 0, 0),
(2037, 0, 0, 796, 64, 0, 'Quel\'thalas', 0, 0),
(2038, 0, 0, 796, 64, 0, 'UNUSEDShadowfang Keep 003', 0, 0),
(2040, 0, 2037, 2000, 64, 10, 'Alah\'thalas', 0, 0),
(2041, 1, 406, 2001, 64, 10, 'Amani\'Alor', 0, 0),
(2057, 289, 0, 797, 0, 0, 'Scholomance', 0, 0),
(2077, 1, 148, 798, 64, 0, 'Twilight Vale', 0, 0),
(2078, 1, 148, 799, 64, 0, 'Twilight Shore', 0, 0),
(2079, 1, 15, 800, 64, 61, 'Alcaz Island', 0, 0),
(2097, 1, 400, 801, 64, 26, 'Darkcloud Pinnacle', 0, 0),
(2098, 0, 10, 802, 64, 0, 'Dawning Wood Catacombs', 0, 0),
(2099, 0, 44, 803, 64, 0, 'Stonewatch Keep', 0, 0),
(2100, 349, 0, 804, 0, 0, 'Maraudon', 0, 0),
(2101, 0, 38, 805, 64, 0, 'Stoutlager Inn', 0, 0),
(2102, 0, 1, 806, 64, 0, 'Thunderbrew Distillery', 0, 0),
(2103, 0, 11, 807, 64, 0, 'Menethil Keep', 0, 0),
(2104, 0, 11, 808, 64, 0, 'Deepwater Tavern', 0, 0),
(2117, 0, 85, 809, 64, 0, 'Shadow Grave', 0, 0),
(2118, 0, 85, 810, 64, 0, 'Brill Town Hall', 0, 0),
(2119, 0, 85, 811, 64, 0, 'Gallows\' End Tavern', 0, 0),
(2137, 1, 215, 812, 64, 0, 'The Pools of VisionUNUSED', 0, 0),
(2138, 1, 17, 813, 64, 0, 'Dreadmist Den', 0, 0),
(2157, 1, 17, 814, 64, 0, 'Bael\'dun Keep', 0, 0),
(2158, 1, 15, 815, 64, 0, 'Emberstrife\'s Den', 0, 0),
(2159, 1, 0, 816, 0, 0, 'Onyxia\'s Lair', 0, 0),
(2160, 1, 406, 817, 64, 0, 'Windshear Mine', 0, 0),
(2161, 0, 10, 818, 64, 0, 'Roland\'s Doom', 0, 0),
(2177, 0, 33, 819, 208, 0, 'Battle Ring', 0, 0),
(2197, 1, 1638, 820, 64, 0, 'The Pools of Vision', 4, 0),
(2198, 1, 405, 821, 64, 30, 'Shadowbreak Ravine', 0, 0),
(2217, 1, 405, 822, 64, 0, 'Broken Spear Village', 0, 0),
(2237, 1, 400, 823, 64, 28, 'Whitereach Post', 0, 0),
(2238, 1, 400, 824, 64, 0, 'Gornia', 0, 0),
(2239, 1, 400, 825, 64, 0, 'Zane\'s Eye Crater', 0, 0),
(2240, 1, 400, 826, 64, 0, 'Mirage Raceway', 0, 0),
(2241, 1, 618, 827, 64, 57, 'Frostsaber Rock', 0, 0),
(2242, 1, 618, 828, 64, 58, 'The Hidden Grove', 0, 0),
(2243, 1, 618, 829, 64, 55, 'Timbermaw Post', 0, 0),
(2244, 1, 618, 830, 64, 57, 'Winterfall Village', 0, 0),
(2245, 1, 618, 831, 64, 56, 'Mazthoril', 0, 0),
(2246, 1, 618, 832, 64, 55, 'Frostfire Hot Springs', 0, 0),
(2247, 1, 618, 833, 64, 56, 'Ice Thistle Hills', 0, 0),
(2248, 1, 618, 834, 64, 0, 'Dun Mandarr', 0, 0),
(2249, 1, 618, 835, 64, 60, 'Frostwhisper Gorge', 0, 0),
(2250, 1, 618, 836, 64, 56, 'Owl Wing Thicket', 0, 0),
(2251, 1, 618, 837, 64, 56, 'Lake Kel\'Theril', 0, 0),
(2252, 1, 618, 838, 64, 0, 'The Ruins of Kel\'Theril', 0, 0),
(2253, 1, 618, 839, 64, 55, 'Starfall Village', 0, 0),
(2254, 1, 618, 840, 64, 0, 'Ban\'Thallow Barrow Den', 0, 0),
(2255, 1, 618, 841, 64, 55, 'Everlook', 0, 0),
(2256, 1, 618, 842, 64, 60, 'Darkwhisper Gorge', 0, 0),
(2257, 369, 0, 843, 0, 0, 'Deeprun Tram', 2, 0),
(2258, 0, 139, 844, 64, 58, 'The Fungal Vale', 0, 0),
(2259, 0, 139, 845, 64, 0, 'UNUSEDThe Marris Stead', 0, 0),
(2260, 0, 139, 846, 64, 54, 'The Marris Stead', 0, 0),
(2261, 0, 139, 847, 64, 54, 'The Undercroft', 0, 0),
(2262, 0, 139, 848, 64, 55, 'Darrowshire', 0, 0),
(2263, 0, 139, 849, 64, 55, 'Crown Guard Tower', 0, 0),
(2264, 0, 139, 850, 64, 57, 'Corin\'s Crossing', 0, 0),
(2265, 0, 139, 851, 64, 0, 'Scarlet Base Camp', 0, 0),
(2266, 0, 139, 852, 64, 55, 'Tyr\'s Hand', 0, 0),
(2267, 0, 139, 853, 64, 0, 'The Scarlet Basilica', 0, 0),
(2268, 0, 139, 854, 64, 58, 'Light\'s Hope Chapel', 0, 0),
(2269, 0, 139, 855, 64, 0, 'Browman Mill', 0, 0),
(2270, 0, 139, 856, 64, 58, 'The Noxious Glade', 0, 0),
(2271, 0, 139, 857, 64, 56, 'Eastwall Tower', 0, 0),
(2272, 0, 139, 858, 64, 58, 'Northdale', 0, 0),
(2273, 0, 139, 859, 64, 57, 'Zul\'Mashar', 0, 0),
(2274, 0, 139, 860, 64, 0, 'Mazra\'Alor', 0, 0),
(2275, 0, 139, 861, 64, 56, 'Northpass Tower', 0, 0),
(2276, 0, 139, 862, 64, 59, 'Quel\'Lithien Lodge', 0, 0),
(2277, 0, 139, 863, 64, 55, 'Plaguewood', 0, 0),
(2278, 0, 139, 864, 64, 0, 'Scourgehold', 0, 0),
(2279, 0, 139, 865, 64, 55, 'Stratholme', 0, 0),
(2280, 0, 0, 866, 64, 0, 'UNUSED Stratholme', 0, 0),
(2297, 0, 28, 867, 64, 55, 'Darrowmere Lake', 0, 0),
(2298, 0, 28, 868, 64, 55, 'Caer Darrow', 0, 0),
(2299, 0, 139, 869, 64, 0, 'Darrowmere Lake', 0, 0),
(2300, 1, 440, 870, 64, 50, 'Caverns of Time', 0, 0),
(2301, 1, 331, 871, 64, 23, 'Thistlefur Village', 0, 0),
(2302, 1, 15, 872, 64, 39, 'The Quagmire', 0, 0),
(2303, 1, 400, 873, 64, 27, 'Windbreak Canyon', 0, 0),
(2317, 1, 440, 874, 64, 0, 'South Seas', 0, 0),
(2318, 1, 15, 875, 64, 0, 'The Great Sea', 0, 0),
(2319, 1, 17, 876, 64, 0, 'The Great Sea', 0, 0),
(2320, 1, 14, 877, 64, 0, 'The Great Sea', 0, 0),
(2321, 1, 16, 878, 64, 0, 'The Great Sea', 0, 0),
(2322, 1, 141, 879, 64, 0, 'The Veiled Sea', 2, 0),
(2323, 1, 357, 880, 64, 0, 'The Veiled Sea', 0, 0),
(2324, 1, 405, 881, 64, 0, 'The Veiled Sea', 0, 0),
(2325, 1, 331, 882, 64, 0, 'The Veiled Sea', 0, 0),
(2326, 1, 148, 883, 64, 0, 'The Veiled Sea', 2, 0),
(2337, 1, 14, 884, 64, 0, 'Razor Hill Barracks', 4, 0),
(2338, 0, 33, 885, 64, 0, 'South Seas', 0, 0),
(2339, 0, 33, 886, 64, 0, 'The Great Sea', 0, 0),
(2357, 1, 331, 887, 64, 0, 'Bloodtooth Camp', 0, 0),
(2358, 1, 331, 888, 64, 0, 'Forest Song', 0, 0),
(2359, 1, 331, 889, 64, 24, 'Greenpaw Village', 0, 0),
(2360, 1, 331, 890, 64, 0, 'Silverwing Outpost', 0, 0),
(2361, 1, 493, 891, 64, 15, 'Nighthaven', 0, 0),
(2362, 1, 493, 892, 64, 0, 'Shrine of Remulos', 0, 0),
(2363, 1, 493, 893, 64, 0, 'Stormrage Barrow Dens', 0, 0),
(2364, 0, 40, 894, 64, 0, 'The Great Sea', 0, 0),
(2365, 0, 11, 895, 64, 0, 'The Great Sea', 0, 0),
(2366, 269, 0, 896, 0, 0, 'The Black Morass', 0, 0),
(2367, 560, 0, 897, 0, 0, 'Old Hillsbrad Foothills', 0, 0),
(2368, 560, 2367, 898, 0, 0, 'Tarren Mill', 0, 0),
(2369, 560, 2367, 899, 0, 0, 'Southshore', 0, 0),
(2370, 560, 2367, 900, 0, 0, 'Durnholde Keep', 0, 0),
(2371, 560, 2367, 901, 0, 0, 'Dun Garok', 0, 0),
(2372, 560, 2367, 902, 0, 0, 'Hillsbrad Fields', 0, 0),
(2373, 560, 2367, 903, 0, 0, 'Eastern Strand', 0, 0),
(2374, 560, 2367, 904, 0, 0, 'Nethander Stead', 0, 0),
(2375, 560, 2367, 905, 0, 0, 'Darrow Hill', 0, 0),
(2376, 560, 2367, 906, 0, 0, 'Southpoint Tower', 0, 0),
(2377, 560, 2367, 907, 0, 0, 'Thoradin\'s Wall', 0, 0),
(2378, 560, 2367, 908, 0, 0, 'Western Strand', 0, 0),
(2379, 560, 2367, 909, 0, 0, 'Azurelode Mine', 0, 0),
(2397, 0, 267, 910, 64, 0, 'The Great Sea', 0, 0),
(2398, 0, 130, 911, 64, 0, 'The Great Sea', 0, 0),
(2399, 0, 85, 912, 64, 0, 'The Great Sea', 0, 0),
(2400, 0, 47, 913, 64, 0, 'The Forbidding Sea', 0, 0),
(2401, 0, 45, 914, 64, 0, 'The Forbidding Sea', 0, 0),
(2402, 0, 11, 915, 64, 0, 'The Forbidding Sea', 0, 0),
(2403, 0, 8, 916, 64, 0, 'The Forbidding Sea', 0, 0),
(2404, 1, 405, 917, 64, 30, 'Tethris Aran', 0, 0),
(2405, 1, 405, 918, 64, 32, 'Ethel Rethor', 0, 0),
(2406, 1, 405, 919, 64, 35, 'Ranazjar Isle', 0, 0),
(2407, 1, 405, 920, 64, 32, 'Kormek\'s Hut', 0, 0),
(2408, 1, 405, 921, 64, 33, 'Shadowprey Village', 0, 0),
(2417, 0, 46, 922, 64, 54, 'Blackrock Pass', 0, 0),
(2418, 0, 46, 923, 64, 55, 'Morgan\'s Vigil', 0, 0),
(2419, 0, 46, 924, 64, 0, 'Slither Rock', 0, 0),
(2420, 0, 46, 925, 64, 52, 'Terror Wing Path', 0, 0),
(2421, 0, 46, 926, 64, 54, 'Draco\'dar', 0, 0),
(2437, 389, 0, 927, 0, 0, 'Ragefire Chasm', 4, 0),
(2457, 1, 331, 928, 64, 0, 'Nightsong Woods', 0, 0),
(2477, 1, 1377, 929, 64, 0, 'The Veiled Sea', 0, 0),
(2478, 1, 361, 930, 64, 47, 'Morlos\'Aran', 0, 0),
(2479, 1, 361, 931, 64, 48, 'Emerald Sanctuary', 0, 0),
(2480, 1, 361, 932, 64, 50, 'Jadefire Glen', 0, 0),
(2481, 1, 361, 933, 64, 51, 'Ruins of Constellas', 0, 0),
(2497, 1, 16, 934, 64, 53, 'Bitter Reaches', 0, 0),
(2517, 0, 4, 935, 64, 46, 'Rise of the Defiler', 0, 0),
(2518, 1, 357, 936, 64, 0, 'Lariss Pavilion', 0, 0),
(2519, 1, 357, 937, 64, 41, 'Woodpaw Hills', 0, 0),
(2520, 1, 357, 938, 64, 0, 'Woodpaw Den', 0, 0),
(2521, 1, 357, 939, 64, -1, 'Verdantis River', 0, 0),
(2522, 1, 357, 940, 64, 45, 'Ruins of Isildien', 0, 0),
(2537, 1, 406, 941, 64, 15, 'Grimtotem Post', 0, 0),
(2538, 1, 406, 942, 64, 15, 'Camp Aparaje', 0, 0),
(2539, 1, 406, 943, 64, 15, 'Malaka\'jin', 0, 0),
(2540, 1, 406, 944, 64, 16, 'Boulderslide Ravine', 0, 0),
(2541, 1, 406, 945, 64, 18, 'Sishir Canyon', 0, 0),
(2557, 429, 0, 946, 0, 0, 'Dire Maul', 0, 0),
(2558, 0, 41, 947, 64, 0, 'Deadwind Ravine', 0, 0),
(2559, 0, 41, 948, 64, 0, 'Diamondhead River', 0, 0),
(2560, 0, 41, 949, 64, 0, 'Ariden\'s Camp', 0, 0),
(2561, 0, 41, 950, 64, 57, 'The Vice', 0, 0),
(2562, 0, 41, 951, 64, 60, 'Karazhan', 0, 0),
(2563, 0, 41, 952, 64, 0, 'Morgan\'s Plot', 0, 0),
(2577, 1, 357, 953, 64, 44, 'Dire Maul', 0, 0),
(2597, 30, 0, 954, 0, 0, 'Alterac Valley', 0, 0),
(2617, 1, 405, 955, 64, 0, 'Scrabblescrew\'s Camp', 0, 0),
(2618, 1, 361, 956, 64, 50, 'Jadefire Run', 0, 0),
(2619, 0, 139, 957, 64, 55, 'Thondroril River', 0, 0),
(2620, 0, 28, 958, 64, 0, 'Thondroril River', 0, 0),
(2621, 0, 139, 959, 64, 54, 'Lake Mereldar', 0, 0),
(2622, 0, 139, 960, 64, 55, 'Pestilent Scar', 0, 0),
(2623, 0, 139, 961, 64, 59, 'The Infectis Scar', 0, 0),
(2624, 0, 139, 962, 64, 58, 'Blackwood Lake', 0, 0),
(2625, 0, 139, 963, 64, 0, 'Eastwall Gate', 0, 0),
(2626, 0, 139, 964, 64, 0, 'Terrorweb Tunnel', 0, 0),
(2627, 0, 139, 965, 64, 55, 'Terrordale', 0, 0),
(2637, 1, 331, 966, 64, 0, 'Kargathia Keep', 0, 0),
(2657, 1, 405, 967, 64, 0, 'Valley of Bones', 0, 0),
(2677, 469, 0, 968, 0, 0, 'Blackwing Lair', 0, 0),
(2697, 0, 41, 969, 64, 50, 'Deadman\'s Crossing', 0, 0),
(2717, 409, 0, 970, 0, 0, 'Molten Core', 0, 0),
(2737, 1, 1377, 971, 64, 55, 'The Scarab Wall', 0, 0),
(2738, 1, 1377, 972, 64, 55, 'Southwind Village', 0, 0),
(2739, 1, 1377, 973, 64, 55, 'Twilight Base Camp', 0, 0),
(2740, 1, 1377, 974, 64, 55, 'The Crystal Vale', 0, 0),
(2741, 1, 1377, 975, 64, 0, 'The Scarab Dais', 0, 0),
(2742, 1, 1377, 976, 64, 55, 'Hive\'Ashi', 0, 0),
(2743, 1, 1377, 977, 64, 55, 'Hive\'Zora', 0, 0),
(2744, 1, 1377, 978, 64, 55, 'Hive\'Regal', 0, 0),
(2757, 1, 17, 979, 64, 0, 'Shrine of the Fallen Warrior', 0, 0),
(2777, 0, 267, 980, 64, 0, 'UNUSED Alterac Valley', 0, 0),
(2797, 1, 331, 981, 64, 0, 'Blackfathom Deeps', 0, 0),
(2817, 30, 0, 0, 68, 0, '***On Map Dungeon***', 0, 0),
(2837, 1, 41, 982, 64, 0, 'The Master\'s Cellar', 0, 0),
(2838, 0, 51, 983, 64, 0, 'Stonewrought Pass', 0, 0),
(2839, 0, 36, 984, 64, 0, 'Alterac Valley', 0, 0),
(2857, 1, 440, 985, 128, 0, 'The Rumble Cage', 0, 0),
(2877, 451, 22, 986, 0, 60, 'Chunk Test', 0, 0),
(2897, 1, 331, 987, 64, 0, 'Zoram\'gar Outpost', 0, 0),
(2917, 1, 0, 988, 32, 0, 'Hall of Legends', 4, 0),
(2918, 449, 0, 989, 32, 0, 'Champions\' Hall', 2, 0),
(2937, 0, 41, 990, 64, 0, 'Grosh\'gok Compound', 0, 0),
(2938, 0, 41, 991, 64, 50, 'Sleeping Gorge', 0, 0),
(2957, 30, 2597, 992, 0, 0, 'Irondeep Mine', 0, 0),
(2958, 30, 2597, 993, 0, 0, 'Stonehearth Outpost', 0, 0),
(2959, 30, 2597, 994, 0, 0, 'Dun Baldar', 0, 0),
(2960, 30, 2597, 995, 0, 0, 'Icewing Pass', 0, 0),
(2961, 30, 2597, 996, 0, 0, 'Frostwolf Village', 0, 0),
(2962, 30, 2597, 997, 0, 0, 'Tower Point', 0, 0),
(2963, 30, 2597, 998, 0, 0, 'Coldtooth Mine', 0, 0),
(2964, 30, 2597, 999, 0, 0, 'Winterax Hold', 0, 0),
(2977, 30, 2597, 1000, 0, 0, 'Iceblood Garrison', 0, 0),
(2978, 30, 2597, 1001, 0, 0, 'Frostwolf Keep', 0, 0),
(2979, 1, 14, 1002, 64, 0, 'Tor\'kren Farm', 0, 0),
(3017, 30, 2597, 1003, 0, 0, 'Frost Dagger Pass', 0, 0),
(3037, 1, 400, 1004, 64, 0, 'Ironstone Camp', 0, 0),
(3038, 1, 400, 1005, 64, 0, 'Weazel\'s Crater', 0, 0),
(3039, 1, 400, 1006, 64, 0, 'Tahonda Ruins', 0, 0),
(3057, 30, 2597, 1007, 0, 0, 'Field of Strife', 0, 0),
(3058, 30, 2597, 1008, 0, 0, 'Icewing Cavern', 0, 0),
(3077, 1, 1377, 1009, 64, 55, 'Valor\'s Rest', 0, 0),
(3097, 1, 1377, 1010, 64, 0, 'The Swarming Pillar', 0, 0),
(3098, 1, 1377, 1011, 64, 57, 'Twilight Post', 0, 0),
(3099, 1, 1377, 1012, 64, 59, 'Twilight Outpost', 0, 0),
(3100, 1, 1377, 1013, 64, 0, 'Ravaged Twilight Camp', 0, 0),
(3117, 1, 357, 1014, 64, 0, 'Shalzaru\'s Lair', 0, 0),
(3137, 1, 16, 1015, 64, 0, 'Talrendis Point', 0, 0),
(3138, 1, 16, 1016, 64, 0, 'Rethress Sanctum', 0, 0),
(3139, 1, 618, 1017, 64, 0, 'Moon Horror Den', 0, 0),
(3140, 1, 16, 1018, 64, 0, 'Scalebeard\'s Cave', 0, 0),
(3157, 1, 406, 1019, 64, 0, 'Boulderslide Cavern', 0, 0),
(3177, 1, 331, 1020, 64, 0, 'Warsong Labor Camp', 0, 0),
(3197, 0, 28, 1021, 64, 0, 'Chillwind Camp', 0, 0),
(3217, 1, 2557, 1022, 128, 0, 'The Maul', 0, 0),
(3237, 1, 2557, 1023, 128, 0, 'The Maul UNUSED', 0, 0),
(3257, 1, 1377, 1024, 64, 0, 'Bones of Grakkarond', 0, 0),
(3277, 489, 0, 1025, 0, 0, 'Warsong Gulch', 0, 0),
(3297, 30, 2597, 1026, 0, 0, 'Frostwolf Graveyard', 0, 0),
(3298, 30, 2597, 1027, 0, 0, 'Frostwolf Pass', 0, 0),
(3299, 30, 2597, 1028, 0, 0, 'Dun Baldar Pass', 0, 0),
(3300, 30, 2597, 1029, 0, 0, 'Iceblood Graveyard', 0, 0),
(3301, 30, 2597, 1030, 0, 0, 'Snowfall Graveyard', 0, 0),
(3302, 30, 2597, 1031, 0, 0, 'Stonehearth Graveyard', 0, 0),
(3303, 30, 2597, 1032, 0, 0, 'Stormpike Graveyard', 0, 0),
(3304, 30, 2597, 1033, 0, 0, 'Icewing Bunker', 0, 0),
(3305, 30, 2597, 1034, 0, 0, 'Stonehearth Bunker', 0, 0),
(3306, 30, 2597, 1035, 0, 0, 'Wildpaw Ridge', 0, 0),
(3317, 0, 47, 1036, 64, 0, 'Revantusk Village', 0, 0),
(3318, 30, 2597, 1037, 0, 0, 'Rock of Durotan', 0, 0),
(3319, 1, 331, 1038, 64, 0, 'Silverwing Grove', 0, 0),
(3320, 489, 3277, 1039, 0, 0, 'Warsong Lumber Mill', 0, 0),
(3321, 489, 3277, 1040, 0, 0, 'Silverwing Hold', 0, 0),
(3337, 30, 2597, 1041, 0, 0, 'Wildpaw Cavern', 0, 0),
(3338, 30, 2597, 1042, 0, 0, 'The Veiled Cleft', 0, 0),
(3357, 0, 33, 1043, 64, 0, 'Yojamba Isle', 0, 0),
(3358, 529, 0, 1044, 0, 0, 'Arathi Basin', 0, 0),
(3377, 309, 1977, 1045, 0, 0, 'The Coil', 0, 0),
(3378, 309, 1977, 1046, 0, 0, 'Altar of Hir\'eek', 0, 0),
(3379, 309, 1977, 1047, 0, 0, 'Shadra\'zaar', 0, 0),
(3380, 309, 1977, 1048, 0, 0, 'Hakkari Grounds', 0, 0),
(3381, 309, 1977, 1049, 0, 0, 'Naze of Shirvallah', 0, 0),
(3382, 309, 1977, 1050, 0, 0, 'Temple of Bethekk', 0, 0),
(3383, 309, 1977, 1051, 0, 0, 'The Bloodfire Pit', 0, 0),
(3384, 309, 1977, 1052, 0, 0, 'Altar of the Blood God', 0, 0),
(3397, 309, 1977, 1053, 0, 0, 'Zanza\'s Rise', 0, 0),
(3398, 309, 1977, 1054, 0, 0, 'Edge of Madness', 0, 0),
(3417, 529, 3358, 1055, 0, 0, 'Trollbane Hall', 0, 0),
(3418, 529, 3358, 1056, 0, 0, 'Defiler\'s Den', 0, 0),
(3419, 309, 1977, 1057, 0, 0, 'Pagle\'s Pointe', 0, 0),
(3420, 529, 3358, 1058, 0, 0, 'Farm', 0, 0),
(3421, 529, 3358, 1059, 0, 0, 'Blacksmith', 0, 0),
(3422, 529, 3358, 1060, 0, 0, 'Lumber Mill', 0, 0),
(3423, 529, 3358, 1061, 0, 0, 'Gold Mine', 0, 0),
(3424, 529, 3358, 1062, 0, 0, 'Stables', 0, 0),
(3425, 1, 1377, 1063, 64, 55, 'Cenarion Hold', 0, 0),
(3426, 1, 1377, 1064, 64, 59, 'Staghelm Point', 0, 0),
(3427, 1, 1377, 1065, 64, 0, 'Bronzebeard Encampment', 0, 0),
(3428, 531, 0, 1066, 0, 0, 'Ahn\'Qiraj', 0, 0),
(3429, 509, 0, 1067, 0, 0, 'Ruins of Ahn\'Qiraj', 0, 0),
(3446, 1, 1377, 1066, 64, 0, 'Twilight\'s Run', 0, 0),
(3447, 1, 1377, 1067, 64, 0, 'Ortell\'s Hideout', 0, 0),
(3448, 509, 3429, 1068, 0, 0, 'Scarab Terrace', 0, 0),
(3449, 509, 3429, 1069, 0, 0, 'General\'s Terrace', 0, 0),
(3450, 509, 3429, 1070, 0, 0, 'The Reservoir', 0, 0),
(3451, 509, 3429, 1071, 0, 0, 'The Hatchery', 0, 0),
(3452, 509, 3429, 1072, 0, 0, 'The Comb', 0, 0),
(3453, 509, 3429, 1073, 0, 0, 'Watchers\' Terrace', 0, 0),
(3454, 1, 1377, 1074, 64, 0, 'Ruins of Ahn\'Qiraj', 0, 0),
(3456, 533, 0, 1075, 3, 0, 'Naxxramas', 0, 0),
(3459, 0, 0, 0, 512, 0, 'City', 0, 0),
(3478, 1, 0, 1075, 0, 0, 'Gates of Ahn\'Qiraj', 0, 0),
(3486, 0, 36, 1076, 64, 30, 'Ravenholdt Manor', 0, 0),
(3805, 0, 33, 0, 64, 40, 'Zul\'Aman', 0, 0),
(5000, 150, 676, 2003, 64, 60, 'Thrallmar', 0, 0),
(5001, 150, 676, 2004, 64, 60, 'Honor Hold', 0, 0),
(5002, 150, 676, 2005, 64, 60, 'Sha\'naar', 0, 0),
(5003, 150, 676, 2006, 64, 60, 'Illidari Point', 0, 0),
(5004, 150, 676, 2007, 64, 60, 'Forge Camp: Rage', 0, 0),
(5005, 150, 676, 2008, 64, 60, 'Watcher\'s Rise', 0, 0),
(5006, 150, 676, 2009, 64, 60, 'Dark Portal', 0, 0),
(5007, 150, 676, 2010, 64, 60, 'Pools of Aggonar', 0, 0),
(5008, 150, 676, 2011, 64, 60, 'Devouring Flats', 0, 0),
(5009, 150, 676, 2012, 64, 60, 'Shattered Wastes', 0, 0),
(5010, 150, 676, 2013, 64, 60, 'Tanaan Crag', 0, 0),
(3430, 42, 0, 1068, 80, 0, 'Eversong Woods', 0, 0),
(3431, 42, 3430, 1069, 64, 0, 'Sunstrider Isle', 0, 0),
(3432, 42, 3430, 1070, 64, 0, 'Shrine of Dath\'Remar', 0, 0),
(3433, 42, 0, 1071, 80, 0, 'Ghostlands', 0, 0),
(3434, 509, 3428, 1072, 0, 0, 'Scarab Terrace', 0, 0),
(3435, 509, 3428, 1073, 0, 0, 'General\'s Terrace', 0, 0),
(3436, 509, 3428, 1074, 0, 0, 'The Reservoir', 0, 0),
(3437, 509, 3428, 1075, 0, 0, 'The Hatchery', 0, 0),
(3438, 509, 3428, 1076, 0, 0, 'The Comb', 0, 0),
(3439, 509, 3428, 1077, 0, 0, 'Watchers\' Terrace', 0, 0),
(3440, 509, 3429, 1078, 0, 0, 'Scarab Terrace', 0, 0),
(3441, 509, 3429, 1079, 0, 0, 'General\'s Terrace', 0, 0),
(3442, 509, 3429, 1080, 0, 0, 'The Reservoir', 0, 0),
(3443, 509, 3429, 1081, 0, 0, 'The Hatchery', 0, 0),
(3444, 509, 3429, 1082, 0, 0, 'The Comb', 0, 0),
(3445, 509, 3429, 1083, 0, 0, 'Watchers\' Terrace', 0, 0),
(3455, 42, 0, 1084, 64, 0, 'The North Sea', 0, 0),
(3457, 532, 0, 1085, 0, 0, 'Karazhan', 0, 0),
(3460, 42, 3430, 1086, 64, 6, 'Golden Strand', 0, 0),
(3461, 42, 3430, 1087, 64, 7, 'Sunsail Anchorage', 0, 0),
(3462, 42, 3430, 1088, 64, 6, 'Fairbreeze Village', 0, 0),
(3463, 42, 3430, 1089, 64, 5, 'Magisters Gate', 0, 0),
(3464, 42, 3430, 1090, 64, 7, 'Farstrider Retreat', 0, 0),
(3465, 42, 3430, 1091, 64, 5, 'North Sanctum', 0, 0),
(3466, 42, 3430, 1092, 64, 6, 'West Sanctum', 0, 0),
(3467, 42, 3430, 1093, 64, 7, 'East Sanctum', 0, 0),
(3468, 42, 3430, 1094, 64, 7, 'Saltheril\'s Haven', 0, 0),
(3469, 42, 3430, 1095, 64, 5, 'Thuron\'s Livery', 0, 0),
(3470, 42, 3430, 1096, 64, 6, 'Stillwhisper Pond', 0, 0),
(3471, 42, 3430, 1097, 64, 9, 'The Living Wood', 0, 0),
(3472, 42, 3430, 1098, 64, 10, 'Azurebreeze Coast', 0, 0),
(3473, 42, 3430, 1099, 64, 8, 'Lake Elrendar', 0, 0),
(3474, 42, 3430, 1100, 64, 9, 'The Scorched Grove', 0, 0),
(3475, 42, 3430, 1101, 64, 10, 'Zeb\'Watha', 0, 0),
(3476, 42, 3430, 1102, 64, 10, 'Tor\'Watha', 0, 0),
(3477, 532, 0, 1103, 0, 0, 'Karazhan *UNUSED*', 0, 0),
(3479, 42, 0, 1104, 64, 0, 'The Veiled Sea', 2, 0),
(3480, 42, 3430, 1105, 64, 9, 'Duskwither Grounds', 0, 0),
(3481, 42, 3430, 1106, 64, 10, 'Duskwither Spire', 0, 0),
(3482, 42, 3430, 1107, 64, 5, 'The Dead Scar', 0, 0),
(3483, 530, 0, 1108, 1088, 0, 'Hellfire Peninsula', 0, 0),
(3484, 42, 3430, 1109, 64, 0, 'The Sunspire', 0, 0),
(3485, 42, 3430, 1110, 64, 0, 'Falthrien Academy', 0, 0),
(3487, 42, 0, 1111, 312, 10, 'Silvermoon City', 0, 0),
(3488, 42, 3433, 1112, 64, 10, 'Tranquillien', 0, 0),
(3489, 42, 3433, 1113, 64, 10, 'Suncrown Village', 0, 0),
(3490, 42, 3433, 1114, 64, 11, 'Goldenmist Village', 0, 0),
(3491, 42, 3433, 1115, 64, 14, 'Windrunner Village', 0, 0),
(3492, 42, 3433, 1116, 64, 16, 'Windrunner Spire', 0, 0),
(3493, 42, 3433, 1117, 64, 12, 'Sanctum of the Sun', 0, 0),
(3494, 42, 3433, 1118, 64, 13, 'Sanctum of the Moon', 0, 0),
(3495, 42, 3433, 1119, 64, 14, 'Dawnstar Spire', 0, 0),
(3496, 42, 3433, 1120, 64, 14, 'Farstrider Enclave', 0, 0),
(3497, 42, 3433, 1121, 64, 10, 'An\'daroth', 0, 0),
(3498, 42, 3433, 1122, 64, 13, 'An\'telas', 0, 0),
(3499, 42, 3433, 1123, 64, 16, 'An\'owyn', 0, 0),
(3500, 42, 3433, 1124, 64, 19, 'Deatholme', 0, 0),
(3501, 42, 3433, 1125, 64, 18, 'Bleeding Ziggurat', 0, 0),
(3502, 42, 3433, 1126, 64, 18, 'Howling Ziggurat', 0, 0),
(3503, 42, 3433, 1127, 64, 14, 'Shalandis Isle', 0, 0),
(3504, 42, 3433, 1128, 64, 10, 'Toryl Estate', 0, 0),
(3505, 42, 3433, 1129, 64, 13, 'Underlight Mines', 0, 0),
(3506, 42, 3433, 1130, 64, 15, 'Andilien Estate', 0, 0),
(3507, 42, 3433, 1131, 64, 11, 'Hatchet Hills', 0, 0),
(3508, 42, 3433, 1132, 64, 18, 'Amani Pass', 0, 0),
(3509, 42, 3433, 1133, 64, 10, 'Sungraze Peak', 0, 0),
(3510, 42, 3433, 1134, 64, 15, 'Amani Catacombs', 0, 0),
(3511, 42, 3433, 1135, 64, 20, 'Tower of the Damned', 0, 0),
(3512, 42, 3433, 1136, 64, 11, 'Zeb\'Sora', 0, 0),
(3513, 42, 3433, 1137, 64, 13, 'Lake Elrendar', 0, 0),
(3514, 42, 3433, 1138, 64, 10, 'The Dead Scar', 0, 0),
(3515, 42, 3433, 1139, 64, -1, 'Elrendar River', 0, 0),
(3516, 42, 3433, 1140, 64, 17, 'Zeb\'Tela', 0, 0),
(3517, 42, 3433, 1141, 64, 18, 'Zeb\'Nowa', 0, 0),
(3518, 530, 0, 1142, 1088, 0, 'Nagrand', 0, 0),
(3519, 530, 0, 1143, 1088, 0, 'Terokkar Forest', 0, 0),
(3520, 530, 0, 1144, 1088, 0, 'Shadowmoon Valley', 0, 0),
(3521, 530, 0, 1145, 1088, 0, 'Zangarmarsh', 0, 0),
(3522, 530, 0, 1146, 1088, 0, 'Blade\'s Edge Mountains', 0, 0),
(3523, 530, 0, 1147, 1088, 0, 'Netherstorm', 0, 0),
(3524, 530, 0, 1148, 80, 0, 'Azuremyst Isle', 2, 0),
(3525, 530, 0, 1149, 80, 0, 'Dreamlight Isle', 2, 0),
(3526, 530, 3524, 1150, 80, 0, 'Ammen Vale', 0, 0),
(3527, 530, 3524, 1151, 80, 0, 'Crash Site', 0, 0),
(3528, 530, 3524, 1152, 64, 0, 'Silverline Lake', 0, 0),
(3529, 530, 3524, 1153, 64, 0, 'Nestlewood Thicket', 0, 0),
(3530, 530, 3524, 1154, 64, 0, 'Shadow Ridge', 0, 0),
(3531, 42, 3430, 1155, 64, 5, 'Murder Row', 0, 0),
(3532, 42, 3430, 1156, 64, 5, 'Dawning Lane', 0, 0),
(3533, 42, 3430, 1157, 64, 5, 'Ruins of Silvermoon', 0, 0),
(3534, 530, 3430, 1158, 64, 5, 'Feth\'s Way', 0, 0),
(3535, 540, 0, 1159, 0, 0, 'Hellfire Citadel', 0, 0),
(3536, 530, 3483, 1160, 64, 0, 'Thrallmar', 0, 0),
(3537, 530, 0, 1161, 64, 0, 'REUSE', 0, 0),
(3538, 530, 3483, 1162, 64, 0, 'Honor Hold', 0, 0),
(3539, 530, 3483, 1163, 64, 54, 'The Stair of Destiny', 0, 0),
(3540, 530, 0, 1164, 1024, 0, 'Twisting Nether', 0, 0),
(3541, 530, 3483, 1165, 64, 55, 'The Black Altar', 0, 0),
(3542, 530, 3483, 1166, 64, 0, 'The Path of Glory', 0, 0),
(3543, 530, 3483, 1167, 64, 58, 'The Great Fissure', 0, 0),
(3544, 530, 3483, 1168, 64, 56, 'Plain of Shards', 0, 0),
(3545, 530, 3483, 1169, 64, 56, 'Hellfire Citadel', 0, 0),
(3546, 530, 3483, 1170, 64, 55, 'Expedition Armory', 0, 0),
(3547, 530, 3483, 1171, 64, 70, 'Throne of Kil\'jaeden', 0, 0),
(3548, 530, 3483, 1172, 64, 0, 'Forge Camp Rage', 0, 0),
(3549, 530, 3483, 1173, 64, 0, 'Forge Camp Spite', 0, 0),
(3550, 530, 3483, 1174, 64, 0, 'Borune Ruins', 0, 0),
(3551, 530, 3483, 1175, 64, 0, 'Telhamat Ruins', 0, 0),
(3552, 530, 3483, 1176, 64, 0, 'Temple of Sha\'naar', 0, 0),
(3553, 530, 3483, 1177, 64, 56, 'Pools of Aggonar', 0, 0),
(3554, 530, 3483, 1178, 64, 0, 'Falcon Watch', 0, 0),
(3555, 530, 3483, 1179, 64, 0, 'Mag\'har Post', 0, 0),
(3556, 530, 3483, 1180, 64, 0, 'Den of Haal\'esh', 0, 0),
(3557, 530, 0, 1181, 312, 10, 'The Exodar', 2, 0),
(3558, 530, 3430, 1182, 64, 7, 'Elrendar Falls', 0, 0),
(3559, 530, 3524, 1183, 64, 0, 'Nestlewood Hills', 0, 0),
(3560, 530, 3524, 1184, 80, 0, 'Ammen Fields', 0, 0),
(3561, 530, 3524, 1185, 64, 0, 'The Sacred Grove', 0, 0),
(3562, 543, 0, 1186, 0, 0, 'Hellfire Ramparts', 0, 0),
(3563, 543, 3562, 1187, 0, 0, 'Hellfire Citadel', 0, 0),
(3564, 530, 3524, 1188, 64, 0, 'Emberglade', 0, 0),
(3565, 530, 3521, 1189, 64, 0, 'Canarion Refuge', 0, 0),
(3566, 530, 3524, 1190, 64, 10, 'Moonwing Den', 0, 0),
(3567, 530, 3524, 1191, 64, 6, 'Pod Cluster', 0, 0),
(3568, 530, 3524, 1192, 64, 6, 'Pod Wreckage', 0, 0),
(3569, 530, 3524, 1193, 64, 7, 'Tides\' Hollow', 0, 0),
(3570, 530, 3524, 1194, 64, 6, 'Wrathscale Point', 0, 0),
(3571, 530, 3524, 1195, 64, 8, 'Bristlelimb Village', 0, 0),
(3572, 530, 3524, 1196, 64, 7, 'Stillpine Hold', 0, 0),
(3573, 530, 3524, 1197, 64, 6, 'Odesyus\' Landing', 0, 0),
(3574, 530, 3524, 1198, 64, 0, 'Valaar\'s Berth', 0, 0),
(3575, 530, 3524, 1199, 64, 10, 'Silting Shore', 0, 0),
(3576, 530, 3524, 1200, 64, 5, 'Azure Watch', 0, 0),
(3577, 530, 3524, 1201, 64, 6, 'Geezle\'s Camp', 0, 0),
(3578, 530, 3524, 1202, 64, 8, 'Menagerie Wreckage', 0, 0),
(3579, 530, 3524, 1203, 64, 9, 'Traitor\'s Cove', 0, 0),
(3580, 530, 3524, 1204, 64, 0, 'Wildwind Peak', 0, 0),
(3581, 530, 3524, 1205, 64, 0, 'Wildwind Path', 0, 0),
(3582, 530, 3483, 1206, 64, 56, 'Zeth\'kur', 0, 0),
(3583, 530, 3525, 1207, 64, 0, 'Beryl Coast', 0, 0),
(3584, 530, 3525, 1208, 64, 10, 'Blood Watch', 0, 0),
(3585, 530, 3525, 1209, 64, 14, 'Bladewood', 0, 0),
(3586, 530, 3525, 1210, 64, 19, 'The Vector Coil', 0, 0),
(3587, 530, 3525, 1211, 64, 15, 'The Warp Piston', 0, 0),
(3588, 530, 3525, 1212, 64, 16, 'The Cryo-Core', 0, 0),
(3589, 530, 3525, 1213, 64, 13, 'The Crimson Reach', 0, 0),
(3590, 530, 3525, 1214, 64, 12, 'Wrathscale Lair', 0, 0),
(3591, 530, 3525, 1215, 64, 13, 'Ruins of Loreth\'Aran', 0, 0),
(3592, 530, 3525, 1216, 64, 13, 'Nazzivian', 0, 0),
(3593, 530, 3525, 1217, 64, 16, 'Axxarien', 0, 0),
(3594, 530, 3525, 1218, 64, 12, 'Blacksilt Shore', 0, 0),
(3595, 530, 3525, 1219, 64, 17, 'The Foul Pool', 0, 0),
(3596, 530, 3525, 1220, 64, 16, 'The Hidden Reef', 0, 0),
(3597, 530, 3525, 1221, 64, 17, 'Amberweb Pass', 0, 0),
(3598, 530, 3525, 1222, 64, 17, 'Wyrmscar Island', 0, 0),
(3599, 530, 3525, 1223, 64, 0, 'Talon Stand', 0, 0),
(3600, 530, 3525, 1224, 64, 10, 'Bristlelimb Enclave', 0, 0),
(3601, 530, 3525, 1225, 64, 14, 'Ragefeather Ridge', 0, 0),
(3602, 530, 3525, 1226, 64, 0, 'Kessel\'s Crossing', 0, 0),
(3603, 530, 3525, 1227, 64, 0, 'Tel\'athion\'s Camp', 0, 0),
(3604, 530, 3525, 1228, 64, 9, 'The Bloodcursed Reef', 0, 0),
(3605, 560, 0, 1229, 64, 0, 'Hyjal Past', 0, 0),
(3606, 534, 0, 1230, 64, 0, 'Mount Hyjal', 0, 0),
(3607, 530, 0, 1231, 64, 0, 'Coilfang Reservoir', 0, 0),
(3608, 530, 3525, 1232, 64, 0, 'Vindicator\'s Rest', 0, 0),
(3609, 530, 3518, 1233, 64, 0, 'Unused3', 0, 0),
(3610, 530, 3518, 1234, 64, 0, 'Burning Blade Clan Ruins', 0, 0),
(3611, 530, 3518, 1235, 64, 0, 'Clan Watch', 0, 0),
(3612, 530, 3525, 1236, 64, 16, 'Bloodcurse Isle', 0, 0),
(3613, 530, 3518, 1237, 64, 0, 'Garadar', 0, 0),
(3614, 530, 3518, 1238, 64, 0, 'Skysong Lake', 0, 0),
(3615, 530, 3518, 1239, 64, 0, 'Throne of the Elements', 0, 0),
(3616, 530, 3518, 1240, 64, 0, 'Laughing Skull Clan Ruins', 0, 0),
(3617, 530, 3518, 1241, 64, 0, 'Warmaul Hill', 0, 0),
(3618, 530, 3518, 1242, 64, 0, 'Gruul\'s Lair', 0, 0),
(3619, 530, 3518, 1243, 64, 0, 'Auren Ridge', 0, 0),
(3620, 530, 3518, 1244, 64, 0, 'Auren Falls', 0, 0),
(3621, 530, 3518, 1245, 64, 0, 'Lake Sunspring', 0, 0),
(3622, 530, 3518, 1246, 64, 0, 'Sunspring Post', 0, 0),
(3623, 530, 3518, 1247, 64, 0, 'Aeris', 0, 0),
(3624, 530, 3518, 1248, 64, 0, 'Forge Camp: Fear', 0, 0),
(3625, 530, 3518, 1249, 64, 0, 'Forge Camp: Hate', 0, 0),
(3626, 530, 3518, 1250, 64, 0, 'Telaar', 0, 0),
(3627, 530, 3518, 1251, 64, 0, 'Northwind Cleft', 0, 0),
(3628, 530, 3518, 1252, 64, 0, 'Halaa', 0, 0),
(3629, 530, 3518, 1253, 64, 0, 'Southwind Cleft', 0, 0),
(3630, 530, 3518, 1254, 64, 0, 'Oshu\'gun', 0, 0),
(3631, 530, 3518, 1255, 64, 0, 'Spirit Fields', 0, 0),
(3632, 530, 3518, 1256, 64, 0, 'Shamanar', 0, 0),
(3633, 530, 3518, 1257, 64, 0, 'Ancestral Grounds', 0, 0),
(3634, 530, 3518, 1258, 64, 0, 'Windyreed Village', 0, 0),
(3635, 530, 3518, 1259, 64, 0, 'Unused2', 0, 0),
(3636, 530, 3518, 1260, 64, 0, 'Unused', 0, 0),
(3637, 530, 3518, 1261, 64, 0, 'Kil\'sorrow Fortress', 0, 0),
(3638, 530, 3518, 1262, 64, 0, 'The Ring of Trials', 0, 0),
(3639, 530, 3524, 1263, 64, 0, 'Silvermyst Isle', 0, 0),
(3640, 530, 3521, 1264, 64, 0, 'Daggerfen Vilage', 0, 0),
(3641, 530, 3521, 1265, 64, 0, 'Umbrafen Village', 0, 0),
(3642, 530, 3521, 1266, 64, 0, 'Feralfen Village', 0, 0),
(3643, 530, 3521, 1267, 64, 0, 'Steam Pump', 0, 0),
(3644, 530, 3521, 1268, 64, 0, 'Telredor', 0, 0),
(3645, 530, 3521, 1269, 64, 0, 'Zabra\'jin', 0, 0),
(3646, 530, 3521, 1270, 64, 0, 'Quagg Ridge', 0, 0),
(3647, 530, 3521, 1271, 64, 0, 'The Spawning Glen', 0, 0),
(3648, 530, 3521, 1272, 64, 0, 'The Dead Mire', 0, 0),
(3649, 530, 3521, 1273, 64, 0, 'Sporeggar', 0, 0),
(3650, 530, 3521, 1274, 64, 0, 'Ango\'rosh Camp', 0, 0),
(3651, 530, 3521, 1275, 64, 0, 'Ango\'rosh Stronghold', 0, 0),
(3652, 530, 3521, 1276, 64, 0, 'Funggor Cavern', 0, 0),
(3653, 530, 3521, 1277, 64, 0, 'Serpent Lake', 0, 0),
(3654, 530, 3521, 1278, 64, 0, 'The Drain', 0, 0),
(3655, 530, 3521, 1279, 64, 0, 'Umbrafen Lake', 0, 0),
(3656, 530, 3521, 1280, 64, 0, 'Marshlight Lake', 0, 0),
(3657, 530, 3521, 1281, 64, 0, 'Twilight Portal', 0, 0),
(3658, 530, 3521, 1282, 64, 0, 'Sporewind Lake', 0, 0),
(3659, 530, 3521, 1283, 64, 0, 'The Lagoon', 0, 0),
(3660, 530, 3521, 1284, 64, 0, 'Blades\' Run', 0, 0),
(3661, 530, 3521, 1285, 64, 0, 'Blade Tooth Canyon', 0, 0),
(3662, 530, 3430, 1286, 64, 0, 'Commons Hall', 0, 0),
(3663, 530, 3430, 1287, 64, 0, 'Derelict Manor', 0, 0),
(3664, 530, 3430, 1288, 64, 0, 'Huntress of the Sun', 0, 0),
(3665, 530, 3487, 1289, 64, 6, 'Falconwing Square', 0, 0),
(3666, 530, 3518, 1290, 64, 0, 'Halaani Basin', 0, 0),
(3667, 530, 3521, 1291, 64, 0, 'Hewn Bog', 0, 0),
(3668, 530, 3521, 1292, 64, 0, 'Boha\'mu Ruins', 0, 0),
(3669, 530, 3483, 1293, 64, 0, 'The Stadium', 0, 0),
(3670, 530, 3483, 1294, 64, 0, 'The Overlook', 0, 0),
(3671, 530, 3483, 1295, 64, 0, 'Broken Hill', 0, 0),
(3672, 530, 3518, 1296, 64, 0, 'Mag\'hari Procession', 0, 0),
(3673, 530, 3518, 1297, 64, 0, 'Nesingwary Safari', 0, 0),
(3674, 530, 3519, 1298, 64, 0, 'Cenarion Thicket', 0, 0),
(3675, 530, 3519, 1299, 64, 0, 'Tuurem', 0, 0),
(3676, 530, 3519, 1300, 64, 0, 'Veil Shienor', 0, 0),
(3677, 530, 3519, 1301, 64, 0, 'Veil Skith', 0, 0),
(3678, 530, 3519, 1302, 64, 0, 'Veil Shalas', 0, 0),
(3679, 530, 3519, 1303, 64, 0, 'Skettis', 0, 0),
(3680, 530, 3519, 1304, 64, 0, 'Blackwind Valley', 0, 0),
(3681, 530, 3519, 1305, 64, 0, 'Firewing Point', 0, 0),
(3682, 530, 3519, 1306, 64, 0, 'Grangol\'var Village', 0, 0),
(3683, 530, 3519, 1307, 64, 0, 'Stonebreaker Hold', 0, 0),
(3684, 530, 3519, 1308, 64, 0, 'Allerian Stronghold', 0, 0),
(3685, 530, 3519, 1309, 64, 0, 'Bonechewer Hollow Clan Ruins', 0, 0),
(3686, 530, 3519, 1310, 64, 0, 'Veil Lithic', 0, 0),
(3687, 530, 3519, 1311, 64, 0, 'Olembas', 0, 0),
(3688, 530, 3519, 1312, 64, 0, 'Auchindoun', 0, 0),
(3689, 530, 3519, 1313, 64, 0, 'Veil Reskk', 0, 0),
(3690, 530, 3519, 1314, 64, 0, 'Blackwind Lake', 0, 0),
(3691, 530, 3519, 1315, 64, 0, 'Lake Ere\'Noru', 0, 0),
(3692, 530, 3519, 1316, 64, 0, 'Lake Jorune', 0, 0),
(3693, 530, 3519, 1317, 64, 0, 'Skethyl Mountains', 0, 0),
(3694, 530, 3519, 1318, 64, 0, 'Misty Ridge', 0, 0),
(3695, 530, 3519, 1319, 64, 0, 'The Broken Hills', 0, 0),
(3696, 530, 3519, 1320, 64, 0, 'The Barrier Hills', 0, 0),
(3697, 530, 3519, 1321, 64, 0, 'The Bone Wastes', 0, 0),
(3698, 559, 0, 1322, 128, 0, 'Nagrand Arena', 0, 0),
(3699, 530, 3518, 1323, 64, 0, 'Laughing Skull Courtyard', 0, 0),
(3700, 530, 3518, 1324, 64, 0, 'The Ring of Blood', 0, 0),
(3701, 530, 3518, 1325, 128, 0, 'Arena Floor', 0, 0),
(3702, 562, 0, 1326, 128, 0, 'Blade\'s Edge Arena', 0, 0),
(3703, 530, 0, 1327, 1032, 0, 'Shattrath City', 0, 0),
(4010, 1, 15, 1645, 64, 38, 'Mudsprocket', 0, 0),
(4011, 1, 406, 2014, 0, 0, 'Venture Camp', 0, 0),
(4012, 0, 0, 2015, 0, 0, 'Scarlet Enclave', 0, 0),
(4013, 25, 0, 2016, 128, 0, 'Lordaeron Arena', 0, 0),
(4014, 25, 0, 2017, 128, 0, 'Blood Ring', 0, 0),
(4015, 42, 3433, 1127, 64, 14, 'Shalandis Isle', 0, 0),
(4016, 1, 0, 2018, 0, 0, 'Kamio', 0, 0),
(4017, 1, 4016, 2019, 0, 0, 'Kazamatsuri', 0, 0),
(4018, 0, 11, 2020, 64, 0, 'Hawk\'s Vigil', 0, 0),
(4019, 0, 11, 2021, 64, 0, 'Dun Agrath', 0, 0),
(4020, 0, 1, 2022, 64, 0, 'Ironforge Airfields', 0, 0),
(4021, 1, 14, 2023, 64, 6, 'Sparkwater Port', 0, 0),
(4022, 0, 0, 2024, 0, 0, 'Scarlet Citadel', 0, 0),
(4298, 0, 139, 0, 64, 0, 'Plaguelands', 2, 0),
(4343, 0, 4012, 2025, 64, 0, 'New Avalon', 2, 0),
(4346, 0, 4012, 2095, 64, 0, 'New Avalon Town Hall', 2, 0),
(4347, 0, 4012, 2026, 64, 0, 'Havenshire', 2, 0),
(4354, 0, 4012, 2027, 64, 0, 'Light\'s Point', 2, 0),
(4356, 0, 4012, 2028, 64, 0, 'Gloom Hill', 2, 0),
(4358, 0, 4012, 852, 64, 55, 'Tyr\'s Hand', 0, 0),
(4359, 0, 4012, 2029, 64, 0, 'King\'s Harbor', 2, 0),
(4365, 0, 4012, 2030, 64, 0, 'Havenshire Mine', 2, 0),
(4381, 1, 490, 2031, 0, 0, 'Waygate', 0, 0),
(4382, 1, 490, 2032, 0, 0, 'Shaper\'s Terrace', 0, 0),
(4411, 0, 1519, 688, 312, 0, 'Stormwind Harbor', 2, 0),
(4636, 0, 139, 2033, 0, 58, 'The Noxious Pass', 0, 0),
(4688, 0, 0, 0, 0, 0, 'tamamo test area', 0, 0),
(5011, 0, 45, 2034, 0, 0, 'Farwell Stead', 0, 0),
(5012, 0, 45, 2035, 0, 0, 'Wildtusk Village', 0, 0),
(5013, 0, 45, 2036, 0, 0, 'Ruins of Zul\'Rasaz', 0, 0),
(5014, 0, 47, 2037, 0, 0, 'The Rasaz Trails', 0, 0),
(5015, 0, 0, 2038, 0, 0, 'The Highlands', 0, 0),
(5016, 0, 5015, 2039, 0, 0, 'The Grim Reaches', 0, 0),
(5017, 0, 5016, 2040, 0, 0, 'Dun Galar', 0, 0),
(5018, 0, 5016, 2041, 0, 0, 'Flickerlode Mine', 0, 0),
(5019, 0, 5016, 2042, 0, 0, 'Grimstone Field', 0, 0),
(5020, 0, 5016, 2043, 0, 0, 'The Parched Basin', 0, 0),
(5021, 0, 5016, 2044, 0, 0, 'The Grim Batol Memorial', 0, 0),
(5022, 0, 5016, 2045, 0, 0, 'Karfang Retreat', 0, 0),
(5023, 0, 12, 2046, 0, 0, 'Sunnyglade Valley', 0, 0),
(5024, 1, 0, 2047, 0, 0, 'Icepoint Rock', 0, 0),
(5025, 0, 5015, 2048, 0, 0, 'The Hidden Grove', 0, 0),
(5026, 0, 5015, 2049, 0, 0, 'The Perch', 0, 0),
(5027, 1, 0, 2050, 0, 0, 'North Sea', 0, 0),
(5028, 0, 85, 2051, 0, 0, 'Steepcliff Port', 0, 0),
(5029, 0, 85, 2052, 0, 0, 'The Whispering Forest', 0, 0),
(5030, 0, 85, 2053, 0, 0, 'The Rogue Heights', 0, 0),
(5031, 0, 85, 2054, 0, 0, 'The Lafford House', 0, 0),
(5032, 0, 85, 2055, 0, 0, 'The Garrick Stead', 0, 0),
(5033, 0, 85, 2056, 0, 0, 'Crumblepoint Tower', 0, 0),
(5034, 0, 85, 2057, 0, 0, 'Shatteridge Tower', 0, 0),
(5035, 0, 85, 2058, 0, 0, 'The Remnants Camp', 0, 0),
(5036, 0, 85, 2059, 0, 0, 'The Blacktower Inn', 0, 0),
(5037, 0, 85, 2060, 0, 0, 'The Corinth Farmstead', 0, 0),
(5038, 0, 85, 2061, 0, 0, 'The Jagged Hills', 0, 0),
(5039, 0, 85, 2062, 0, 0, 'Gracestone Mine', 0, 0),
(5040, 0, 85, 2063, 0, 0, 'Glenshire', 0, 0),
(5041, 0, 85, 2064, 0, 0, 'Ishnu\'Danil', 0, 0),
(5042, 0, 85, 2065, 0, 0, 'Shalla\'Aran', 0, 0),
(5043, 0, 409, 2066, 0, 0, 'Shank\'s Reef', 0, 0),
(5044, 0, 409, 2067, 0, 0, 'Crown Island', 0, 0),
(5045, 0, 409, 2068, 0, 0, 'The Rock', 0, 0),
(5046, 0, 409, 2069, 0, 0, 'Bright Coast', 0, 0),
(5047, 0, 409, 2070, 0, 0, 'Zul\'Hazu', 0, 0),
(5048, 0, 409, 2071, 0, 0, 'The Wallowing Coast', 0, 0),
(5049, 0, 409, 2072, 0, 0, 'Hazzuri Glade', 0, 0),
(5050, 0, 409, 2073, 0, 0, 'Gor\'dosh Heights', 0, 0),
(5051, 0, 409, 2074, 0, 0, 'Caelan\'s Rest', 0, 0),
(5052, 1, 5024, 2075, 0, 0, 'Kaneq\'nuun', 0, 0),
(5053, 801, 0, 2077, 0, 0, 'Moomoo Grove', 0, 0),
(5054, 0, 408, 2078, 0, 0, 'The Broken Reef', 0, 0),
(5055, 0, 408, 2079, 0, 0, 'Deep Tide Sanctum', 0, 0),
(5056, 0, 408, 2080, 0, 0, 'The Silver Coast', 0, 0),
(5057, 0, 408, 2081, 0, 0, 'The Silver Sandbar', 0, 0),
(5058, 0, 408, 2082, 0, 0, 'Zul\'Razar', 0, 0),
(5059, 0, 408, 2083, 0, 0, 'The Tangled Wood', 0, 0),
(5060, 0, 408, 2084, 0, 0, 'The Jade Mine', 0, 0),
(5061, 0, 408, 2085, 0, 0, 'Ruins of Zul\'Razar', 0, 0),
(5062, 0, 408, 2086, 0, 0, 'Gillijim Strand', 0, 0),
(5063, 0, 408, 2087, 0, 0, 'Deepneck Cove', 0, 0),
(5064, 0, 408, 2088, 0, 0, 'Gillijim Canyon', 0, 0),
(5065, 0, 408, 2089, 0, 0, 'Maul\'ogg Refuge', 0, 0),
(5066, 0, 408, 2090, 0, 0, 'Maul\'ogg Post', 0, 0),
(5067, 0, 408, 2091, 0, 0, 'Kalkor Point', 0, 0),
(5068, 0, 408, 2092, 0, 0, 'Kazon Island', 0, 0),
(5069, 0, 408, 2093, 0, 0, 'The Southsea Sandbar', 0, 0),
(5070, 0, 408, 2094, 0, 0, 'Distillery Island', 0, 0),
(5071, 0, 408, 2096, 0, 0, 'Faelon\'s Folly', 0, 0),
(5072, 0, 409, 2097, 0, 0, 'The Tower of Lapidis', 0, 0),
(5073, 1, 16, 2098, 0, 0, 'Flaxwhisker Front', 0, 0),
(5074, 1, 16, 2099, 0, 0, 'Bloodfist Point', 0, 0),
(5075, 0, 8, 2100, 0, 0, 'Sorrowguard Keep', 0, 0),
(5076, 1, 4016, 2103, 0, 0, 'Tamatsune Shrine', 0, 0),
(5077, 802, 331, 2102, 0, 0, 'Crescent Grove', 0, 0),
(5078, 802, 331, 2101, 0, 0, 'Vilethorn Scar', 0, 0),
(5079, 1, 4016, 2104, 0, 0, 'Nalash\'ir Ruins', 0, 0),
(5080, 1, 4016, 2105, 0, 0, 'Kontsuri Wilds', 0, 0),
(5081, 1, 4016, 2106, 0, 0, 'Kazamatsuri Logging Camp', 0, 0),
(5082, 1, 4016, 2107, 0, 0, 'Umikari Strand', 0, 0),
(5083, 1, 4016, 2108, 0, 0, 'Konko Depths', 0, 0),
(5084, 0, 33, 2109, 0, 0, 'Bloodsail Retreat', 0, 0),
(5085, 1, 4016, 2110, 0, 0, 'Kazamatsuri Market', 0, 0),
(140594, 1, 405, 2076, 0, 0, 'Ronae\'Thalas', 0, 0);

-- NPC Makrura Oilclaw, display ID 1246, level 8-9, scale 1, faction 16
-- NPC Makrura Thresher, display ID 1940, level 7-8, scale 1, faction 16

delete from creature_template where entry = 91194 and 91193;
REPLACE INTO creature_template VALUES
(91194, 1246, 0, 0, 0, 'Makrura Oilclaw', '', 0, 8, 9, 166, 166, 0, 0, 312, 16, 0, 1, 1.14, 0, 20, 5, 0, 0, 1, 11, 14, 0, 60, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 13.4464, 18.4888, 100, 7, 0, 91194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 15, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(91193, 1940, 0, 0, 0, 'Makrura Thresher', '', 0, 7, 8, 148, 148, 0, 0, 312, 16, 0, 1, 1.14, 0, 20, 5, 0, 0, 1, 11, 14, 0, 60, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 13.4464, 18.4888, 100, 7, 0, 91193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 15, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

update quest_template set objectives = 'Investigate the area to the southwest of the Farstrider Lodge.' where entry = 80204;

-- Glyphic Rune --
delete from quest_template where entry = 3111;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (179,3111,2,-161,1,1,0,0,'Glyphic Rune','While you were helping me out, this memorandum was given to me to pass on to you. Take some time to read it when you have a chance. I\'m thinkin\' it came from the mage trainer Marrek. Take a gander at it and go find him inside Anvilmar when you\'ve a chance.','Speak to Marrek Stromnur inside Anvilmar.','Yeah, what\'s that? Speak up, if you don\'t mind. I don\'t hear so good after a few ales.','Here\'s what you need to know: Don\'t get into too much trouble. Save some coin to buy me an ale... or any spells ya might want. I\'ll be here if you need me or want to train... or whatever.',9572,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9572,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (658, 3111);
replace into creature_involvedrelation (id, quest) values (60516, 3111);

update quest_template set requiredraces = 4 where entry = 3111;
update quest_template set requiredclasses = 128 where entry = 3111;

delete from item_template where entry = 9572;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(9572,3669,'Glyphic Rune',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50516);

REPLACE INTO page_text (`entry`, `text`, `next_page`) VALUES
(50516, 'Long ago high elves taught us the secrets of magic along with our human allies. They preached to us about rules and how magic can make ya go mad! But don\'t believe it. We\'re not like the elves; we don\'t have the same weaknesses. Just keep yourself on the right path and you\'ll find magic is as powerful a tool as it is a weapon.\n\nWhen you\'re ready, come find me inside Anvilmar. I\'ll be waiting for ya!\n\n- Marrek Stromnur, Mage Trainer.', 0);

delete from creature_template where entry = 60516;
REPLACE INTO creature_template VALUES
(60516, 3036, 0, 0, 0, 'Marrek Stromnur', 'Mage Trainer', 4552, 5, 5, 102, 102, 0, 0, 20, 875, 19, 1.07, 1.14286, 1.15, 16, 5, 0, 0, 1, 6, 8, 0, 52, 1, 1960, 2156, 1, 0, 0, 0, 0, 0, 8, 0, 8.624, 11.858, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, 0, '');

set @equip_template = 20033; set @weapon_1 = 14392; set @weapon_2 = 0; set @creature = 60516;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

delete from npc_trainer where entry = 60516;
REPLACE INTO npc_trainer VALUES
(60516, 1142, 100, 0, 0, 0),
(60516, 1173, 100, 0, 0, 0),
(60516, 1249, 100, 0, 0, 0),
(60516, 1472, 10, 0, 0, 0),
(60516, 2141, 100, 0, 0, 0),
(60516, 5507, 100, 0, 0, 0);

-- In Search of the Owner --
delete from quest_template where entry = 40273;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40273,2,-161,1,1,0,0,'In Search of the Owner','<A gust of wind opens the enclosed journal>.\n\nSeeking stars down the ocean deep,\nLost grins down by the port\nTears drowned in tobacco smoke\nFalse hopes in cheers.\nI\'m cold, tired and I wish to sleep\nDeep and easy to walk through, the empty\nWhere should I begin so I can continue?\nI try to accept who I am\nWho I am and what I wish to be\nIn my hopeless need of love, I bear one single regret.\n\n<As you go through the pages the poetry seems to get darker and darker>.\n\nof slumber\nDarkness depth\nI was seeking apathy,\nDrowning in misery\nBeginning and end\nStuck in the middle\nNo purpose\nNo goal\nDark skies\nShy moon\nCold night\nWarm bed.\n\n<Turning to the last page you don\'t know what to make of it>.\n\nWHY\nwhy why why\nWhy me, what did I do wrong?\n\n<The page is scribbled with the word why, on top of all the repetition it\'s written once again all over the page. At the end of the journal a name and a message is relayed>.','Find the owner of the journal in Stormwind.','I can do for you bub?','<Roheg tears the journal from your hands>.\n\nI hope you had your laugh $r, thanks for bringing it back but I can\'t reward you anything.',60349,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60349,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_questrelation (id, quest) values (2010854, 40273);
replace into creature_involvedrelation (id, quest) values (60517, 40273);

delete from gameobject_template where entry = 2010854;
REPLACE INTO gameobject_template VALUES
(2010854, 2, 559, 'Uncommon Journal', 0, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from item_template where entry = 60349;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60349,1143,'Uncommon Journal',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from creature_template where entry = 60517;
REPLACE INTO creature_template VALUES
(60517, 7011, 0, 0, 0, 'Roheg Clay', '', 0, 8, 9, 166, 166, 0, 0, 312, 12, 2, 1, 1.14, 0, 20, 5, 0, 0, 1, 11, 14, 0, 60, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 13.4464, 18.4888, 100, 7, 0, 60514, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Blood Ring Rep Items Part 2
replace into item_template values
 ('60350', '4', '3', 'Bloody Gladiator\'s Cord', '', '26541', '3', '0', '1', '32254', '8064', '6', '-1', '-1', '66', '60',
 '0', '0', '0', '0', '0', '1008', '5', '0', '1', '0', '5', '10', '7', '14', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '257', '0', '0', '0', '0',
 '0', '0', '9416', '1', '0', '0', '-1', '0', '-1', '9334', '1', '0', '0', '-1', '0', '-1', '0', '0', '0',
 '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1',
 '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '1', NULL);
 replace into item_template values
 ('60351', '4', '3', 'Bloody Gladiator\'s Handguards', '', '35542', '3', '0', '1', '30344', '7586', '10', '-1', '-1', '66', '60',
 '0', '0', '0', '0', '0', '1008', '5', '0', '1', '0', '5', '8', '7', '12', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '282', '0', '0', '0', '0',
 '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '9415', '1', '0', '0', '-1', '0', '-1', '9330', '1', '0',
 '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1',
 '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '1', NULL);
 replace into item_template values
 ('60352', '4', '3', 'Bloody Gladiator\'s Leggings', '', '4346', '3', '0', '1', '58084', '14521', '7', '-1', '-1', '68', '60',
 '0', '0', '0', '0', '0', '1008', '6', '0', '1', '0', '5', '12', '7', '18', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '398', '0', '0', '0', '0',
 '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '9342', '1', '0', '0', '-1', '0', '-1', '9336', '1', '0',
 '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1',
 '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '1', NULL);
 replace into item_template values
 ('60353', '4', '3', 'Bloody Gladiator\'s Trudgeons', '', '26090', '3', '0', '1', '45324', '11331', '8', '-1', '-1', '68', '60',
 '0', '0', '0', '0', '0', '1008', '6', '0', '1', '0', '5', '10', '7', '14', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '314', '0', '0', '0', '0',
 '0', '0', '9416', '1', '0', '0', '-1', '0', '-1', '9335', '1', '0', '0', '-1', '0', '-1', '0', '0', '0',
 '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1',
 '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '1', NULL);
 replace into item_template values
 ('60354', '4', '3', 'Bloody Gladiator\'s Wristguards', '', '6998', '3', '0', '1', '31140', '7785', '9', '-1', '-1', '68', '60',
 '0', '0', '0', '0', '0', '1008', '6', '0', '1', '0', '5', '8', '7', '11', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '214', '0', '0', '0', '0',
 '0', '0', '9398', '1', '0', '0', '-1', '0', '-1', '9330', '1', '0', '0', '-1', '0', '-1', '0', '0', '0',
 '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1',
 '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '1', NULL);
 replace into item_template values
 ('60355', '4', '3', 'Bloody Gladiator\'s Armor', '', '12966', '4', '0', '1', '68884', '17221', '5', '-1', '-1', '66', '60',
 '0', '0', '0', '0', '0', '1008', '7', '0', '1', '0', '5', '14', '7', '18', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '484', '0', '0', '0', '0',
 '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '9346', '1', '0', '0', '-1', '0', '-1', '15811', '1', '0',
 '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1',
 '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '140', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '1', NULL);
 replace into item_template values
 ('60356', '4', '3', 'Bloody Gladiator\'s Pauldrons', '', '27302', '4', '0', '1', '66492', '16623', '3', '-1', '-1', '66', '60',
 '0', '0', '0', '0', '0', '1008', '7', '0', '1', '0', '5', '10', '7', '15', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '367', '0', '0', '0', '0',
 '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '9417', '1', '0', '0', '-1', '0', '-1', '15806', '1', '0',
 '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1',
 '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '85', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '1', NULL);
 replace into item_template values
 ('60357', '4', '3', 'Bloody Gladiator\'s Helmet', '', '26098', '4', '0', '1', '58456', '14614', '1', '-1', '-1', '66', '60',
 '0', '0', '0', '0', '0', '1008', '7', '0', '1', '0', '5', '14', '7', '20', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '393', '0', '0', '0', '0',
 '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '7597', '1', '0', '0', '-1', '0', '-1', '9345', '1', '0',
 '0', '-1', '0', '-1', '15808', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1',
 '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '85', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '1', NULL);
 replace into item_template values
 ('60358', '4', '4', 'Bloody Gladiator\'s Girdle', '', '25225', '3', '0', '1', '32324', '8081', '6', '-1', '-1', '66', '60',
 '0', '0', '0', '0', '0', '1008', '5', '0', '1', '0', '4', '10', '7', '16', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '425', '0', '0', '0', '0',
 '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '9329', '1', '0', '0', '-1', '0', '-1', '0', '0', '0',
 '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1',
 '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '45', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '1', NULL);
 replace into item_template values
 ('60359', '4', '4', 'Bloody Gladiator\'s Gauntlets', '', '35118', '3', '0', '1', '30432', '7608', '10', '-1', '-1', '66', '60',
 '0', '0', '0', '0', '0', '1008', '5', '0', '1', '0', '4', '9', '7', '14', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '9330', '1', '0', '0', '-1', '0', '-1', '0', '0', '0',
 '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1',
 '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '45', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '1', NULL);
 replace into item_template values
 ('60360', '4', '4', 'Bloody Gladiator\'s Legguards', '', '35069', '3', '0', '1', '55168', '13792', '7', '-1', '-1', '68',
 '60', '0', '0', '0', '0', '0', '1008', '6', '0', '1', '0', '4', '12', '7', '20',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '668', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '13669', '1', '0', '0', '-1', '0', '-1', '14027', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60361', '4', '4', 'Bloody Gladiator\'s Greaves', '', '5928', '3', '0', '1', '45328', '11332', '8', '-1', '-1', '68',
 '60', '0', '0', '0', '0', '0', '1008', '6', '0', '1', '0', '4', '8', '7', '18',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '526', '0', '0', '0',
 '0', '0', '0', '13669', '1', '0', '0', '-1', '0', '-1', '9330', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '65', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60362', '4', '4', 'Bloody Gladiator\'s Bracers', '', '5928', '3', '0', '1', '32408', '8102', '9', '-1', '-1', '68',
 '60', '0', '0', '0', '0', '0', '1008', '6', '0', '1', '0', '4', '9', '7', '14',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '349', '0', '0', '0',
 '0', '0', '0', '9142', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '45', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, random_property) VALUES (60363, 'Bloody Gladiator\'s Breastplate', '', 4, 4, 6, 4, 34518, 1, 60, 0, -1, -1, 68896, 17224, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 165, 799, 0, 0, 66, 0, 0, 0, 0, 0, 0, 0, 0, 4, 14, 7, 24, 13670, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 9335, 1, 0, 0, -1, 0, -1, 0);
 update item_template set required_reputation_faction = 1008, required_reputation_rank = 7, max_durability = 140 where entry = 60363;
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, random_property) VALUES (60364, 'Bloody Gladiator\'s Spaulders', '', 4, 4, 6, 4, 27403, 1, 60, 0, -1, -1, 66084, 16521, 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 612, 0, 0, 66, 0, 0, 0, 0, 0, 0, 0, 0, 4, 10, 7, 18, 15464, 1, 0, 0, -1, 0, -1, 13669, 1, 0, 0, 0, 0, 0, 14027, 1, 0, 0, -1, 0, -1, 0);
 update item_template set required_reputation_faction = 1008, required_reputation_rank = 7, max_durability = 100 where entry = 60364;
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, random_property) VALUES (60365, 'Bloody Gladiator\'s Helm', '', 4, 4, 6, 4, 27943, 1, 60, 0, -1, -1, 58568, 14642, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 658, 0, 0, 66, 0, 0, 0, 0, 0, 0, 0, 0, 4, 15, 7, 24, 15464, 1, 0, 0, -1, 0, -1, 7597, 1, 0, 0, -1, 0, -1, 13669, 1, 0, 0, 0, 0, 0, 9336, 1, 0, 0, -1, 0, -1, 0);
 update item_template set required_reputation_faction = 1008, required_reputation_rank = 7, max_durability = 100 where entry = 60365;
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property) VALUES (60366, 'Gore Ring of the Gladiator', '', 4, 0, 1, 3, 31657, 1, 60, 1, -1, -1, 32224, 8056, 11, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 0, 0, 0, 0, 4, 9, 7, 12, 9331, 1, 0, 0, -1, 0, -1, 0);
 update item_template set required_reputation_faction = 1008, required_reputation_rank = 4 where entry = 60366;
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property) VALUES (60367, 'Auspicious Ring of the Seer', '', 4, 0, 1, 3, 9840, 1, 60, 1, -1, -1, 32224, 8056, 11, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 7, 9, 9342, 1, 0, 0, -1, 0, -1, 25975, 1, 0, 0, -1, 0, -1, 0);
 update item_template set required_reputation_faction = 1008, required_reputation_rank = 4 where entry = 60367;
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property) VALUES (60368, 'Loop of Field Medicine', '', 4, 0, 1, 3, 23780, 1, 60, 1, -1, -1, 28864, 7216, 11, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 6, 6, 7, 8, 9314, 1, 0, 0, -1, 0, -1, 21361, 1, 0, 0, -1, 0, -1, 0);
 update item_template set required_reputation_faction = 1008, required_reputation_rank = 4 where entry = 60368;
 
 -- Quest Rewards
 -- Cleaning the Farm
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, random_property) VALUES (60369, 'Farmhand\'s Cloak', '', 4, 1, 7, 2, 15215, 1, 0, 0, -1, -1, 788, 197, 16, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 19, 0, 0, 24, 0, 7, 0, 0, 0, 0, 0, 0, 5, 4, 6, 2, 0);
 replace into item_template values
 ('60370', '4', '0', 'Ring of Expertise', '', '31800', '2', '0', '1', '3360', '840', '11', '-1', '-1', '24',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '1', '4', '1',
 '5', '1', '6', '1', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60371', '4', '2', 'Digger\'s Gloves', '', '972', '2', '0', '1', '3284', '821', '10', '-1', '-1', '24',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '4', '6', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '52', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '25', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, random_property) VALUES (60339, 'High Elven Rotten Bow', '', 2, 2, 1, 2, 20549, 1, 0, 0, -1, -1, 2060, 515, 15, 0, 0, 0, 1, 1, 0, 9, 18, 2300, 0, 0, 40, 0, 0, 0, 15, 100, 7, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, random_property) VALUES (60338, 'Lordaeron Rusty Crossbow', '', 2, 18, 1, 2, 2462, 1, 0, 0, -1, -1, 2064, 516, 26, 0, 0, 0, 1, 1, 0, 12, 23, 3000, 0, 0, 40, 0, 0, 0, 15, 100, 7, 0, 0, 0, 0, 0, 0, 0);

replace into npc_vendor values
-- items rfom Vizlow Blood Ring
(40049, 60350, 0, 0, 0, 0),
(40049, 60351, 0, 0, 0, 0),
(40049, 60352, 0, 0, 0, 0),
(40049, 60353, 0, 0, 0, 0),
(40049, 60354, 0, 0, 0, 0),
(40049, 60355, 0, 0, 0, 0),
(40049, 60356, 0, 0, 0, 0),
(40049, 60357, 0, 0, 0, 0),
(40049, 60358, 0, 0, 0, 0),
(40049, 60359, 0, 0, 0, 0),
(40049, 60360, 0, 0, 0, 0),
(40049, 60361, 0, 0, 0, 0),
(40049, 60362, 0, 0, 0, 0),
(40049, 60363, 0, 0, 0, 0),
(40049, 60364, 0, 0, 0, 0),
(40049, 60365, 0, 0, 0, 0),
(40049, 60366, 0, 0, 0, 0),
(40049, 60367, 0, 0, 0, 0),
(40049, 60368, 0, 0, 0, 0);

delete from creature_template where entry = 50026;
delete from creature where id = 50026;

update item_template set name = 'Broken Portable Wormhole Generator', quality = 0,  spellid_1 = 0, buy_price = 3500, sell_price = 1500 where entry = 51310;
update item_template set name = 'Experimental Portable Wormhole Generator', quality = 0, spellid_1 = 0, buy_price = 3500, sell_price = 1500 where entry = 51808;

update creature set spawntimesecsmin = 259200, spawntimesecsmax = 259200 where id = 91916;
update creature set spawntimesecsmin = 259200, spawntimesecsmax = 259200 where id = 91917;
update creature set spawntimesecsmin = 259200, spawntimesecsmax = 259200 where id = 91920;
update creature set spawntimesecsmin = 259200, spawntimesecsmax = 259200 where id = 91928;
update creature set spawntimesecsmin = 259200, spawntimesecsmax = 259200 where id = 91929;

update creature_template set loot_id = 91916 where entry = 91916;
update creature_template set loot_id = 91917 where entry = 91917;
update creature_template set loot_id = 91920 where entry = 91920;
update creature_template set loot_id = 91928 where entry = 91928;
update creature_template set loot_id = 91929 where entry = 91929;
delete from creature_loot_template where entry = 91916;
replace into creature_loot_template values
-- ARCHLICH ENKHRAZ
(91916, 83452, 10, 1, 1, 1, 0),
(91916, 83453, 18, 1, 1, 1, 0),
(91916, 83454, 18, 1, 1, 1, 0),
(91916, 83455, 18, 1, 1, 1, 0),
(91916, 83456, 18, 1, 1, 1, 0),
(91916, 83457, 18, 1, 1, 1, 0),
-- CORPSEMUNCHER
(91917, 83458, 10, 1, 1, 1, 0),
(91917, 83459, 18, 1, 1, 1, 0),
(91917, 83460, 18, 1, 1, 1, 0),
(91917, 83461, 18, 1, 1, 1, 0),
(91917, 83462, 18, 1, 1, 1, 0),
(91917, 83463, 18, 1, 1, 1, 0),
-- MARROWSPIKE
(91920, 83440, 10, 1, 1, 1, 0),
(91920, 83441, 18, 1, 1, 1, 0),
(91920, 83442, 18, 1, 1, 1, 0),
(91920, 83443, 18, 1, 1, 1, 0),
(91920, 83444, 18, 1, 1, 1, 0),
(91920, 83445, 18, 1, 1, 1, 0),
-- ALARUS
(91928, 83472, 12.5, 1, 1, 1, 0),
(91928, 83465, 12.5, 1, 1, 1, 0),
(91928, 83466, 12.5, 1, 1, 1, 0),
(91928, 83467, 12.5, 1, 1, 1, 0),
(91928, 83468, 12.5, 1, 1, 1, 0),
(91928, 83469, 12.5, 1, 1, 1, 0),
(91928, 83470, 12.5, 1, 1, 1, 0),
(91928, 83471, 12.5, 1, 1, 1, 0),
(91928, 83464, 0.25, 2, 1, 1, 0),
-- HIVAXXIS
(91929, 83446, 10, 1, 1, 1, 0),
(91929, 83447, 18, 1, 1, 1, 0),
(91929, 83448, 18, 1, 1, 1, 0),
(91929, 83449, 18, 1, 1, 1, 0),
(91929, 83450, 18, 1, 1, 1, 0),
(91929, 83451, 18, 1, 1, 1, 0);

-- Karazhan trash mobs loot:
update creature_template set loot_id = 91910 where entry in (91910, 91911, 91912, 91913, 91922, 91923, 91925, 91926);

replace into creature_loot_template values
(91910, 1179, 0.02, 0, 1, 1, 0),
(91910, 2287, 0.02, 0, 1, 1, 0),
(91910, 2453, 0.02, 0, 1, 1, 0),
(91910, 2836, 0.02, 0, 1, 1, 0),
(91910, 3914, 0.03, 0, 1, 1, 0),
(91910, 4500, 0.28, 0, 1, 1, 109),
(91910, 5759, 0.4506, 0, 1, 1, 0),
(91910, 7909, 0.3517, 0, 1, 1, 0),
(91910, 7910, 0.3187, 0, 1, 1, 0),
(91910, 12682, 0.02, 0, 1, 1, 0),
(91910, 12683, 0.02, 0, 1, 1, 0),
(91910, 12684, 0.02, 0, 1, 1, 0),
(91910, 12689, 0.02, 0, 1, 1, 0),
(91910, 12691, 0.02, 0, 1, 1, 0),
(91910, 12693, 0.06, 0, 1, 1, 0),
(91910, 12694, 0.06, 0, 1, 1, 0),
(91910, 12695, 0.04, 0, 1, 1, 0),
(91910, 12697, 0.02, 0, 1, 1, 0),
(91910, 12702, 0.02, 0, 1, 1, 0),
(91910, 12704, 0.02, 0, 1, 1, 0),
(91910, 12711, 0.02, 0, 1, 1, 0),
(91910, 12713, 0.02, 0, 1, 1, 0),
(91910, 13490, 0.02, 0, 1, 1, 0),
(91910, 13492, 0.08, 0, 1, 1, 0),
(91910, 14466, 0.02, 0, 1, 1, 0),
(91910, 14467, 0.02, 0, 1, 1, 0),
(91910, 14470, 0.02, 0, 1, 1, 0),
(91910, 14474, 0.02, 0, 1, 1, 0),
(91910, 14478, 0.02, 0, 1, 1, 0),
(91910, 14479, 0.02, 0, 1, 1, 0),
(91910, 14484, 0.02, 0, 1, 1, 0),
(91910, 14489, 0.04, 0, 1, 1, 0),
(91910, 14491, 0.06, 0, 1, 1, 0),
(91910, 14492, 0.06, 0, 1, 1, 0),
(91910, 14494, 0.02, 0, 1, 1, 0),
(91910, 14496, 0.02, 0, 1, 1, 0),
(91910, 14498, 0.02, 0, 1, 1, 0),
(91910, 14499, 0.04, 0, 1, 1, 0),
(91910, 14501, 0.02, 0, 1, 1, 0),
(91910, 14504, 0.04, 0, 1, 1, 0),
(91910, 14506, 0.06, 0, 1, 1, 0),
(91910, 14508, 0.06, 0, 1, 1, 0),
(91910, 14536, 0.02, 0, 1, 1, 0),
(91910, 14557, 0.02, 0, 1, 1, 0),
(91910, 15731, 0.02, 0, 1, 1, 0),
(91910, 15737, 0.02, 0, 1, 1, 0),
(91910, 15743, 0.06, 0, 1, 1, 0),
(91910, 15745, 0.02, 0, 1, 1, 0),
(91910, 15746, 0.04, 0, 1, 1, 0),
(91910, 15755, 0.04, 0, 1, 1, 0),
(91910, 15757, 0.04, 0, 1, 1, 0),
(91910, 15765, 0.04, 0, 1, 1, 0),
(91910, 16043, 0.02, 0, 1, 1, 0),
(91910, 16044, 0.02, 0, 1, 1, 0),
(91910, 16051, 0.02, 0, 1, 1, 0),
(91910, 16215, 0.02, 0, 1, 1, 0),
(91910, 16218, 0.02, 0, 1, 1, 0),
(91910, 16220, 0.02, 0, 1, 1, 0),
(91910, 16245, 0.06, 0, 1, 1, 0),
(91910, 16251, 0.04, 0, 1, 1, 0),
(91910, 17414, 0.28, 0, 1, 1, 0),
(91910, 17683, 0.34, 0, 1, 1, 0),
(91910, 18600, 0.32, 0, 1, 1, 0),
(91910, 18697, 0.04, 0, 1, 1, 0),
(91910, 18698, 0.011, 0, 1, 1, 0),
(91910, 18699, 0.04, 0, 1, 1, 0),
(91910, 18700, 0.011, 0, 1, 1, 0),
(91910, 18701, 0.04, 0, 1, 1, 0),
(91910, 18702, 0.02, 0, 1, 1, 0),
(91910, 20400, 0.28, 0, 1, 1, 108),
(91910, 22393, 0.06, 0, 1, 1, 0),
(91910, 22890, 0.02, 0, 1, 1, 0),
(91910, 22891, 0.04, 0, 1, 1, 0),
(91910, 24016, 1, 0, -24016, 1, 0),
(91910, 24032, 0.025, 0, -24032, 1, 0),
(91910, 24090, 0.005, 0, -24090, 1, 0),
(91910, 30046, 1, 0, -30046, 1, 0),
(91910, 30079, 0.025, 2, -30079, 1, 0),
(91910, 30080, 1, 0, -30080, 1, 0),
(91910, 30081, 1, 0, -30081, 1, 0),
(91910, 30082, 0.005, 0, -30082, 1, 0),
(91910, 30083, 1, 3, -30083, 1, 0),
(91910, 30084, 0.025, 4, -30084, 1, 0),
(91910, 30085, 0.025, 10, -30085, 1, 0),
(91910, 30086, 0.005, 0, -30086, 1, 0),
(91910, 30087, 0.005, 0, -30087, 1, 0),
(91910, 30211, 0.025, 0, -30211, 1, 0),
(91910, 2450, 0.02, 0, 1, 1, 0),
(91910, 2772, 0.02, 0, 1, 1, 0),
(91910, 2838, 0.02, 0, 1, 1, 0),
(91910, 3358, 0.02, 0, 1, 1, 0),
(91910, 3827, 0.02, 0, 1, 1, 0),
(91910, 3858, 0.02, 0, 1, 1, 0),
(91910, 3928, 0.36, 0, 1, 1, 0),
(91910, 4306, 0.02, 0, 1, 1, 0),
(91910, 4338, 0.02, 0, 1, 1, 0),
(91910, 4500, 0.36, 0, 1, 1, 109),
(91910, 5759, 0.297, 0, 1, 1, 0),
(91910, 6149, 0.42, 0, 1, 1, 0),
(91910, 7909, 0.198, 0, 1, 1, 0),
(91910, 7910, 0.3094, 0, 1, 1, 0),
(91910, 8766, 0.44, 0, 1, 1, 0),
(91910, 8839, 0.02, 0, 1, 1, 0),
(91910, 8932, 0.46, 0, 1, 1, 0),
(91910, 8948, 0.02, 0, 1, 1, 0),
(91910, 8950, 0.02, 0, 1, 1, 0),
(91910, 8952, 0.02, 0, 1, 1, 0),
(91910, 8953, 0.02, 0, 1, 1, 0),
(91910, 10305, 0.08, 0, 1, 1, 0),
(91910, 10306, 0.1, 0, 1, 1, 0),
(91910, 10307, 0.08, 0, 1, 1, 0),
(91910, 10308, 0.08, 0, 1, 1, 0),
(91910, 10309, 0.04, 0, 1, 1, 0),
(91910, 10310, 0.02, 0, 1, 1, 0),
(91910, 12682, 0.02, 0, 1, 1, 0),
(91910, 12683, 0.02, 0, 1, 1, 0),
(91910, 12684, 0.02, 0, 1, 1, 0),
(91910, 12685, 0.02, 0, 1, 1, 0),
(91910, 12689, 0.02, 0, 1, 1, 0),
(91910, 12691, 0.02, 0, 1, 1, 0),
(91910, 12693, 0.04, 0, 1, 1, 0),
(91910, 12694, 0.06, 0, 1, 1, 0),
(91910, 12695, 0.04, 0, 1, 1, 0),
(91910, 12697, 0.02, 0, 1, 1, 0),
(91910, 12702, 0.02, 0, 1, 1, 0),
(91910, 12703, 0.02, 0, 1, 1, 0),
(91910, 12704, 0.04, 0, 1, 1, 0),
(91910, 12713, 0.04, 0, 1, 1, 0),
(91910, 12830, 0.02, 0, 1, 1, 0),
(91910, 13174, -80, 0, 1, 3, 0),
(91910, 13464, 0.02, 0, 1, 1, 0),
(91910, 13490, 0.04, 0, 1, 1, 0),
(91910, 13492, 0.04, 0, 1, 1, 0),
(91910, 13493, 0.02, 0, 1, 1, 0),
(91910, 13518, 0.02, 0, 1, 1, 0),
(91910, 14466, 0.02, 0, 1, 1, 0),
(91910, 14467, 0.02, 0, 1, 1, 0),
(91910, 14470, 0.02, 0, 1, 1, 0),
(91910, 14474, 0.02, 0, 1, 1, 0),
(91910, 14478, 0.02, 0, 1, 1, 0),
(91910, 14479, 0.02, 0, 1, 1, 0),
(91910, 14484, 0.02, 0, 1, 1, 0),
(91910, 14489, 0.02, 0, 1, 1, 0),
(91910, 14491, 0.04, 0, 1, 1, 0),
(91910, 14492, 0.04, 0, 1, 1, 0),
(91910, 14494, 0.06, 0, 1, 1, 0),
(91910, 14496, 0.02, 0, 1, 1, 0),
(91910, 14497, 0.02, 0, 1, 1, 0),
(91910, 14498, 0.06, 0, 1, 1, 0),
(91910, 14499, 0.04, 0, 1, 1, 0),
(91910, 14501, 0.02, 0, 1, 1, 0),
(91910, 14504, 0.06, 0, 1, 1, 0),
(91910, 14506, 0.04, 0, 1, 1, 0),
(91910, 14508, 0.06, 0, 1, 1, 0),
(91910, 15731, 0.02, 0, 1, 1, 0),
(91910, 15737, 0.02, 0, 1, 1, 0),
(91910, 15743, 0.06, 0, 1, 1, 0),
(91910, 15745, 0.04, 0, 1, 1, 0),
(91910, 15746, 0.04, 0, 1, 1, 0),
(91910, 15755, 0.06, 0, 1, 1, 0),
(91910, 15757, 0.03, 0, 1, 1, 0),
(91910, 15765, 0.06, 0, 1, 1, 0),
(91910, 16043, 0.02, 0, 1, 1, 0),
(91910, 16051, 0.02, 0, 1, 1, 0),
(91910, 16055, 0.02, 0, 1, 1, 0),
(91910, 16215, 0.02, 0, 1, 1, 0),
(91910, 16218, 0.02, 0, 1, 1, 0),
(91910, 16220, 0.02, 0, 1, 1, 0),
(91910, 16245, 0.04, 0, 1, 1, 0),
(91910, 16251, 0.04, 0, 1, 1, 0),
(91910, 16671, 1.5, 0, 1, 1, 0),
(91910, 17061, 0.02, 0, 1, 1, 0),
(91910, 17414, 0.32, 0, 1, 1, 0),
(91910, 17683, 0.34, 0, 1, 1, 0),
(91910, 18600, 0.26, 0, 1, 1, 0),
(91910, 18736, 0.02, 0, 1, 1, 0),
(91910, 18741, 0.02, 0, 1, 1, 0),
(91910, 18742, 0.0124, 0, 1, 1, 0),
(91910, 18743, 0.04, 0, 1, 1, 0),
(91910, 18744, 0.02, 0, 1, 1, 0),
(91910, 18745, 0.02, 0, 1, 1, 0),
(91910, 20400, 0.36, 0, 1, 1, 108),
(91910, 22393, 0.07, 0, 1, 1, 0),
(91910, 22890, 0.04, 0, 1, 1, 0),
(91910, 22891, 0.02, 0, 1, 1, 0),
(91910, 23198, 0.02, 0, 1, 1, 0),
(91910, 24016, 1, 0, -24016, 1, 0),
(91910, 24024, 5, 0, -24024, 1, 0),
(91910, 24032, 0.025, 0, -24032, 1, 0),
(91910, 24090, 0.005, 0, -24090, 1, 0),
(91910, 30048, 5, 0, -30048, 1, 0),
(91910, 30072, 1, 0, -30072, 1, 0),
(91910, 30079, 0.025, 2, -30079, 1, 0),
(91910, 30080, 1, 0, -30080, 1, 0),
(91910, 30081, 1, 0, -30081, 1, 0),
(91910, 30082, 0.005, 0, -30082, 1, 0),
(91910, 30083, 1, 3, -30083, 1, 0),
(91910, 30084, 0.025, 4, -30084, 1, 0),
(91910, 30086, 0.005, 0, -30086, 1, 0),
(91910, 30087, 0.005, 0, -30087, 1, 0),
(91910, 30088, 0.025, 0, -30088, 1, 0),
(91910, 30089, 1, 5, -30089, 1, 0),
(91910, 30211, 0.025, 0, -30211, 1, 0);

update creature_template set health_min = 2310, health_max = 2310 where entry = 91921;
update creature_template set detection_range = 60 where entry = 91922;
update creature_template set level_min = 62, level_max = 62 where entry = 92935;

replace into gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) VALUES ( 379545, 3, 23433, 'Half-Buried Treasure Chest', 0, 0, 1.5, 57,  379545, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount) values 
(379545, 13456, 100, 2, 0), -- Greater Frost Protection Potion
(379545, 5823, 100, 3, 0), -- Poisonous Mushroom
(379545, 11938, 100, 4, 0); -- Sack of Gems

update gameobject set id = 379545 where guid = 4013681;

update item_template set display_id = 32822 where entry = 60361;
update item_template set display_id = 33528 where entry = 60362;
update item_template set display_id = 27942 where entry = 60365;

replace into item_template values
 ('83240', '4', '0', 'Ring of the Whispering Mist', '', '35423', '4', '0', '1', '254708', '63677', '11', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '9', '6', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '5', '0', '7679', '1', '0', '0', '-1', '0', '-1', '18379', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 
 replace into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES (379546, 23, 5495, 'Meeting Stone', 35, 0, 1, 58, 60, 2562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

 replace into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES (379547, 23, 5495, 'Meeting Stone', 35, 0, 1, 32, 38, 5077, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

 replace into `gameobject_template`  (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES (379548, 23, 5494, 'Meeting Stone', 35, 0, 1, 58, 60, 717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

update item_template set display_id = 34518 where entry = 60363;
update item_template set display_id = 26571 where name = 'Soul of the Spider';

delete from creature where guid = 2567316;

replace into `creature_display_info_addon` (`display_id`) VALUES (18697);

-- Flightmasters Alliance / Horde
replace into `creature_template` values 

(92943, 7905, 0, 0, 0, 'Vifri Brent', 'Gryphon Master', 0, 55, 55, 7842, 7842, 0, 0, 4500, 1011, 8, 1, 1.14286, 0, 20, 5, 0, 1, 1, 310, 400, 0, 248, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 58.872, 80.949, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 1, 0, 524290, 0, ''),
(92942, 1652, 0, 0, 0, 'Grommok', 'Wind Rider Master', 4323, 55, 55, 7842, 7842, 0, 0, 4500, 29, 11, 1, 1.14286, 0, 20, 5, 0, 1, 1, 310, 400, 0, 248, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 56.7312, 78.0054, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 3615, 0, 0, 1, 0, 524290, 0, '');

delete from quest_template where entry in (50228, 50229);

update creature_template set display_id1 = 1878 where entry = 70027;
update creature_template set display_id1 = 5908 where entry = 91303;

update creature_loot_template SET ChanceOrQuestChance = 0.5 WHERE entry = 6329 AND item = 80798 AND groupid = 5;

update quest_template set objectives = 'Venture within Deepneck Cove beneath Maul\'ogg Refuge and slay Glasseye to claim The Glass Eye for Seer Borgorr.' where entry = 40218;

update quest_template set srcitemid = 60372 where entry = 40252;
delete from item_template where entry = 60372;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60372,2482,'Staff of Eldara',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Misc. fixes 24/11/2021

replace into creature_loot_template values (2574, 4278, 22, 6, 0, 0, 0);

-- Shadowblade Spectre
set @creature_entry = 91918;
set @description = 'Karazhan Crypt: Shadowblade Spectre';
set @spell_list_id = 201080;

set @spellid_1 = 22574; -- Dark Strike
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 2; 
set @delayinitialmax_1 = 2; 
set @delayrepeatmin_1 = 8; 
set @delayrepeatmax_1 = 8;

set @spellid_2 = 28412; -- Death Coil
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 6; 
set @delayinitialmax_2 = 6; 
set @delayrepeatmin_2 = 18; 
set @delayrepeatmax_2 = 20;

set @spellid_3 = 7121; -- Anti-Magic Shell
set @probability_3 = 100; 
set @casttarget_3 = 0; 
set @castflags_3 = 4;
set @delayinitialmin_3 = 10; 
set @delayinitialmax_3 = 12; 
set @delayrepeatmin_3 = 26; 
set @delayrepeatmax_3 = 30;

set @spellid_4 = 0;
set @probability_4 = 0; 
set @casttarget_4 = 0; 
set @castflags_4 = 0;
set @delayinitialmin_4 = 0; 
set @delayinitialmax_4 = 0; 
set @delayrepeatmin_4 = 0; 
set @delayrepeatmax_4 = 0;

set @spellid_5 = 0; 
set @probability_5 = 0; 
set @casttarget_5 = 0; 
set @castflags_5 = 0;
set @delayinitialmin_5 = 0; 
set @delayinitialmax_5 = 0; 
set @delayrepeatmin_5 = 0; 
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0; 
set @probability_6 = 0; 
set @casttarget_6 = 0; 
set @castflags_6 = 0;
set @delayinitialmin_6 = 0; 
set @delayinitialmax_6 = 0; 
set @delayrepeatmin_6 = 0; 
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0; 
set @probability_7 = 0; 
set @casttarget_7 = 0; 
set @castflags_7 = 0;
set @delayinitialmin_7 = 0; 
set @delayinitialmax_7 = 0; 
set @delayrepeatmin_7 = 0; 
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0; 
set @probability_8 = 0; 
set @casttarget_8 = 0; 
set @castflags_8 = 0;
set @delayinitialmin_8 = 0; 
set @delayinitialmax_8 = 0; 
set @delayrepeatmin_8 = 0; 
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = '', script_name = '', spell_id1 = 0, spell_id2 = 0, spell_id3 = 0 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);

-- Crimson <Scarlet Executioner> , display ID 18682, level 61 elite, faction 67, weapon 3210, has 1.5x normal HP, is a mini boss
-- High Judge Morice, display ID 18680, level 61 elite, faction 67, weapon 1197, has 1.5x normal HP, is a mini boss
-- Lancaster Lightblessed, display ID 18673, level 61 elite, faction 67, weapon 25121 has 1.5x normal HP, is a mini boss
-- Magistrate Aldous, display ID 10355, level 61 elite, faction 67, has 1.5x normal HP, is a mini boss
-- High Captain Justus , display ID 10338, level 62 elite, faction 67, weapon 9602, has 1.5x normal HP, is a mini boss
-- Lost Crewman , display ID 18418, level 60 elite, faction 16, HP 9771, casts 7074 every 20-30 seconds, casts 19778 every minute
-- Wallowing Crewman , display ID 18419, level 60 elite, faction 16, HP 9745, mana 5000, casts 21369 every 6 seconds, casts 10230 every minute, casts 10220 when they first spawn and every 30 minutes after
-- Admiral Barean Westwind, display ID 797, scale 1.1, faction 16, HP 141057, mana 12000, weapon 13061     (Needs scripting, will be a minor world boss : When pulled, pull all Lost Crewmen and Wallowing Crewmen to help fight with him. He will cast 8398 every 20 seconds, and cast 28479 every minute, and cast 30095 every 45 seconds.

REPLACE INTO creature_template VALUES
(60518, 18682, 0, 0, 0, 'Crimson', 'Scarlet Executioner', 0, 61, 61, 38000, 38000, 0, 0, 4091, 67, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 741, 982, 0, 278, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 0, 60518, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1418, 1857, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60519, 18680, 0, 0, 0, 'High Judge Morice', '', 0, 61, 61, 38000, 38000, 0, 0, 4091, 67, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 741, 982, 0, 278, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 0, 60519, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1418, 1857, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60520, 18673, 0, 0, 0, 'Lancaster Lightblessed', '', 0, 61, 61, 38000, 38000, 0, 0, 4091, 67, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 741, 982, 0, 278, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 0, 60520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1418, 1857, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60521, 10355, 0, 0, 0, 'Magistrate Aldous', '', 0, 61, 61, 38000, 38000, 0, 0, 4091, 67, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 741, 982, 0, 278, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 0, 60521, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1418, 1857, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60522, 10338, 0, 0, 0, 'High Captain Justus', '', 0, 62, 62, 51000, 51000, 0, 0, 4391, 67, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 1510, 2004, 0, 284, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 7, 0, 60522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2142, 2803, 'EventAI', 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60523, 18418, 0, 0, 0, 'Lost Crewman', '', 0, 60, 60, 9771, 9771, 0, 0, 2086, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 469, 642, 0, 278, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 0, 60523, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 779, 1022, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60524, 18419, 0, 0, 0, 'Wallowing Crewman', '', 0, 60, 60, 9745, 9745, 5000, 5000, 2086, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 469, 642, 0, 278, 1, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 0, 60524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 779, 1022, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60525, 797, 0, 0, 0, 'Admiral Barean Westwind', '', 0, 60, 60, 141057, 141057, 12000, 12000, 2086, 16, 0, 1, 1.14286, 1.1, 20, 5, 0, 1, 1, 469, 642, 0, 278, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 0, 60525, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 779, 1022, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20034; set @weapon_1 = 3210; set @weapon_2 = 0; set @creature = 60518;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20035; set @weapon_1 = 1197; set @weapon_2 = 0; set @creature = 60519;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20036; set @weapon_1 = 25121; set @weapon_2 = 0; set @creature = 60520;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20037; set @weapon_1 = 9602; set @weapon_2 = 0; set @creature = 60522;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20038; set @weapon_1 = 13061; set @weapon_2 = 0; set @creature = 60525;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- Lost Crewman
set @creature_entry = 60523;
set @description = ': Lost Crewman';
set @spell_list_id = 180003;

set @spellid_1 = 7074; -- Screams of the Past
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 1; 
set @delayrepeatmin_1 = 20; 
set @delayrepeatmax_1 = 30;

set @spellid_2 = 19778; -- Demoralizing Shout
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 5; 
set @delayinitialmax_2 = 5; 
set @delayrepeatmin_2 = 58; 
set @delayrepeatmax_2 = 60;

set @spellid_3 = 0;
set @probability_3 = 0; 
set @casttarget_3 = 0; 
set @castflags_3 = 0;
set @delayinitialmin_3 = 0; 
set @delayinitialmax_3 = 0; 
set @delayrepeatmin_3 = 0; 
set @delayrepeatmax_3 = 0;

set @spellid_4 = 0;
set @probability_4 = 0; 
set @casttarget_4 = 0; 
set @castflags_4 = 0;
set @delayinitialmin_4 = 0; 
set @delayinitialmax_4 = 0; 
set @delayrepeatmin_4 = 0; 
set @delayrepeatmax_4 = 0;

set @spellid_5 = 0; 
set @probability_5 = 0; 
set @casttarget_5 = 0; 
set @castflags_5 = 0;
set @delayinitialmin_5 = 0; 
set @delayinitialmax_5 = 0; 
set @delayrepeatmin_5 = 0; 
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0; 
set @probability_6 = 0; 
set @casttarget_6 = 0; 
set @castflags_6 = 0;
set @delayinitialmin_6 = 0; 
set @delayinitialmax_6 = 0; 
set @delayrepeatmin_6 = 0; 
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0; 
set @probability_7 = 0; 
set @casttarget_7 = 0; 
set @castflags_7 = 0;
set @delayinitialmin_7 = 0; 
set @delayinitialmax_7 = 0; 
set @delayrepeatmin_7 = 0; 
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0; 
set @probability_8 = 0; 
set @casttarget_8 = 0; 
set @castflags_8 = 0;
set @delayinitialmin_8 = 0; 
set @delayinitialmax_8 = 0; 
set @delayrepeatmin_8 = 0; 
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 7074, spell_id2 = 19778, spell_id3 = 0 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);

-- Wallowing Crewman
set @creature_entry = 60524;
set @description = ': Wallowing Crewman';
set @spell_list_id = 180004;

set @spellid_1 = 21369; -- Frostbolt
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 1; 
set @delayrepeatmin_1 = 6; 
set @delayrepeatmax_1 = 6;

set @spellid_2 = 10230; -- Frost Nova
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 4; 
set @delayinitialmax_2 = 6; 
set @delayrepeatmin_2 = 58; 
set @delayrepeatmax_2 = 60;

set @spellid_3 = 10220; -- Ice Armor
set @probability_3 = 100; 
set @casttarget_3 = 2; 
set @castflags_3 = 0;
set @delayinitialmin_3 = 1; 
set @delayinitialmax_3 = 1; 
set @delayrepeatmin_3 = 1800; 
set @delayrepeatmax_3 = 1800;

set @spellid_4 = 0;
set @probability_4 = 0; 
set @casttarget_4 = 0; 
set @castflags_4 = 0;
set @delayinitialmin_4 = 0; 
set @delayinitialmax_4 = 0; 
set @delayrepeatmin_4 = 0; 
set @delayrepeatmax_4 = 0;

set @spellid_5 = 0; 
set @probability_5 = 0; 
set @casttarget_5 = 0; 
set @castflags_5 = 0;
set @delayinitialmin_5 = 0; 
set @delayinitialmax_5 = 0; 
set @delayrepeatmin_5 = 0; 
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0; 
set @probability_6 = 0; 
set @casttarget_6 = 0; 
set @castflags_6 = 0;
set @delayinitialmin_6 = 0; 
set @delayinitialmax_6 = 0; 
set @delayrepeatmin_6 = 0; 
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0; 
set @probability_7 = 0; 
set @casttarget_7 = 0; 
set @castflags_7 = 0;
set @delayinitialmin_7 = 0; 
set @delayinitialmax_7 = 0; 
set @delayrepeatmin_7 = 0; 
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0; 
set @probability_8 = 0; 
set @casttarget_8 = 0; 
set @castflags_8 = 0;
set @delayinitialmin_8 = 0; 
set @delayinitialmax_8 = 0; 
set @delayrepeatmin_8 = 0; 
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 21369, spell_id2 = 10230, spell_id3 = 10220 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);


-- cast 8398 every 20 seconds, and cast 28479 every minute, and cast 30095 every 45 seconds.
-- Admiral Barean Westwind
set @creature_entry = 60525;
set @description = ': Admiral Barean Westwind';
set @spell_list_id = 180005;

set @spellid_1 = 8398; -- Frostbolt Volley
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 1; 
set @delayrepeatmin_1 = 20; 
set @delayrepeatmax_1 = 20;

set @spellid_2 = 28479; -- Frostbolt
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 14; 
set @delayinitialmax_2 = 16; 
set @delayrepeatmin_2 = 58; 
set @delayrepeatmax_2 = 60;

set @spellid_3 = 30095; -- Cone of Cold
set @probability_3 = 100; 
set @casttarget_3 = 2; 
set @castflags_3 = 0;
set @delayinitialmin_3 = 20; 
set @delayinitialmax_3 = 22; 
set @delayrepeatmin_3 = 45; 
set @delayrepeatmax_3 = 45;

set @spellid_4 = 0;
set @probability_4 = 0; 
set @casttarget_4 = 0; 
set @castflags_4 = 0;
set @delayinitialmin_4 = 0; 
set @delayinitialmax_4 = 0; 
set @delayrepeatmin_4 = 0; 
set @delayrepeatmax_4 = 0;

set @spellid_5 = 0; 
set @probability_5 = 0; 
set @casttarget_5 = 0; 
set @castflags_5 = 0;
set @delayinitialmin_5 = 0; 
set @delayinitialmax_5 = 0; 
set @delayrepeatmin_5 = 0; 
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0; 
set @probability_6 = 0; 
set @casttarget_6 = 0; 
set @castflags_6 = 0;
set @delayinitialmin_6 = 0; 
set @delayinitialmax_6 = 0; 
set @delayrepeatmin_6 = 0; 
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0; 
set @probability_7 = 0; 
set @casttarget_7 = 0; 
set @castflags_7 = 0;
set @delayinitialmin_7 = 0; 
set @delayinitialmax_7 = 0; 
set @delayrepeatmin_7 = 0; 
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0; 
set @probability_8 = 0; 
set @casttarget_8 = 0; 
set @castflags_8 = 0;
set @delayinitialmin_8 = 0; 
set @delayinitialmax_8 = 0; 
set @delayrepeatmin_8 = 0; 
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 8398, spell_id2 = 28479, spell_id3 = 30095 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);

-- Zareth Terrorblade, equip with weapon 83269
-- Dunstan Whitereach <Brotherhood of the Light> , display ID 1616, level 58 weapon 1296, faction 814, greeting text: "It is in the fringes of the world that hope shines the brightest, never forget that even a dim torch is still burning.
-- Taldran Salwright <Brotherhood of the Light>, display ID 5226, level 59 weapon 869, weapon 2 3656, faction 814, greeting text: "I am in my homeland, defending what is important to me, be it from those crazed zealots, or from the undead themselves, Light's Point will establish what once was."
-- Orin Stonefury <Brotherhood of the Light>, display ID 16219, level 61 weapon 12774, weapon 2 4825, faction 814, greeting text: "My family called Lordaeron home once, heh, believe it or not. Valueable money was to be made from ore and jewelcrafting that we Stonefury were once known for many years ago! Known all thats left of my families legacy is smoldering ruins and piles of stone and burnt wood, not to mention the corpses!\n\n If I'm going to fight for anything, it may as well be here."
-- Joshua Ambercrest <Brotherhood of the Light> , display ID 9792, level 62 elite weapon 22333, faction 814, greeting text: "Welcome to Light's Point, make yourself at home, should you not be tainted by either the plague of undeath, or the plague of zealotry.\n\n The Scarlet Crusade that occupy the region are fervored in a bloodlust against all things, both living and dead. They view the world around them as hostile, and will need to be put down should the true light of what once was to shine through."
-- Andrea Paxton <Brotherhood of the Light> , display ID 10840, level 61, weapon 2488, weapon 2 3656, faction 814, greeting text: "Greetings, many folk around here have good reasons to be at the very frontier, I just hope yours is meaningful.\n\n It's interesting to see Lordaeron not touched by the grip of undeath, even if the people who wield this land are as vile as the scourge."
-- Captain Haroldson, display ID 18713, level 55, faction 35, greeting text: "Well, you\'ve been a much more friendly face to us, not even our own comrades in arms were willing to simply come up and talk.\n\nA lot has changed since we left for Northrend, and already we have been speaking with inquisitors, and been stuck here at port.\n\nI thought we would be lauded as heroes, or at the least returned to with open arms, and here we are, treated as villains after surviving the expedition to the north on behalf of the crusade. It sickens me to know how many died to bring the fight to the undead just for things to have fallen apart as they have here.\n\nEither way, apologies for my rudeness, I am Captain Haroldson, of the Embertide in the Scarlet Fleet, or at the least, what is left of it, anyway, after everything that happened with that doomed expedition."
-- Bartholos, display ID 18706, level 55, faction 35, greeting text: "Out of all the ships to make it back we were the only one, you believe that luck?...Hic!\n\n There were much better men then me, and honestly, I don't even want to be here after everything that happened up north. Just, toss me in the water already."
-- First Mate Dorrul, display ID 18701, level 51, faction 35
-- Embertide Crewman, display ID 11357, level 52-54, faction 35
-- Scarlet Prisoner, display ID 1524, 1438, level 30, faction 35

REPLACE INTO creature_template VALUES
(60526, 1616, 0, 0, 0, 'Dunstan Whitereach', 'Brotherhood of the Light', 0, 58, 58, 3875, 3875, 0, 0, 1754, 814, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 101, 125, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 72.688, 99.946, 100, 7, 0, 60526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130, 175, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60527, 5226, 0, 0, 0, 'Taldran Salwright', 'Brotherhood of the Light', 0, 59, 59, 3997, 3997, 0, 0, 3454, 814, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 101, 126, 0, 268, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 72.688, 99.946, 100, 7, 0, 60527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 133, 179, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60528, 16219, 0, 0, 0, 'Orin Stonefury', 'Brotherhood of the Light', 0, 61, 61, 3144, 3144, 0, 0, 4391, 814, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 101, 126, 0, 278, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 0, 60528, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 182, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60529, 9792, 0, 0, 0, 'Joshua Ambercrest', 'Brotherhood of the Light', 0, 62, 62, 44000, 44000, 0, 0, 4391, 814, 3, 1, 1.14286, 0, 20, 5, 0, 1, 1, 1510, 2004, 0, 284, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 7, 0, 60529, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2142, 2803, 'EventAI', 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60530, 10840, 0, 0, 0, 'Andrea Paxton', 'Brotherhood of the Light', 0, 61, 61, 3500, 3500, 0, 0, 4091, 814, 3, 0, 1.14286, 0, 20, 5, 0, 1, 1, 110, 136, 0, 278, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 0, 60530, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1418, 1857, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60531, 18713, 0, 0, 0, 'Captain Haroldson', '', 0, 55, 55, 3643, 3643, 0, 0, 3272, 35, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 60531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122, 164, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60532, 18706, 0, 0, 0, 'Bartholos', '', 0, 55, 55, 3643, 3643, 0, 0, 3272, 35, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 60532, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122, 164, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60533, 18701, 0, 0, 0, 'First Mate Dorrul', '', 0, 51, 51, 2979, 2979, 0, 0, 3052, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 87, 107, 0, 230, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 67.32, 92.565, 100, 7, 0, 60533, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 137, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60534, 11357, 0, 0, 0, 'Embertide Crewman', '', 0, 52, 54, 2466, 2633, 0, 0, 2445, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 136, 169, 0, 244, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 69.696, 95.832, 100, 7, 0, 60534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 103, 139, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60535, 1524, 1438, 0, 0, 'Scarlet Prisoner', '', 0, 30, 30, 1002, 1002, 0, 0, 1200, 35, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 43, 53, 0, 122, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 44.616, 61.347, 100, 7, 0, 60535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 62, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20039; set @weapon_1 = 1296; set @weapon_2 = 0; set @creature = 60526;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20040; set @weapon_1 = 869; set @weapon_2 = 3656; set @creature = 60527;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20041; set @weapon_1 = 12774; set @weapon_2 = 4825; set @creature = 60528;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20042; set @weapon_1 = 22333; set @weapon_2 = 0; set @creature = 60529;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20043; set @weapon_1 = 83269; set @weapon_2 = 0; set @creature = 49009;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20044; set @weapon_1 = 2488; set @weapon_2 = 3656; set @creature = 60530;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41039; set @magic_number = 60526;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'It is in the fringes of the world that hope shines the brightest, never forget that even a dim torch is still burning.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41040; set @magic_number = 60527;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am in my homeland, defending what is important to me, be it from those crazed zealots, or from the undead themselves, Light\'s Point will establish what once was.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41041; set @magic_number = 60528;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'My family called Lordaeron home once, heh, believe it or not. Valueable money was to be made from ore and jewelcrafting that we Stonefury were once known for many years ago! Known all thats left of my families legacy is smoldering ruins and piles of stone and burnt wood, not to mention the corpses!\n\nIf I\'m going to fight for anything, it may as well be here.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41042; set @magic_number = 60529;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome to Light\'s Point, make yourself at home, should you not be tainted by either the plague of undeath, or the plague of zealotry.\n\nThe Scarlet Crusade that occupy the region are fervored in a bloodlust against all things, both living and dead. They view the world around them as hostile, and will need to be put down should the true light of what once was to shine through.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41043; set @magic_number = 60530;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Greetings, many folk around here have good reasons to be at the very frontier, I just hope yours is meaningful.\n\nIt\'s interesting to see Lordaeron not touched by the grip of undeath, even if the people who wield this land are as vile as the scourge.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41044; set @magic_number = 60531;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Well, you\'ve been a much more friendly face to us, not even our own comrades in arms were willing to simply come up and talk.\n\nA lot has changed since we left for Northrend, and already we have been speaking with inquisitors, and been stuck here at port.\n\nI thought we would be lauded as heroes, or at the least returned to with open arms, and here we are, treated as villains after surviving the expedition to the north on behalf of the crusade. It sickens me to know how many died to bring the fight to the undead just for things to have fallen apart as they have here.\n\nEither way, apologies for my rudeness, I am Captain Haroldson, of the Embertide in the Scarlet Fleet, or at the least, what is left of it, anyway, after everything that happened with that doomed expedition.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41045; set @magic_number = 60532;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Out of all the ships to make it back we were the only one, you believe that luck?... Hic!\n\nThere were much better men then me, and honestly, I don\'t even want to be here after everything that happened up north. Just, toss me in the water already.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- NPC with DisplayID: 5585 named "Mit'szi", level 1, 100 HP, Faction: Bloodsail Buccaneers
-- NPC with DisplayID: 8818 named "Beaky", level 1, 100 HP, Faction: Bloodsail Buccaneers

REPLACE INTO creature_template  VALUES
(60536, 5585, 0, 0, 0, 'Mit\'szi', '', 0, 1, 1, 100, 100, 0, 0, 56, 119, 2, 1, 1.14, 0, 20, 5, 0, 0, 1, 3, 5, 0, 50, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 5.2272, 7.1874, 100, 7, 0, 60536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 8, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60537, 8818, 0, 0, 0, 'Beaky', '', 0, 1, 1, 100, 100, 0, 0, 56, 119, 2, 1, 1.14, 0, 20, 5, 0, 0, 1, 3, 5, 0, 50, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 5.2272, 7.1874, 100, 7, 0, 60536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 8, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

update creature_template set faction = 113 where entry = 60446;

delete from gameobject_template where entry = 2010845;
replace into gameobject_template values
(2010845,3,24015,'Mucky Book',0,4,1,43,2010845,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from item_template where entry = 60373;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60373,18059,'Special Water',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);
update quest_template set reqitemid1 = 60373, reqitemcount1 = 1 where entry = 40174;
update quest_template set srcitemid = 60373, srcitemcount = 1 where entry = 40174;
update quest_template set objectives = 'Speak to Garfield \‘The Fox\’ Sparkleblast if you wish to aid him.\n\n(This will make the Bloodsail Buccaneers not the see you as an enemy anymore.)' where entry = 40172;
update quest_template set objectives = 'Make a statement.\n\n(This action will make the Blackwater Raiders and Booty Bay your enemy, if your life is not expandable do not attempt this mission.)' where entry = 40180;

set @gossip_menu_id = 41046; set @magic_number = 2010834;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'This seems like one of the gunpowder kegs you\'re looking for.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- A Bad Day to Fish! --
delete from quest_template where entry = 40274;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40274,2,14,11,6,0,0,'A Bad Day to Fish!','The Southfury river wasn\'t always so bad, at one point it was swarming with scorpids, another with harpies, and now look at it! The crocolisks have been an utter annoyance to me and all I want to do today is fish.\n\nYou think you could cull some of these beasts for me? At the least make it so I don\'t need to wield a weapon, and I can just relax? Before you ask, I\'ve done enough fighting for one lifetime from the Dark Portal, to Lordaeron, and now here. Go out, and secure me just a days rest!','Slay 8 Dreadmaw Crocolisks for Grubgar at Southfury River in Durotar.','So, have you had any trouble? There practically everywhere, so be careful.','Ahh, finally, at last. I can get to it, here, I\'ve got a spare rod now that the river should be a little bit more cleared up.\n\n If you don\'t know how to fish, try in Orgrimmar, no doubt they can help.',0,0,0,0,0,0,0,0,3110,8,0,0,0,0,0,0,0,0,0,880,76,100,0,0,0,0,0,0,0,0,0,6256,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60510, 40274);
replace into creature_involvedrelation (id, quest) values (60510, 40274);

-- Deeptide Sanctum --
delete from quest_template where entry = 40275;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40275,2,408,53,45,0,0,'Deeptide Sanctum','It is good to meet a fellow explorer upon these lands, one who enjoys the same glory of finding the unknown and uncovering secrets. We share a bond in exploration and adventure and I feel obligated to warm you of a danger off the coast, one that perhaps you may assist with.\n\nThe Deeptide Naga are a menacing force, who came here for an unknown motive and currently hold an island off the coast of Gillijim to the south west. It is there that they have a sanctum they call home, and use it as a base of operations to strike out and attack people like you and me. I was lucky to escape the hands of these slithering marauders and live to tell the tale, but others are not so lucky.\n\nI ask you to travel to the Deep Tide Sanctum, and slay the Naga there, so that one day the horde may establish control on these islands, and so that we may continue our exploration unharmed. Bring me the bracelets they wear as proof.','Gather 10 Deeptide Bracelets from Deeptide Nana for Explorer Fangosh in Maul\'ogg Refuge.','Have you dealt with the Naga?','We are one step closer to uncovering the secrets of this place, but I feel there is moe to be done in order to secure ourselves here.',60219,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4700,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92182, 40275);
replace into creature_involvedrelation (id, quest) values (92182, 40275);

-- Destroying the Deeptide --
delete from quest_template where entry = 40276;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40275,40276,2,408,55,45,0,0,'Destroying the Deeptide','You did well, you have the tenacity and strength of the most well rounded explorers. If we truly want the Deeptide gone, and to free these islands of their presence we must become more bold. Their leadership are nestled within the Deeptide Sanctum, and need to be rooted out.\n\nReturn to the sanctum, and bring retribution upon Princess Shasza, and Tidelord Hakash, they need to be slain for their crimes and hostility. Trust me, there is no reasoning, or diplomacy that can be done, finish this, and perhaps the Naga will disperse.','Slay Tidelord Hakash, and Princess Shasza for Explorer Fangosh in Maul\'ogg Refuge.','Have you had any progress with the Naga?','It is done then, with their leaders killed the Naga will be uncoherent, and nothing more then a disorganized mass. Even the largest army will always lose to one more disciplined, and focused. We have truly weakened their position this day, and perhaps forever.',0,0,0,0,0,0,0,0,92161,1,92162,1,0,0,0,0,0,0,7500,5100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92182, 40276);
replace into creature_involvedrelation (id, quest) values (92182, 40276);

-- Into the Uplands --
delete from quest_template where entry = 40080;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40080,2,130,15,10,0,0,'Into the Uplands','Hey there traveler, I am currently looking for someone to run me a parcel, one that I have been needing to ship for quite a while now. With all of the comings and goings here at the sepulcher I have been somewhat unable to fulfill my obligations.\n\nUp north past Valgan\'s and The Dead Field is a passageway that leads into the Tirisfal Uplands. It is pressed against the mountains and somewhat hidden but should be spotted by the keen eye.\n\nOnce you make your way into the Uplands, I need this parcel delivered to Apothecary Volgrin, he should be located fairly close to the passage leading through the cliffs.','Deliver Volgrin\'s Parcel to Apothecary Volgrin near the entrance to the Tirisfal Uplands.','Hello, can I help you?','I have been waiting for these, it\'s about time, now I can finally get some work done.',60374,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60374,1,0,200,68,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from creature_questrelation where quest = 40080;
delete from creature_involvedrelation where quest = 40080;
replace into creature_questrelation (id, quest) values (6739, 40080);
replace into creature_involvedrelation (id, quest) values (91713, 40080);

delete from item_template where entry = 60374;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60374,7913,'Volgrin\'s Parcel',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set npc_flags = 139 where entry = 6739;

-- Pesterhide Pests --
delete from quest_template where entry = 40081;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40081,2,85,17,11,0,0,'Pesterhide Pests','The Road between here and Glenshire has been cutoff, the gnolls of the Pesterhide are mostly to blame for that! They have been foraging in a more growing rate, no doubt due to the lack of food around here.\n\nIf we can\'t even control our roads then what are we hoping to achieve here in the Uplands?\n\nI need you to handle this pest problem, travel up the hill and go to the east, you should find Pesterhide all over The Jagged Hills.\n\nKill them, and bring me their Ragged Armbands.','Gather 7 Ragged Armbands from Pesterhide Gnolls for Deathguard Mike in Steepcliff Port.','These mongrels are nothing more then a stepping stone for the Forsaken, deal with them.','Good work out there $C, keeping the road safe, and thinning the pack of mongrels will only be for the greater good.',60375,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1150,68,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from creature_questrelation where quest = 40081;
delete from creature_involvedrelation where quest = 40081;
replace into creature_questrelation (id, quest) values (91752, 40081);
replace into creature_involvedrelation (id, quest) values (91752, 40081);

update creature_template set npc_flags = 3 where entry = 91752;

delete from item_template where entry = 60375;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60375,18366,'Ragged Armband',12,1,2048,1,-1,-1,1,7,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 91735 where entry = 91735;
update creature_template set loot_id = 91736 where entry = 91736;
update creature_template set loot_id = 91737 where entry = 91737;
update creature_template set loot_id = 91738 where entry = 91738;

REPLACE INTO creature_loot_template VALUES
(91738, 60375, -35, 0, 1, 1, 0),
(91738, 414, 0.02, 0, 1, 1, 0),
(91738, 765, 0.02, 0, 1, 1, 0),
(91738, 785, 0.02, 0, 1, 1, 0),
(91738, 818, 0.14, 0, 1, 1, 0),
(91738, 856, 0.02, 0, 1, 1, 0),
(91738, 858, 1.3292, 0, 1, 1, 0),
(91738, 954, 0.36, 0, 1, 1, 0),
(91738, 955, 0.48, 0, 1, 1, 0),
(91738, 1013, -80, 0, 1, 1, 0),
(91738, 1179, 2.6717, 0, 1, 1, 0),
(91738, 1180, 0.52, 0, 1, 1, 0),
(91738, 1206, 0.16, 0, 1, 1, 0),
(91738, 1210, 0.46, 0, 1, 1, 0),
(91738, 1212, 10.4156, 0, 1, 1, 0),
(91738, 1529, 0.02, 0, 1, 1, 0),
(91738, 1705, 0.02, 0, 1, 1, 0),
(91738, 2287, 4.573, 0, 1, 1, 0),
(91738, 2406, 0.02, 0, 1, 1, 0),
(91738, 2407, 0.02, 0, 1, 1, 0),
(91738, 2408, 0.02, 0, 1, 1, 0),
(91738, 2409, 0.02, 0, 1, 1, 0),
(91738, 2447, 0.02, 0, 1, 1, 0),
(91738, 2449, 0.02, 0, 1, 1, 0),
(91738, 2450, 0.02, 0, 1, 1, 0),
(91738, 2452, 0.02, 0, 1, 1, 0),
(91738, 2453, 0.02, 0, 1, 1, 0),
(91738, 2455, 0.7175, 0, 1, 1, 0),
(91738, 2553, 0.02, 0, 1, 1, 0),
(91738, 2555, 0.02, 0, 1, 1, 0),
(91738, 2589, 18.2555, 0, 1, 3, 0),
(91738, 2592, 18.9531, 0, 1, 2, 0),
(91738, 2601, 0.02, 0, 1, 1, 0),
(91738, 2657, 0.0099, 0, 1, 1, 0),
(91738, 2700, 0.08, 0, 1, 1, 0),
(91738, 2770, 0.04, 0, 1, 1, 0),
(91738, 2771, 0.12, 0, 1, 1, 0),
(91738, 2775, 0.02, 0, 1, 1, 0),
(91738, 2835, 0.02, 0, 1, 1, 0),
(91738, 2836, 0.04, 0, 1, 1, 0),
(91738, 2856, -80, 0, 1, 1, 0),
(91738, 2881, 0.02, 0, 1, 1, 0),
(91738, 2882, 0.02, 0, 1, 1, 0),
(91738, 2883, 0.02, 0, 1, 1, 0),
(91738, 2996, 0.02, 0, 1, 1, 0),
(91738, 3012, 0.36, 0, 1, 1, 0),
(91738, 3393, 0.02, 0, 1, 1, 0),
(91738, 3394, 0.02, 0, 1, 1, 0),
(91738, 3610, 0.02, 0, 1, 1, 0),
(91738, 4292, 0.02, 0, 1, 1, 0),
(91738, 4293, 0.02, 0, 1, 1, 0),
(91738, 4294, 0.02, 0, 1, 1, 0),
(91738, 4345, 0.02, 0, 1, 1, 0),
(91738, 4346, 0.02, 0, 1, 1, 0),
(91738, 4347, 0.02, 0, 1, 1, 0),
(91738, 4348, 0.02, 0, 1, 1, 0),
(91738, 4349, 0.02, 0, 1, 1, 0),
(91738, 4408, 0.02, 0, 1, 1, 0),
(91738, 4409, 0.02, 0, 1, 1, 0),
(91738, 4410, 0.02, 0, 1, 1, 0),
(91738, 4537, 0.02, 0, 1, 1, 0),
(91738, 4541, 0.02, 0, 1, 1, 0),
(91738, 4592, 0.02, 0, 1, 1, 0),
(91738, 4605, 0.02, 0, 1, 1, 0),
(91738, 4694, 0.0132, 0, 1, 1, 0),
(91738, 4698, 0.02, 0, 1, 1, 0),
(91738, 4700, 0.0165, 0, 1, 1, 0),
(91738, 5503, 0.02, 0, 1, 1, 0),
(91738, 5573, 0.0265, 0, 1, 1, 0),
(91738, 5574, 0.0066, 0, 1, 1, 0),
(91738, 5578, 0.02, 0, 1, 1, 0),
(91738, 5972, 0.02, 0, 1, 1, 0),
(91738, 6271, 0.02, 0, 1, 1, 0),
(91738, 6342, 0.04, 0, 1, 1, 0),
(91738, 6344, 0.02, 0, 1, 1, 0),
(91738, 6347, 0.02, 0, 1, 1, 0),
(91738, 6348, 0.02, 0, 1, 1, 0),
(91738, 6375, 0.02, 0, 1, 1, 0),
(91738, 6390, 0.02, 0, 1, 1, 0),
(91738, 6391, 0.02, 0, 1, 1, 0),
(91738, 6716, 0.02, 0, 1, 1, 0),
(91738, 7288, 0.02, 0, 1, 1, 0),
(91738, 10316, 0.02, 0, 1, 1, 0),
(91738, 10405, 0.0099, 0, 1, 1, 0),
(91738, 10407, 0.02, 0, 1, 1, 0),
(91738, 11038, 0.02, 0, 1, 1, 0),
(91738, 11039, 0.02, 0, 1, 1, 0),
(91738, 11081, 0.02, 0, 1, 1, 0),
(91738, 14170, 0.02, 0, 1, 1, 0),
(91738, 30009, 0.5, 0, -30009, 1, 0),
(91738, 30022, 0.5, 0, -30022, 1, 0),
(91738, 30037, 2.5, 0, -30037, 1, 0),
(91738, 30038, 0.5, 0, -30038, 1, 0),
(91738, 30041, 0.5, 5, -30041, 1, 0),
(91738, 30042, 0.5, 7, -30042, 1, 0);

REPLACE INTO creature_loot_template VALUES
(91737, 60375, -45, 0, 1, 1, 0),
(91737, 414, 0.02, 0, 1, 1, 0),
(91737, 765, 0.02, 0, 1, 1, 0),
(91737, 774, 0.02, 0, 1, 1, 0),
(91737, 785, 0.02, 0, 1, 1, 0),
(91737, 818, 0.12, 0, 1, 1, 0),
(91737, 856, 0.0261, 0, 1, 1, 0),
(91737, 858, 1.2103, 0, 1, 1, 0),
(91737, 954, 0.36, 0, 1, 1, 0),
(91737, 955, 0.5, 0, 1, 1, 0),
(91737, 1013, -80, 0, 1, 1, 0),
(91737, 1179, 2.2726, 0, 1, 1, 0),
(91737, 1180, 0.48, 0, 1, 1, 0),
(91737, 1206, 0.12, 0, 1, 1, 0),
(91737, 1210, 0.42, 0, 1, 1, 0),
(91737, 1212, 10.3531, 0, 1, 1, 0),
(91737, 1214, 1, 0, 1, 1, 0),
(91737, 2287, 4.6193, 0, 1, 1, 0),
(91737, 2406, 0.02, 0, 1, 1, 0),
(91737, 2407, 0.02, 0, 1, 1, 0),
(91737, 2408, 0.02, 0, 1, 1, 0),
(91737, 2409, 0.02, 0, 1, 1, 0),
(91737, 2447, 0.02, 0, 1, 1, 0),
(91737, 2449, 0.02, 0, 1, 1, 0),
(91737, 2450, 0.02, 0, 1, 1, 0),
(91737, 2452, 0.02, 0, 1, 1, 0),
(91737, 2453, 0.02, 0, 1, 1, 0),
(91737, 2455, 0.6879, 0, 1, 1, 0),
(91737, 2553, 0.02, 0, 1, 1, 0),
(91737, 2555, 0.02, 0, 1, 1, 0),
(91737, 2589, 17.8893, 0, 1, 3, 0),
(91737, 2592, 19.2041, 0, 1, 2, 0),
(91737, 2601, 0.02, 0, 1, 1, 0),
(91737, 2657, 0.0131, 0, 1, 1, 0),
(91737, 2700, 0.08, 0, 1, 1, 0),
(91737, 2770, 0.06, 0, 1, 1, 0),
(91737, 2771, 0.06, 0, 1, 1, 0),
(91737, 2775, 0.02, 0, 1, 1, 0),
(91737, 2835, 0.04, 0, 1, 1, 0),
(91737, 2836, 0.02, 0, 1, 1, 0),
(91737, 2856, -80, 0, 1, 1, 0),
(91737, 2881, 0.02, 0, 1, 1, 0),
(91737, 2882, 0.02, 0, 1, 1, 0),
(91737, 2883, 0.02, 0, 1, 1, 0),
(91737, 2996, 0.02, 0, 1, 1, 0),
(91737, 3012, 0.36, 0, 1, 1, 0),
(91737, 3393, 0.02, 0, 1, 1, 0),
(91737, 3394, 0.02, 0, 1, 1, 0),
(91737, 3610, 0.02, 0, 1, 1, 0),
(91737, 4292, 0.02, 0, 1, 1, 0),
(91737, 4293, 0.02, 0, 1, 1, 0),
(91737, 4294, 0.02, 0, 1, 1, 0),
(91737, 4345, 0.02, 0, 1, 1, 0),
(91737, 4346, 0.02, 0, 1, 1, 0),
(91737, 4347, 0.02, 0, 1, 1, 0),
(91737, 4348, 0.02, 0, 1, 1, 0),
(91737, 4349, 0.02, 0, 1, 1, 0),
(91737, 4408, 0.02, 0, 1, 1, 0),
(91737, 4409, 0.02, 0, 1, 1, 0),
(91737, 4410, 0.02, 0, 1, 1, 0),
(91737, 4537, 0.02, 0, 1, 1, 0),
(91737, 4541, 0.0044, 0, 2, 2, 0),
(91737, 4592, 0.02, 0, 1, 1, 0),
(91737, 4605, 0.02, 0, 1, 1, 0),
(91737, 4698, 0.02, 0, 1, 1, 0),
(91737, 4700, 0.0087, 0, 1, 1, 0),
(91737, 5503, 0.02, 0, 1, 1, 0),
(91737, 5573, 0.0131, 0, 1, 1, 0),
(91737, 5574, 0.0131, 0, 1, 1, 0),
(91737, 5578, 0.02, 0, 1, 1, 0),
(91737, 5972, 0.02, 0, 1, 1, 0),
(91737, 6271, 0.02, 0, 1, 1, 0),
(91737, 6342, 0.02, 0, 1, 1, 0),
(91737, 6344, 0.02, 0, 1, 1, 0),
(91737, 6347, 0.02, 0, 1, 1, 0),
(91737, 6348, 0.02, 0, 1, 1, 0),
(91737, 6375, 0.02, 0, 1, 1, 0),
(91737, 6390, 0.02, 0, 1, 1, 0),
(91737, 6391, 0.02, 0, 1, 1, 0),
(91737, 6716, 0.02, 0, 1, 1, 0),
(91737, 7288, 0.02, 0, 1, 1, 0),
(91737, 10316, 0.02, 0, 1, 1, 0),
(91737, 10407, 0.02, 0, 1, 1, 0),
(91737, 11038, 0.02, 0, 1, 1, 0),
(91737, 11039, 0.02, 0, 1, 1, 0),
(91737, 11081, 0.02, 0, 1, 1, 0),
(91737, 30021, 0.5, 0, -30021, 1, 0),
(91737, 30022, 0.5, 0, -30022, 1, 0),
(91737, 30024, 0.5, 0, -30024, 1, 0),
(91737, 30037, 2.5, 0, -30037, 1, 0),
(91737, 30038, 0.5, 0, -30038, 1, 0);

REPLACE INTO creature_loot_template VALUES
(91736, 60375, -30, 0, 1, 1, 0),
(91736, 414, 0.02, 0, 1, 1, 0),
(91736, 765, 0.02, 0, 1, 1, 0),
(91736, 774, 0.02, 0, 1, 1, 0),
(91736, 785, 0.02, 0, 1, 1, 0),
(91736, 818, 0.12, 0, 1, 1, 0),
(91736, 856, 0.0261, 0, 1, 1, 0),
(91736, 858, 1.2103, 0, 1, 1, 0),
(91736, 954, 0.36, 0, 1, 1, 0),
(91736, 955, 0.5, 0, 1, 1, 0),
(91736, 1013, -80, 0, 1, 1, 0),
(91736, 1179, 2.2726, 0, 1, 1, 0),
(91736, 1180, 0.48, 0, 1, 1, 0),
(91736, 1206, 0.12, 0, 1, 1, 0),
(91736, 1210, 0.42, 0, 1, 1, 0),
(91736, 1212, 10.3531, 0, 1, 1, 0),
(91736, 1214, 1, 0, 1, 1, 0),
(91736, 2287, 4.6193, 0, 1, 1, 0),
(91736, 2406, 0.02, 0, 1, 1, 0),
(91736, 2407, 0.02, 0, 1, 1, 0),
(91736, 2408, 0.02, 0, 1, 1, 0),
(91736, 2409, 0.02, 0, 1, 1, 0),
(91736, 2447, 0.02, 0, 1, 1, 0),
(91736, 2449, 0.02, 0, 1, 1, 0),
(91736, 2450, 0.02, 0, 1, 1, 0),
(91736, 2452, 0.02, 0, 1, 1, 0),
(91736, 2453, 0.02, 0, 1, 1, 0),
(91736, 2455, 0.6879, 0, 1, 1, 0),
(91736, 2553, 0.02, 0, 1, 1, 0),
(91736, 2555, 0.02, 0, 1, 1, 0),
(91736, 2589, 17.8893, 0, 1, 3, 0),
(91736, 2592, 19.2041, 0, 1, 2, 0),
(91736, 2601, 0.02, 0, 1, 1, 0),
(91736, 2657, 0.0131, 0, 1, 1, 0),
(91736, 2700, 0.08, 0, 1, 1, 0),
(91736, 2770, 0.06, 0, 1, 1, 0),
(91736, 2771, 0.06, 0, 1, 1, 0),
(91736, 2775, 0.02, 0, 1, 1, 0),
(91736, 2835, 0.04, 0, 1, 1, 0),
(91736, 2836, 0.02, 0, 1, 1, 0),
(91736, 2856, -80, 0, 1, 1, 0),
(91736, 2881, 0.02, 0, 1, 1, 0),
(91736, 2882, 0.02, 0, 1, 1, 0),
(91736, 2883, 0.02, 0, 1, 1, 0),
(91736, 2996, 0.02, 0, 1, 1, 0),
(91736, 3012, 0.36, 0, 1, 1, 0),
(91736, 3393, 0.02, 0, 1, 1, 0),
(91736, 3394, 0.02, 0, 1, 1, 0),
(91736, 3610, 0.02, 0, 1, 1, 0),
(91736, 4292, 0.02, 0, 1, 1, 0),
(91736, 4293, 0.02, 0, 1, 1, 0),
(91736, 4294, 0.02, 0, 1, 1, 0),
(91736, 4345, 0.02, 0, 1, 1, 0),
(91736, 4346, 0.02, 0, 1, 1, 0),
(91736, 4347, 0.02, 0, 1, 1, 0),
(91736, 4348, 0.02, 0, 1, 1, 0),
(91736, 4349, 0.02, 0, 1, 1, 0),
(91736, 4408, 0.02, 0, 1, 1, 0),
(91736, 4409, 0.02, 0, 1, 1, 0),
(91736, 4410, 0.02, 0, 1, 1, 0),
(91736, 4537, 0.02, 0, 1, 1, 0),
(91736, 4541, 0.0044, 0, 2, 2, 0),
(91736, 4592, 0.02, 0, 1, 1, 0),
(91736, 4605, 0.02, 0, 1, 1, 0),
(91736, 4698, 0.02, 0, 1, 1, 0),
(91736, 4700, 0.0087, 0, 1, 1, 0),
(91736, 5503, 0.02, 0, 1, 1, 0),
(91736, 5573, 0.0131, 0, 1, 1, 0),
(91736, 5574, 0.0131, 0, 1, 1, 0),
(91736, 5578, 0.02, 0, 1, 1, 0),
(91736, 5972, 0.02, 0, 1, 1, 0),
(91736, 6271, 0.02, 0, 1, 1, 0),
(91736, 6342, 0.02, 0, 1, 1, 0),
(91736, 6344, 0.02, 0, 1, 1, 0),
(91736, 6347, 0.02, 0, 1, 1, 0),
(91736, 6348, 0.02, 0, 1, 1, 0),
(91736, 6375, 0.02, 0, 1, 1, 0),
(91736, 6390, 0.02, 0, 1, 1, 0),
(91736, 6391, 0.02, 0, 1, 1, 0),
(91736, 6716, 0.02, 0, 1, 1, 0),
(91736, 7288, 0.02, 0, 1, 1, 0),
(91736, 10316, 0.02, 0, 1, 1, 0),
(91736, 10407, 0.02, 0, 1, 1, 0),
(91736, 11038, 0.02, 0, 1, 1, 0),
(91736, 11039, 0.02, 0, 1, 1, 0),
(91736, 11081, 0.02, 0, 1, 1, 0),
(91736, 30021, 0.5, 0, -30021, 1, 0),
(91736, 30022, 0.5, 0, -30022, 1, 0),
(91736, 30024, 0.5, 0, -30024, 1, 0),
(91736, 30037, 2.5, 0, -30037, 1, 0),
(91736, 30038, 0.5, 0, -30038, 1, 0);

REPLACE INTO creature_loot_template VALUES
(91735, 60375, -30, 0, 1, 1, 0),
(91735, 414, 0.0055, 0, 1, 1, 0),
(91735, 765, 0.02, 0, 1, 1, 0),
(91735, 774, 0.1, 0, 1, 1, 0),
(91735, 785, 0.02, 0, 1, 1, 0),
(91735, 818, 0.34, 0, 1, 1, 0),
(91735, 856, 0.022, 0, 1, 1, 0),
(91735, 858, 1.4747, 0, 1, 1, 0),
(91735, 954, 0.36, 0, 1, 1, 0),
(91735, 955, 0.56, 0, 1, 1, 0),
(91735, 1179, 2.4212, 0, 1, 1, 0),
(91735, 1180, 0.56, 0, 1, 1, 0),
(91735, 1206, 0.08, 0, 1, 1, 0),
(91735, 1210, 0.32, 0, 1, 1, 0),
(91735, 1211, 1, 0, 1, 1, 0),
(91735, 1212, 9.9818, 0, 1, 1, 0),
(91735, 2287, 4.8258, 0, 1, 1, 0),
(91735, 2406, 0.02, 0, 1, 1, 0),
(91735, 2407, 0.02, 0, 1, 1, 0),
(91735, 2408, 0.02, 0, 1, 1, 0),
(91735, 2409, 0.02, 0, 1, 1, 0),
(91735, 2447, 0.02, 0, 1, 1, 0),
(91735, 2449, 0.02, 0, 1, 1, 0),
(91735, 2450, 0.02, 0, 1, 1, 0),
(91735, 2452, 0.02, 0, 1, 1, 0),
(91735, 2453, 0.02, 0, 1, 1, 0),
(91735, 2455, 0.7043, 0, 1, 1, 0),
(91735, 2553, 0.02, 0, 1, 1, 0),
(91735, 2555, 0.02, 0, 1, 1, 0),
(91735, 2589, 18.3954, 0, 1, 3, 0),
(91735, 2592, 19.4354, 0, 1, 2, 0),
(91735, 2598, 0.02, 0, 1, 1, 0),
(91735, 2601, 0.02, 0, 1, 1, 0),
(91735, 2657, 0.022, 0, 1, 1, 0),
(91735, 2700, 0.06, 0, 1, 1, 0),
(91735, 2770, 0.2, 0, 1, 1, 0),
(91735, 2771, 0.02, 0, 1, 1, 0),
(91735, 2775, 0.02, 0, 1, 1, 0),
(91735, 2835, 0.1, 0, 1, 1, 0),
(91735, 2836, 0.02, 0, 1, 1, 0),
(91735, 2881, 0.02, 0, 1, 1, 0),
(91735, 2883, 0.02, 0, 1, 1, 0),
(91735, 2971, 0.0385, 0, 1, 1, 0),
(91735, 2972, 0.033, 0, 1, 1, 0),
(91735, 2975, 0.0275, 0, 1, 1, 0),
(91735, 2979, 0.0275, 0, 1, 1, 0),
(91735, 2996, 0.02, 0, 1, 1, 0),
(91735, 3012, 0.36, 0, 1, 1, 0),
(91735, 3207, 0.0165, 0, 1, 1, 0),
(91735, 3393, 0.02, 0, 1, 1, 0),
(91735, 3394, 0.02, 0, 1, 1, 0),
(91735, 3609, 0.02, 0, 1, 1, 0),
(91735, 3610, 0.02, 0, 1, 1, 0),
(91735, 3643, 0.044, 0, 1, 1, 0),
(91735, 4292, 0.02, 0, 1, 1, 0),
(91735, 4293, 0.02, 0, 1, 1, 0),
(91735, 4345, 0.02, 0, 1, 1, 0),
(91735, 4346, 0.02, 0, 1, 1, 0),
(91735, 4347, 0.02, 0, 1, 1, 0),
(91735, 4349, 0.02, 0, 1, 1, 0),
(91735, 4408, 0.02, 0, 1, 1, 0),
(91735, 4409, 0.02, 0, 1, 1, 0),
(91735, 4410, 0.02, 0, 1, 1, 0),
(91735, 4537, 0.02, 0, 1, 1, 0),
(91735, 4541, 0.02, 0, 1, 1, 0),
(91735, 4592, 0.02, 0, 1, 1, 0),
(91735, 4605, 0.02, 0, 1, 1, 0),
(91735, 4678, 0.0055, 0, 1, 1, 0),
(91735, 5503, 0.02, 0, 1, 1, 0),
(91735, 5504, 0.02, 0, 1, 1, 0),
(91735, 5573, 0.022, 0, 1, 1, 0),
(91735, 5574, 0.0165, 0, 1, 1, 0),
(91735, 5578, 0.04, 0, 1, 1, 0),
(91735, 6271, 0.02, 0, 1, 1, 0),
(91735, 6342, 0.02, 0, 1, 1, 0),
(91735, 6344, 0.02, 0, 1, 1, 0),
(91735, 6347, 0.02, 0, 1, 1, 0),
(91735, 6348, 0.02, 0, 1, 1, 0),
(91735, 6549, 0.06, 0, 1, 1, 0),
(91735, 6555, 0.08, 0, 1, 1, 0),
(91735, 6716, 0.02, 0, 1, 1, 0),
(91735, 6833, 0.673725, 0, 1, 1, 0),
(91735, 7288, 0.02, 0, 1, 1, 0),
(91735, 11038, 0.02, 0, 1, 1, 0),
(91735, 11039, 0.02, 0, 1, 1, 0),
(91735, 11081, 0.02, 0, 1, 1, 0),
(91735, 30018, 2.5, 0, -30018, 1, 0),
(91735, 30020, 0.5, 0, -30020, 1, 0),
(91735, 30022, 0.5, 0, -30022, 1, 0),
(91735, 30037, 2.5, 0, -30037, 1, 0),
(91735, 30038, 0.5, 0, -30038, 1, 0),
(91735, 30041, 0.5, 5, -30041, 1, 0),
(91735, 30042, 0.5, 7, -30042, 1, 0);

-- Pestering the Pesterhide --
delete from quest_template where entry = 40082;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40081,40082,2,85,20,11,0,0,'Pestering the Pesterhide','From atop of The Jagged Hills Chief Rnarl rules over the conjoined tribes of the Pesterhide. He has been rather tenacious, even when we had tried to deal with him in the past. If we truly wish to scatter the Pesterhide Gnolls and send them into chaos, then we will need to strike at the heart of their leadership.\n\nChief Rnarl has been the one to unite the gnolls, and without him they will crumble. While you are there, be sure to kill Belgar as well, he is a shaman that has strengthened the critters and spurred their actions even more.\n\nWhen these two fall, the packs will scatter, bring me their paws and you will be rewarded in silver.','Bring the paw of Belgar and Chief Rnarl to Deathguard Mike in Steepcliff Port.','Have you slain the mongrels, or are you waiting for them to simply leave?','Chief Rnarl, you have eluded me for so long, and no longer. Well done $N, you have done what I could not. You are a skilled fighter, and worthy of praise. When Steepcliff Port gets more established, return, and we can share a corpse.',60376,1,60377,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,1450,68,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from creature_questrelation where quest = 40082;
delete from creature_involvedrelation where quest = 40082;
replace into creature_questrelation (id, quest) values (91752, 40082);
replace into creature_involvedrelation (id, quest) values (91752, 40082);


delete from item_template where entry = 60376 and 60377;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60376,940,'Paw of Chief Rnarl',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60377,1496,'Paw of Belgar',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO creature_loot_template VALUES
(1007,60376,-100,0,1,1,0),
(1013,60377,-100,0,1,1,0);

-- The Rogue Heights --
delete from quest_template where entry = 40083;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40083,2,17,17,11,0,0,'The Rogue Heights','When Lordaeron was on the brink of collapse I found myself with a band of wandering wizards, and footpads who had a knack for Arcane Magic. They called themselves the Rogue Wizards and with them I met my end. Those who I considered friends left me for dead without even attempting to help me as I lay trapped beneath a fallen tree.\n\nI desire to punish these people, and you will help me do as such! I have sensed for some time now a growing power lingering on the Rogue Heights.\n\nThey are no doubt plotting something, as this arcane power I feel has grown. They need to be dealt with, and now, before they grow to strong to murder. You can find them just to the northeast of Glenshire, there is a small pathway through the Rogue Heights.\n\nTravel there, and slay them for me.','Travel to the Rogue Heights and slay 6 Rogue Enforcers and 6 Rogue Conjurers for Harry Upperson in Glenshire.','We must act quick, lest they begin to harness their magical power.','Excellent work, we have certainly put a dent in those Rogue Wizards, but I still feel there is more to be done.',0,0,0,0,0,0,0,0,91761,6,91762,6,0,0,0,0,0,0,0,950,68,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from creature_questrelation where quest = 40083;
delete from creature_involvedrelation where quest = 40083;
replace into creature_questrelation (id, quest) values (91729, 40083);
replace into creature_involvedrelation (id, quest) values (91729, 40083);

-- Magical Interference --
delete from quest_template where entry = 40084;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40083,40084,2,17,20,11,0,0,'Magical Interference','I\'ve been puzzled for a long time as to why the magic they now wield has been so familiar - it lays just on the tip of my finger. As you were out dealing with the rabble of enforcers and conjurers I studied harder and came up with an answer.\n\nThe magic is that of the Kirin Tor, I am certain, I spent quite a bit of time in my living life around mages of Dalaran and now that I think back and have checked my books I am certain.\n\nIf Dalaran is here then that means they must be attempting to check us in our expansion here within Tirisfal Uplands.\n\nReturn to the Rogue Heights, and scour the hillside, check for any source of the Kirin Tor\'s presence, and put an end to it. We cannot have our enemies doing as they please freely within the countryside.','Travel to the Rogue Heights and put an end to the Kirin Tor\'s influence once and for all.','Have you dealt with the wizard $N?','Excellent work, we have certainly put a dent in those Rogue Wizards, but I still feel there is more to be done.',60378,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1450,68,100,0,0,0,0,0,0,0,0,0,3385,3,0,0,0,0,0,0,60379,1,60380,1,0,0,0,0,0,0,'');

delete from creature_questrelation where quest = 40084;
delete from creature_involvedrelation where quest = 40084;
replace into creature_questrelation (id, quest) values (91729, 40084);
replace into creature_involvedrelation (id, quest) values (91729, 40084);

update quest_template set type = 1 where entry = 40084;

delete from item_template where entry = 60378;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60378,31800,'Salorn\'s Ring',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Encrusted with a large amethyst and bearing the mark of the Kirin Tor.',0);

REPLACE INTO creature_loot_template VALUES
(4064,60378,-100,0,1,1,0);

replace into item_template values
 ('60379', '4', '2', 'Whispering Cuffs', '', '17002', '2', '0', '1', '2804', '701', '9', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '4', '7', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '37', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '30', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60380', '4', '1', 'Sash of Upperson', '', '27614', '2', '0', '1', '2016', '504', '6', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '5', '6', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '22', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '25', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

-- Stealing Arcane Goods --
delete from quest_template where entry = 40085;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40083,40085,2,17,18,11,0,0,'Stealing Arcane Goods','No doubt the Rogue Wizards have stashed all manner of Arcane trinkets and items up within the Rogue Heights. If we want to severly limit their abilities then we will need to take these items from them.\n\nAs a side effect, we may as well bolster our own knowledge. Return to the Rogue Heights, and steal Arcane Goods that can be found amongst their camps, return them to me and I will make sure you are well compensated.','Steal Arcane Goods from the camps within the Rogue Heights for Harry Upperson in Glenshire.','Have you found their tomes, books and trinkets $N?','Another victory, and more books to read, thanks again friend, take these coins for the hard work.',60381,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1050,68,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from creature_questrelation where quest = 40085;
delete from creature_involvedrelation where quest = 40085;
replace into creature_questrelation (id, quest) values (91729, 40085);
replace into creature_involvedrelation (id, quest) values (91729, 40085);

delete from item_template where entry = 60381;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60381,4127,'Arcane Goods',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010855;
replace into gameobject_template values
(2010855,3,6035,'Arcane Goods',0,4,0.2,43,2010855,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from gameobject_loot_template where entry = 2010855;
replace into gameobject_loot_template values 
(2010855,60381,-100,0,1,1,0);

-- A friend in Glenshire --
delete from quest_template where entry = 40086;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40086,2,130,15,10,0,0,'A friend in Glenshire','You look like you know your way around the world. Just by the way you walk, with such a knowing foot. I\'m in need of someone like you, I got a friend located in Glenshire, its far to the west of Tirisfal and into the Uplands. He needs some metal delivered and you look like just the person.\n\nYou can find the entrance to the west of Solliden\'s Farmstead, go through the gate and follow the road straight until you reach Glenshire. It may not be the safest road, but you can handle that.\n\nThere might be a fork in the road, I think you take a left... If I am remembering correctly. Marlow Neggle should be located in town somewhere there, take this shipment to him.','Deliver Marlow\'s Ore Shipment to Marlow Neggle located in Glenshire.','Hello, can I help you?','Gordon must have sent you, and on time too. He has been a steady help here at Glenshire, without him, I would be quite out of luck working.',60382,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60382,1,0,200,68,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from creature_questrelation where quest = 40086;
delete from creature_involvedrelation where quest = 40086;
replace into creature_questrelation (id, quest) values (4556, 40086);
replace into creature_involvedrelation (id, quest) values (91728, 40086);

update creature_template set npc_flags = 16391 where entry = 4556;
update creature_template set npc_flags = 16391 where entry = 91728;

delete from item_template where entry = 60382;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60382,11448,'Marlow\'s Ore Shipment',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Crumblepoint Tower --
delete from quest_template where entry = 40087;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40087,2,85,15,14,0,0,'Crumblepoint Tower','I have no idea how they managed to slip past our forces in the Silverpine, but these Worgen came in great numbers. Without the tower in our control, our ability to monitor activity in the southern Tirisfal Uplands is slightly reduced, which is why I could use the help of an adventurer like you to help us reclaim it.\n\n<Volgrin sizes you up from the top down>.\n\nYou didn\'t run, well consider me impressed. Good, then head above and kill those flea-ridden wretches.','Slay 6 Tirisclaw Ravagers and 4 Tirislcaw Shadowcasters at Crumblepoint Tower before returning to Volgrin.','Back so soon?','You actually did it? Well... I was honestly not expecting you to return. I wish you have arrived a few days earlier we might have avoided this whole situation, to begin with.',0,0,0,0,0,0,0,0,91740,6,91741,6,0,0,0,0,0,0,700,980,68,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from creature_questrelation where quest = 40087;
delete from creature_involvedrelation where quest = 40087;
replace into creature_questrelation (id, quest) values (91713, 40087);
replace into creature_involvedrelation (id, quest) values (91713, 40087);

-- Head Of The Pack --
delete from quest_template where entry = 40088;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40087,40088,2,85,16,14,0,0,'Head Of The Pack','With their forces at the tower weakened, it is time for us to kill their leader. Yes, when I say us, I mean you. Their leader invaded the mine recently, and he has taken his bigger worgen down there with him. The Gracestone mine is a top priority. Without its resources, Glenshire doesn\'t stand a chance against the Humans, not to mention that the mines provide a perfect ambush point for worgens to attack any travelers between Silverpine and the Uplands.\n\nGo down there and bring me the head of their leader. Oh, and feel free to kill as many of his followers as you can.','Bring the head of the Pack Leader Sharn and slay 5 Tirisclaw Ambushers and 4 Tirisclaw Scavengers before returning to Volgrin.','How goes the attack?','Oh, I can smell the blood coming from your bag. Is that the head of the mongrel? Good, very good. With the mine and tower back in our control we are one step closer to achieving complete control over the Tirisfal Uplands.',60172,1,0,0,0,0,0,0,91760,5,91739,4,0,0,0,0,0,0,1000,1250,68,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from creature_questrelation where quest = 40088;
delete from creature_involvedrelation where quest = 40088;
replace into creature_questrelation (id, quest) values (91713, 40088);
replace into creature_involvedrelation (id, quest) values (91713, 40088);

-- Outnumbered --
delete from quest_template where entry = 40096;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40096,2,85,16,15,0,0,'Outnumbered','Ah, you look like someone who can get things done $c. Listen closely, as I do not like to repeat myself. The humans outnumber us five to one. However, they are not aware of this yet, and I would like to keep it that way. My servants informed me that the Lordaeron scouts are making their way towards Glenshire from the north. And you, my friend, are going to make sure that they never return to their masters.','Slay 8 Remnants Scouts In The Whispering Forest and return to Duke Nargelas.','Is it done?','Well done. With those scouts gone, they will think twice before sending an attack force on Glenshire.',0,0,0,0,0,0,0,0,91773,8,0,0,0,0,0,0,0,0,800,1150,68,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from creature_questrelation where quest = 40096;
delete from creature_involvedrelation where quest = 40096;
replace into creature_questrelation (id, quest) values (91712, 40096);
replace into creature_involvedrelation (id, quest) values (91712, 40096);

-- In The Dark --
delete from quest_template where entry = 40097;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40096,40097,2,85,16,15,0,0,'In The Dark','With their scouts gone, we can finally go on the offensive.  But before we can orchestrate an attack on their main camp, we need to reduce their ability to monitor our movement.\n\nJust north of The Whispering Woods, there is a tower called Shatteridge. Remnant\'s Sentries have made that tower their center of operation and are there to warn their main base of any potential danger. Their numbers at the Shatteridge are great, which is precisely the reason why they won\'t expect a single yet powerful foe to attack them directly. So are you up to the task?','Slay 10 Remnants Sentry at the Shateridge Tower and return to Duke Nargelas.','Tell me, how goes the attack?','Ah, my greatest asset returns, successful no less. With Sentries gone, we will have a much easier time dealing with the miserable Humans.',0,0,0,0,0,0,0,0,91772,10,0,0,0,0,0,0,0,0,900,1150,68,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from creature_questrelation where quest = 40097;
delete from creature_involvedrelation where quest = 40097;
replace into creature_questrelation (id, quest) values (91712, 40097);
replace into creature_involvedrelation (id, quest) values (91712, 40097);

-- Rightful Heir --
delete from quest_template where entry = 40098;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40097,40098,2,85,17,15,0,0,'Rightful Heir','I\'m glad I was right about you. With the imminent danger out of the way, it is time for you to learn about the House Darlthos. Before the scrouge ravaged these lands, our house was one of the most prominent houses in all of Lordaeron. Yet now, we are divided, for my sister-in-law acts as a ruler to those still living.\n\nAnd therein lies our problem, for my wife is the only true heir to this land. You are certainly capable, which is why you have earned a right to an audience with Duchess Grelda. Follow the road south of Glenshire past the gates of the Tirisfal Uplands, and you will find my wife in manor alongside the road.\n\nOh and make sure to give this letter to her, it\'s a... let\'s say a recommendation of sorts.','Talk to Duchess Grelda in her Mannor and give her the letter from Duke Nargelas.','Yes?','Hmmm, managed to impress my husband? Let\'s see if you will do the same for me.',60174,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60174,1,600,400,68,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from creature_questrelation where quest = 40098;
delete from creature_involvedrelation where quest = 40098;
replace into creature_questrelation (id, quest) values (91712, 40098);
replace into creature_involvedrelation (id, quest) values (91711, 40098);

update creature_template set script_name = '' where entry = 91711;

delete from item_template where entry = 60174;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60174,5567,'Letter from Duke',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A sealed letter addressed to Duchess Grelda.',0);

-- Attack From The Inside --
delete from quest_template where entry = 40099;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext3) values (40098,40099,2,85,17,15,0,0,'Attack From The Inside','Are you aware of how the plague designed by the cult of the damned works? No? Well, it doesn\'t matter, what you need to know is that I have made something similar, tho not as powerful as the original one. This vial contains a plague that will severely reduce the life expectancy of the living who consume it.\n\nNow that is the part where you, my dear, come in. I need you to head north past The Whispering Forest to a Farmstead called The Garricks Stead. There you will slip a bit of this liquid onto the Human supplies. And make sure that there are no witnesses. Their main force needs to consider this a usual act of war, and when they salvage the plagued supplies. Well you get the picture.','Poison 6 grain crates, slay 10 Remnants Farmers and 7 Remnants Militia on Garricks Stead before returning to Duchess Grelda.','Back already?','I have received news that the Humans did their part precisely as planned and have brought our little gift into their main camp. You did marvelously, my dear.',0,0,0,0,0,0,0,0,91980,10,91981,7,60323,5,0,0,0,0,1200,1500,68,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'All the grain is poisoned');

delete from creature_questrelation where quest = 40099;
delete from creature_involvedrelation where quest = 40099;
replace into creature_questrelation (id, quest) values (91711, 40099);
replace into creature_involvedrelation (id, quest) values (91711, 40099);

delete from creature_template where entry = 60323;
replace into creature_template (entry, name, display_id1) values (60323, 'quest_40099_dummy_triger', 328);

delete from gameobject_template where entry = 2010824;
replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010824, 1, 24318, 1, 'Grain Sacks', 32, 'go_grain_sacks');

delete from item_template where entry = 60173;
delete from item_template where entry = 60175;
delete from item_template where entry = 60189;
delete from item_template where entry = 60190;
delete from item_template where entry = 60191;
delete from creature_loot_template where entry = 2503 and item = 60175;
delete from gameobject_loot_template where entry = 2010824;

-- Fall Of The Usurper --
delete from quest_template where entry = 40277;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext3) values (40099,40277,2,85,20,15,0,0,'Fall Of The Usurper','With their forces weakened, it is as good as time as any to attack them directly. Before I changed into "this" <Duchess points at her undead features>.\n\nI was one of the commanders of the forces here in Tirisfal Uplands. That\'s why I know that even weakened their camp will prove to be a difficult challenge. I recommend that you find those willing to aid you when you launch an attack on their base. Beware that your primary goal is to end the lives of both Silas, the captain that is currently leading the human forces, and my usurper sister Faliona. Do this for me, and I promise that you will be well rewarded.','Slay Duchess Faliona, Captain Silas, 8 Remnants Footman 4 Remnants Priest and return to Duchess Grelda.','Is it done?','I wished I was there to see the look on her miserable face when she realized one last time that she was never able to beat me neither in life nor in death. And you, my dear, have proven to be quite an ally, from this day on, consider yourself welcome to my court... when I rebuild it, of course. Ah yes, I think this will prove to be a suitable reward for your efforts.',0,0,0,0,0,0,0,0,91352,8,91975,4,91721,1,91974,1,0,0,2500,1750,68,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60173,1,60175,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91711, 40277);
replace into creature_involvedrelation (id, quest) values (91711, 40277);

update quest_template set type = 1 where entry = 40277;

replace into item_template values
 ('60173', '4', '0', 'Ring of Darlthos', 'A symbol of bravery', '24087', '3', '0', '1', '9844', '2461', '11', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '41', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60175', '4', '0', 'Signet of Darlthos', 'A symbol of wisdom', '23728', '3', '0', '1', '9844', '2461', '11', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '41', '0', '0', '0',
 '0', '1', NULL);

-- Darlthos Heritage --
delete from quest_template where entry = 40278;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40278,2,85,19,15,0,0,'Darlthos Heritage','$r, I have a task for you. A rather important one. <Nargelas shows you a well-decorated jewelry box>.\n\nIn here lays a key to respect and right to rule the Tirisfal Uplands. You see, before the scourge invaded, my wife Grelda was supposed to inherit these lands from her father. On the coronation day, the contents of this box were supposed to pass on into her possession.\n\nMany moons have passed, and yet my courtiers and I had no luck in opening the lock on this thing. But during my research, a name came up. Vathras Millson. A historian or some such, but I heard that he specializes in these kinds of things. That is why I need you to head to Steepcliff Port and find him. I heard he owns an Inn now.\n\nOh, and do be careful. The box is worth more than your life.','Bring the box to Vathras Millson in Steepcliff Port.','I\'m busy.','And who might you be? The Duke sent you? On with it then, I\'m a busy man.',60189,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60189,1,0,110,68,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91712, 40278);
replace into creature_involvedrelation (id, quest) values (91753, 40278);

delete from item_template where entry = 60189;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60189,16028,'Darthlos Jewelry Box',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A well-decorated jewelry box with an engraved sigil of House Darlthos on the top.',0);

-- A Different Type of Lock --
delete from quest_template where entry = 40279;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40278,40279,2,85,19,15,0,0,'A Different Type of Lock','Do you realize what you are holding in your hands! <Vathras carefully snatches the box from you>. My, my, I wanted to inspect this beauty for a long time. No one aside from the royal family of House Darlthos has ever seen the contents of this box before. But what is this? <Vathras carefully inspects the sigil of the House Darlthos on top of the box> Ah, a shame. You see this sigil. It is an old yet powerful lock that protects the box from being harmed and opened in any way other than through the incantation and use of a special item by which it was sealed.\n\nSkilled as I\'m without the before mentioned method I will not be able to assist the Duke with this task. Send the Duke my regards and wish him luck in his endeavors, will you?','Return the Box to Duke Nargelas in Glenshire and inform him about your findings.','What did he say?','A magical lock? Of course, nothing can ever be so simple.',60189,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60189,1,0,110,68,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91753, 40279);
replace into creature_involvedrelation (id, quest) values (91712, 40279);

-- Modopo <Wyvern Trainer> DisplayID: 2095, HP: 5000, Weapon: 3433, Faction: 104, Greetings text: I am a seasoned wyvern trainer, <class, it feels like yesterday when the Tauren and the Orcs united and aided them against the harpies. Since then they have been loyal friends to the Horde.
-- Bristlefur, DisplayID: 18301, HP: 2500, Greetings text: Bristlefur snarls as it would lay eyes upon you, yet refrains from attacking. The beast appears to be quite bored on the ground, perhaps a snack would convince Bristlefur to take flight with you as its rider.

REPLACE INTO creature_template VALUES
(60538, 2095, 0, 0, 0, 'Modopo', 'Wyvern Trainer', 0, 58, 58, 5000, 5000, 0, 0, 3490, 104, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 374, 546, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 60538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 215, 286, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60539, 18301, 0, 0, 0, 'Bristlefur', '', 0, 58, 58, 2500, 2500, 0, 0, 3490, 104, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 374, 546, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 1, 0, 60539, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 215, 286, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20045; set @weapon_1 = 3433; set @weapon_2 = 0; set @creature = 60538;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20046; set @weapon_1 = 81060; set @weapon_2 = 0; set @creature = 91918;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41047; set @magic_number = 60538;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am a seasoned wyvern trainer, $c, it feels like yesterday when the Tauren and the Orcs united and aided them against the harpies. Since then they have been loyal friends to the Horde'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41048; set @magic_number = 60539;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Bristlefur snarls as it would lay eyes upon you, yet refrains from attacking. The beast appears to be quite bored on the ground, perhaps a snack would convince Bristlefur to take flight with you as its rider'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

update creature_template set type = 6 where entry = 60524 and 60523;
update item_template set name = 'Bone Chew Toy' where entry = 51751;
update quest_template set objectives = 'Bring 5 Chunks of Boar Meat, 3 Dwarven Mild Cheese and 1 Chew Toy to Kelton\'s Riding Gryphon in the Goldshire.' where entry = 60070;

replace into item_template values
 ('60383', '2', '10', 'Fleetmaster\'s Cane', '', '23590', '3', '0', '1', '307344', '76836', '17', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '27', '6', '21',
 '3', '9', '7', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2800', '0',
 '0', '131', '182', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '2', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60384', '2', '7', 'Fleet Scimitar', '', '4788', '3', '0', '1', '256668', '64167', '21', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1800', '0',
 '0', '54', '101', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '125', '0', '0', '0',
 '0', '0', '0', '13665', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '90', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60385', '4', '1', 'Westwind\'s Bicorne', '', '16545', '3', '0', '1', '87752', '21938', '1', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '18', '6', '7',
 '7', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '72', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '50', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60386', '4', '1', 'Sash of the Northrend Expedition', '', '27647', '3', '0', '1', '50956', '12739', '6', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '19', '7', '11',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '54', '0', '0', '0',
 '5', '0', '0', '9406', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '30', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60387', '4', '0', 'Sivaxis Tundra Shard', '', '21606', '3', '0', '1', '144428', '36107', '23', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '8', '7', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '5', '0', '23727', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60388', '4', '3', 'Mariner\'s Cuffs', '', '18352', '3', '0', '1', '85872', '21468', '9', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '10', '3', '7',
 '7', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '166', '0', '0', '0',
 '0', '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '40', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60389', '4', '0', 'The Frigid Star Ring', '', '9834', '4', '0', '1', '284972', '71243', '11', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '25', '0', '0', '18384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60390', '4', '2', 'Jacket of the Scarlet Admiral', '', '66128', '4', '0', '1', '190552', '47638', '5', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '26', '4', '8',
 '7', '11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '195', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '13665', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '120', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

delete from creature_loot_template where entry = 60525;
replace into creature_loot_template values
-- ADMIRAL BAREAN WESTWIND
(60525, 60383, 25, 1, 1, 1, 0),
(60525, 60384, 25, 1, 1, 1, 0),
(60525, 60385, 25, 1, 1, 1, 0),
(60525, 60386, 25, 1, 1, 1, 0),
(60525, 60387, 25, 1, 1, 1, 0),
(60525, 60388, 25, 1, 1, 1, 0),
(60525, 60389, 15, 2, 1, 1, 0),
(60525, 60390, 15, 2, 1, 1, 0);

-- Ways of Magic --
delete from quest_template where entry = 40280;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40279,40280,2,85,19,15,0,0,'Ways of Magic','Let me think for a second. Hmm... Why yes. <Nargelas starts writing a letter> I have an acquaintance of sorts in Undercity. The name is Pierce Shackelton calls himself a mage and is probably held up in the Magic Quarter. He owns me a favor, or rather he owns my wife a favor. Take this letter to him along with the box and find out what can be done with it.','Take the Box and letter to Pierce Shackleton in Undercity Magic Quarter.','And who might you be?','A letter for me? That ignorant son of a... Apologies, $c. That man certainly knows how to get on my nerves. I will do this for him, but this is the last time I deal with that accursed family.',60189,1,60190,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,270,68,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91712, 40280);
replace into creature_involvedrelation (id, quest) values (4567, 40280);

delete from item_template where entry = 60190;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60190,5567,'Nargelas\'s letter',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A tightly sealed letter addressed to Pierce.',0);

-- Into The Jaws --
delete from quest_template where entry = 40281;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40280,40281,2,85,25,15,0,0,'Into The Jaws','I have certainly not seen this kind of lock for quite a while. And now I can see why House Darlthos surrounded this whole ordeal in secrecy. What we have here is a type of blood magic, tho not as dangerous as some of it can be, it certainly requires the blood of the family member to activate it. The issue is that not many know how to wield this magic. The last mage I knew who used this type of magic is long dead.\n\nMelenas used to have a section of his own in a library deep in the Shadowfang Keep. Perhaps there you can find something of use to learn how to open this box. But beware, that place is overrun by the savage Worgen, so it is better if I hold on to this box until your return. We wouldn\'t want to lose both you and the box should you fail, right?','Find Melenas\'s belongings in the Shadowfang Keep Library and return them to Pierce.','Hmm...','You are persistent, to say at least. Let\'s see what Melenas had in store for us.',60191,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500,970,68,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (4567, 40281);
replace into creature_involvedrelation (id, quest) values (4567, 40281);

update quest_template set type = 81 where entry = 40281;

delete from item_template where entry = 60191;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60191,7914,'Melenas\'s Belongings',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A dusty old box filled with various magical goods and texts.',0);

delete from gameobject_template where entry = 2010856;
replace into gameobject_template values
(2010856,3,23432,'Melenas\'s Belongings',0,4,1,43,2010856,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from gameobject_loot_template where entry = 2010856;
replace into gameobject_loot_template values 
(2010856,60191,-100,0,1,1,0);

-- Darlthos Legacy --
delete from quest_template where entry = 40282;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40281,40282,2,85,19,15,0,0,'Darlthos Legacy','All this knowledge, just left to rot. You, my friend, have brought me a valuable gift. But I digress. You probably just want to find out how to open that box. Let\'s see.\n\n<Pierce rummages through Melenas\'s belongings until he finds an old scroll>.\n\nThere you are. Hah, it is easier to do than I thought. <Pierce hands you a scroll>. You will need to take these instructions to Duchess Grelda as her blood is required to open the box. Oh yes, the box. Here I told you that I would keep it safe. I heard that the Duchess is currently residing in a manor alongside the southern road from Tirisfal Uplands. Be well, and if you ever feel like you want to delve into another dangerous place to recover old magical goods, do let me know.','Bring the scroll and the box to Duchess Grelda at the Mannor alongside the southern road from Tirisfal Uplands.','Speak quickly.','I already received notice from my husband that he found someone capable enough to assist our noble house with such an important task. You certainly outdid yourself with this one. Ah, so it requires my blood to open it, a good thing I still have a bit of that left.\n\nBut this spell will be tricky. Anyways I doubt that you wish to stay here for days will I prepare the ritual. And the matter of your reward. I will allow you to pick one of the relics from my family armory. I hope that you find this reward suitable for the help you have provided us.',60189,1,60391,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,970,68,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60392,1,60393,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (4567, 40282);
replace into creature_involvedrelation (id, quest) values (91711, 40282);

delete from item_template where entry = 60391;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60391,1097,'Pierces Instructions',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Instructions on how to recreate an old spell of blood unlocking',0);

replace into item_template values
 ('60392', '2', '8', 'Sword of Laneron', 'Once wielded by a hero of the second war', '20151', '3', '0', '1', '13180', '3259', '17', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2800', '0',
 '0', '36', '74', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '80', '0', '0', '0', '0', '41', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60393', '4', '6', 'Shield of Mathela', 'Shield of the maiden of light', '21475', '3', '0', '1', '4548', '1137', '14', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', '557', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '4', '0', '0', '100', '0', '0', '0', '0', '41', '0', '0', '0',
 '0', '1', NULL);

update creature_template set script_name = 'npc_duke_nargelas' where entry = 91712;
update creature_template set script_name = 'npc_pierce_shackleton' where entry = 4567;

-- Azsharan Front --
delete from quest_template where entry = 40283;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40283,2,16,52,40,0,0,'Azsharan Front','It may not look like it, $c, but we are in middle of a warzone. Highborne ghosts that linger in the forests clash with the Naga, for reasons I don\'t understand, and I don\'t want to.n\n\One thing I know, that they are a danger for our outpost. They may be fighting each other for now, but it won\'t last forever. We should strike now, when they are weak.n\n\Go to Ruins of Eldranath. Kill the Naga, eliminate the Highborne. Show them, that Bloodfist Point is to be reckoned with.','Slay 6 Lingering Highborne, 10 Spitelash Serpent Guard, and 8 Spitelash Siren for Dag\'grak Bloodfist at Bloodfist Point in Azshara.','Bloodfist Point is at danger as long as the Naga slither and the Banshees wail in those forests.','Good. They will fear us.',0,0,0,0,0,0,0,0,7864,6,6194,10,6195,8,0,0,0,0,15000,4950,76,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60394,1,60395,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92024, 40283);
replace into creature_involvedrelation (id, quest) values (92024, 40283);

replace into item_template values
 ('60394', '4', '2', 'Crown of Unstable Nature', '', '18921', '2', '0', '1', '48952', '12238', '1', '-1', '-1', '61',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '13', '6', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '124', '0', '0', '5',
 '0', '0', '0', '9398', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '50', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60395', '4', '4', 'Bloodfist Vambracers', '', '26542', '2', '0', '1', '30552', '7638', '9', '-1', '-1', '61',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '249', '0', '0', '0',
 '0', '0', '0', '13665', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '40', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Blood and Glory! --
delete from quest_template where entry = 40284;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40284,2,16,52,42,0,0,'Blood and Glory!','South of Bloodfist Point, Satyrs have created an encampment. It has been a splinter in the eye for Bloodfist Point since the first day we arrived. Go, annihilate them, and bring me their horns.\n\nDo not be merciful, as they wouldn’t be for you. Kill all of them, leave no vile Satyr standing.','Obtain 12 Legashi Horns for Dag`grak Bloodfist at Bloodfist Point in Azshara.','The Legash Encampment is close to our base. I will be able to see you fighting, so don’t disappoint me. I want some fun.','Ha! I knew you had it! You are a strong $c, very strong. It reminds me of my youth, cutting down hordes of enemies!',60396,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4850,76,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92024, 40284);
replace into creature_involvedrelation (id, quest) values (92024, 40284);

delete from item_template where entry = 60396;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60396,1500,'Legashi Horns',12,1,2048,1,-1,-1,1,12,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 60396 and entry between 6200 and 6202;
replace into creature_loot_template values
(6200,60396,-80,1,1,1,0),
(6201,60396,-80,1,1,1,0),
(6202,60396,-80,1,1,1,0);

-- A Blademaster’s Request --
delete from quest_template where entry = 40285;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40285,2,16,52,45,0,0,'A Blademaster’s Request','My name is Katokar. Katokar Bladewind. I was a Blademaster of the Burning Blade. Now, I am a Blademaster of the Horde.\n\nI came to Azshara to avenge the death of a fallen comrade. During the Third War, he was here, fighting the Burning Legion. In the end, we won. Archimonde was defeated. But my friend died in a glorious battle.\n\nI have killed hundreds of demons since I came here, yet I am still restless. I need to find a Blade that belonged to him, he was a Blademaster like myself. A Blademaster has to be buried with his blade. Yet, my progress thus far has been fruitless. I found his broken corpse near the eastern shore, I know of a great tower watched by a keeper on the far eastern coast of Azshara, perhaps he may know more.','Speak with the \'keeper\' on the far eastern coast of Azshara, and return to Katokar with news.','I will find his Blade.','He met with my friend? I know I should be cautious to heed the words of a stranger, but I trust him.\n\nIf he says the last place he remembers seeing him was at the Temple of Arrkoran, then that must be it.',0,0,0,0,0,0,0,0,60340,1,0,0,0,0,0,0,0,0,0,4600,76,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Speak with keeper Iselus');

replace into creature_questrelation (id, quest) values (92024, 40285);
replace into creature_involvedrelation (id, quest) values (92024, 40285);

delete from creature_template where entry = 60340;
replace into creature_template (entry, name, display_id1) values (60340, 'quest_40285_dummy_triger', 328);

-- The Search for the Blade --
delete from quest_template where entry = 40286;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40285,40286,2,16,52,45,0,0,'The Search for the Blade','The Temple of Arrkoran...\n\n<Katokar would seem almost distant for a moment as his mind thought>.\n\n This must be the place $N, it must be. I have no other leads, venture deep within the Temple, and seek out his blade, if it is anywhere, then it must be there. You can find this temple far to the south east, it is massive, and cannot be missed. Be careful in your searching, I am sure a terrible evil lurks inside.','Search for the sword that could have belonged to a fallen Blademaster inside the Temple of Arrkoran.','I will find his Blade.','It’s broken...',60197,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12000,5150,76,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92024, 40286);
replace into creature_involvedrelation (id, quest) values (92024, 40286);

delete from item_template where entry = 60197;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60197,40029,'Broken Blademaster’s Sword',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Broken, but still sharp.',0);

delete from gameobject_template where entry = 2010857;
replace into gameobject_template values
(2010857,3,22683,'Distinct Sword',0,4,1,43,2010857,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from gameobject_loot_template where entry = 2010857;
replace into gameobject_loot_template values 
(2010857,60197,-100,0,1,1,0);