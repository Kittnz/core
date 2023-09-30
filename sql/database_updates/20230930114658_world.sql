-- Add item 54002 to the following creatures drop tables on its own loot group with a drop chance of 0.08%.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91784, 54002, 0.08, 9, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91785, 54002, 0.08, 9, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91786, 54002, 0.08, 9, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91787, 54002, 0.08, 9, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (91788, 54002, 0.08, 9, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2552 , 54002, 0.08, 9, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2553 , 54002, 0.08, 9, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2554 , 54002, 0.08, 9, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2555 , 54002, 0.08, 9, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2556 , 54002, 0.08, 9, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2557 , 54002, 0.08, 9, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2558 , 54002, 0.08, 9, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2650 , 54002, 0.08, 9, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (2651 , 54002, 0.08, 9, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (6252 , 54002, 0.08, 9, 1, 1, 0);
-- Add item 54008 to the following creatures drop tables on its own loot group with a drop chance of 0.08%.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (4341, 54008, 0.08, 9, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (4342, 54008, 0.08, 9, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (4343, 54008, 0.08, 9, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (4344, 54008, 0.08, 9, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (4345, 54008, 0.08, 9, 1, 1, 0);
-- Change the following items to Bind on equip.
update item_template set bonding = 2 where entry in (54000,54002,54004,54005,54008);
-- Grammar fix.
update broadcast_text set male_text = 'Baha! A true soldier of the Horde! One of grit and steel — those Kul Tirans are no match for you!' where entry = 66473;
update quest_template set details = 'Hello, and welcome to Maul\'ogg Refuge. We are a battered people, stuck in a constant fight for dominance. I am Haz\'gorg, and I am the head of the seers.$B$BLong have I seen the destruction of my people, foretold in long fever dreams and visions within the dark hours of twilight. I fear that the constant state of warfare we are engulfed in will do naught but bring our end.$B$BI ask of you to speak with Lord Cruk\'Zogg on my behalf, tell him that I believe this foolhardy Aggression will bring naught but ruin.', OfferRewardText = 'I see. Lord Cruk\'Zogg will bring us into ruin, I must come up with a new way to convince him.' where entry = 40264;
update quest_template set details = 'The SI:7 have means of communication that reach us quite fast and believe it or not they are very reliable.$B$BSparing you any further details you should know that a dwarven caravan that was meant to reach Aerie Peak never made it out of the Wetlands.$B$BThe caravan lays in ruins and you can only find the mutilated husks of what used to be dwarves.$B$BOur agents already poked around the zone but failed to find anything, they are currently trying to localize these newly recruited Scarlet zealots.$B$BI\'m not very sure how much of a detective you believe yourself to be, but I ask you to take a second look, maybe they missed something.$B$BIf you find the recruits, keep in mind that we aren\'t sure what manner of persuasion the Scarlets used to brainwash them, spare as many as you can and take them to Menethil.' where entry = 80730;
update quest_template set OfferRewardText = 'Bristelfur begins to smell your satchels with excitement and awaits the treats you\'ve brought her. After eating and a short moment of enjoying her toy, she seems barely incapable of keeping from flying off while waiting for you to get in the saddle.' where entry = 40298;
update quest_template set details = 'I have seen, a great many things, a great darkness that has enveloped not just this island, but all around us. My people did the bidding of a greater power, and followed it into the darkness willingly. We were nothing more then pawns until our demise.$B$BI did, however, see more than just misery, I saw the Seer of the Gor\'dosh ogres, a once old friend of mine. Perhaps it is he that can offer some wisdom, or suggestion on how to continue, maybe it is he, who has the answers.$B$BSeer Bol\'ukk resides within the Gor\'dosh Heights amongst the rest of his tribe, you should find him on Lapidis Isle far to the north, the Gor\'dosh Heights rest at its north western side.' where entry = 40266;
update quest_template set Objectives = 'Delve into the Stockades and find information on Martin Corinth. Report your findings to Mathias Shaw.' where entry = 55221;
update quest_template set OfferRewardText = 'Hmm.. So he believes that perhaps this source could be new to the region?$B$BI haven\'t thought of that as a possibility.' where entry = 55217;
update broadcast_text set male_text = 'Welcome to the Golden Moon Circus, the home of the Golden Moon Traveling Troupe.\n\nEnjoy yourselves as we entertain you through our magical acts and trickery - but be wary that we are not responsible for any burning, choking, drowning, money loss, body loss or loss of mind that might or might not happen to you.\n\nThank you for your understanding and have a pleasant day.' where entry = 60645;
