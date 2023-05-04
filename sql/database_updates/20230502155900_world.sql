-- Gilneas City Reward Fixes
update item_template set bonding = 2 where entry = 61336; -- Knife Juggler Gloves
update item_template set display_id = 27096 where entry = 61335; -- Dragonbane Pauldrons
update item_template set display_id = 31899 where entry = 61312;-- The Black Pendant
update item_template set display_id = 31616 where entry = 61332;-- Ring of Electrical Binding
-- Kara10 Display
update item_template set display_id = 66384 where entry = 61332;-- Ring of Electrical Binding
-- Gilneas City Reward Fixes
update item_template set bonding = 2 where entry = 61336; -- Knife Juggler Gloves
update item_template set display_id = 24966 where entry = 61335; -- Dragonbane Pauldrons
update item_template set display_id = 31899 where entry = 61312; -- The Black Pendant
update item_template set display_id = 31616 where entry = 61332; -- Ring of Electrical Binding
update item_template set spellid_1 = 45421, spelltrigger_1 = 1, spellid_2 = 13679, spelltrigger_2 = 1 where entry = 61328; -- Wolfblood
update item_template set spellid_1 = 45420, spelltrigger_1 = 1 where entry = 61313; -- Greymane Helmet
update item_template set spellid_1 = 45420, spelltrigger_1 = 1 where entry = 61324; -- Greymane Shoulders
update item_template set spellid_1 = 45420, spelltrigger_1 = 1 where entry = 61302; -- Wolfheart Necklace
update item_template set spellid_1 = 45420, spelltrigger_1 = 1, stat_value1 = 3, stat_value2 = 0 where entry = 61311; -- Sutherland's Cuffs
update item_template set spellid_1 = 45420, spelltrigger_1 = 1, stat_type1 = 3 where entry = 61331; -- Blackcowl Sash
-- Dimbil Stormshot (Entry 61443), change display ID to 4895.
update creature_template set display_id1 = 4895 where entry = 61443;
-- Automated Servitor (entry 61432) , set display ID to 6889.
update creature_template set display_id1 = 6889 where entry = 61432;
-- NPC Greymane Instigator Entry 61366, replace display ID 13 with 20276.
update creature_template set display_id1 = 20275, display_id2 = 20276, display_id3 = 0, display_id4 = 0 where entry = 61366;
-- The scales of these npcs were overwritten, please reset them back to scale 1: 61419, 61418, 61417, 61398.
update creature_template set scale = 1 where entry in (61419, 61418, 61417, 61398);
-- Item entry 61214 change display ID to 22457.
update item_template set display_id = 22457 where entry = 61214;
-- Item entry 61339 change display ID to 9577.
update item_template set display_id = 9577 where entry = 61339;

