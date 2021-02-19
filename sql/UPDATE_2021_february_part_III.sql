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
