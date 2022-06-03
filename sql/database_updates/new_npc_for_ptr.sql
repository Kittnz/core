-- name = 'Arcane Golem', subname = 'Thalassian Alliance', level = 55, display_id1 = 18019. Faction 269 and PvP-flagged. 
-- name = 'Pathstrider Protector', subname = 'Thalassian Alliance', level = 55, display_id1 = 18221, display_id2 = 18223, equipment_id = 80216.  Faction 269 and PvP-flagged.
-- name = 'Quartermaster Anvilward', subname = 'Thalassian Alliance', level = 35, display_id1 = 5570, equipment_id = 1472. Faction 47 and PvP-flagged. Repair vendor. Copy vendor menu from creature_template 3477 
REPLACE INTO creature_template VALUES
(60810, 18019, 0, 0, 0, 'Arcane Golem', 'Thalassian Alliance', 0, 55, 55, 3643, 3643, 0, 0, 3272, 269, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60811, 18221, 18223, 0, 0, 'Pathstrider Protector', 'Thalassian Alliance', 0, 55, 55, 3643, 3643, 0, 0, 3272, 269, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 80216, 0, 0, 0, 0, 0, 0, ''),
(60812, 5570, 0, 0, 0, 'Quartermaster Anvilward', 'Thalassian Alliance', 0, 35, 35, 1342, 1342, 0, 0, 1373, 47, 16388, 1, 1.14286, 1.3, 20, 5, 40, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 1472, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO npc_vendor VALUES
(60812, 2880, 0, 0, 0, 0),
(60812, 2901, 0, 0, 0, 0),
(60812, 3466, 0, 0, 0, 0),
(60812, 3857, 0, 0, 0, 0),
(60812, 5956, 0, 0, 0, 0),
(60812, 18567, 0, 0, 0, 0);
