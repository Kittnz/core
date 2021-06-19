
-- Quest rude awakening should be for the Undead only:
update quest_template set requiredraces = 16 where entry = 363;

-- Rockhide Boar Meat should have a quest flag:
update item_template set bonding = 4, class = 12, subclass = 0 where entry = 51868;
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (524, 51868, -80, 3, 1, 1);

-- Toy Merchant stand and player's plushies:

replace into gameobject_template values 
(1772010, 0, 5, 24157, 'Smultron\'s Plushie', 0, 0, 0.6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1772011, 0, 5, 24157, 'Plushy Shiri', 0, 0, 0.8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1772012, 0, 5, 24157, 'Aurelian\'s Plushie', 0, 0, 0.9, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1772013, 0, 5, 24881, 'Xerron\'s Voodoo Doll', 0, 0, 0.7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1772014, 0, 5, 24157, 'Plushy Momo', 0, 0, 0.3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1772015, 0, 5, 24025, 'Laughadin: What if we had a taunt?', 0, 0, 0.9, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1772016, 0, 5, 30712, 'Kilan: Damage Dealing for Dummies', 0, 0, 0.9, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject where id in (2003540, 1772010, 1772011, 1772012, 1772013, 1772014, 1772015);

replace into gameobject (id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3) values 
(2003540, 0, -8782.6, 588, 97.9, 0.612261, 0, 0, 0.301371, 0.953507),
(1772010, 0, -8784.63, 588.35, 98.3, 2.12672, 0, 0, 0.873993, 0.485938),
(1772011, 0, -8783.93, 588.68, 98.1, 2.26024, 0, 0, 0.904463, 0.426551),
(1772012, 0, -8782.5, 589.3, 97.9, 2.18563, 0, 0, 0.887925, 0.459988),
(1772014, 0, -8782.5, 590.2, 98.6, 1.99165, 0, 0, 0.839209, 0.543809),
(1772015, 0, -8783.44, 589.276, 98.9362, 2.05346, 0, 0, 0.855612, 0.517618),
(1772013, 0, -8782.9, 590, 99, 3.79661, 0, 0, 0.946847, -0.321685);

replace into creature_template values (81063, 0, 5433, 0, 0, 0, 'Craggle Wobbletop', 'Toys and Novelties', 9363, 30, 30, 1002, 1002, 0, 0, 1200, 875, 4, 1, 1.14286, 1.15, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'eventai', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');

replace into npc_vendor (entry, item) values (81063, 18662);

delete from creature where id = 81063;

replace into creature (id, id2, id3, id4, map, display_id, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type, spawn_flags, visibility_mod, patch_min, patch_max) values (81063, 0, 0, 0, 0, 0, 0, -8786.18, 587.474, 97.8564, 2.17356, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);

-- Gnome Enlargement Balm

replace into item_template values (81278, 0, 0, 0, 'Gnome Enlargement Balm', 'For the times when you feel like becoming a bigger person! Causes unpredictable effects on other races.', 21794, 1, 0, 1, 1500, 250, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56042, 0, -1, 0, 560000, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_gnome_enlargement');

replace into npc_vendor (entry, item) values (81063, 81278);
