-- Updated loottable of Gurubashi Arena Chest:

replace into gameobject_loot_template values (16718, 80845, 4.3, 0, 1, 1, 0, 0, 10);
replace into gameobject_loot_template values (16718, 80846, 4.5, 0, 1, 1, 0, 0, 10);
replace into gameobject_loot_template values (16718, 80847, 4.2, 0, 1, 1, 0, 0, 10);
replace into gameobject_loot_template values (16718, 80848, 4.7, 0, 1, 1, 0, 0, 10);

replace into item_template values
 ('81124', '0', '4', '4', 'Helmet of the Scarlet Avenger', 'A blazing heart and a pile of heretics at your feet.', '40193', '3', '0', '1', '20094', '20094', '1', '-1', '-1', '62',
 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '13', '5', '10',
 '7', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '519', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '80', '0', '0', '0', '0', '49', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81125', '0', '4', '0', 'Inquisitor\'s Orb', '', '25072', '3', '0', '1', '15673', '15673', '23', '-1', '-1', '61',
 '56', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '8', '6', '13',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9294', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '6', '0', '0', '0', '0', '0', '0', '0', '49', '0', '0', '0',
 '0', '1', NULL);
 
replace into `creature_loot_template` (`entry`, `item`, chanceorquestchance, `groupid`) VALUES ('11032', '81124', 10, '6');
replace into `creature_loot_template` (`entry`, `item`, chanceorquestchance, `groupid`) VALUES ('11032', '81125', 10, '6');

-- Item Fixes and Rebalancing (Yes the item has the right ItemID)
replace into item_template values
 ('81123', '0', '4', '4', 'Crimson Defender\'s Leggings', '', '32337', '3', '65536', '1', '21346', '21346', '7', '-1', '-1', '61',
 '56', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '7', '20', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '557', '0', '0', '0',
 '0', '10', '0', '9343', '1', '0', '0', '-1', '0', '-1', '13383', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '100', '0', '0', '0', '0', '49', '0', '0', '0',
 '0', '1', NULL);
 update item_template set display_id = 25889 where entry = 81021;
 update item_template set display_id = 21606 where entry = 81020;
 update item_template set spelltrigger_2 = 1  where entry = 80826;
 update item_template set spellid_1 = 9416 where entry = 81018;
 update item_template set spellid_1 = 0 where entry = 80715;
 
 UPDATE `item_template` SET `inventory_type`='15' WHERE (`entry`='80546') AND (`patch`='0');

-- Mortal mode stuff:
 
replace into `mangos_string` (`entry`, `content_default`) VALUES 
(50300, 'A tragedy has occurred. %s has fallen in combat with mortal mode enabled at level %u. May this sacrifice not be forgotten.'),
(50301, '%s has reached level %u in mortal mode! Their ascendance towards immortality continues, however, so do the dangers they will face'),
(50302, '%s has transcended death and reached level 60 on mortal mode without dying once! %s shall henceforth be known as the Immortal!');

-- Apply once:
-- ALTER TABLE `characters` ADD `mortality_status` TINYINT(3) NOT NULL DEFAULT '0' AFTER `ignore_titles`;
-- 0: not mortal 1: mortal 2: immortal 3: dead


