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
 ('60333', '0', '2', '10', 'Azshara Keepers Staff', '', '33163', '3', '0', '1', '274856', '68714', '17', '-1', '-1',
 '62', '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '20', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2200',
 '0', '0', '87', '144', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '20', '13604', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '2', '2', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0',
 '0', '0', '1');

replace into item_template values
 ('60334', '0', '4', '0', 'Ring of Eldara', '', '31800', '3', '0', '1', '59468', '14867', '11', '-1', '-1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '8', '3',
 '3', '7', '6', '6', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0',
 '0', '0', '1');

-- To Sorrowguard Keep --
delete from quest_template where entry = 40255;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40255,2,1519,35,28,0,0,'To Sorrowguard Keep','A while ago a band of soldiers had departed out to the Swamp of Sorrows. They were tasked with the reclamation of an old keep that laid within the mountains near the western edge of the swamp. Paladin Janathos was the leader of this group, and asked me to say for him and his men a blessing.\n\nNo doubt they will need help out there and perhaps a fresh set of hands could be welcomed. Sorrowguard Keep should be just near the entrance to Deadwind Pass, infact it looms over it. It was once used to protect the kingdoms border, believe it or not.\n\nIf you see Janathos, tell him I said hello!','Deliver Biggs Report to Watch Paladin Janathos.','Hello?','Brother Kristoff asked for you to assist us, he is a kind man, and faithful to the light. We could use all the help we could get around here, this bastion is in a state of disrepair, not to mention the threats all around.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,600,72,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (1444, 40255);
replace into creature_involvedrelation (id, quest) values (92017, 40255);