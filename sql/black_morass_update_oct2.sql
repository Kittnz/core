
-- New Gobs
REPLACE INTO `gameobject_template` VALUES (2010845, 0, 5, 23304, 'SANDWATERFALL - LARGE', 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` VALUES (2010846, 5, 5, 6391, 'Ghost Gate - LARGE', 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');


-- New Creatures
REPLACE INTO `creature_template` VALUES (65129, 0, 18495, 0, 0, 0, 'Time Rift', '', 0, 37, 37, 2192, 2192, 0, 0, 1340, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 55, 70, 0, 144, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 53.3984, 73.4228, 100, 7, 0, 91001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 2, 5, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, '');

-- Sand barrier position
REPLACE INTO `gameobject` VALUES (4013209, 2010845, 269, -1432.93, 7002.09, -14.3602, 0.966082, 0, 0, 0.464474, 0.885587, 300, 300, 100, 1, 0, 0, 0, 10);

-- Invis barrier
REPLACE INTO `gameobject` VALUES (5000014, 180322, 269, -1431.64, 7002.81, -15, 1.03652, 0, 0, 0.495371, 0.868681, 300, 300, 100, 1, 0, 0, 0, 10);
REPLACE INTO `gameobject` VALUES (5000015, 2010846, 269, -1608.04, 7109.13, 24, 2.89477, 0, 0, 0.992395, 0.123096, 300, 300, 100, 1, 0, 0, 0, 10);

-- Move drake
REPLACE INTO `creature` VALUES (2562922, 65116, 0, 0, 0, 269, 0, 0, -1441.63, 6984.11, -14.32, 4.75, 604800, 604800, 0, 100, 100, 0, 0, 0, 0, 10);


-- Update Item
REPLACE INTO `item_template` VALUES (80008, 0, 15, 0, 'Temporal Bronze Disc', '', 20975, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31726, 0, 0, 0, 30000, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_temporal_bronze_disc');

-- Rifts
REPLACE INTO `creature` VALUES (2565745, 91001, 0, 0, 0, 269, 0, 0, -1438.88, 6990.27, -14.3369, 1.09175, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
REPLACE INTO `creature` VALUES (2567788, 91001, 0, 0, 0, 269, 0, 0, -1606.1, 7106.89, 23.7489, 3.01101, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

-- Text Addition
REPLACE INTO `broadcast_text` VALUES (91975, 'You\'ve done it! Quickly - hand me the Temporal Bronze Disc!', 'You\'ve done it! Quickly - hand me the Temporal Bronze Disc!', 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (91976, 'bla bla bla - GIVE NETO DIALOGUE! MUAHAHHA IM AN EVIL CHROMIE NOW! GOT YOU!', 'bla bla bla - GIVE NETO DIALOGUE! MUAHAHHA IM AN EVIL CHROMIE NOW! GOT YOU!', 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (91977, 'You\'ve done it! Looks like you lost your Temporal Bronze Disc though ...', 'You\'ve done it! Looks like you lost your Temporal Bronze Disc though ...', 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `npc_text` VALUES (91974, 91974, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `npc_text` VALUES (91975, 91975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `npc_text` VALUES (91977, 91977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `npc_text` VALUES (91976, 91976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