-- Kolkar Stormseer
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.3 WHERE `item` = 6661 AND `entry` = 9523;
-- Geopriest Gukk'rok
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES('5863','6661','0.3','0','1','1','0','0','10');
-- Sister Rathtalon
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES('5830','6661','0.3','0','1','1','0','0','10');
-- Muck Frenzy
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.3 WHERE `item` = 6661 AND `entry` = 8236;
-- General Twinbraid
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES('3414','6661','0.19','0','1','1','0','0','10');
-- Razorfen Servitor
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.17 WHERE `item` = 6661 AND `entry` = 6132;
-- Razormane Hunter
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.14 WHERE `item` = 6661 AND `entry` = 3265;
-- Thora Feathermoon
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.14 WHERE `item` = 6661 AND `entry` = 5798;
-- Razormane Defender
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.12 WHERE `item` = 6661 AND `entry` = 3266;
-- Prospector Khazgorm
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.12 WHERE `item` = 6661 AND `entry` = 3392;
-- Venture Co. Peon
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.11 WHERE `item` = 6661 AND `entry` = 3285;
-- Captain Fairmount
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.11 WHERE `item` = 6661 AND `entry` = 3393;
-- Tazan
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.11 WHERE `item` = 6661 AND `entry` = 6494;
-- Venture Co. Drudger
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.1 WHERE `item` = 6661 AND `entry` = 3284;
-- Thunderhead
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.1 WHERE `item` = 6661 AND `entry` = 3239;
-- Overseer Glibby
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES('6606','6661','0.1','0','1','1','0','0','10');
-- Savannah Prowler
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.09 WHERE `item` = 6661 AND `entry` = 3425;
-- Southsea Cannoneer
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.09 WHERE `item` = 6661 AND `entry` = 3382;
-- Savannah Patriarch
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.09 WHERE `item` = 6661 AND `entry` = 3241;
-- Zhevra Runner
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.08 WHERE `item` = 6661 AND `entry` = 3242;
-- Witchwing Harpy
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.08 WHERE `item` = 6661 AND `entry` = 3276;
-- Savannah Huntress
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.08 WHERE `item` = 6661 AND `entry` = 3415;
-- Hecklefang Hyena
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.08 WHERE `item` = 6661 AND `entry` = 4127;
-- Razormane Thornweaver
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.08 WHERE `item` = 6661 AND `entry` = 3268;
-- Greater Plainstrider
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.07 WHERE `item` = 6661 AND `entry` = 3244;
-- Fleeting Plainstrider
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.07 WHERE `item` = 6661 AND `entry` = 3246;
-- Witchwing Roguefeather
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.07 WHERE `item` = 6661 AND `entry` = 3277;
-- Sunscale Lashtail
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.07 WHERE `item` = 6661 AND `entry` = 3254;
-- Razormane Geomancer
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.07 WHERE `item` = 6661 AND `entry` = 3269;
-- Kolkar Bloodcharger
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.07 WHERE `item` = 6661 AND `entry` = 3397;
-- Venture Co. Mercenary
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.07 WHERE `item` = 6661 AND `entry` = 3282;
-- Kolkar Marauder
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.07 WHERE `item` = 6661 AND `entry` = 3275;
-- Kolkar Packhound
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.07 WHERE `item` = 6661 AND `entry` = 4316;
-- Razormane Mystic
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.07 WHERE `item` = 6661 AND `entry` = 3271;
-- Kolkar Pack Runner
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.07 WHERE `item` = 6661 AND `entry` = 3274;
-- Burning Blade Acolyte
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.07 WHERE `item` = 6661 AND `entry` = 3380;
-- Southsea Cutthroat
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.07 WHERE `item` = 6661 AND `entry` = 3383;
-- Washte Pawne
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES('3472','6661','0.07','0','1','1','0','0','10');
-- Southsea Brigand
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.06 WHERE `item` = 6661 AND `entry` = 3381;
-- Razormane Water Seeker
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.06 WHERE `item` = 6661 AND `entry` = 3267;
-- Razormane Seer
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.06 WHERE `item` = 6661 AND `entry` = 3458;
-- Theramore Preserver
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.06 WHERE `item` = 6661 AND `entry` = 3386;
-- Zhevra Charger
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.06 WHERE `item` = 6661 AND `entry` = 3426;
-- Savannah Highmane
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.06 WHERE `item` = 6661 AND `entry` = 3243;
-- Witchwing Slayer
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.05 WHERE `item` = 6661 AND `entry` = 3278;
-- Theramore Marine
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.05 WHERE `item` = 6661 AND `entry` = 3385;
-- Sunscale Screecher
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.05 WHERE `item` = 6661 AND `entry` = 3255;
-- Oasis Snapjaw
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.05 WHERE `item` = 6661 AND `entry` = 3461;
-- Venture Co. Enforcer
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.05 WHERE `item` = 6661 AND `entry` = 3283;
-- Razormane Pathfinder
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.05 WHERE `item` = 6661 AND `entry` = 3456;
-- Barrens Giraffe
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.05 WHERE `item` = 6661 AND `entry` = 3248;
-- Savannah Matriarch
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.05 WHERE `item` = 6661 AND `entry` = 3416;
-- Southsea Privateer
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.05 WHERE `item` = 6661 AND `entry` = 3384;
-- Wandering Barrens Giraffe
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.05 WHERE `item` = 6661 AND `entry` = 3463;
-- Cannoneer Smythe
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.05 WHERE `item` = 6661 AND `entry` = 3454;
-- Sunscale Scytheclaw
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.05 WHERE `item` = 6661 AND `entry` = 3256;
-- Bristleback Thornweaver
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.04 WHERE `item` = 6661 AND `entry` = 3261;
-- Kolkar Stormer
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.04 WHERE `item` = 6661 AND `entry` = 3273;
-- Bristleback Geomancer
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.04 WHERE `item` = 6661 AND `entry` = 3263;
-- Venture Co. Overseer
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.04 WHERE `item` = 6661 AND `entry` = 3286;
-- Bael'dun Excavator
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.04 WHERE `item` = 6661 AND `entry` = 3374;
-- Kolkar Invader
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.04 WHERE `item` = 6661 AND `entry` = 9524;
-- Hecklefang Snarler
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.04 WHERE `item` = 6661 AND `entry` = 4129;
-- Witchwing Ambusher
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.04 WHERE `item` = 6661 AND `entry` = 3279;
-- Burning Blade Bruiser
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.04 WHERE `item` = 6661 AND `entry` = 3379;
-- Thunderhawk Hatchling
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.04 WHERE `item` = 6661 AND `entry` = 3247;
-- Hezrul Bloodmark
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.04 WHERE `item` = 6661 AND `entry` = 3396;
-- Ishamuhale
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.04 WHERE `item` = 6661 AND `entry` = 3257;
-- Silithid Protector
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.04 WHERE `item` = 6661 AND `entry` = 3503;
-- Kolkar Wrangler
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.04 WHERE `item` = 6661 AND `entry` = 3272;
-- Bristleback Hunter
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.03 WHERE `item` = 6661 AND `entry` = 3258;
-- Ornery Plainstrider
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.03 WHERE `item` = 6661 AND `entry` = 3245;
-- Stormhide
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.03 WHERE `item` = 6661 AND `entry` = 3238;
-- Stormsnout
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.03 WHERE `item` = 6661 AND `entry` = 3240;
-- Witchwing Windcaller
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.03 WHERE `item` = 6661 AND `entry` = 3280;
-- Silithid Swarmer
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.03 WHERE `item` = 6661 AND `entry` = 3252;
-- Lost Barrens Kodo
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.03 WHERE `item` = 6661 AND `entry` = 3234;
-- Kreenig Snarlsnout
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.03 WHERE `item` = 6661 AND `entry` = 3438;
-- Thunderhawk Cloudscraper
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.03 WHERE `item` = 6661 AND `entry` = 3424;
-- Bael'dun Rifleman
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.02 WHERE `item` = 6661 AND `entry` = 3377;
-- Bael'dun Soldier
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.02 WHERE `item` = 6661 AND `entry` = 3376;
-- Razormane Warfrenzy
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.02 WHERE `item` = 6661 AND `entry` = 3459;
-- Razormane Stalker
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.02 WHERE `item` = 6661 AND `entry` = 3457;
-- Bael'dun Officer
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.02 WHERE `item` = 6661 AND `entry` = 3378;
-- Zhevra Courser
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.02 WHERE `item` = 6661 AND `entry` = 3466;
-- Nak
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.02 WHERE `item` = 6661 AND `entry` = 3434;
-- Supervisor Lugwizzle
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.02 WHERE `item` = 6661 AND `entry` = 3445;
-- Verog the Dervish
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES('3395','6661','0.02','0','1','1','0','0','10');
-- Bristleback Water Seeker
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 3260;
-- Hecklefang Stalker
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 4128;
-- Silithid Creeper
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 3250;
-- Greater Thunderhawk
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 3249;

