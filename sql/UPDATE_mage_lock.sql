-- MAGE
-- Quests
REPLACE INTO `quest_template` VALUES
(70000, 0, 2, -161, 60, 60, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7463, 0, 0, 0, 0, 0, 0, 'A special kind of summons', 'The Mage District is always so quiet, isn\'t it $N? Well if you are to ignore that heavily insistent calling to visit the Blue Recluse of course.\r\nYou have grown into a very capable mage, many whisper your name and some have spread rumors about you.\r\n$B\r\nAnd so it reached a very unlikely fellow, one I would tell you not to approach but after all it is your call to make.\r\nSitting atop his tower in Azshara, there\'s an Archmage that has heard of your growth and name and wishes to meet you personally.\r\nXylem is known to take in apprentices if they are found worthy enough of his teachings, maybe this has something to do with it.\r\n$B\r\nI advise you to be careful, the man is very dangerous.\r\nTo reach his tower you must find his apprentice, Sanath Lim-yo, he\'s known to be a very joyful and pleasant elf.', 'Visit Archmage Xylem in Azshara.', 'You have arrived. I have heard a great many deal of things about you, if at least half is true you will prove to be very fun to watch.', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(70001, 0, 2, -161, 60, 60, 0, 62, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 70000, 0, 0, 0, 0, 0, 0, 'Lost to the sands', 'You are the first I have personally summoned in years, $N, my expectations are quite big. You\'ve probably figured it out by now, I would like you to become my apprentice. But you must prove yourself worthy of my knowledge.\r\n$B\r\nGather your friends and your enemies and venture into the sands!\r\nIn the Ruined Temple of Ahn\'Qiraj a creature that devours magic may be found, its name is Moam, slay it and carve out the piece of obsidian on its forehead.\r\n$B\r\nSucceed and I will help you break out from your shell.', 'Bring a Perfect Obsidian Shard to Archmage Xylem.', 'Well done, $N, truly well done.\r\nYou have earned your place as my apprentice, for your first lesson you must read this tome. The survival of your group depends on you to be able to hand out as many refreshments as you can.\r\n$B\r\nRemember, you must not take anything lightly! Thirst may be your worst enemy under some circumstances.\r\nNow go study my newest apprentice.', 'While I may not be going anywhere my patience isn\'t one to be tested.', '', '', '', '', '', 83005, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83002, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Alliance First Quest start Stormwind
REPLACE INTO `creature_questrelation` VALUES ('2708','70000','10','10');
-- Horde First Quest start Undercity
REPLACE INTO `creature_questrelation` VALUES ('1498','70000','10','10');
-- Aliance and Horde First Quest end Azshara
REPLACE INTO `creature_involvedrelation` VALUES ('8379','70000','10','10');

-- Aliance and Horde start Second quest Azshara
REPLACE INTO `creature_questrelation` VALUES ('8379','70001','10','10');
-- Aliance and Horde end Second quest Azshara
REPLACE INTO `creature_involvedrelation` VALUES ('8379','70001','10','10');

-- Objectives
-- Item
REPLACE INTO `item_template` VALUES
('83005', '0', '12', '0', 'Perfect Obsidian Shard', 'Arcane Infused', '34261', '1', '0', '1', '0', '0', '0', '-1', '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL);

-- Item drop creature, Moam, Aq20
REPLACE INTO `creature_loot_template` VALUES 
('15340', '83005', '-100', '6', '1', '1', '0', '0', '10');


-- Reward, spell item and conjured mana/food item
REPLACE INTO `item_template` VALUES
(83002, 0, 0, 0, 'Refreshment Table', 'Begins a ritual that summons a Refreshment Table. Requires 3 players to right-click the portal and not move until the ritual is complete. Once complete players can use the Refreshment Table to acquire Conjured Mana Orange. Requires 2x [Arcane Powder].', 31838, 2, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46023, 0, 0, 0, 90000, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_mage_refreshment_table'),
(83004, 0, 0, 0, 'Conjured Mana Orange', '', 24568, 1, 2, 1, 0, 0, 0, -1, -1, 65, 60, 0, 0, 0, 0, 0, 0, 0, 80, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24707, 0, -1, 0, 0, 11, 1000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- Game Objects
REPLACE INTO `gameobject_template` VALUES
(1000083, 0, 1, 1327, 'Refreshment Portal', 35, 0, 0.7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_refreshment_portal'),
(1000084, 0, 18, 24184, 'Refreshment Table', 35, 0, 0.7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_refreshment_table');


-- WARLOCK
-- Quests
REPLACE INTO `quest_template` VALUES
('70002', '0', '2', '-61', '60', '60', '0', '0', '256', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '7583', '0', '0', '0', '0', '0', '0', 'The Guidance of a Mad Man', 'We have kept a close eye on your growth $N.$BYou have outwitted several demons under your command, conquered many foes, and kept a lot of allies at your side.$BThere is very little any of us may teach you at the moment, you have gone above and beyond any of our expectations.$B$BHowever, there is someone that may yet have something to teach you about the ways of the warlock.$BVenture to the Blasted Lands and seek the one called Daio, there is a slight chance you might\'ve already met.', 'Venture to the Tainted Scar and find Daio the Decrepit.', 'Welcome $C, I assume you are here to learn about the secrets of the Twisting Nether and how you may claim them as your own.$BI may have something to teach you, but it won\'t be easy in the slightest.', '', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
('70003', '0', '2', '-61', '60', '60', '0', '62', '256', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '64', '0', '70002', '0', '0', '0', '0', '0', '0', 'Draining the Soulflayer', 'Your task will not be an easy one but the reward will be worth the trouble.$BThe Jungle trolls of Stranglethorn Vale are attempting to bring back their God to life, Hakkar the Soulflayer, I assume someone already had tasked you to put a stop to them.$B$BWhat I ask is a bit different, bring me back his essence, you will know what I am talking about as you will see it.$BYou will need this Essence for what I am gonna teach you, know that it will be of great use to you and your allies.$B$BNow go, gather your allies, summon your demons and conquer that old pathetic God.', 'Slay Hakkar the Soulflayer and bring the Well Essence back to Daio the Decrepit.', '<Daio laughs maniacally>$B$BYou actually pulled that one off, who would\'ve thought. You\'re insane $N, maybe even more than this old fool.$BNow get ready it\'s time for a lesson not many are worthy of.', 'You will remind yourself of this feat for years to come, that is if you do come back.', '', '', '', '', '', '83006', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '83003', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);

-- Alliance First Quest start Stormwind
REPLACE INTO `creature_questrelation` VALUES ('6122','70002','10','10');
-- Horde First Quest start Undercity
REPLACE INTO `creature_questrelation` VALUES ('5675','70002','10','10');
-- Aliance and Horde First Quest end Blasted Lands
REPLACE INTO `creature_involvedrelation` VALUES ('14463','70002','10','10');

-- Aliance and Horde start Second quest Blasted Lands
REPLACE INTO `creature_questrelation` VALUES ('14463','70003','10','10');
-- Aliance and Horde end Second quest Blasted Lands
REPLACE INTO `creature_involvedrelation` VALUES ('14463','70003','10','10');


-- Objectives
-- Item
REPLACE INTO `item_template` VALUES
(83006, 0, 12, 0, 'Well Essence', 'Small fragment of a God\'s soul.', 3490, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- Item drop creature, Hakkar, Zg
REPLACE INTO `creature_loot_template` VALUES 
('14834', '83006', '-100', '6', '1', '1', '0', '0', '10');

-- Reward, spell item
REPLACE INTO `item_template` VALUES
(83003, 0, 0, 0, 'Soulwell Ritual', 'Begins a ritual that summons a Soulwell. Requires 3 players to right-click the portal and not move until the ritual is complete. Once complete players can use the Soulwell to acquire a Healthstone. Requires 5x [Soulshard].', 23291, 2, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46023, 0, 0, 0, 90000, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_warlock_soulwell_ritual');


-- Game Objects
REPLACE INTO `gameobject_template` VALUES
(1000087, 0, 1, 1327, 'Soulwell Portal', 35, 0, 0.7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_soulwell_portal'),
(1000089, 0, 18, 4972, 'Soulwell', 35, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_soulwell');
