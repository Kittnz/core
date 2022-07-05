replace into item_template (entry, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) values

(80175, 4, 0, 'Chromie\'s Pocket Watch', 'Time works differently in Azeroth. It might be a good idea to check the time.', 6540, 2, 0, 1, 0, 0, 12, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46003, 0, 0, 0, 10, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set spellid_1 = 46003, script_name = NULL where name like '%Illusion:%';

replace into spell_mod (id, castingtimeindex) values (46003, 5); 

update item_template set max_count = 1 where entry = 80175;

-- It appears that Chromie has found her favorite time-spending players and has decided to gift them all an item, so they do not lose track of time!
-- For our top ten players with the highest play-time, we will be giving out an interactive cosmetic trinket with sound effects to celebrate their dedication and passion for Turtle WoW!

-- In-game mail text: To my buddy, so you do not lose yourself in the time loop. Chromie

-- Fix some startup errors:

update creature set wander_distance = 0 where guid in (2571579, 2571580, 2571581);

-- Item fixes from Dragu:

-- Adds some heal power back to Pally T1
update item_template set spellid_2 = 7677, spelltrigger_2 = 1 where entry = 16858; -- Lawbringer Belt
update item_template set spellid_3 = 7677, spelltrigger_3 = 1 where entry = 16859; -- Lawbringer Boots
update item_template set spellid_2 = 7678, spelltrigger_2 = 1 where entry = 16853; -- Lawbringer Chestguard
update item_template set spellid_3 = 7677, spellid_1 = 21361, spellid_2 = 9416, spelltrigger_3 = 1, spelltrigger_2 = 1 where entry = 16860; -- Lawbringer Gauntlets
update item_template set spellid_3 = 7678, spelltrigger_3 = 1 where entry = 16854; -- Lawbringer Helm
update item_template set spellid_3 = 7678, spelltrigger_3 = 1 where entry = 16855; -- Lawbringer Legplates
update item_template set spellid_2 = 7677, spelltrigger_2 = 1 where entry = 16856; -- Lawbringer Spaulders
-- Dragonslayer Signet Bugfix
update item_template set stat_type2 = 7, spellid_1 = 18384, spellid_2 = 9346 where entry = 18403; -- Dragonslayer's Signet
-- Paladin Rage
update item_template set stat_type1 = 7, stat_type2 = 5, stat_type3 = 3, stat_type4 = 4, spellid_2 = 9408 where entry = 21683; -- Mantle of the Desert Crusade
update item_template set spellid_2 = 7677 where entry = 19827; -- Zandalar Freethinker's Armguards
update item_template set spellid_2 = 7681 where entry = 19826; -- Zandalar Freethinker's Belt
-- Prevent Racechange Abuse on UBRS Trinkets
update item_template set max_count = 1 where entry = 13966; -- Mark of Tyranny
update item_template set max_count = 1 where entry = 13968; -- Eye of the Beast
update item_template set max_count = 1 where entry = 13965; -- Blackhand's Breadth

-- Guild housing export:

replace into creature values (2571526, 60860, 0, 0, 0, 1, 0, 2546, -9659.86, -1967.04, 0.568452, 0.998583, 25, 25, 0, 100, 100, 0, 0, 0),
(2571529, 60861, 0, 0, 0, 1, 0, 1563, -9668.37, -1954.26, 0.46363, 5.70783, 25, 25, 0, 100, 100, 0, 0, 0),
(2571530, 60861, 0, 0, 0, 1, 0, 1563, -9646.24, -1970.78, 0.571466, 3.17885, 25, 25, 0, 100, 100, 0, 0, 0),
(2571531, 60861, 0, 0, 0, 1, 0, 1563, -9647.95, -1973.19, 0.565366, 2.01096, 25, 25, 0, 100, 100, 0, 0, 0),
(2571532, 60861, 0, 0, 0, 1, 0, 1563, -9641.61, -1955, 1.25126, 3.2244, 25, 25, 0, 100, 100, 0, 0, 0),
(2571533, 60861, 0, 0, 0, 1, 0, 1563, -9648.34, -1990.45, 0.445248, 4.04907, 25, 25, 0, 100, 100, 0, 0, 0),
(2571534, 60861, 0, 0, 0, 1, 0, 1563, -9649.32, -1970.32, 0.568194, 5.71567, 25, 25, 0, 100, 100, 0, 0, 0),
(2571535, 60861, 0, 0, 0, 1, 0, 1563, -9671.76, -1972.82, 0.273307, 0.814782, 25, 25, 0, 100, 100, 0, 0, 0),
(2571573, 51685, 0, 0, 0, 1, 0, 0, 7494.49, -1509.87, 161.98, 4.38404, 25, 25, 0, 100, 100, 0, 0, 0);

replace into gameobject values
(5007738, 2007834, 1, -9705.05, -1972.83, 6.28266, 2.09568, 0, 0, 0.866348, 0.499442, 300, 300, 100, 1, 0, 0),
(5007739, 2007840, 1, -9688.75, -2097.19, 7.64679, 3.70051, 0, 0, 0.961204, -0.275837, 300, 300, 100, 1, 0, 0),
(5007767, 2066, 1, -9656.33, -1961.76, 0.569725, 3.67617, 0, 0, 0.964491, -0.264116, 300, 300, 100, 1, 0, 0),
(5007768, 23879, 1, -9656.33, -1961.76, 0.569725, 3.67617, 0, 0, 0.964491, -0.264116, 300, 300, 100, 1, 0, 0),
(5007769, 126053, 1, -9654.59, -1966.94, 0.568953, 1.90117, 0, 0, 0.813755, 0.581209, 300, 300, 100, 1, 0, 0),
(5007770, 126053, 1, -9651.33, -1963.52, 0.568953, 2.84993, 0, 0, 0.989385, 0.145316, 300, 300, 100, 1, 0, 0),
(5007771, 126053, 1, -9651.97, -1958.9, 0.569412, 3.73664, 0, 0, 0.956065, -0.293156, 300, 300, 100, 1, 0, 0),
(5007772, 126053, 1, -9658.8, -1957.15, 0.582232, 5.19238, 0, 0, 0.518764, -0.854917, 300, 300, 100, 1, 0, 0),
(5007773, 126053, 1, -9661.5, -1961.23, 0.570352, 6.23695, 0, 0, 0.0231154, -0.999733, 300, 300, 100, 1, 0, 0),
(5007774, 2002594, 1, -9669.16, -1949.28, 0.10939, 5.47276, 0, 0, 0.394215, -0.919018, 300, 300, 100, 1, 0, 0),
(5007775, 2002594, 1, -9640.02, -1969.73, 0.385427, 2.62795, 0, 0, 0.967202, 0.254009, 300, 300, 100, 1, 0, 0),
(5007776, 2002594, 1, -9648.6, -1979.54, -0.161981, 1.94464, 0, 0, 0.826196, 0.563383, 300, 300, 100, 1, 0, 0),
(5007777, 2002787, 1, -9639.65, -1950.21, 1.40728, 3.67858, 0, 0, 0.964172, -0.265279, 300, 300, 100, 1, 0, 0),
(5007778, 3000303, 1, -9671.74, -1948.17, 0.504386, 5.62479, 0, 0, 0.323283, -0.946302, 300, 300, 100, 1, 0, 0),
(5007779, 3000304, 1, -9669.94, -1945.49, 0.546864, 0.632016, 0, 0, 0.310775, 0.950484, 300, 300, 100, 1, 0, 0),
(5007780, 2004643, 1, -9670.72, -1945.62, 0.536309, 1.99468, 0, 0, 0.840031, 0.542538, 300, 300, 100, 1, 0, 0),
(5007781, 2004099, 1, -9669.05, -1951.76, 0.501933, 3.85372, 0, 0, 0.937276, -0.348588, 300, 300, 100, 1, 0, 0),
(5007782, 2004196, 1, -9680.29, -1984.06, -0.12995, 4.46869, 0, 0, 0.787812, -0.615915, 300, 300, 100, 1, 0, 0),
(5007783, 2004195, 1, -9683.98, -1989.93, -0.318355, 1.79285, 0, 0, 0.781099, 0.624408, 300, 300, 100, 1, 0, 0),
(5007784, 2004199, 1, -9672.35, -1991.4, -0.212867, 4.46791, 0, 0, 0.78805, -0.615611, 300, 300, 100, 1, 0, 0),
(5007786, 2004197, 1, -9688.13, -2064.02, 0.10084, 5.76775, 0, 0, 0.254875, -0.966974, 300, 300, 100, 1, 0, 0),
(5007787, 2004197, 1, -9677.52, -2065.57, 0.126307, 4.01406, 0, 0, 0.906349, -0.42253, 300, 300, 100, 1, 0, 0),
(5007788, 2004197, 1, -9677.91, -1989.85, 0.035022, 1.379, 0, 0, 0.636151, 0.771565, 300, 300, 100, 1, 0, 0),
(5007789, 2004247, 1, -9672.65, -1971.51, 0.297093, 2.76837, 0, 0, 0.982638, 0.185531, 300, 300, 100, 1, 0, 0),
(5007790, 2004247, 1, -9664.54, -1950.64, 0.62715, 1.10961, 0, 0, 0.526776, 0.850004, 300, 300, 100, 1, 0, 0),
(5007791, 2004247, 1, -9647.44, -1948.55, 1.65169, 4.54494, 0, 0, 0.763763, -0.645497, 300, 300, 100, 1, 0, 0),
(5007793, 2004247, 1, -9647.56, -1948.38, 0.899947, 1.35701, 0, 0, 0.627629, 0.778512, 300, 300, 100, 1, 0, 0),
(5007794, 2004247, 1, -9644.64, -1970.2, 0.622317, 3.77683, 0, 0, 0.949982, -0.312304, 300, 300, 100, 1, 0, 0),
(5007795, 181130, 1, -9638.32, -1948.11, 1.71888, 0.652516, 0, 0, 0.320501, 0.947248, 300, 300, 100, 1, 0, 0),
(5007796, 179887, 1, -9636.37, -1952.57, 1.7512, 0.942727, 0, 0, 0.454101, 0.89095, 300, 300, 100, 1, 0, 0),
(5007797, 2001936, 1, -9636.4, -1950, 1.70822, 1.82709, 0, 0, 0.791673, 0.610945, 300, 300, 100, 1, 0, 0),
(5007798, 2003148, 1, -9635.58, -1951.42, 1.95055, 0.626213, 0, 0, 0.308015, 0.951381, 300, 300, 100, 1, 0, 0),
(5007799, 2003147, 1, -9637.58, -1948.91, 1.76274, 0.857119, 0, 0, 0.415561, 0.909565, 300, 300, 100, 1, 0, 0),
(5007800, 2001593, 1, -9642.16, -1946.56, 1.44027, 4.93019, 0, 0, 0.626064, -0.779772, 300, 300, 100, 1, 0, 0),
(5007804, 2004501, 1, -9639.46, -1955.46, 1.4466, 2.22371, 0, 0, 0.896523, 0.442998, 300, 300, 100, 1, 0, 0),
(5007805, 2004501, 1, -9638.7, -1954.75, 1.55426, 2.28497, 0, 0, 0.909669, 0.415333, 300, 300, 100, 1, 0, 0),
(5007807, 2004503, 1, -9638.68, -1954.82, 2.12064, 5.55774, 0, 0, 0.354821, -0.934934, 300, 300, 100, 1, 0, 0),
(5007808, 2004502, 1, -9638.25, -1955.16, 2.56299, 5.68918, 0, 0, 0.292657, -0.956218, 300, 300, 100, 1, 0, 0),
(5007813, 2001958, 1, -9644.21, -1947.43, 1.58784, 4.23064, 0, 0, 0.855373, -0.518012, 300, 300, 100, 1, 0, 0),
(5007815, 2000306, 1, -9633.92, -1955.64, 1.92827, 3.51593, 0, 0, 0.982535, -0.186075, 300, 300, 100, 1, 0, 0),
(5007817, 2003442, 1, -9637, -1957.07, 1.5774, 0.517275, 0, 0, 0.255764, 0.966739, 300, 300, 100, 1, 0, 0),
(5007818, 2002795, 1, -9667.47, -1948.82, 0.543549, 3.96674, 0, 0, 0.916091, -0.40097, 300, 300, 100, 1, 0, 0),
(5007819, 2001813, 1, -9660.65, -1958.37, 0.569292, 0.123786, 0, 0, 0.0618536, 0.998085, 300, 300, 100, 1, 0, 0),
(5007820, 2003544, 1, -9659.96, -1957.84, 0.924152, 5.78337, 0, 0, 0.247317, -0.968935, 300, 300, 100, 1, 0, 0),
(5007821, 2003548, 1, -9660.41, -1958.82, 0.569449, 0.0460276, 0, 0, 0.0230118, 0.999735, 300, 300, 100, 1, 0, 0),
(5007823, 180905, 1, -9657.36, -1956.57, 0.92513, 5.59172, 0, 0, 0.338886, -0.940828, 300, 300, 100, 1, 0, 0),
(5007824, 180905, 1, -9656.71, -1967.38, 0.56939, 1.4456, 0, 0, 0.661487, 0.749956, 300, 300, 100, 1, 0, 0),
(5007825, 180905, 1, -9653.37, -1966.37, 0.910925, 2.3276, 0, 0, 0.918315, 0.395851, 300, 300, 100, 1, 0, 0),
(5007826, 180905, 1, -9651.25, -1960.14, 0.912218, 3.04773, 0, 0, 0.998899, 0.0469117, 300, 300, 100, 1, 0, 0),
(5007827, 180905, 1, -9651.54, -1959.88, 0.912218, 4.27296, 0, 0, 0.844223, -0.535992, 300, 300, 100, 1, 0, 0),
(5007828, 180699, 1, -9659.31, -1973.8, 0.164079, 1.61779, 0, 0, 0.723526, 0.690297, 0, 0, 100, 1, 0, 0),
(5007829, 180699, 1, -9662.75, -1973.1, 0.154088, 1.12477, 0, 0, 0.533205, 0.845986, 0, 0, 100, 1, 0, 0),
(5007832, 2003528, 1, -9655.97, -1973.88, 0.203418, 1.71204, 0, 0, 0.755238, 0.65545, 300, 300, 100, 1, 0, 0),
(5007834, 2010586, 1, -9656.2, -1974.58, 1.33199, 1.45677, 0, 0, 0.665665, 0.746251, 300, 300, 100, 1, 0, 0),
(5007835, 180905, 1, -9656.67, -1973.27, 1.33199, 4.68633, 0, 0, 0.716261, -0.697833, 300, 300, 100, 1, 0, 0),
(5007836, 180905, 1, -9656.31, -1973.48, 1.33199, 5.76389, 0, 0, 0.256739, -0.966481, 300, 300, 100, 1, 0, 0),
(5007837, 180905, 1, -9655.69, -1973.28, 1.33222, 5.12615, 0, 0, 0.546784, -0.837274, 300, 300, 100, 1, 0, 0),
(5007838, 180905, 1, -9655.29, -1973.45, 1.33203, 3.6174, 0, 0, 0.971834, -0.235665, 300, 300, 100, 1, 0, 0),
(5007839, 180905, 1, -9655.27, -1973.05, 1.33203, 4.15775, 0, 0, 0.87368, -0.486501, 300, 300, 100, 1, 0, 0),
(5007840, 2001881, 1, -9655.62, -1973.83, 1.3322, 6.00029, 0, 0, 0.140976, -0.990013, 300, 300, 100, 1, 0, 0),
(5007841, 2001882, 1, -9650.84, -1960.84, 0.569222, 3.49644, 0, 0, 0.984301, -0.176496, 300, 300, 100, 1, 0, 0),
(5007843, 2003829, 1, -9655.57, -1974.54, 1.33202, 2.0953, 0, 0, 0.86625, 0.49961, 300, 300, 100, 1, 0, 0),
(5007844, 2003977, 1, -9668.84, -1947.23, 1.69739, 3.91459, 0, 0, 0.926235, -0.376946, 300, 300, 100, 1, 0, 0),
(5007845, 2003424, 1, -9661.46, -1962.52, 0.912465, 6.01294, 0, 0, 0.134713, -0.990885, 300, 300, 100, 1, 0, 0),
(5007846, 2003309, 1, -9656.44, -1974.12, 1.33197, 0.983252, 0, 0, 0.47206, 0.881567, 300, 300, 100, 1, 0, 0),
(5007847, 2003294, 1, -9661.69, -1962.68, 0.912851, 0.830097, 0, 0, 0.403234, 0.915097, 300, 300, 100, 1, 0, 0),
(5007848, 2003199, 1, -9660.91, -1963.41, 0.570004, 0.442102, 0, 0, 0.219255, 0.975668, 300, 300, 100, 1, 0, 0),
(5007849, 2003199, 1, -9674.52, -1966.57, 0.259322, 4.04866, 0, 0, 0.898905, -0.438145, 300, 300, 100, 1, 0, 0),
(5007850, 2003831, 1, -9653.43, -1957, 0.634341, 2.83285, 0, 0, 0.988109, 0.153758, 300, 300, 100, 1, 0, 0),
(5007854, 2004704, 1, -9668.26, -1950.24, 0.546576, 2.18053, 0, 0, 0.88675, 0.462249, 300, 300, 100, 1, 0, 0),
(5007855, 2003230, 1, -9670.7, -1952.8, 0.174303, 0.321495, 0, 0, 0.160056, 0.987108, 300, 300, 100, 1, 0, 0),
(5007856, 2003230, 1, -9671.63, -1951.3, 0.344113, 0.692988, 0, 0, 0.339602, 0.940569, 300, 300, 100, 1, 0, 0),
(5007857, 2003227, 1, -9670, -1954.05, 0.348974, 1.71322, 0, 0, 0.755626, 0.655003, 300, 300, 100, 1, 0, 0),
(5007861, 1000002, 1, -9676.88, -1957.86, -0.455698, 2.78999, 0, 0, 0.984587, 0.174895, 300, 300, 100, 1, 0, 0),
(5007862, 2003437, 1, -9673.94, -1962, 0.155941, 1.99674, 0, 0, 0.84059, 0.541672, 300, 300, 100, 1, 0, 0),
(5007863, 2002911, 1, -9672.9, -1961.27, 0.059367, 3.78509, 0, 0, 0.948683, -0.316228, 300, 300, 100, 1, 0, 0),
(5007864, 2001534, 1, -9676.35, -1959.07, 0.132066, 3.73247, 0, 0, 0.956674, -0.29116, 300, 300, 100, 1, 0, 0),
(5007865, 2001537, 1, -9674.99, -1964.57, 0.131067, 5.9787, 0, 0, 0.151653, -0.988434, 300, 300, 100, 1, 0, 0),
(5007866, 2001533, 1, -9675.46, -1958.37, 0.124358, 3.08689, 0, 0, 0.999626, 0.0273498, 300, 300, 100, 1, 0, 0),
(5007871, 2001539, 1, -9678.07, -1959.22, 0.556104, 3.23576, 0, 0, 0.998892, -0.0470646, 300, 300, 100, 1, 0, 0),
(5007873, 2003148, 1, -9673.58, -1963.11, 0.257137, 2.75665, 0, 0, 0.981535, 0.191285, 300, 300, 100, 1, 0, 0),
(5007875, 2000531, 1, -9651.8, -1944.3, 2.48884, 1.12098, 0, 0, 0.531602, 0.846994, 300, 300, 100, 1, 0, 0),
(5007876, 2000532, 1, -9652.72, -1943.41, 2.39675, 0.617541, 0, 0, 0.303888, 0.952708, 300, 300, 100, 1, 0, 0),
(5007877, 2001879, 1, -9652.71, -1943.93, 2.58044, 4.26179, 0, 0, 0.847203, -0.531269, 300, 300, 100, 1, 0, 0),
(5007879, 2003854, 1, -9655.48, -1943.32, 2.39295, 4.53668, 0, 0, 0.766424, -0.642335, 300, 300, 100, 1, 0, 0),
(5007880, 2001949, 1, -9653.82, -1940.48, 2.63276, 2.94213, 0, 0, 0.995031, 0.0995666, 300, 300, 100, 1, 0, 0),
(5007881, 2003230, 1, -9654.47, -1940.38, 3.5588, 2.82589, 0, 0, 0.987567, 0.157198, 300, 300, 100, 1, 0, 0),
(5007882, 2004203, 1, -9653.3, -1940.52, 3.59369, 2.60113, 0, 0, 0.963709, 0.266954, 300, 300, 100, 1, 0, 0),
(5007886, 2000367, 1, -9651.45, -1977, -0.010674, 5.23811, 0, 0, 0.499079, -0.866556, 300, 300, 100, 1, 0, 0),
(5007887, 2004492, 1, -9651.91, -1977.31, 0.12116, 1.68655, 0, 0, 0.746825, 0.665021, 300, 300, 100, 1, 0, 0),
(5007891, 2003208, 1, -9645.09, -1991.86, 0.246211, 4.17999, 0, 0, 0.868216, -0.496187, 300, 300, 100, 1, 0, 0),
(5007893, 2003231, 1, -9643.43, -1983.6, 0.569355, 4.87978, 0, 0, 0.645519, -0.763744, 300, 300, 100, 1, 0, 0),
(5007894, 2003349, 1, -9645.08, -1983.8, 0.570181, 6.01075, 0, 0, 0.135798, -0.990736, 300, 300, 100, 1, 0, 0),
(5007896, 2004247, 1, -9641.12, -1989.98, 0.479038, 4.90345, 0, 0, 0.636434, -0.771331, 300, 300, 100, 1, 0, 0),
(5007897, 2002796, 1, -9646.79, -1983.92, 0.568488, 5.04718, 0, 0, 0.579409, -0.815037, 300, 300, 100, 1, 0, 0),
(5007898, 2003355, 1, -9641.94, -1964.83, 0.896036, 4.8595, 0, 0, 0.65323, -0.757159, 300, 300, 100, 1, 0, 0),
(5007899, 2001807, 1, -9670.86, -1952.56, 1.66651, 5.73209, 0, 0, 0.272076, -0.962276, 300, 300, 100, 1, 0, 0),
(5007900, 2000306, 1, -9717.03, -1942.63, 11.101, 3.70732, 0, 0, 0.96026, -0.279108, 300, 300, 100, 1, 0, 0),
(5007901, 2003232, 1, -9713.97, -1945.21, 11.1006, 3.32091, 0, 0, 0.995983, -0.0895395, 300, 300, 100, 1, 0, 0),
(5007902, 2003233, 1, -9726.07, -1947.85, 11.1, 3.75213, 0, 0, 0.953766, -0.300549, 300, 300, 100, 1, 0, 0),
(5007904, 2002903, 1, -9722.36, -1944.6, 11.1015, 5.27737, 0, 0, 0.481974, -0.876186, 300, 300, 100, 1, 0, 0),
(5007905, 2003231, 1, -9715.85, -1969.87, 6.04731, 3.46311, 0, 0, 0.987106, -0.160066, 300, 300, 100, 1, 0, 0),
(5007906, 2003231, 1, -9705.86, -1957.35, 6.04782, 0.540641, 0, 0, 0.26704, 0.963685, 300, 300, 100, 1, 0, 0),
(5007907, 2003231, 1, -9696.64, -1978.44, 6.04838, 5.22004, 0, 0, 0.506888, -0.862012, 300, 300, 100, 1, 0, 0),
(5007908, 2003349, 1, -9697.97, -1979.52, 6.04766, 4.36867, 0, 0, 0.817615, -0.575765, 300, 300, 100, 1, 0, 0),
(5007909, 2003349, 1, -9717.02, -1968.46, 6.04767, 4.16603, 0, 0, 0.871659, -0.490114, 300, 300, 100, 1, 0, 0),
(5007910, 2003284, 1, -9704.11, -1958.56, 6.04818, 1.39516, 0, 0, 0.642364, 0.7664, 300, 300, 100, 1, 0, 0),
(5007912, 2004916, 1, -9723.46, -1949.95, -1.27521, 4.0173, 0, 0, 0.905663, -0.423998, 300, 300, 100, 1, 0, 0),
(5007914, 2004917, 1, -9715.33, -1946.5, -1.27521, 3.60654, 0, 0, 0.9731, -0.230384, 300, 300, 100, 1, 0, 0),
(5007915, 2004916, 1, -9718.19, -1947.03, -1.27521, 3.59083, 0, 0, 0.974879, -0.222736, 300, 300, 100, 1, 0, 0),
(5007916, 2003441, 1, -9706.64, -1972.61, 6.04902, 0.51679, 0, 0, 0.255529, 0.966801, 300, 300, 100, 1, 0, 0),
(5007917, 2003442, 1, -9704.72, -1970.72, 6.04925, 2.05931, 0, 0, 0.857122, 0.515113, 300, 300, 100, 1, 0, 0),
(5007918, 2002397, 1, -9720.59, -1939.36, 6.04559, 5.23153, 0, 0, 0.501927, -0.86491, 300, 300, 100, 1, 0, 0),
(5007923, 176296, 42, 10407.1, -6397.16, 52.0926, 0.269815, 0, 0, 0.134499, 0.990914, 300, 300, 100, 1, 0, 0),
(5007924, 176499, 42, 8625.28, -8221.2, 229.014, 4.84357, 0, 0, 0.659241, -0.751931, 300, 300, 100, 1, 0, 0),
(5007925, 300517, 451, 15775.3, 16480, 55.9008, 4.23316, 0, 0, 0.854721, -0.519087, 300, 300, 100, 1, 0, 0),
(5007928, 300519, 451, 15701.1, 16465.9, 75.7663, 2.81159, 0, 0, 0.986418, 0.164254, 300, 300, 100, 1, 0, 0),
(5007929, 300520, 451, 15732.4, 16492.5, 53.4987, 1.6971, 0, 0, 0.750322, 0.661073, 300, 300, 100, 1, 0, 0),
(5007930, 300521, 451, 15740.1, 16501.7, 53.499, 3.09511, 0, 0, 0.99973, 0.0232385, 300, 300, 100, 1, 0, 0),
(5007931, 300518, 451, 15748, 16529.5, 49.1338, 2.98829, 0, 0, 0.997064, 0.0765755, 300, 300, 100, 1, 0, 0),
(5007935, 300524, 451, 15730, 16523.1, 57.4179, 3.1873, 0, 0, 0.999739, -0.0228519, 300, 300, 100, 1, 0, 0),
(5007936, 300525, 451, 15730.8, 16526.2, 57.4179, 3.59963, 0, 0, 0.973889, -0.227023, 300, 300, 100, 1, 0, 0),
(5007937, 300526, 451, 15730.9, 16519.2, 57.4179, 2.83465, 0, 0, 0.988247, 0.152868, 300, 300, 100, 1, 0, 0),
(5007938, 2003528, 1, -9637.92, -1972.39, 0.744388, 2.56237, 0, 0, 0.958355, 0.285581, 300, 300, 100, 1, 0, 0),
(5007939, 22803, 1, -9637.34, -1970.37, 0.760061, 2.90872, 0, 0, 0.993229, 0.116173, 300, 300, 100, 1, 0, 0),
(5007940, 2002796, 1, -9642.25, -1970.15, 0.520766, 1.0112, 0, 0, 0.484333, 0.874884, 300, 300, 100, 1, 0, 0),
(5007941, 2003816, 1, -9640.62, -1967.8, 0.940264, 0.828208, 0, 0, 0.40237, 0.915477, 300, 300, 100, 1, 0, 0),
(5007942, 2004203, 1, -9639.5, -1968.41, 0.927068, 1.13247, 0, 0, 0.536458, 0.843927, 300, 300, 100, 1, 0, 0),
(5007944, 2004236, 1, -9637.72, -1972.57, 1.64694, 5.63909, 0, 0, 0.316511, -0.948589, 300, 300, 100, 1, 0, 0),
(5007945, 2003392, 1, -9637.92, -1972.05, 1.64759, 6.22656, 0, 0, 0.0283067, -0.999599, 300, 300, 100, 1, 0, 0),
(5007946, 2001882, 1, -9638.31, -1972.15, 1.64766, 4.31019, 0, 0, 0.834099, -0.551615, 300, 300, 100, 1, 0, 0),
(5007947, 1000018, 1, -9640.56, -1967.96, 1.92807, 0.995023, 0, 0, 0.47724, 0.878773, 300, 300, 100, 1, 0, 0),
(5007948, 2003457, 1, -9637.42, -1972.19, 1.64684, 5.16235, 0, 0, 0.53154, -0.847033, 300, 300, 100, 1, 0, 0),
(5007949, 2003882, 1, -9648.52, -1982.84, 0.570198, 4.52773, 0, 0, 0.769289, -0.638901, 300, 300, 100, 1, 0, 0),
(5007950, 2003223, 1, -9647.83, -1977.58, 0.541652, 0.103247, 0, 0, 0.0516005, 0.998668, 300, 300, 100, 1, 0, 0),
(5007951, 2003225, 1, -9647.63, -1979.09, 0.529863, 0.294887, 0, 0, 0.14691, 0.98915, 300, 300, 100, 1, 0, 0),
(5007953, 1000221, 1, -9651.04, -1978.18, 0.462416, 0.185717, 0, 0, 0.0927252, 0.995692, 300, 300, 100, 1, 0, 0),
(5007955, 2003224, 1, -9648.12, -1977.59, 1.33774, 5.26018, 0, 0, 0.48949, -0.872009, 300, 300, 100, 1, 0, 0),
(5007956, 2004644, 1, -9647.04, -1981.8, 0.568775, 3.68545, 0, 0, 0.963254, -0.268591, 300, 300, 100, 1, 0, 0),
(5007957, 2004643, 1, -9650.68, -1979.31, 0.438779, 0.226553, 0, 0, 0.113035, 0.993591, 300, 300, 100, 1, 0, 0),
(5007958, 2004206, 1, -9650.1, -1980.27, 0.473973, 0.371855, 0, 0, 0.184858, 0.982765, 300, 300, 100, 1, 0, 0),
(5007960, 2003233, 1, -9709.45, -1966.6, 11.4724, 0.501435, 0, 0, 0.248099, 0.968735, 300, 300, 100, 1, 0, 0),
(5007961, 2003232, 1, -9708.3, -1969.5, 11.4813, 5.31901, 0, 0, 0.463628, -0.88603, 300, 300, 100, 1, 0, 0),
(5007962, 2003812, 1, -9704.04, -1972.3, 11.5092, 0.414987, 0, 0, 0.206008, 0.97855, 300, 300, 100, 1, 0, 0),
(5007963, 2003812, 1, -9703.89, -1974.26, 11.5494, 0.414987, 0, 0, 0.206008, 0.97855, 300, 300, 100, 1, 0, 0),
(5007964, 2003817, 1, -9706.12, -1973.62, 11.4911, 0.265763, 0, 0, 0.132491, 0.991184, 300, 300, 100, 1, 0, 0),
(5007965, 2003816, 1, -9705.17, -1975.93, 11.5246, 0.976548, 0, 0, 0.469102, 0.883144, 300, 300, 100, 1, 0, 0),
(5007966, 2003816, 1, -9703.11, -1975.87, 11.5782, 1.49805, 0, 0, 0.680927, 0.732352, 300, 300, 100, 1, 0, 0),
(5007967, 2003819, 1, -9706.14, -1973.65, 12.8693, 6.17667, 0, 0, 0.053232, -0.998582, 300, 300, 100, 1, 0, 0),
(5007968, 2004642, 1, -9703.66, -1977.29, 11.5773, 0.90979, 0, 0, 0.439368, 0.898307, 300, 300, 100, 1, 0, 0),
(5007970, 2003442, 1, -9711.47, -1967.55, 11.3935, 0.371797, 0, 0, 0.18483, 0.982771, 300, 300, 100, 1, 0, 0),
(5007973, 2003441, 1, -9712.3, -1978.49, 11.3215, 5.11166, 0, 0, 0.552834, -0.833291, 300, 300, 100, 1, 0, 0),
(5007974, 2004644, 1, -9710.72, -1980.81, 11.3718, 1.09199, 0, 0, 0.51927, 0.85461, 300, 300, 100, 1, 0, 0),
(5007975, 2001959, 1, -9707.27, -1965.59, 11.444, 2.97844, 0, 0, 0.996674, 0.0814863, 300, 300, 100, 1, 0, 0),
(5007976, 2001960, 1, -9710.89, -1969.54, 11.3888, 0.554699, 0, 0, 0.273807, 0.961785, 300, 300, 100, 1, 0, 0),
(5007977, 2003230, 1, -9694.86, -1971.7, 11.3602, 3.75991, 0, 0, 0.952589, -0.304259, 300, 300, 100, 1, 0, 0),
(5007978, 2003230, 1, -9695.72, -1970.4, 11.335, 3.75991, 0, 0, 0.952589, -0.304259, 300, 300, 100, 1, 0, 0),
(5007979, 2003230, 1, -9695.47, -1971.07, 12.5412, 3.7285, 0, 0, 0.957251, -0.289259, 300, 300, 100, 1, 0, 0),
(5007980, 2003230, 1, -9696.96, -1968.86, 11.3108, 3.69551, 0, 0, 0.961892, -0.27343, 300, 300, 100, 1, 0, 0),
(5007981, 2003229, 1, -9697.02, -1970.84, 11.3661, 0.476939, 0, 0, 0.236216, 0.971701, 300, 300, 100, 1, 0, 0),
(5007982, 2003227, 1, -9713.15, -1976.38, 11.2922, 3.55727, 0, 0, 0.978479, -0.206347, 300, 300, 100, 1, 0, 0),
(5007985, 2003528, 1, -9727.46, -1944.65, 6.04466, 5.22466, 0, 0, 0.504896, -0.86318, 300, 300, 100, 1, 0, 0),
(5007986, 22803, 1, -9728.87, -1942.85, 6.04364, 5.85926, 0, 0, 0.21038, -0.97762, 300, 300, 100, 1, 0, 0),
(5007987, 2003196, 1, -9727.42, -1945.12, 7.17277, 3.68764, 0, 0, 0.962961, -0.269642, 300, 300, 100, 1, 0, 0),
(5007988, 2003389, 1, -9727.66, -1944.07, 7.17309, 4.42198, 0, 0, 0.80198, -0.597351, 300, 300, 100, 1, 0, 0),
(5007990, 2003197, 1, -9727.73, -1944.55, 7.17299, 5.82784, 0, 0, 0.225712, -0.974194, 300, 300, 100, 1, 0, 0),
(5007991, 2010586, 1, -9726.92, -1944.4, 7.17274, 2.51032, 0, 0, 0.950599, 0.310422, 300, 300, 100, 1, 0, 0),
(5007992, 1000018, 1, -9727.2, -1943.81, 7.17263, 4.29316, 0, 0, 0.838766, -0.544492, 300, 300, 100, 1, 0, 0),
(5007994, 2003457, 1, -9728.3, -1944.59, 7.17274, 4.78508, 0, 0, 0.680946, -0.732334, 300, 300, 100, 1, 0, 0),
(5007996, 2003305, 1, -9725.36, -1936.08, 6.74583, 1.04581, 0, 0, 0.499398, 0.866373, 300, 300, 100, 1, 0, 0),
(5007998, 2003566, 1, -9719.35, -1949.92, 6.04649, 5.19822, 0, 0, 0.516266, -0.856428, 300, 300, 100, 1, 0, 0),
(5008000, 2003413, 1, -9718.28, -1934.92, 6.59586, 3.99971, 0, 0, 0.909357, -0.416017, 300, 300, 100, 1, 0, 0),
(5008001, 2003413, 1, -9731.5, -1942.59, 6.6005, 0.181104, 0, 0, 0.0904284, 0.995903, 300, 300, 100, 1, 0, 0),
(5008003, 2003414, 1, -9730.38, -1937.47, 6.59986, 5.74722, 0, 0, 0.264785, -0.964308, 300, 300, 100, 1, 0, 0),
(5008004, 2003116, 1, -9719.56, -1941.27, 9.36259, 2.09983, 0, 0, 0.867382, 0.497643, 300, 300, 100, 1, 0, 0),
(5008006, 2008699, 1, -9719.77, -1940.91, 7.16386, 5.2375, 0, 0, 0.499344, -0.866404, 300, 300, 100, 1, 0, 0),
(5008007, 2002792, 1, -9721.73, -1944.73, 7.24647, 3.65884, 0, 0, 0.966742, -0.255752, 300, 300, 100, 1, 0, 0),
(5008008, 2004429, 1, -9716.61, -1943.66, 6.04434, 4.11673, 0, 0, 0.883474, -0.46848, 300, 300, 100, 1, 0, 0),
(5008009, 2004430, 1, -9713.64, -1946.07, 6.04167, 1.43931, 0, 0, 0.659125, 0.752033, 300, 300, 100, 1, 0, 0),
(5008010, 2004431, 1, -9715.07, -1947.19, 6.04001, 0.115913, 0, 0, 0.0579242, 0.998321, 300, 300, 100, 1, 0, 0),
(5008011, 2007326, 1, -9713.81, -1944.62, 6.04791, 3.43081, 0, 0, 0.989562, -0.144107, 300, 300, 100, 1, 0, 0),
(5008012, 2003105, 1, -9725.97, -1947.14, 6.04687, 5.2223, 0, 0, 0.505915, -0.862583, 300, 300, 100, 1, 0, 0),
(5008013, 2003106, 1, -9727.53, -1948.08, 6.04719, 5.20267, 0, 0, 0.514357, -0.857576, 300, 300, 100, 1, 0, 0),
(5008014, 2003527, 1, -9725.38, -1952.29, 6.04761, 3.60202, 0, 0, 0.973617, -0.228187, 300, 300, 100, 1, 0, 0),
(5008015, 2003548, 1, -9724.09, -1952.74, 7.03791, 4.07248, 0, 0, 0.893623, -0.448818, 300, 300, 100, 1, 0, 0),
(5008016, 2003544, 1, -9724.63, -1952.28, 7.03773, 3.77795, 0, 0, 0.949806, -0.312838, 300, 300, 100, 1, 0, 0),
(5008017, 2008783, 1, -9723.28, -1957.86, 6.04711, 0.516982, 0, 0, 0.255622, 0.966777, 300, 300, 100, 1, 0, 0),
(5008018, 2006197, 1, -9725.7, -1951.11, 7.03891, 4.43298, 0, 0, 0.798684, -0.601751, 300, 300, 100, 1, 0, 0),
(5008019, 2003342, 1, -9724.76, -1954.96, 6.04797, 2.90144, 0, 0, 0.9928, 0.119788, 300, 300, 100, 1, 0, 0),
(5008021, 2003336, 1, -9725.39, -1953.61, 7.05759, 3.7159, 0, 0, 0.959054, -0.283222, 300, 300, 100, 1, 0, 0),
(5008022, 2003336, 1, -9725.2, -1953.22, 7.05141, 3.3232, 0, 0, 0.99588, -0.0906781, 300, 300, 100, 1, 0, 0),
(5008023, 2003336, 1, -9725.48, -1953.31, 7.05301, 6.23153, 0, 0, 0.0258254, -0.999666, 300, 300, 100, 1, 0, 0),
(5008024, 2003336, 1, -9725.32, -1952.92, 7.04052, 5.44456, 0, 0, 0.407131, -0.91337, 300, 300, 100, 1, 0, 0),
(5008026, 2003459, 1, -9725.1, -1951.31, 7.03812, 5.06207, 0, 0, 0.573323, -0.81933, 300, 300, 100, 1, 0, 0),
(5008028, 2003347, 1, -9725.78, -1952.37, 7.04249, 6.1467, 0, 0, 0.0681874, -0.997673, 300, 300, 100, 1, 0, 0),
(5008029, 2003348, 1, -9726.36, -1951.54, 7.04792, 5.04794, 0, 0, 0.5791, -0.815256, 300, 300, 100, 1, 0, 0),
(5008030, 2003348, 1, -9726.4, -1951.09, 7.04552, 5.33461, 0, 0, 0.456707, -0.889617, 300, 300, 100, 1, 0, 0),
(5008031, 2003350, 1, -9724.63, -1956.63, 7.24682, 0.51933, 0, 0, 0.256757, 0.966476, 300, 300, 100, 1, 0, 0),
(5008032, 2002794, 1, -9716.5, -1955.33, 6.05528, 2.08777, 0, 0, 0.864364, 0.502866, 300, 300, 100, 1, 0, 0),
(5008033, 1000092, 1, -9723.43, -1935.24, 6.0443, 4.68665, 0, 0, 0.716149, -0.697948, 300, 300, 100, 1, 0, 0),
(5008034, 1000073, 1, -9634.36, -1973.47, 0.743843, 1.29292, 0, 0, 0.602364, 0.798221, 300, 300, 100, 1, 0, 0);

replace into object_scaling values (17370400540291000952, 0.8);
replace into object_scaling values (17370400543696775761, 0.6);
replace into object_scaling values (17370417349903804936, 0.8);
replace into object_scaling values (17370417363963111841, 1.2);
replace into object_scaling values (17370417370019686838, 0.8);
replace into object_scaling values (17370417370019686913, 0.8);
replace into object_scaling values (17370417371026319891, 0.8);
replace into object_scaling values (17370417371395418607, 1.2);
replace into object_scaling values (17370417371395418608, 0.8);
replace into object_scaling values (17370417372301388326, 1.4);
replace into object_scaling values (17370417372653709948, 0.8);
replace into object_scaling values (17370417372720818662, 0.6);
replace into object_scaling values (17370417373391907350, 1.4);
replace into object_scaling values (17370417373391907364, 1.4);
replace into object_scaling values (17370417373391907365, 1.4);
replace into object_scaling values (17370417374062996084, 0.4);
replace into object_scaling values (17370417374465649280, 0.4);
replace into object_scaling values (17370417374465649281, 0.4);
replace into object_scaling values (17370417374482426499, 0.4);
replace into object_scaling values (17370417376395029058, 0.8);
replace into object_scaling values (17370417381226867269, 0.6);
replace into object_scaling values (17370417381226867294, 0.6);
replace into object_scaling values (17370417382334163533, 0.6);
replace into object_scaling values (17370417383927998948, 1.2);
replace into object_scaling values (17370417387618986410, 1.6);
replace into object_scaling values (17370417387769981526, 1.2);
replace into object_scaling values (17370434099504507298, 1.4);
replace into object_scaling values (17370434099521284515, 1.4);