-- Creatures below where not mentioned on wowhead, but had a drop chance for the recipe in vmangos db (since those are barrens creatures as well) -> setting dropchance to 0.01
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 3235;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 3236;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 3237;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 3251;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 3270;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 3375;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 3394;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 3436;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 3467;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 3470;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 3471;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 3473;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 3476;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 5797;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 5799;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 5800;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 5829;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 5832;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 5835;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 5841;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 5847;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 5865;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.01 WHERE `item` = 6661 AND `entry` = 6020;

update item_template set display_id = 7694 where entry = 51702;
update item_template set display_id = 40005 where entry = 81098;
update item_template set quality = 1 where entry = 50521;

UPDATE `item_template` SET `sheath`='2' WHERE (`entry`='80542') AND (`patch`='0');

replace into item_template values
 ('81142', '0', '4', '0', 'Qiraji Ceremonial Shirt', 'February 13, 2021 — The day the Old God C\'thun was vanquished by me (some other people were there too).', '40159', '3', '65568', '1', '0', '0', '4', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1',
 '0', '1', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 delete from creature_template where entry = 50016;
 delete from quest_template where entry in (50224, 50223, 50218, 50216, 50217, 	50219, 50222, 50221, 50218, 50214, 50225);
 
 
-- Events list for Flame of Ragnaros
DELETE FROM `creature_ai_events` WHERE `creature_id`=13148;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1314801, 13148, 0, 11, 0, 100, 0, 0, 0, 0, 0, 1314801, 0, 0, 'Flame of Ragnaros - Cast Intense Heat on Spawn');
DELETE FROM `creature_ai_scripts` WHERE `id`=1314801;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1314801, 0, 15, 21155, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flame of Ragnaros - Cast Spell Intense Heat');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1314801, 0, 18, 1000, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flame of Ragnaros - Despawn');
UPDATE `creature_template` SET `faction`=54, `unit_flags`=33554432, `level_min`=60, `level_max`=60, `health_min`=3052, `health_max`=3052, `ai_name`='EventAI', `script_name`='', `flags_extra`=131072 WHERE `entry`=13148;

