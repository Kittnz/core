DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190911150513');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190911150513');
-- Add your query below.

replace into item_template (entry, class, subclass, name, display_id, Quality, Flags, Buy_Count, Buy_Price, Sell_Price, Item_Level, stackable, bonding, stackable) values
(51000, 12, 0, 'Small Scorpid Carapace', 21365, 1, 0, 1, 0, 0, 0, 1, 4, 6),

(51001, 12, 0, 'Large Scorpid Carapace', 32820, 1, 0, 1, 0, 0, 0, 1, 4, 8);

update item_template set name = 'Scorched Heart' where entry = 4868;

replace into quest_template (entry, minlevel, questlevel, requiredraces, title, details, objectives, offerrewardtext, requestitemstext, prevquestid, nextquestid, rewitemid1, reqcreatureorgoid1, reqcreatureorgocount1, rewmoneymaxlevel, zoneorsort, rewitemcount1, reqitemid1, reqitemcount1) values
(810, 4, 5, 0, 'Study to Survive',
 'You would do well to learn how dangerous this land can be, $c.\n\nThe wildlife here can teach us such things... if we are wise and observant.\n\nThe scorpids are a perfect example of survival in Durotar. If you are to survive, it would be wise to take on some of their characteristics as your own. Their hardened carapaces can protect you from the harshness of the sun, or even a deadly weapon.\n\nBring me 6 Small Scorpid Carapaces from the Clattering Scorpids, $n, and I shall see about rewarding you justly.',
 'Bring 6 Small Scorpid Carapaces to Kor\'ghan in Sen\'jin Village.',
 'Bring me 6 Small Scorpid Carapaces from the Clattering Scorpids, $n, and I shall see about rewarding you justly.',
 'You got the carapaces?',
 0, -- PrevQuestId
 811, -- NextQuestId
 0, 0, 0, 450, 14, 1,
 51000, -- Required Item
 6     -- Amount
);

replace into creature_loot_template (entry, item, ChanceOrQuestChance, mincountOrRef, maxcount, groupid) values
(3125, 51000, -80, 1, 1, 1),

(3126, 51001, -80, 1, 1, 1),

(3225, 4868, -100, 1, 1, 1),
(3226, 4868, -100, 1, 1, 1),
(3227, 4868, -100, 1, 1, 1),
(3228, 4868, -100, 1, 1, 1),
(3231, 4868, -100, 1, 1, 1);

replace into gameobject_loot_template (entry, item, ChanceOrQuestChance, mincountOrRef, maxcount, groupid) values
(1000045, 2676, -100, 1, 2, 1);
update gameobject_template set data0=43, data1=1000045, data3=1;

replace into quest_template (entry, minlevel, questlevel, requiredraces, title, details, objectives, offerrewardtext, requestitemstext, prevquestid, nextquestid, rewitemid1, reqcreatureorgoid1, reqcreatureorgocount1, rewmoneymaxlevel, zoneorsort, rewitemcount1, reqitemid1, reqitemcount1) values
(811, 4, 5, 0, 'Unity is Strength',
 'One of the other traits of the scorpids is their fierce loyalty. They will protect one another if they are in danger--you\'ve probably already seen this behavior in your first scorpid hunt.\n\nYou would do well to heed that lesson and adapt it for yourself: we are stronger as one; we are weak when we are divided into many.\n\nBring me 8 Large Scorpid Carapaces from the Armored Scorpids and I shall reward you for learning this wisdom.',
 'Bring 8 Large Scorpid Carapaces to Kor\'ghan in Sen\'jin Village.',
 'Bring me 8 Large Scorpid Carapaces from the Armored Scorpids and I shall reward you for learning this wisdom.',
 'You got the carapaces?',
 810, -- PrevQuestId
 0, -- NextQuestId
 0, 0, 0, 450, 14, 1,
 51001, -- Required Item
 8     -- Amount
);

replace into quest_template (entry, minlevel, questlevel, requiredraces, title, details, objectives, offerrewardtext, requestitemstext, prevquestid, nextquestid, rewitemid1, reqcreatureorgoid1, reqcreatureorgocount1, rewmoneymaxlevel, zoneorsort, rewitemcount1, reqitemid1, reqitemcount1) values
(814, 4, 6, 0, 'Work for Food',
 'Cook and clean--that\'s all I do!\n\nYou want to eat, you get me some more meat! I don\'t have all day to hunt and prepare food for all these louses. You got to learn to pull your own weight around here if you wanna be treated equal.\n\nGet me some Chunks of Boar Meat if you want to make yourself useful... or you don\'t want to starve to death.',
 'Bring 10 Chunks of Boar Meat to Cook Torka in Razor Hill.',
 'Get me some Chunks of Boar Meat if you want to make yourself useful...',
 'You want to eat, you get me some more meat!',
 0, -- PrevQuestId
 0, -- NextQuestId
 0, 0, 0, 540, 14, 1,
 769, -- Required Item
 10  -- Amount
);

replace into quest_template (entry, minlevel, questlevel, requiredraces, title, details, objectives, offerrewardtext, requestitemstext, prevquestid, nextquestid, rewitemid1, reqcreatureorgoid1, reqcreatureorgocount1, rewmoneymaxlevel, zoneorsort, rewitemcount1, reqitemid1, reqitemcount1) values
(820, 4, 6, 0, 'What Do You Rely On?',
 'Truly a spirit of strength resides in your body--or maybe it was only luck, yes?\n\nThat is what the young rely on these days: luck... and the generosity of those more powerful than they. Not many take the time to find their own path. It\'s always begging for help... always the reward, and never the quest. I\'m sure you\'ll be the same.\n\nBut there is hope. I need one other thing for my potion, $n: 8 shimmerweed herbs. They can be found in Thunder Ridge to the northwest of Razor Hill.
 ',
 'Bring 8 Shimmerweed to Master Vornal in Sen\'jin Village..',
 'Bring me some Shimmerweed for my potion, please.',
 'You got the Shimmerweed?',
 0, -- PrevQuestId
 0, -- NextQuestId
 0, 0, 0, 780, 14, 1,
 2676, -- Required Item
 8  -- Amount
);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
