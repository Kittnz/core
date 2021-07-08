replace into broadcast_text (entry, male_text) values 
(51673, 'Welcome to the Caverns of Time, $N.\n\nYou have been granted permission to enter due to what you have done or what you will do.\n\nThe Caverns of Time are the home of my people, the Bronze Dragonflight. We are the guardians of time, and thus our home is connected to the time stream.\n\nMake no mistake Mortal, this place is not for a vacation. If you go rogue expect to never leave. In the Caverns you follow our rules and directions to the letter.\n\nIf you understand then I will teleport inside, but remember, we can see what you intend to do before you do it.'); 
replace into npc_text (ID, BroadcastTextID0) values (51673, 51673);

replace into broadcast_text (entry, male_text) values 
(51674, 'The path to the caverns is long arduous. Mayhap I can ease your burdens and take you deeper in the Cavern.'); 
replace into npc_text (ID, BroadcastTextID0) values (51674, 51674);

UPDATE `quest_template` SET `Details`='We\'ve done it, $n! With the help of the druids, we have found a cure to the Dreadmist Poison affecting the Barrens. It will take time for the earth to heal from the poison\'s damaging effects, however. $b$bDruids are curing the remaining sickened beasts, but we can also act to protect the herds from the lingering poison until the land has recovered completely.\n\nTake this salve. Feed it to gazelles to strengthen them against the poisoned grasses.' WHERE (`entry`='60134') AND (`patch`='0');

UPDATE `item_template` SET `item_level`='7' WHERE (`entry`='51820') AND (`patch`='0');

REPLACE INTO `player_factionchange_reputations` (`alliance_id`, `horde_id`) VALUES ('269', '1001');

delete from gameobject where id = 1000024 and position_x = -4622.69;
REPLACE INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (1000024, 1, -4622.69, -3172.66, 34.813, 3.11898);

update quest_template set specialflags = 4 where entry = 80254;

update quest_template set requiredraces = 589 where entry = 5401;

update creature_template set faction = 21 where entry = 604;

update creature_template set scale = 1.25  where entry = 11180;
update creature_template set scale = 1.25  where entry = 2806;

replace into creature_template_addon (entry, auras) values (3946, 9617);