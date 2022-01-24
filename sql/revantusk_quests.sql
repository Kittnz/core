-- This is a quest chain telling the story of Revantusk tribe joining the Horde:

-- Quest 1-5:
-- Appealing to the Horde. Should be a set of multiple quests. It's not written yet!

-- Quest 6:
-- Working but probably need a grammar check and general overhaul!
replace into quest_template values (80801, 2, 2041, 20, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80800, 0, 0, 0, 0, 0, 0, 'Da Lord of Da Forest', 'Da plans are set, $N all we need to do now is gain da Banshee\'s approval, it be no easy task but not impossible either.\n\nDa Revantusk have been patient for a long time mon, ya can\'t even start to imagine, we\'ve been without a leader, without a purpose for years but all of that ends now.\n\nTake da stairs and on da second floor of dis hut ya will finally meet our leader and da mastermind dat will aid us in convincing da Horde dat dey need us and we need dem.\n\nBe patient with our Warlord, he lived many years and went through much but no troll stands taller dan him.', 'Speak to Zul\'jin in Amani\'Alor.', '<Zul\'jin\'s eye moves up and down, analyzing you from head to toe.>\n\nYa stand strong, $N, me people tell me ya\'ve greatly aided dem in settling dis establishment, ya be a person of interest and someone I personally took an interest in.', 'Da Revantusk will be da Horde\'s strongest force in time.', NULL, 'Listen to Zul\'jin', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91320, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 893, 0, 0, 0, 0, 150, 0, 0, 0, 0, 475, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into creature_questrelation (id, quest) values (80802, 80801);
replace into creature_involvedrelation (id, quest) values (80867, 80801);
-- Quest 7:
replace into quest_template values (65006, 2, 331, 55, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Find Zo’hjik', 'Getting da Banshee’s approval will be hard, $n. She used to be a sworn enemy and I don’t hold her dear either, but sacrifices have to be made especially when it comes to ego. I will not let me own ego force me and me people in a dusty settlement hidden in da mountains.$B\n<Zul’jin’s eye sparkles with anger, you feel a certain tension coming from the old troll.>$B\n\nI’ve sent one of me own personal men to Tarren Mill, he investigated da ruins close to da bubble of Dalaran. It seems dey plan to strike up at her home and we will help her people and not let dat happen.$B\nMeet Zo’hjik in Tarren Mill and slay dese mages together. When ya done take Zo’hjik and meet me in front of da Ruins of Lordaeron.', 'Find Zo\'hjik', 'Ya mon?', 'Whatchu still doin\' ere?', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60370, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into creature_questrelation (id, quest) values (80867, 65006);
replace into creature_involvedrelation (id, quest) values (65138, 65006);
-- Quest 8:
replace into quest_template values (65007, 2, 36, 55, 60, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65006, 0, 0, 0, 65020, 1, 0, 'In Da Banshee’s Favor', 'Zul\'jin be countin\' on us to kill da mages at Dalaran. I be gatherin\' information on \'em and it points to dis High Elven Magister.$B\nLets be makin a dent in they ranks n\' bring our findins\' to Zul\'Jin.$BI be meetin ya by the broken down wagon by Dalaran. Use dis whistle when you be dere.', 'Cull the Dalaran forces with Zo\'hjik.', 'Aye, it be done.', 'Da Banshee will see da might of da Amani.', '', 'Kill 10 Dalaran Magi', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65139, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into creature_questrelation (id, quest) values (65138, 65007);
replace into creature_involvedrelation (id, quest) values (80867, 65007);
-- Quest 8:
-- Quest 9:
-- ...

	


