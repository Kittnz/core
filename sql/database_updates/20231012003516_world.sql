-- Don't remove quest giver flag from Ralathius during Into the Dream scene.
DELETE FROM `gossip_scripts` WHERE `id`=41396;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(41396, 0, 0, 15, 45665, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ralathius - Cast Spell Arcane Channeling'),
(41396, 0, 0, 4, 147, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ralathius - Remove NPC Flags'),
(41396, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65014, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ralathius - Say Text'),
(41396, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65015, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ralathius - Say Text'),
(41396, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65016, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ralathius - Say Text'),
(41396, 17, 0, 61, 41396, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4139602, 0, 0, 0, 0, 0, 'Into the Dream: Ralathius - Start Scripted Map Event'),
(41396, 18, 0, 10, 61544, 120000, 0, 0, 0, 0, 0, 0, 0, 4139601, 0, 2, 5516.61, -3691.11, 1594.54, 5.7, 0, 'Into the Dream: Ralathius - Summon Creature Nightmare Apparition'),
(41396, 18, 0, 10, 61544, 120000, 0, 0, 0, 0, 0, 0, 0, 4139601, 0, 2, 5517.57, -3702.73, 1594.93, 0.2, 0, 'Into the Dream: Ralathius - Summon Creature Nightmare Apparition'),
(41396, 18, 0, 10, 61544, 120000, 0, 0, 0, 0, 0, 0, 0, 4139601, 0, 2, 5528.24, -3711.74, 1596.8, 1.2, 0, 'Into the Dream: Ralathius - Summon Creature Nightmare Apparition'),
(41396, 19, 0, 69, 41396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41396, 4139602, 0, 0, 0, 0, 0, 'Into the Dream: Ralathius - Edit Scripted Map Event');
