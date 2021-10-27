
-- Creature Template
REPLACE INTO `creature_template` VALUES (91003, 0, 10008, 0, 0, 0, 'Chromie', '', 91974, 63, 63, 98621, 98621, 48424, 48424, 3490, 35, 1, 1, 1.14286, 1, 20, 5, 0, 3, 1, 1130, 1500, 0, 285, 1, 2200, 1500, 2, 0, 0, 0, 0, 0, 0, 0, 600, 825, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33403, 63403, '', 0, 1, 0, 0, 3, 10667, 0, 0, 617299931, 0, 33025, 0, 'npc_chromie_dialogue');



-- Gossip
REPLACE INTO `broadcast_text` VALUES (91974, 'The caverns have been breached by Antnormi and her ilk - but we CAN stop them. You must use these Temporal Bronze Discs to close down the Time Rifts.$B$BQuickly! Use close the Time Rift behind me and close the remaining two!', 'The caverns have been breached by Antnormi and her ilk - but we CAN stop them. You must use these Temporal Bronze Discs to close down the Time Rifts.$B$BQuickly! Use close the Time Rift behind me and close the remaining two!', 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `npc_text` VALUES (91974, 91974, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- Item Template
REPLACE INTO `item_template` VALUES (80008, 0, 15, 0, 'Temporal Bronze Disc', '', 20975, 1, 128, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23017, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_temporal_bronze_disc');
REPLACE INTO `gameobject_template` VALUES (7000032, 0, 5, 32766, 'Lighting Impact Large', 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');


-- Gob templates
REPLACE INTO `gameobject_template` VALUES (7000035, 0, 5, 32083, 'Time Rift Despawn Spell', 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Creature positions
REPLACE INTO `creature` VALUES (2562940, 91001, 0, 0, 0, 269, 0, 0, -1472.07, 6953.46, -126.744, 5.2981, 604800, 604800, 0, 100, 100, 0, 0, 0, 0, 10);
REPLACE INTO `creature` VALUES (2563153, 91001, 0, 0, 0, 269, 0, 0, -1406.54, 7007.73, -85.9807, 1.90701, 604800, 604800, 0, 100, 100, 0, 0, 0, 0, 10);
REPLACE INTO `creature` VALUES (2563674, 91001, 0, 0, 0, 269, 0, 0, -1410.09, 7023.03, -229.886, 4.09947, 604800, 604800, 0, 100, 100, 0, 0, 0, 0, 10);