REPLACE INTO creature_template VALUES
(61468, 18768, 0, 0, 0, 0, 'Winlassah Dawnstar', NULL, 0, 60, 60, 4120, 4120, 0, 0, 3640, 1354, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61469, 18777, 0, 0, 0, 0, 'Shanyra El\'aluna', 'Innkeeper', 0, 22, 22, 573, 573, 0, 0, 922, 1354, 131, 1, 1.14286, 1, 18, 5, 0, 0, 1, 70, 86, 0, 98, 1, 2500, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 35.6224, 48.9808, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61470, 18762, 0, 0, 0, 0, 'Kanarius Spellstalker', 'Keeper of Lore', 0, 60, 60, 4120, 4120, 0, 0, 3640, 1354, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61471, 18763, 0, 0, 0, 0, 'Leoserith Spellbinder', 'Spellsmith', 0, 60, 60, 4120, 4120, 0, 0, 3640, 1354, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61472, 18764, 0, 0, 0, 0, 'Toryn Khadinus', 'Spellsmith', 0, 60, 60, 4120, 4120, 0, 0, 3640, 1354, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61473, 18765, 0, 0, 0, 0, 'Kalara Shadebough', 'Astromancer', 0, 60, 60, 4120, 4120, 0, 0, 3640, 1354, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61474, 18769, 0, 0, 0, 0, 'Talorum Autumnsleaf', 'Horde Representative', 0, 60, 60, 4120, 4120, 0, 0, 3640, 35, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61475, 18770, 0, 0, 0, 0, 'Anarea Sundawn', 'Alliance Representative', 0, 60, 60, 4120, 4120, 0, 0, 3640, 35, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61476, 14386, 0, 0, 0, 0, 'Grand Arcanist Azj\'Tordin', NULL, 0, 62, 62, 4240, 4240, 0, 0, 3640, 1354, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61477, 18022, 0, 0, 0, 0, 'Defender of Ronae\'thalas', 'Astromancer', 0, 60, 60, 4120, 4120, 0, 0, 3640, 1354, 0, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61478, 18767, 0, 0, 0, 0, 'Talavana Andalorah', 'General Goods', 0, 48, 48, 2398, 2398, 0, 0, 2753, 1354, 4, 1, 1.14286, 1, 20, 5, 40, 0, 1, 74, 96, 0, 208, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.744, 86.273, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61479, 18766, 0, 0, 0, 0, 'Illanaya Spellwind', 'Food & Drinks', 0, 52, 52, 3082, 3082, 0, 0, 2669, 1354, 4, 1, 1.14286, 1, 20, 5, 40, 0, 1, 106, 136, 0, 234, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61480, 18386, 0, 0, 0, 0, 'Brilliant Wind Serpent', NULL, 0, 58, 58, 3875, 3875, 0, 0, 3435, 14, 0, 1, 1.42857, 1, 18, 5, 0, 0, 1, 154, 184, 0, 262, 1, 2000, 2000, 2, 0, 0, 27, 0, 0, 0, 0, 70.4704, 96.8968, 100, 1, 1, 61480, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41459; set @magic_number = 61476;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Ah, my friend, it is good to meet you here. As you can see, the seeds of a new home for my people have been sown. I must confess, I fear what the future holds. There are so few of us left and there is no guarantee we will survive the coming years.$B$BNonetheless, we have come far, farther than I dared hope. After everything we have been through, I cannot, will not so easily surrender to any fate that sees my people in ruin.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41458; set @magic_number = 61475;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'This is amazing! To think that my ancestry lies with these people, that the Shen\'dralar are my kin! They take for granted all the knowledge that the world has lost. We stand to learn a great deal from the Shen\'dralar, and it is imperative that we remain in their good graces and render them any aid they seek.$B$BTheir knowledge will save my people, I just know it.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41457; set @magic_number = 61474;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Can you even begin to comprehend how powerful these elves are, $r? Their power resides in knowledge, a knowledge that would highly benefit both myself and the Forsaken as a whole.$B$BWere I to still breathe the same air as they, I would be breathless with excitement. And yet despite my elven nature, I still feel the compulsion to claim their power as my own. By aiding them, we shall aid ourselves. Come, let us see to their needs.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41456; set @magic_number = 61473;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The position of the stars has changed since I was young, but they nonetheless hold many secrets that influence the world we see even today. I believe we can use this power to our advantage. Mayhaps Toryn will take notice of my efforts as well.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41455; set @magic_number = 61472;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Greetings $r. I can see that you have your reservations about our abilities, but make no mistake, Ronae\'thalas will become a haven all our people can be proud of. Those who pledge aid will be rewarded, and if Azj\'tordin trusts you, then so shall I.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41454; set @magic_number = 61471;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am tasked with both the creation and maintenance of our magical equipment and arcane defenders. It is no easy task, but I do hope that in time my toil will make Shanyra\'s life that much more tenable. Any help is, of course, appreciated in this matter.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41453; set @magic_number = 61470;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We lost everything we had when we chose to leave the vault and library behind, but better to sacrifice material goods than to struggle and risk death before the madness of the Prince. I have already transcribed much from memory, but I could always use help in tracking down any forgotten annals.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41452; set @magic_number = 61469;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I have done all in my ability to make this place presentable, but I was not bred for this. I am a noble of high standing, and yet here I toil like a commoner accommodating savages. Toryn isn\'t even gazing in my direction any more and my robe is soiled!$B$B... My apologies. It is unbecoming of a noble to make such an outburst. Times are hard on all of us. Now, what can I do for you?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41451; set @magic_number = 61468;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'It is crucial that we maintain good relations with our neighbors and the great powers. We have lost too much due to the Prince\'s madness. If we are to survive, then we must make friends. I hope I can count on your assistance.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Vendor list: Illanaya Spellwind.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 1179, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 4540, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 4541, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 4542, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 4544, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 4601, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 8766, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 8950, 0, 0, 0, 0);
-- Vendor list: Talavana Andalorah.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 117, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 1179, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 2287, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 2515, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 2519, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 3030, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 3033, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 3770, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 3771, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 4470, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 4471, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 4497, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 4498, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 4599, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 8766, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 8952, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 11284, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 11285, 0, 0, 0, 0);
-- Quest 40600, change short description to the following : Bring 7 Greater Tarantula Venom to Larry Ryder at the Pig and Whistle in Stormwind.
update quest_template set objectives = 'Bring 7 Greater Tarantula Venom to Larry Ryder at the Pig and Whistle in Stormwind.' where entry = 40600;
-- Item entry 61240 set sheath to shield on the back.
update item_template set sheath = 4 where entry = 61240;
-- Item entry 61209 change display ID to 20795.
update item_template set display_id = 20795 where entry = 61209;
-- item entry 61224 Dreamshard Elixir, set charges to 1.
update item_template set spellcharges_1 = 1 where entry = 61224;
-- Item entry 61225 Lucidity Potion, set charges to 1.
update item_template set spellcharges_1 = 1 where entry = 61225;
-- Gobject entry 2020000 , rename to Joshua the Redeemer
update gameobject_template set name = 'Joshua the Redeemer' where entry = 2020000;
-- Set scale of object 'Dawnstone Plans' entry 2020015 to 0.5, set respawn time to 10 seconds.
update gameobject_template set size = 0.5 where entry = 2020015;
update gameobject set spawntimesecsmin = 10, spawntimesecsmax = 10 where ID = 2020015;

-- New items for PTR:
-- Greymane Gloves.
replace into item_template values
 ('61376', '4', '4', 'Greymane Gauntlets', '', '17474', '2', '0', '1', '11924', '2981', '10', '-1', '-1', '45',
 '40', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '169', '0', '0', '0',
 '0', '0', '0', '45420', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '6', '0', '0', '0', '40', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);
-- Greymane Boots.
replace into item_template values
 ('61377', '4', '4', 'Greymane Sabatons', '', '17473', '2', '0', '1', '15044', '3761', '8', '-1', '-1', '47',
 '42', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '8', '6', '5',
 '4', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '238', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '6', '0', '0', '0', '55', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);
-- Greymane Leggings.
replace into item_template values
 ('61378', '4', '4', 'Greymane Legplates', '', '7688', '2', '0', '1', '35394', '5899', '7', '-1', '-1', '45',
 '40', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '7', '6', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '291', '0', '0', '0',
 '0', '0', '0', '13665', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '6', '0', '0', '0', '85', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);
-- Greymane Bracers.
replace into item_template values
 ('61379', '4', '4', 'Greymane Vambraces', '', '35555', '2', '0', '1', '12168', '3042', '9', '-1', '-1', '47',
 '42', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '6', '6', '4',
 '4', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '170', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '6', '0', '0', '0', '40', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