update item_template set spellid_2 = 9233, spelltrigger_2 = 1 where entry = 81124;

REPLACE INTO `item_template` VALUES (81145, 0, 12, 0, 'Illusion: Pandaren', 'Family. Friends. Food. These are what matter most.', 32282, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31726, 0, 0, 0, 10, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_morph_gnoll');

update item_template set required_level = 57, item_level = 62 where entry = 81057;
-- Dark Reaver of Karazhan Loot!
replace into item_template values
 ('51741', '0', '4', '3', 'Cryptbone Hauberk', '', '26204', '3', '0', '1', '33826', '33826', '5', '-1', '-1', '62',
 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '12', '5', '12',
 '7', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '360', '0', '0', '0',
 '0', '0', '0', '13669', '1', '0', '0', '-1', '0', '-1', '9344', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '120', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51742', '0', '4', '1', 'Necrotic Mantle', '', '28705', '3', '0', '1', '17164', '17164', '3', '-1', '-1', '62',
 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '16', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '66', '0', '0', '0',
 '0', '0', '0', '9324', '1', '0', '0', '-1', '0', '-1', '18379', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '50', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('51743', '0', '4', '0', 'Lost Templar\'s Artifact', 'He met a terrible fate.', '21604', '3', '192', '1', '34562', '35462', '23', '-1', '-1', '62',
 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '8', '6', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '10', '0', '9406', '1', '0', '0', '-1', '0', '-1', '21360', '1', '0', '0', '-1', '0', '-1', '585', '0',
 '0', '0', '900', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '6', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51744', '0', '4', '2', 'Rothide Armguards', '', '27954', '3', '0', '1', '14356', '14356', '9', '-1', '-1', '62',
 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '12', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '76', '0', '0', '0',
 '0', '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '9329', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '35', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51745', '0', '4', '2', 'Blighted Mind Leggings', '', '25169', '3', '0', '1', '26254', '26254', '7', '-1', '-1', '62',
 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '15', '5', '22',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '153', '0', '0', '0',
 '0', '0', '0', '23727', '1', '0', '0', '-1', '0', '-1', '25975', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '75', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51746', '0', '2', '3', 'Shadowblaster', '', '20663', '3', '0', '1', '43256', '43256', '15', '-1', '-1', '62',
 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '9', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3100', '100',
 '3', '126', '65', '0', '2', '5', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '21431', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '75', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51747', '0', '4', '0', 'Mindpiercer Band', '', '9840', '3', '0', '1', '12137', '12137', '11', '-1', '-1', '62',
 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '10', '7', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '25975', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('51748', '0', '4', '1', 'Necromancer\'s Skullcap', '', '50640', '3', '0', '1', '16784', '16784', '1', '-1', '-1', '62',
 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '15', '7', '22',
 '6', '-12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '150', '0', '0', '0',
 '0', '0', '0', '9406', '1', '0', '0', '-1', '0', '-1', '21348', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '50', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('51749', '0', '4', '3', 'Stonescale Girdle', '', '27323', '3', '0', '1', '15130', '15130', '6', '-1', '-1', '62',
 '57', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '14', '3', '-6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '280', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '9330', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '40', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
replace into creature_loot_template values (80936, 51741, 10.5, 3, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (80936, 51742, 10.5, 3, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (80936, 51743, 10.5, 3, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (80936, 51744, 10.5, 3, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (80936, 51745, 10.5, 3, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (80936, 51746, 10.5, 3, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (80936, 51747, 10.5, 3, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (80936, 51748, 10.5, 3, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (80936, 51749, 10.5, 3, 1, 1, 0, 0, 10); 

update item_template set display_id = 30608, description = 'Dead or alive, you\'re coming with me.' where entry = 81090;

REPLACE INTO `creature_template` VALUES (51688, 0, 2663, 0, 0, 0, 'Lamella', 'Mage Apprentice', 0, 20, 20, 919, 919, 0, 0, 852, 68, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 24, 31, 0, 90, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 31.856, 43.802, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 5659, 0, 0, 0, 0, 524298, '');

update creature_template set equipment_id = 2358 where entry = 51688;

REPLACE INTO `creature_template` VALUES (51689, 0, 7624, 0, 0, 0, 'Bumper', 'Mail Armor Merchant', 9509, 30, 30, 1605, 1605, 0, 0, 1200, 104, 16388, 1, 1.14286, 1.35, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');

REPLACE INTO `npc_vendor` VALUES (51689, 285, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51689, 286, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51689, 287, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51689, 718, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51689, 847, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51689, 848, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51689, 849, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51689, 850, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51689, 1202, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51689, 1845, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51689, 1846, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51689, 1852, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51689, 1853, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51689, 2445, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51689, 17187, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51689, 17188, 0, 0, 0, 0);

-- New non-combat pets:

replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(81150, 15, 2, 'Phoenix Hatchling', 'A child of phoenix god Al\'ar, the hatchling takes flight immediately after birth.', 34374, 3, 1, 28505, 1500);
replace into creature_template (entry, display_id1, display_id2, display_id3, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
(81008, 18179, 0, 0, 'Phoenix Hatchling', '', '1', '1', '64', '64', '35', '', 0.3);
replace into custom_pet_entry_relation (item_entry, creature_entry) values 
(81150, 81008);

replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(81151, 15, 2, 'Spirit Darter', 'This unique species of faerie dragon is not usually found on Azeroth.', 22717, 3, 1, 28505, 1500);
replace into creature_template (entry, display_id1, display_id2, display_id3, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
(81009, 18425, 0, 0, 'Spirit Darter', '', '1', '1', '64', '64', '35', '', 0.5);
replace into custom_pet_entry_relation (item_entry, creature_entry) values 
(81151, 81009);

replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(81152, 15, 2, 'Tiny Pterodactyl', '', 20629, 2, 1, 28505, 1500);
replace into creature_template (entry, display_id1, display_id2, display_id3, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
(81010, 18371, 0, 0, 'Tiny Pterodactyl', '', '1', '1', '64', '64', '35', '', 0.3);
replace into custom_pet_entry_relation (item_entry, creature_entry) values 
(81152, 81010);

REPLACE INTO `item_template` VALUES (81153, 10, 15, 0, 'Reins of the Purple War Bear', 'This ursine mount\'s swiftness is enhanced by its heavy armor.', 28952, 4, 64, 1, 0, 0, 0, -1, -1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46204, 0, 0, 0, 0, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (81012, 0, 18488, 0, 0, 0, 'Armored Purple War Bear', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
replace into custom_mount_entry_relation values (81153, 81012);

REPLACE INTO `item_template` VALUES (81154, 10, 15, 0, 'Reins of the Brown War Bear', 'This ursine mount\'s swiftness is enhanced by its heavy armor.', 28952, 4, 64, 1, 0, 0, 0, -1, -1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46204, 0, 0, 0, 0, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (81013, 0, 18481, 0, 0, 0, 'Armored Brown War Bear', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
replace into custom_mount_entry_relation values (81154, 81013);

REPLACE INTO `item_template` VALUES (81155, 10, 15, 0, 'Reins of the Red War Bear', 'This ursine mount\'s swiftness is enhanced by its heavy armor.', 28952, 4, 64, 1, 0, 0, 0, -1, -1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46204, 0, 0, 0, 0, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (81014, 0, 18484, 0, 0, 0, 'Armored Red War Bear', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
replace into custom_mount_entry_relation values (81155, 81014);

REPLACE INTO `item_template` VALUES (81156, 10, 15, 0, 'Reins of the Armored Dragonhawk', 'Dragonhawks are among the deadliest known predators. They are able to spot prey from great distances, rush in, and rend with both talon and beak.', 34380, 4, 64, 1, 0, 0, 0, -1, -1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46204, 0, 0, 0, 0, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (81015, 0, 18480, 0, 0, 0, 'Armored Dragonhawk', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
replace into custom_mount_entry_relation values (81156, 81015);

REPLACE INTO `item_template` VALUES (81157, 10, 15, 0, 'Reins of the Green War Bear', 'This ursine mount\'s swiftness is enhanced by its heavy armor.', 28952, 4, 64, 1, 0, 0, 0, -1, -1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46204, 0, 0, 0, 0, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (81016, 0, 18487, 0, 0, 0, 'Armored Green War Bear', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
replace into custom_mount_entry_relation values (81157, 81016);

REPLACE INTO `item_template` VALUES (81158, 10, 15, 0, 'Reins of the White War Bear', 'This ursine mount\'s swiftness is enhanced by its heavy armor.', 28952, 4, 64, 1, 0, 0, 0, -1, -1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46204, 0, 0, 0, 0, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (81017, 0, 18491, 0, 0, 0, 'Armored White War Bear', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
replace into custom_mount_entry_relation values (81158, 81017);

-- .cast 46202 Armored Frostmane Riding Bear
-- .cast 46204 Armored Amani Riding Bear

REPLACE INTO `item_template` VALUES (51644, 0, 15, 0, 'Kazgrim\'s Silver Coin', 'I wish to be the true warchief.', 9649, 2, 0, 1, 4000, 4000, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- reaver fix

update creature_template set health_min = 120000, health_max = 150000, nature_res = 30, shadow_res = 30, frost_res = 30, arcane_res = 30, armor = 5560 where entry = 80936;

UPDATE creature_template SET faction = 1682 WHERE entry = 80856;

-- misc

update item_template set description = 'Who would leave such a cute shark behind?' where entry = 21168;

replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(81159, 15, 2, 'Tiny Shore Crab', 'These arthropods line many Azerothian shores and seek to fulfill their one true desire: to pinch.', 33467, 2, 1, 28505, 1500);
replace into creature_template (entry, display_id1, display_id2, display_id3, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
(81019, 1307, 0, 0, 'Pinchy', '', '1', '1', '64', '64', '35', '', 0.3);
replace into custom_pet_entry_relation (item_entry, creature_entry) values 
(81159, 81019);

replace into item_template values
 ('81181', '0', '0', '0', 'Crab Shell', '', '8743', '1', '0', '1', '0', '0', '0', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '4', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 update item_template set stackable = 10 where entry in (81181);
 
 replace into creature_loot_template values (3106, 81181, -70, 5, 1, 1, 0, 0, 10); 
 replace into creature_loot_template values (3107, 81181, -70, 5, 1, 1, 0, 0, 10); 

set @quest_entry = 80384;
set @quest_zone = 14;
set @title = 'Pinch of Salt';
set @description = 'Dese crabs, troublemakers dey are!\n\nCutting my nets with the claws, scaring all the fish away! Every time I chase them dey bury themselves to the sand, Lau\'Tiki isn\'t as nimble as his younger years.\n\nAbout time for some revenge, pesky shell-walkers will get what dey deserve for messin\' with Lau\'Tiki!\n\nHunt them, bring me their shells and I might let you in a little secret.';
set @objective = 'Lau\'Tiki wants you to bring him 8 Crab Shells.';
set @completetext = 'Ahahahhah! Good job, mon! For my part of the deal...\n\n<Lau\'Tiki crack opens one of the shells and extracts something from it.>\n\nHere\'s da secret, mon. This tiny pesky bastard might come in handy when ya tame it and feed it. Though never fully trust it, dey like nibbling on fingers.';
set @incompletetext = 'Hunt them, bring me their shells!';
set @faction_id = 530;
set @faction_count = 250;
set @xp_or_money = 465;
set @reward_money = 0; 
set @quest_level = 6;
set @min_level = 6;
set @questgiver_id = 5941;
set @quest_finisher = 5941;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 0;
set @RewChoiceItemId1 = 0; 
set @RewChoiceItemId2 = 0; 
set @RewChoiceItemId3 = 0;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 0;
set @RewChoiceItemCount2 = 0;
set @RewChoiceItemCount3 = 0;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 81159;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 1;
set @reward_item_2_count = 0;
set @reward_item_3_count = 0;
set @reward_item_4_count = 0;
set @creature_to_kill_1 = 0;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 0;
set @creature_to_kill_2_count = 0;
set @creature_to_kill_3_count = 0;
set @creature_to_kill_4_count = 0;
set @required_item_1 = 81181; 
set @required_item_2 = 0;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 8;
set @required_item_2_count = 0;
set @required_item_3_count = 0;
set @required_item_4_count = 0;
replace into quest_template values 
(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest
where entry = @quest_entry;	

-- Darkspear stuff:

update creature_template set name = 'Vuh\'sha Torntusk' where entry = 80949;

update item_template set bonding = 1, spellid_1 = 4971, disenchant_id = 0, required_reputation_faction = 530, required_reputation_rank = 6 where entry = 80806;
update item_template set bonding = 1, spellid_2 = 0, disenchant_id = 0, required_reputation_faction = 530, required_reputation_rank = 6, required_level = 35 where entry = 80785;

update item_template set bonding = 1, disenchant_id = 0, required_reputation_faction = 530, required_reputation_rank = 6, required_level = 35 where entry = 80797;

REPLACE INTO `item_template` VALUES (81182, 10, 15, 0, 'Swift Darkspear Raptor', 'Speed, cunning, and ferocity are the things trolls and raptors admire about each other.', 17494, 4, 64, 1, 1000000, 0, 0, -1, 434, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45041, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set required_reputation_faction = 530, required_reputation_rank = 7 where entry = 81182;


replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(81183, 15, 2, 'Sunscale Hatchling', 'The bright scales of this rare wind serpent soak up the sunlight to keep it warm, even in shade.', 34380, 2, 1, 28505, 1500);
replace into creature_template (entry, display_id1, display_id2, display_id3, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
(81020, 18386, 0, 0, 'Sunscale Hatchling', '', '1', '1', '64', '64', '35', '', 0.3);
replace into custom_pet_entry_relation (item_entry, creature_entry) values 
(81183, 81020);

update item_template set required_reputation_faction = 530, required_reputation_rank = 7, buy_price = 55000, sell_price = 55000 where entry = 81183;

REPLACE INTO `npc_vendor` VALUES (80949, 80806, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (80949, 80785, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (80949, 80797, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (80949, 81183, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (80949, 81182, 0, 0, 0, 0);

-- Wildhammer

update item_template set required_reputation_faction = 471, required_reputation_rank = 6, display_id = 18053, description = 'These hatchlings are descendants of the same gryphons ridden by Falstad and his entourage into Grim Batol.', buy_price = 55000, sell_price = 55000 where entry = 51760; 

update creature_template set scale = 0.3 where entry = 51583;

REPLACE INTO `item_template` VALUES (81185, 10, 15, 0, 'Aerie Peak Gryphon', 'Gryphons\' keen eyesight allows them to see over vast distances and warn their riders of any dangers that lie ahead.', 19529, 4, 64, 1, 1000000, 0, 0, -1, 589, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46219, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `item_template` VALUES (81186, 10, 15, 0, 'Armored Aerie Peak Gryphon', 'This noble gryphon is as staunch a battle companion as any member of the Alliance could ask for.', 19529, 4, 64, 1, 1000000, 0, 0, -1, 589, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46220, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set required_reputation_faction = 471, required_reputation_rank = 7  where entry = 81185; 
update item_template set required_reputation_faction = 471, required_reputation_rank = 7  where entry = 81186; 

update item_template set required_reputation_faction = 471, required_reputation_rank = 6, buy_price = 95000, sell_price = 95000, name = 'Wildhammer Warpaint', description = 'A set of blue dyes used by warriors of the Wildhammers to adorn themselves with whenever they march to war.', display_Id = 3665  where entry = 50204; 

delete from npc_vendor where entry = 80947;

REPLACE INTO `npc_vendor` VALUES (80947, 80312, 0, 0, 0, 0); -- Tabard
REPLACE INTO `npc_vendor` VALUES (80947, 51760, 0, 0, 0, 0); -- Beaky
REPLACE INTO `npc_vendor` VALUES (80947, 81185, 0, 0, 0, 0); -- Gryphon
REPLACE INTO `npc_vendor` VALUES (80947, 81186, 0, 0, 0, 0); -- Armored Gryphon
REPLACE INTO `npc_vendor` VALUES (80947, 50204, 0, 0, 0, 0); -- Skin

-- Wildhammer quest update: 471

-- Undercity quartermaster: https://database.turtle-wow.org/?npc=80951
-- select * from character_inventory where item_template = 50013;
-- https://database.turtle-wow.org/?item=80453
-- Golem: 50013

