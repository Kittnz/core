-- This is a quest chain telling the story of Revantusk tribe joining the Horde:

-- Quest 1-5:
-- Appealing to the Horde. Should be a set of multiple quests. It's not written yet!

-- Quest 6:
-- Working but probably need a grammar check and general overhaul!
replace into quest_template values (80801, 2, 2041, 20, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80800, 0, 0, 0, 0, 0, 0, 'Da Lord of Da Forest', 'Da plans are set, $N all we need to do now is gain da Banshee\'s approval, it be no easy task but not impossible either.\n\nDa Revantusk have been patient for a long time mon, ya can\'t even start to imagine, we\'ve been without a leader, without a purpose for years but all of that ends now.\n\nTake da stairs and on da second floor of dis hut ya will finally meet our leader and da mastermind dat will aid us in convincing da Horde dat dey need us and we need dem.\n\nBe patient with our Warlord, he lived many years and went through much but no troll stands taller dan him.', 'Speak to Zul\'jin in Amani\'Alor.', '<Zul\'jin\'s eye moves up and down, analyzing you from head to toe.>\n\nYa stand strong, $N, me people tell me ya\'ve greatly aided dem in settling dis establishment, ya be a person of interest and someone I personally took an interest in.', 'Da Revantusk will be da Horde\'s strongest force in time.', NULL, 'Listen to Zul\'jin', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91320, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 893, 0, 0, 0, 0, 150, 0, 0, 0, 0, 475, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into creature_questrelation (id, quest) values (80802, 80801);
replace into creature_involvedrelation (id, quest) values (80867, 80801);
-- Quest 7 Find Zo’hjik:
replace into quest_template values (65006, 2, 331, 55, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Find Zo’hjik', 'Getting da Banshee’s approval will be hard, $n. She used to be a sworn enemy and I don’t hold her dear either, but sacrifices have to be made especially when it comes to ego. I will not let me own ego force me and me people in a dusty settlement hidden in da mountains.$B\n<Zul’jin’s eye sparkles with anger, you feel a certain tension coming from the old troll.>$B\n\nI’ve sent one of me own personal men to Tarren Mill, he investigated da ruins close to da bubble of Dalaran. It seems dey plan to strike up at her home and we will help her people and not let dat happen.$B\nMeet Zo’hjik in Tarren Mill and slay dese mages together. When ya done take Zo’hjik and meet me in front of da Ruins of Lordaeron.', 'Find Zo\'hjik', 'Ya mon?', 'Whatchu still doin\' ere?', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60370, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into creature_questrelation (id, quest) values (80867, 65006);
replace into creature_involvedrelation (id, quest) values (65138, 65006);
-- Quest 8 In Da Banshee’s Favor:
replace into quest_template values (65007, 2, 36, 55, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65006, 0, 0, 0, 65020, 1, 0, 'In Da Banshee’s Favor', 'Zul\'jin be countin\' on us to kill da mages at Dalaran. I be gatherin\' information on \'em and it points to dis High Elven Magister.$B\nLets be makin a dent in they ranks n\' bring our findins\' to Zul\'Jin.$BI be meetin ya by the broken down wagon by Dalaran. Use dis whistle when you be dere.', 'Cull the Dalaran forces with Zo\'hjik.', 'Aye, it be done.', 'Da Banshee will see da might of da Amani.', '', 'Kill 10 Dalaran Magi', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65139, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into creature_questrelation (id, quest) values (65138, 65007);
replace into creature_involvedrelation (id, quest) values (65143, 65007);
-- Quest 9 An audience with the Queen:
REPLACE INTO `quest_template` VALUES (65008, 2, 1497, 55, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65007, 0, 0, 0, 0, 0, 0, 'An audience with the Queen', 'Here we are, $n. Moment of truth.$B\nDa Banshee will not be happy to see us. We barely made it in with da help of a trusted source.$B\n\n<Zul’jin winks at you.>$B\n\nIn any case, ya was dere to slay dem and ya were da one to bring da parchment to her, so it be only right for ya to stand with me.\nGet ready mon, dis won’t be pleasant.', 'Stay close to Zul’jin as he speaks to Sylvannas.', 'Dat damn witch didn’t change one bit from how she was in life. We convinced her but she’ll still remain a thorn in our side.$B\r\nNow tell me what happened to Zo’hijk.', 'Da Revantusk need da approval of all da Horde’s races for us to officially become a member.', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into creature_questrelation (id, quest) values (65143, 65008);
replace into creature_involvedrelation (id, quest) values (65143, 65008);

REPLACE INTO `gameobject_template` VALUES (4000000, 8, 192, 'Campfire - Zuljin', 0, 0, 1, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65007, 1, '');
REPLACE INTO `creature_template` VALUES (65143, 18082, 0, 0, 0, 'Zul\'jin', 'Amani Warlord', 60108, 60, 60, 537240, 537240, 17038, 17038, 3400, 1494, 3, 1, 1.14286, 1.3, 20, 5, 85, 3, 1, 869, 990, 0, 272, 1, 2000, 2000, 2, 4096, 0, 0, 0, 0, 0, 0, 62.016, 85.272, 100, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17289, 17820, 20463, 16097, 105400, 0, 0, 0, 'EventAI', 0, 3, 0, 1, 3, 0, 0, 0, 2764783451, 0, 557064, 65007, 1, 'npc_zuljin');
REPLACE INTO `creature_template` VALUES (65144, 14760, 14762, 14761, 14763, 'Revantusk Guard', NULL, 0, 55, 55, 3398, 3398, 0, 0, 7700, 1495, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 168, 197, 0, 248, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 794, 794, '', 0, 3, 0, 0, 3, 14730, 0, 0, 0, 0, 525312, 0, 1, '');

REPLACE INTO `creature` (`id`, `id2`, `id3`, `id4`, `map`, `display_id`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (65143, 0, 0, 0, 0, 0, 0, 1884.03, 222.599, 58.9554, 0.782592, 25, 25, 0, 100, 100, 0, 0, 0);
REPLACE INTO `creature` (`id`, `id2`, `id3`, `id4`, `map`, `display_id`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (65144, 0, 0, 0, 0, 0, 14730, 1888.21, 222.234, 58.0397, 2.37365, 25, 25, 0, 100, 100, 0, 0, 0);
REPLACE INTO `creature` (`id`, `id2`, `id3`, `id4`, `map`, `display_id`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (65144, 0, 0, 0, 0, 0, 14730, 1884.28, 227.057, 58.4595, 5.46671, 25, 25, 0, 100, 100, 0, 0, 0);

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `phase_quest_action`, `script_name`) VALUES (4000001, 1, 23467, 'Portal to Undercity', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '');



-- Quest 10 Bringing them home:
REPLACE INTO `quest_template` VALUES (65009, 2, 1497, 55, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65008, 0, 0, 0, 0, 0, 0, 'Bringing them home', 'Now dat we’ve formally joined da Horde I can say dat Amani’Alor turned out to become a proper settlement for my people. Dis place will age nicely and I be sure it will serve its purpose.$B\nI be pleased mon, but at the same time, I be not. Ya see da Amani used to be big, very big, da Revantusk are merely a force of what it once was. With me army defending Zul’Aman and da Revantusk trying to get the favour of da Horde we are left with little numbers to march on da dead.$BI had hoped de old tribes would come together but dey be foolish and blind, still following the Atal’ai teaching and sending demselves deep into the Blood God’s claws.$B \n\nBut no more, $n, either dey join me and bring glory to da legacy of de Amani or dey lay dead! I will be sending emissaries to the Witherbark in Arathi, dey seem lost, but de Vilebranch must be cleansed, meet me at the Altar of Zul.$B\nTogether we will either welcome dem into da Horde or cut dem from where dey be standing.', 'Escort Zul’jin to the Altar of Zul & Slay the Avatar of Hakkar', 'Dey will hear about dis, $n, all of dem. From Jin’thalor to de Arathi Highlands, da forest trolls will come and join back into de Amani. And dose who don’t will be hunted by us.$B\r\nEveryone will be speaking of dis day in da future! Ya have witnessed history today, $n. Go rest, I will be calling for ya later for one last time.', 'De Amani must be unified once more, divided we be less stronger.', '', 'Escort Zul’jin to the Altar of Zul', 'Slay the Avatar of Hakkar', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into creature_questrelation (id, quest) values (80867, 65009);
replace into creature_involvedrelation (id, quest) values (80867, 65009);
-- Quest 11 The Horde's Council:
REPLACE INTO `quest_template` VALUES (65010, 2, 0, 55, 60, 55, 0, 0, 0, 0, 0, 0, 0, 893, 42000, 0, 0, 0, 0, 0, 0, 65009, 0, 0, 0, 0, 0, 0, 'The Horde\'s Council', 'I told ya when we met last time I be needin\' ya help once more. Ya grew much stronger dan before. Ol\' Zul\'jin is pleased, \'cause what we about to do will require yer newfound strength!$B\nAn eagle flew back from Zul\'Aman, long time passed since it left, hurt and sluggish it came to let us know of da immediate threat that will fall onto Zul\'Aman. By da Loa I hope it be not too late, death comes for da Amani mon and we be ready to face it, we have to be.$BMeet me in Orgrimmar at da Warchief\'s home, da leaders of da Horde already sent me message, we will discuss da plan dere.', 'Meet Zul\'jin in Orgrimmar and bear witness to the council.', 'I was not ready to see da approval of all of dem, but we be on da good path.', 'Dere be no time to waste.', '', 'Meet Zul\'jin in Orgrimmar', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 893, 0, 0, 0, 0, 500, 0, 0, 0, 0, 2578, 4281, 4281, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into creature_questrelation (id, quest) values (80867, 65010);
replace into creature_involvedrelation (id, quest) values (80867, 65010);
-- Quest 12 Da Amani and Da Darkspear:
REPLACE INTO `quest_template` VALUES (65011, 2, 0, 55, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65010, 0, 0, 0, 0, 0, 0, 'Da Amani and Da Darkspear', 'Before we leave for Zul\'Aman me people wish to worship da Loa for good fortune. In good faith I want to invite Vol\'jin of da Darkspear to join us for the ceremony.$BTroll tribes stopped being on good terms a long time ago, but under the Horde\'s banner a fraternity will be born between da Amani and da Darkspear, I am sure of it.$BHe\'s expected in Amani\'Alor, go and invite him personally, when you return we will be discussin\' da battle plan.', 'Invite Vol\'jin to Amani\'Alor', 'Ol\' Zul\'jin call for me for a worship?', 'What can I do for ya mon?', '', 'Speak with Vol\'Jin', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 893, 0, 0, 0, 0, 500, 0, 0, 0, 0, 2578, 22035, 22035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into creature_questrelation (id, quest) values (80867, 65011);
replace into creature_involvedrelation (id, quest) values (10540, 65011);
-- Quest 13 In da Name of Zul'Aman:
REPLACE INTO `quest_template` VALUES (65012, 2, 0, 55, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65010, 0, 0, 0, 0, 0, 0, 'In da Name of Zul\'Aman', 'Da time has come, $n, we shared a new bond with our Darkspear siblings and received the blessing of our Loa, it be time to take flight to da Ghostlands, da lands of de Amani and me people wait for our aid.$B\r\nDe Durotar Labor Union has prepared us a zeppelin dat will take a small force to our objective, dey don’t expect da thing to last more dan our arrival and it’d be wise to expect some loss in our numbers.$B\r\nRemind me to thank da leader of dese goblins when we return mon. Go find da one called Brizzlik Longfloat, he be da “ace” dat handles da zeppelin, or whatever he said.', 'Find Brizzlik Longfloat to reach Zul’Aman', 'Da advance ended for now, we seem to have been enough to defend our home, thanks to you and the Horde mon.$BNow we be waitin’ for da main force, da fleet will arrive in a few days in da Amani port. ', 'Ya make me feel old mon, but it brings me pleasure to have such an ally.', '', 'Kill 30 Scourge Minions', 'Kill Groxizk', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 893, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 2578, 23759, 23759, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into creature_questrelation (id, quest) values (80867, 65012);
replace into creature_involvedrelation (id, quest) values (80867, 65012);


