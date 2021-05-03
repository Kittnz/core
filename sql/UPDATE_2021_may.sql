-- New Gloves Enchats (For when 1.15.2 is out, learning spells are currently broken.)
replace into item_template values
 ('70000', '0', '9', '8', 'Enchant Gloves - Nature Power', '', '32845', '3', '0', '1', '100000', '25000', '0', '-1', '-1', '70',
 '0', '333', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '46602', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('70001', '0', '9', '8', 'Enchant Gloves - Arcane Power', '', '634', '3', '0', '1', '100000', '25000', '0', '-1', '-1', '70',
 '0', '333', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '46601', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('70002', '0', '9', '8', 'Enchant Gloves - Holy Power', '', '1037', '3', '0', '1', '100000', '25000', '0', '-1', '-1', '70',
 '0', '333', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '46603', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

update quest_template set details = 'Zalazane\'s Apprentice','That foolish mongrel Makasgar decided he no longer needs the aid of his master and has grown beyond my teachings.\n\n...\n\nThat mojo was required for a powerful ritual to help us take over the Sen’jin Village and later the whole of Durotar.\n\nOur scouts reported seeing him fleeing to mainland, follow the coast and find him. Go do your master’s bidding and bring me his head!' where entry = 59995;

update item_template set name = 'Winterspring Tea Leaf' where entry = 80880;

delete from quest_template where entry in (7676, 7671, 7675, 7664, 7672, 7665);

update item_template set description = 'Male rams will often smash their thick skulls against each other for hours to impress a female. In that way, they\'re very similar to dwarves.' where entry in (5872, 13329, 5864, 5873);

update quest_template set requiredraces = 434 where entry = 4982;
update quest_template set requiredraces = 0 where entry = 3321;

update creature set spawntimesecsmin = 300, spawntimesecsmax = 600 where id in (40000,40004,80252,80253,80254,80255,80256,80257,80258,80259,80260,40025,80152);

update item_template set description = 'Just remember to have your special little passenger straped in tightly before running off at top speed on an adventure.' where entry = 81091;

-- Prevent triggers in ZG from aggroing players.
UPDATE `creature_template` SET `ai_name`='NullAI', `flags_extra`=133122 WHERE `entry` IN (14758, 15091);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `conditionId`, `inverseEffectMask`, `build_min`, `build_max`) VALUES (24211, 1, 15101, 0, 0, 4695, 5875);



-- Quests: Winterhoof Cleansing, Thunderhorn Cleansing, Wildmane Cleansing
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `state`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES 
(332887, 2904, 1, -2544.54, -712.088, -9.232, 0.767944, 1, -60, -60),
(332888, 2904, 1, -1823.85, -237.555, -9.42485, 0.069812, 1, -60, -60),
(332889, 2904, 1, -753.256, -149.158, -29.0568, 3.08918, 1, -60, -60);

DELETE FROM `event_scripts` WHERE `id` IN (466, 467, 468);
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(466, 0, 9, 332887, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Winterhoof Cleansing - Respawn Water Well Cleansing Aura (GUID: 332887)"),
(467, 0, 9, 332888, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Thunderhorn Cleansing - Respawn Water Well Cleansing Aura (GUID: 332888)"),
(468, 0, 9, 332889, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Wildmane Cleansing - Respawn Water Well Cleansing Aura (GUID: 332889)");

-- Fixed Okla position
UPDATE `creature` SET `position_x` = 270.076, `position_y` = -3036.6, `position_z` = 97.6192 WHERE `id` = 14873;

-- Completion script for quest 'Call of Fire' (Part 3)
UPDATE `quest_template` SET `CompleteScript` = 1525 WHERE `entry` = 1525;

DELETE FROM `quest_end_scripts` WHERE `id` = 1525;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1525, 1, 15, 9200, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Telf Joolam - Cast Spell Create Sapta");

-- Completion script for quest 'Call of Fire' (Part 5)
UPDATE `quest_template` SET `CompleteScript` = 1527 WHERE `entry` = 1527;

DELETE FROM `quest_end_scripts` WHERE `id` = 1527;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1527, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2181, 0, 0, 0, 0, 0, 0, 0, 0, "Kranal Fiss - Say Text");

-- Quest Greets Rus Locales
UPDATE `quest_greeting` SET `content_loc8` = "Чтобы выжить, мы должны следовать путям природы и постигать ее тайны." WHERE `entry` = 3419;

-- The Stagnant Oasis
DELETE FROM `event_scripts` WHERE `id` = 525;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(525, 0, 9, 332890, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "The Stagnant Oasis - Respawn Fissure Plant (GUID: 332890)"),
(525, 0, 9, 332891, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "The Stagnant Oasis - Respawn Fissure Plant (GUID: 332891)"),
(525, 0, 9, 332892, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "The Stagnant Oasis - Respawn Fissure Plant (GUID: 332892)"),
(525, 0, 9, 332893, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "The Stagnant Oasis - Respawn Fissure Plant (GUID: 332893)"),
(525, 0, 9, 332894, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "The Stagnant Oasis - Respawn Fissure Plant (GUID: 332894)");

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `state`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES 
(332890, 3743, 1, -1278.97, -3008.1, 72.0716, 0.86185, 1, -62, -62),
(332891, 3743, 1, -1275.4, -3006.46, 72.5618, 1.29382, 1, -62, -62),
(332892, 3743, 1, -1279.63, -3014.32, 71.7535, 0.539832, 1, -62, -62),
(332893, 3743, 1, -1277.91, -3016.5, 72.699, 0.889334, 1, -62, -62),
(332894, 3743, 1, -1274.86, -3016.2, 72.6146, 1.63939, 1, -62, -62);



-- Ashenvale Quest Rewards
replace into item_template values
 ('70003', '0', '4', '0', 'Hawkspear\'s Necklace', 'Assorted bones on a string.', '9852', '2', '0', '1', '5011', '1253', '2', '-1', '-1', '30',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '3', '6', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('70004', '0', '4', '2', 'Stalker\'s Bands', '', '3628', '2', '0', '1', '5324', '1331', '9', '-1', '-1', '30',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '3', '7', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '41', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '30', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('70005', '0', '4', '1', 'Ceremonial Robes', '', '12392', '2', '0', '1', '7384', '1846', '5', '-1', '-1', '30',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '4', '6', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '43', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '70', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('70006', '0', '4', '3', 'Leafcovered Spaulders', 'Meant for camouflage', '2569', '2', '0', '1', '7372', '1843', '3', '-1', '-1', '30',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '4', '6', '2',
 '7', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '149', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('70007', '0', '12', '', 'Elder Ashenvale Bear Pelt', 'At its best in a leatherworker\'s hands.', '2107', '1', '0', '1', '', '', '0', '-1', '-1', '',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '', '0', '2',
 '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '23', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('70008', '0', '4', '1', 'Ashenvale Shawl', '', '7547', '2', '0', '1', '6616', '1654', '16', '-1', '-1', '32',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '6', '4', '7', '5',
 '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '22', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('70009', '0', '4', '0', 'Frog Juice', 'Freshly squeezed frogs.', '6532', '2', '0', '1', '13636', '3409', '23', '-1', '-1', '30',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '8', '6', '-4',
 '7', '-4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '3', '6', '0', '0', '0', '0', '0', '0', '0', '24', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('70010', '0', '2', '10', 'Infused Briarwood Staff', '', '9122', '2', '0', '1', '23644', '5912', '17', '-1', '-1', '30',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '5', '7', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2600', '0',
 '0', '42', '64', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '21011', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '2', '0', '0', '85', '0', '0', '0', '0', '24', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('70011', '0', '2', '1', 'Baneful Edge', '', '22250', '2', '0', '1', '23368', '5842', '17', '-1', '-1', '30',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3200', '0',
 '0', '52', '79', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '20858', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '85', '0', '0', '0', '0', '24', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('70012', '0', '4', '0', 'Fel-Infused Ring', '', '31576', '3', '0', '1', '12748', '3187', '11', '-1', '-1', '33',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '5', '3', '5',
 '7', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '24', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('70013', '0', '2', '19', 'Diathorus\' Claw', '', '33125', '3', '0', '1', '22768', '5692', '15', '-1', '-1', '33',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1900', '100',
 '0', '39', '71', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '65', '0', '0', '0', '0', '43', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('70014', '0', '4', '2', 'Hunter\'s Headdress', '', '17277', '2', '0', '1', '7124', '1781', '1', '-1', '-1', '30',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '76', '0', '0', '0',
 '0', '0', '0', '46041', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '50', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);


-- update emote id's
UPDATE `broadcast_text` SET `emoteid1` = 1 WHERE `id` = 6005;
UPDATE `broadcast_text` SET `emoteid1` = 1 WHERE `id` = 6020;
UPDATE `broadcast_text` SET `emoteid1` = 25 WHERE `id` = 5966;
UPDATE `broadcast_text` SET `emoteid1` = 5 WHERE `id` = 5968;
UPDATE `broadcast_text` SET `emoteid1` = 5 WHERE `id` = 5967;
UPDATE `broadcast_text` SET `emoteid1` = 5 WHERE `id` = 6025;
UPDATE `broadcast_text` SET `emoteid1` = 21 WHERE `id` = 6072;
UPDATE `broadcast_text` SET `emoteid1` = 21 WHERE `id` = 6073;
UPDATE `broadcast_text` SET `emoteid1` = 21 WHERE `id` = 6074;
UPDATE `broadcast_text` SET `emoteid1` = 1 WHERE `id` = 6091;
UPDATE `broadcast_text` SET `emoteid1` = 21 WHERE `id` = 6098;
UPDATE `broadcast_text` SET `emoteid1` = 2 WHERE `id` = 6099;
UPDATE `broadcast_text` SET `emoteid1` = 1 WHERE `id` = 6100;

-- Add Krang Stonehoof Event and Scripts
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 3063;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (306301, 3063, 0, 1, 0, 100, 1, 60000, 60000, 360000, 360000, 306301, 0, 0, 'Krang Stonehoof - Start Script OOC');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 0, 39, 306301, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Start Script');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 0, 28, 0, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Set Stand State');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 0, 68, 1072101, 2, 10721, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Novice Warrior - Start Script For All - Stand');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 0, 28, 0, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Set Stand State');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6005, 0, 0, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Talk');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 6, 3, 0, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, -2356.47, -518.23, -9.42476, 1.21545, 0, 'Hulfnar Stonetotem - Move');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 6, 3, 0, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, -2338.61, -513.379, -9.42474, 2.06132, 0, 'Thontek Rumblehoof - Move');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 9, 1, 2, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Emote');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 9, 1, 2, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Emote');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6020, 0, 0, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Talk');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 15, 35, 1, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0.264, 0, 'Hulfnar Stonetotem - Orientation');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 15, 35, 1, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 3.405, 0, 'Thontek Rumblehoof - Orientation');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 18, 0, 0, 0, 0, 0, 24781, 0, 9, 2, 5966, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Talk');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 24, 0, 0, 0, 0, 0, 24784, 0, 9, 2, 5968, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Talk');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 27, 1, 25, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Emote');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 29, 0, 0, 0, 0, 0, 24781, 0, 9, 2, 5967, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Talk');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6025, 0, 0, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Talk');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 36, 68, 1072103, 2, 10721, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Novice Warrior - Start Script For All - Set Phase 1');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 36, 1, 15, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Emote');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 36, 1, 15, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Emote');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 37, 4, 46, 512, 2, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Modify Flags');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 37, 22, 1607, 3, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Set Faction');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 37, 22, 1606, 3, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Set Faction');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 37, 4, 46, 512, 2, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Modify Flags');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 38, 39, 2478101, 0, 0, 0, 24781, 0, 9, 2, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Start Script - Start Attack');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 38, 39, 2478401, 0, 0, 0, 24784, 0, 9, 2, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Start Script - Start Attack');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 54, 15, 16740, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Cast Spell');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6072, 6073, 6074, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Talk');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 64, 15, 16740, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Cast Spell');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6072, 6073, 6074, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Talk');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 70, 68, 1072104, 2, 10721, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Novice Warrior - Start Script For All - Set Phase 0');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 70, 35, 1, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0.264, 0, 'Hulfnar Stonetotem - Orientation');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6091, 0, 0, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Talk');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 70, 73, 0, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Combat Stop');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 70, 73, 0, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Combat Stop');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 70, 35, 1, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 3.405, 0, 'Thontek Rumblehoof - Orientation');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 71, 68, 1072102, 2, 10721, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Novice Warrior - Start Script For All');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6098, 0, 0, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Talk');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 76, 1, 2, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Emote');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 76, 1, 2, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Emote');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6099, 0, 0, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Talk');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 80, 35, 0, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Orientation');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 80, 35, 0, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Orientation');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 81, 1, 2, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Emote');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 81, 1, 2, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Emote');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6100, 0, 0, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Talk');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 85, 3, 0, 0, 2, 0, 24781, 0, 9, 2, 0, 0, 0, 0, -2360.29, -519.246, -9.29993, 0.261799, 0, 'Hulfnar Stonetotem - Move');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 85, 3, 0, 0, 2, 0, 24784, 0, 9, 2, 0, 0, 0, 0, -2333.96, -512.051, -9.29993, 3.40339, 0, 'Thontek Rumblehoof - Move');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 92, 28, 1, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Set Stand State');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 92, 28, 1, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Set Stand State');

-- Add Novice Warrior Event and Scripts
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1072102, 10721, 0, 1, 1, 100, 1, 0, 0, 3000, 7000, 1072102, 0, 0, 'Novice Warrior - Emote OOC');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1072102, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Novice Warrior - Emote');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1072101, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Novice Warrior - Set Stand State');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1072102, 0, 28, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Novice Warrior - Set Stand State');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1072103, 0, 44, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Novice Warrior - Set Phase 1');
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1072104, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Novice Warrior - Set Phase 0');

-- Add Thontek Rumblehoof Generic Script
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2478401, 0, 26, 0, 0, 0, 0, 24781, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Start Attack');

-- Add Hulfnar Stonetotem Generic Script
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2478101, 0, 26, 0, 0, 0, 0, 24784, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Start Attack');

-- Remove Events list for Thontek Rumblehoof and Hulfnar Stonetotem
UPDATE `creature_template` SET `ai_name` = '' WHERE `entry` IN (10600, 10599);
DELETE FROM `creature_ai_events` WHERE `creature_id` IN (10600, 10599);
DELETE FROM `creature_ai_scripts` WHERE `id` IN (1060001, 1059901);


