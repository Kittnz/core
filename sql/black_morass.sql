UPDATE creature_template SET display_id1 = 18040 WHERE entry = 65105;

UPDATE creature SET spawntimesecsmin = 14400 WHERE id = 65100;

REPLACE INTO `gameobject` VALUES (4013209, 2010845, 269, -1430, 7010, -14.36, 0.966082, 0, 0, 0.464474, 0.885587, 300, 300, 100, 1, 0, 0);

UPDATE creature_template SET scale = 1.5 WHERE entry = 65102;
UPDATE creature_template SET scale = 2 WHERE entry = 65114;
UPDATE creature_template SET display_id1 = 18592 WHERE entry = 65105;

REPLACE INTO `gameobject_template` VALUES (3000513, 1, 5692, 'Medium Force Field', 35, 38, 0.1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Replace faction ID requirement for reputation rewards:

UPDATE item_template SET required_reputation_faction = 1007, required_reputation_rank = 6, max_count = 1 WHERE entry = 61001; -- Claw of the Infinite
UPDATE item_template SET required_reputation_faction = 1007, required_reputation_rank = 6, max_count = 1 WHERE entry = 61002; -- Robe of the Custodian
UPDATE item_template SET required_reputation_faction = 1007, required_reputation_rank = 5, max_count = 1 WHERE entry = 61003; -- Timeskipper's Helm of Alacrity
UPDATE item_template SET required_reputation_faction = 1007, required_reputation_rank = 5, max_count = 1 WHERE entry = 61004; -- Sandswept Ring of Arcanum
UPDATE item_template SET required_reputation_faction = 1007, required_reputation_rank = 5, max_count = 1 WHERE entry = 61005; -- Boots of Flowing Sands
UPDATE item_template SET required_reputation_faction = 1007, required_reputation_rank = 6, max_count = 1 WHERE entry = 61013; -- Gauntlets of Temporal Guidance
UPDATE item_template SET required_reputation_faction = 1007, required_reputation_rank = 7, max_count = 1 WHERE entry = 61006; -- Blade of Infinite Mysteries
UPDATE item_template SET required_reputation_faction = 1007, required_reputation_rank = 7, max_count = 1 WHERE entry = 61007; -- Temporal Bronze Boots
UPDATE item_template SET required_reputation_faction = 1007, required_reputation_rank = 7, max_count = 1 WHERE entry = 61012; -- Shard of Eternity
UPDATE item_template SET required_reputation_faction = 1007, required_reputation_rank = 7, max_count = 1 WHERE entry = 61009; -- Time-Shifting Wheel
UPDATE item_template SET required_reputation_faction = 1007, required_reputation_rank = 7, max_count = 1 WHERE entry = 61010; -- Wing of the Time-Lord
UPDATE item_template SET required_reputation_faction = 1007, required_reputation_rank = 7, max_count = 1 WHERE entry = 61011; -- Flintlocke's Hand Cannon
UPDATE item_template SET required_reputation_faction = 1007, required_reputation_rank = 7, max_count = 1 WHERE entry = 51043; -- Void-Linked Satchel
UPDATE item_template SET required_reputation_faction = 1007, required_reputation_rank = 4, max_count = 1 WHERE entry = 61000; -- Time-Worn Rune
UPDATE item_template SET required_reputation_faction = 1007, required_reputation_rank = 6, max_count = 1 WHERE entry = 50070; -- Bronze Whelpling
UPDATE item_template SET required_reputation_faction = 1007, required_reputation_rank = 7, max_count = 1 WHERE entry = 51252; -- Bronze Drake
UPDATE item_template SET required_reputation_faction = 1007, required_reputation_rank = 7, max_count = 1, buy_price = 50000, sell_price = 25000 WHERE entry = 80300; -- Wardens of Time Tabard

REPLACE INTO npc_vendor VALUES (80943, 51043, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (80943, 61000, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (80943, 61001, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (80943, 61002, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (80943, 61003, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (80943, 61004, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (80943, 61006, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (80943, 61007, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (80943, 61009, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (80943, 61010, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (80943, 61011, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (80943, 61012, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (80943, 61013, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (80943, 80300, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (80943, 51252, 0, 0, 0, 0);

-- Time-lost Baubles:

REPLACE INTO npc_vendor VALUES (65014, 50070, 0, 0, 0, 0); -- Bronze Whelpling

UPDATE creature_template SET npc_flags = 7 where entry = 80943;

set @gossip_menu_id = 20100; set @magic_number = 80943;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Are you looking to gain standing with the Wardens, mortal? Are you looking to keep harmony within the strands of time?\n\nLook no further then here, each day we remain idle is another day that chaos begins to tear apart order.\n\nThe forces that seek to undermine our work will not stop. There is always more that can be done, and you are here for that very reason, are you not?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 20101; set @magic_number = 65003;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I don\'t suppose you\'re here for a mere chit-chat. Take a rest, spend your coins and leave me be, mortal.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO creature_onkill_reputation (creature_id, rewonkillrepfaction1, maxstanding1, rewonkillrepvalue1) values (65113, 1007, 5, 50);
REPLACE INTO creature_onkill_reputation (creature_id, rewonkillrepfaction1, maxstanding1, rewonkillrepvalue1) values (65114, 1007, 5, 75);
REPLACE INTO creature_onkill_reputation (creature_id, rewonkillrepfaction1, maxstanding1, rewonkillrepvalue1) values (65116, 1007, 5, 100);
REPLACE INTO creature_onkill_reputation (creature_id, rewonkillrepfaction1, maxstanding1, rewonkillrepvalue1) values (65121, 1007, 5, 100);
REPLACE INTO creature_onkill_reputation (creature_id, rewonkillrepfaction1, maxstanding1, rewonkillrepvalue1) values (65125, 1007, 5, 50);

REPLACE INTO creature_onkill_reputation (creature_id, rewonkillrepfaction1, maxstanding1, rewonkillrepvalue1) values (65127	, 1007, 4, 5);
REPLACE INTO creature_onkill_reputation (creature_id, rewonkillrepfaction1, maxstanding1, rewonkillrepvalue1) values (65101, 1007, 4, 5);
REPLACE INTO creature_onkill_reputation (creature_id, rewonkillrepfaction1, maxstanding1, rewonkillrepvalue1) values (65102, 1007, 4, 5);
REPLACE INTO creature_onkill_reputation (creature_id, rewonkillrepfaction1, maxstanding1, rewonkillrepvalue1) values (65103, 1007, 4, 2);
REPLACE INTO creature_onkill_reputation (creature_id, rewonkillrepfaction1, maxstanding1, rewonkillrepvalue1) values (65105, 1007, 4, 10);
REPLACE INTO creature_onkill_reputation (creature_id, rewonkillrepfaction1, maxstanding1, rewonkillrepvalue1) values (50566, 1007, 4, 7);
REPLACE INTO creature_onkill_reputation (creature_id, rewonkillrepfaction1, maxstanding1, rewonkillrepvalue1) values (65108, 1007, 4, 5);
REPLACE INTO creature_onkill_reputation (creature_id, rewonkillrepfaction1, maxstanding1, rewonkillrepvalue1) values (65107, 1007, 4, 5);
REPLACE INTO creature_onkill_reputation (creature_id, rewonkillrepfaction1, maxstanding1, rewonkillrepvalue1) values (65107, 1007, 4, 5);
REPLACE INTO creature_onkill_reputation (creature_id, rewonkillrepfaction1, maxstanding1, rewonkillrepvalue1) values (65115, 1007, 4, 2);

DELETE FROM quest_template WHERE entry in (80600, 80601, 80602, 80603);
DELETE FROM creature_questrelation WHERE quest in (80600, 80601, 80602, 80603);
DELETE FROM creature_involvedrelation WHERE quest in (80600, 80601, 80602, 80603);

UPDATE creature_template set subname = 'Wardens of Time' where subname = 'Keepers of Time';

UPDATE item_template set buy_price = 7500, sell_price = 1500 where entry = 61000;
UPDATE item_template set description = 'Lost time is never found again.' where entry = 51252;

