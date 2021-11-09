ALTER TABLE `areatrigger_tavern`
	DROP COLUMN `patch_min`;

ALTER TABLE `areatrigger_teleport`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`id`) USING BTREE;
ALTER TABLE `areatrigger_teleport`
	DROP COLUMN `patch`;

DELETE FROM `areatrigger_template` WHERE `id`=101 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=101 AND `build`=4375;
DELETE FROM `areatrigger_template` WHERE `id`=220 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=708 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=721 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=1023 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=1025 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=2214 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=2216 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=2217 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=2217 AND `build`=4375;
DELETE FROM `areatrigger_template` WHERE `id`=2230 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=2267 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=2267 AND `build`=4449;
DELETE FROM `areatrigger_template` WHERE `id`=2286 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=2413 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=2567 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=2647 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=2786 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=3133 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=3134 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=3184 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=3184 AND `build`=4297;
DELETE FROM `areatrigger_template` WHERE `id`=3185 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=3185 AND `build`=4375;
DELETE FROM `areatrigger_template` WHERE `id`=3186 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=3186 AND `build`=4297;
DELETE FROM `areatrigger_template` WHERE `id`=3187 AND `build`=4222;
DELETE FROM `areatrigger_template` WHERE `id`=3187 AND `build`=4297;
DELETE FROM `areatrigger_template` WHERE `id`=3326 AND `build`=4297;
DELETE FROM `areatrigger_template` WHERE `id`=3326 AND `build`=4449;
DELETE FROM `areatrigger_template` WHERE `id`=3328 AND `build`=4297;
DELETE FROM `areatrigger_template` WHERE `id`=3329 AND `build`=4297;
DELETE FROM `areatrigger_template` WHERE `id`=3329 AND `build`=4449;
DELETE FROM `areatrigger_template` WHERE `id`=3330 AND `build`=4297;
DELETE FROM `areatrigger_template` WHERE `id`=3330 AND `build`=4449;
DELETE FROM `areatrigger_template` WHERE `id`=3331 AND `build`=4297;
DELETE FROM `areatrigger_template` WHERE `id`=3331 AND `build`=4449;
DELETE FROM `areatrigger_template` WHERE `id`=3528 AND `build`=4297;
DELETE FROM `areatrigger_template` WHERE `id`=3528 AND `build`=4375;
DELETE FROM `areatrigger_template` WHERE `id`=3646 AND `build`=4449;
DELETE FROM `areatrigger_template` WHERE `id`=3646 AND `build`=4544;
DELETE FROM `areatrigger_template` WHERE `id`=3647 AND `build`=4449;
DELETE FROM `areatrigger_template` WHERE `id`=3647 AND `build`=4544;
DELETE FROM `areatrigger_template` WHERE `id`=3647 AND `build`=4695;
DELETE FROM `areatrigger_template` WHERE `id`=3654 AND `build`=4449;
DELETE FROM `areatrigger_template` WHERE `id`=3654 AND `build`=4695;
DELETE FROM `areatrigger_template` WHERE `id`=3708 AND `build`=4449;
DELETE FROM `areatrigger_template` WHERE `id`=3708 AND `build`=4695;
DELETE FROM `areatrigger_template` WHERE `id`=4055 AND `build`=5464;
DELETE FROM `areatrigger_template` WHERE `id`=4090 AND `build`=5464;
DELETE FROM `areatrigger_template` WHERE `id`=4156 AND `build`=5464;
DELETE FROM `areatrigger_template` WHERE `id`=4184 AND `build`=5464;
ALTER TABLE `areatrigger_template`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`id`) USING BTREE;
ALTER TABLE `areatrigger_template`
	DROP COLUMN `build`;

DELETE FROM `battleground_template` WHERE `id`=1 AND `patch`=0;
DELETE FROM `battleground_template` WHERE `id`=1 AND `patch`=3;
DELETE FROM `battleground_template` WHERE `id`=2 AND `patch`=0;
DELETE FROM `battleground_template` WHERE `id`=2 AND `patch`=3;
DELETE FROM `battleground_template` WHERE `id`=2 AND `patch`=5;
DELETE FROM `battleground_template` WHERE `id`=3 AND `patch`=0;
DELETE FROM `battleground_template` WHERE `id`=3 AND `patch`=5;
ALTER TABLE `battleground_template`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`id`) USING BTREE;
ALTER TABLE `battleground_template`
	DROP COLUMN `patch`;

DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=11338 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=11339 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=11340 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=11350 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=11351 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=11352 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=11353 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=11356 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=11359 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=11361 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=11365 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=11370 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=11371 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=11372 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=11373 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=11374 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=11831 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=14532 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=14750 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=14821 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=14825 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=14880 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=14882 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=14883 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=15043 AND `patch`=0;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=15111 AND `patch`=0;
ALTER TABLE `creature_onkill_reputation`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`creature_id`) USING BTREE;
ALTER TABLE `creature_onkill_reputation`
	DROP COLUMN `patch`;

ALTER TABLE `faction`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`id`) USING BTREE;
ALTER TABLE `faction`
	DROP COLUMN `build`;

ALTER TABLE `faction_template`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`id`) USING BTREE;
ALTER TABLE `faction_template`
	DROP COLUMN `build`;

DELETE FROM `creature` WHERE `guid` IN -- DETELE guids which aren't supposed to still exist in 1.12
(
	66900,8465,176,14806,81385,4155,6405,14807,26654,81388,174,4156,6404,6614,6617,24048,26644,48577,49183,81391,1820,984,1636,1007,1102,1723,1736,41759,41669,1011,1054,1117,1550,1727,1730,1741,1815,14,12623,12624,12625,12620,12626,30879,12621,12622,12627,47304,56802,47771,47774,47775,63074,90861,47893,63102,63464,63106,63101,63079,734444,47895,47894,63111,63107,63105,63104,63099,63083,63078,63076,60040,60025,60041,60018,60026,60033,60042,53867,400000,53944,53941,60012,60015,60019,60022,60027,60030,60034,60037,60043,53945,53939,60013,60014,60016,60017,60020,60021,60023,60024,60028,60029,60031,60032,60035,60036,60038,60039,53732,53733,28619,28618,28602,28617,28603,28610,28620,28604,28607,28613,28614,28600,28601,28605,28606,28608,28609,28612,28611,28615,28616
);
ALTER TABLE `creature`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

ALTER TABLE `creature_equip_template`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`entry`) USING BTREE;
ALTER TABLE `creature_equip_template`
	DROP COLUMN `patch`;

-- DETELE ids which aren't supposed to still exist in 1.12
DELETE FROM `creature_involvedrelation` WHERE `id`=271 AND `quest`=172;
DELETE FROM `creature_involvedrelation` WHERE `id`=2142 AND `quest`=171;
DELETE FROM `creature_involvedrelation` WHERE `id`=2142 AND `quest`=236;
DELETE FROM `creature_involvedrelation` WHERE `id`=3441 AND `quest`=5057;
DELETE FROM `creature_involvedrelation` WHERE `id`=11554 AND `quest`=6131;
ALTER TABLE `creature_involvedrelation`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

-- DETELE entries which aren't supposed to still exist in 1.12
DELETE FROM `creature_loot_template` WHERE `entry`=9265 AND `item`=16710 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=9460 AND `item`=14047 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4624 AND `item`=3946 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4624 AND `item`=8753 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4624 AND `item`=3949 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4624 AND `item`=3993 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4624 AND `item`=13817 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4624 AND `item`=14047 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=10416 AND `item`=16716 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=10417 AND `item`=16716 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=12397 AND `item`=30558 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=11502 AND `item`=17982 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4624 AND `item`=3951 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4624 AND `item`=3972 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4624 AND `item`=3995 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4624 AND `item`=5428 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4624 AND `item`=13819 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4624 AND `item`=13825 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=3502 AND `item`=4306 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=11190 AND `item`=14047 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=12387 AND `item`=15886 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4667 AND `item`=6766 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4668 AND `item`=6766 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=13019 AND `item`=6766 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7883 AND `item`=8483 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4705 AND `item`=6766 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4666 AND `item`=6766 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4665 AND `item`=6766 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4664 AND `item`=6766 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4663 AND `item`=6766 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=11675 AND `item`=5117 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=10477 AND `item`=20520 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=11582 AND `item`=20520 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=10986 AND `item`=5117 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=14283 AND `item`=5117 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=11678 AND `item`=5117 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=9502 AND `item`=30558 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=9017 AND `item`=30563 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=10391 AND `item`=31086 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=9269 AND `item`=16717 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=10429 AND `item`=30559 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=10391 AND `item`=31082 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=9237 AND `item`=30560 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=9046 AND `item`=16713 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=14454 AND `item`=7082 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=10390 AND `item`=31053 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=11745 AND `item`=7082 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=1853 AND `item`=30561 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=14455 AND `item`=7082 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=9692 AND `item`=16717 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=9258 AND `item`=16717 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=10390 AND `item`=31086 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=10390 AND `item`=31103 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=10508 AND `item`=13314 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=10503 AND `item`=30562 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=1853 AND `item`=13937 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=9046 AND `item`=16673 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=10477 AND `item`=16705 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=9046 AND `item`=16703 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=10391 AND `item`=31103 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=10391 AND `item`=31087 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=11380 AND `item`=19882 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=9262 AND `item`=16717 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=9264 AND `item`=16717 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=9268 AND `item`=16717 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=10390 AND `item`=31082 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=9096 AND `item`=16717 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=9736 AND `item`=16717 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=10469 AND `item`=16684 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=11261 AND `item`=16684 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=11744 AND `item`=7082 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=10901 AND `item`=16705 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=10420 AND `item`=7725 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=4493 AND `item`=7725 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=10422 AND `item`=16702 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=2960 AND `item`=2672 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=2959 AND `item`=2672 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=2958 AND `item`=2672 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=1923 AND `item`=2672 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=1922 AND `item`=2672 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=10363 AND `item`=16663 AND `groupid`=4;
DELETE FROM `creature_loot_template` WHERE `entry`=3811 AND `item`=3173 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=1725 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=3810 AND `item`=3173 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=1131 AND `item`=2672 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=3873 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=2165 AND `item`=3173 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=2163 AND `item`=3173 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=525 AND `item`=2672 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=1188 AND `item`=3173 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=1477 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=7909 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=30033 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=4306 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=1766 AND `item`=2672 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=1548 AND `item`=2672 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=1138 AND `item`=2672 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=1778 AND `item`=3173 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=118 AND `item`=2672 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=10363 AND `item`=16663 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=10363 AND `item`=16663 AND `groupid`=3;
DELETE FROM `creature_loot_template` WHERE `entry`=1130 AND `item`=3173 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=12432 AND `item`=3173 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=1708 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=3831 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=4636 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=11164 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=30040 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=30058 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=4338 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=1765 AND `item`=2672 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=1549 AND `item`=2672 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=1547 AND `item`=2672 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=2164 AND `item`=3173 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=1133 AND `item`=2672 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=1797 AND `item`=3173 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=1225 AND `item`=3173 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=1189 AND `item`=3173 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=1186 AND `item`=3173 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=10363 AND `item`=16663 AND `groupid`=2;
DELETE FROM `creature_loot_template` WHERE `entry`=6788 AND `item`=3173 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=1961 AND `item`=3173 AND `groupid`=1;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=4353 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=4416 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=4417 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=3827 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=4424 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=4607 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=2289 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=3864 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=4421 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=9293 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=30039 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=30031 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=1710 AND `groupid`=0;
DELETE FROM `creature_loot_template` WHERE `entry`=7340 AND `item`=4300 AND `groupid`=0;
ALTER TABLE `creature_loot_template`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

-- DETELE ids which aren't supposed to still exist in 1.12
DELETE FROM `creature_questrelation` WHERE `id`=271 AND `quest`=172;
DELETE FROM `creature_questrelation` WHERE `id`=2142 AND `quest`=171;
DELETE FROM `creature_questrelation` WHERE `id`=888 AND `quest`=236;
DELETE FROM `creature_questrelation` WHERE `id`=11554 AND `quest`=6131;
ALTER TABLE `creature_questrelation`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

-- DELETE duplicates which are left over and replaced by a later patch
DELETE FROM `creature_template` WHERE `entry`=113 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=154 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=157 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=330 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=345 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=347 AND `patch`=4;
DELETE FROM `creature_template` WHERE `entry`=390 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=454 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=524 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=547 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=644 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=684 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=708 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=768 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=1108 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=1114 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=1125 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=1126 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=1127 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=1180 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=1190 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=1191 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=1192 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=1296 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=1365 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=1379 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=1557 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=1689 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=1984 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=1985 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=2043 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=2165 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=2406 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=2653 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=2673 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=2674 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=2713 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=2736 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=2749 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=2924 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=2925 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=2954 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=2966 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3014 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3098 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3099 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3100 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3225 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3226 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3247 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3249 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3250 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3252 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3266 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3424 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3472 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3502 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3630 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3631 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3690 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3811 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3921 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=3943 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4117 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4118 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4119 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4139 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4158 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4262 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4511 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4512 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4514 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4555 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4624 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4636 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4694 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4694 AND `patch`=1;
DELETE FROM `creature_template` WHERE `entry`=4699 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4732 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4752 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4753 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4772 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4773 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=4807 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=5056 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=5262 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=5287 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=5291 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=5423 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=5424 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=5471 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=5600 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=5756 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=5824 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=5974 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=5977 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=5988 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=6109 AND `patch`=1;
DELETE FROM `creature_template` WHERE `entry`=6180 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=6491 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=6492 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=6516 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=6585 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=7068 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=7069 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=7070 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=7071 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=7072 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=7075 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=7078 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=7091 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=7276 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=7340 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=7405 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=7607 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=7789 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=7953 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=7954 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=7980 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=8095 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=8120 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=8138 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=8400 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=9450 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=9452 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=9460 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=9598 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=9622 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=9691 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=9698 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=10307 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=10375 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=10644 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11102 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11190 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11276 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11357 AND `patch`=5;
DELETE FROM `creature_template` WHERE `entry`=11373 AND `patch`=5;
DELETE FROM `creature_template` WHERE `entry`=11387 AND `patch`=5;
DELETE FROM `creature_template` WHERE `entry`=11388 AND `patch`=5;
DELETE FROM `creature_template` WHERE `entry`=11389 AND `patch`=5;
DELETE FROM `creature_template` WHERE `entry`=11390 AND `patch`=5;
DELETE FROM `creature_template` WHERE `entry`=11391 AND `patch`=5;
DELETE FROM `creature_template` WHERE `entry`=11448 AND `patch`=1;
DELETE FROM `creature_template` WHERE `entry`=11450 AND `patch`=1;
DELETE FROM `creature_template` WHERE `entry`=11459 AND `patch`=1;
DELETE FROM `creature_template` WHERE `entry`=11616 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11698 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11721 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11722 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11723 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11724 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11725 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11726 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11727 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11728 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11729 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11730 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11731 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11732 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11733 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11734 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11735 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11735 AND `patch`=5;
DELETE FROM `creature_template` WHERE `entry`=11736 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11736 AND `patch`=5;
DELETE FROM `creature_template` WHERE `entry`=11737 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11737 AND `patch`=5;
DELETE FROM `creature_template` WHERE `entry`=11740 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11741 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11822 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11830 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=11982 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=12017 AND `patch`=4;
DELETE FROM `creature_template` WHERE `entry`=12222 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=12263 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=12296 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=12379 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=12380 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=12384 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=12426 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=12480 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=12481 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=12656 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=12756 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=12776 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=12777 AND `patch`=2;
DELETE FROM `creature_template` WHERE `entry`=12782 AND `patch`=2;
DELETE FROM `creature_template` WHERE `entry`=12792 AND `patch`=2;
DELETE FROM `creature_template` WHERE `entry`=12858 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=12904 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=12944 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=13282 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=13601 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=13656 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=13697 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=13896 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=14274 AND `patch`=3;
DELETE FROM `creature_template` WHERE `entry`=14340 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=14450 AND `patch`=2;
DELETE FROM `creature_template` WHERE `entry`=14473 AND `patch`=2;
DELETE FROM `creature_template` WHERE `entry`=14474 AND `patch`=2;
DELETE FROM `creature_template` WHERE `entry`=14475 AND `patch`=2;
DELETE FROM `creature_template` WHERE `entry`=14476 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=14524 AND `patch`=2;
DELETE FROM `creature_template` WHERE `entry`=14530 AND `patch`=2;
DELETE FROM `creature_template` WHERE `entry`=14533 AND `patch`=2;
DELETE FROM `creature_template` WHERE `entry`=14534 AND `patch`=2;
DELETE FROM `creature_template` WHERE `entry`=14567 AND `patch`=2;
DELETE FROM `creature_template` WHERE `entry`=14581 AND `patch`=2;
DELETE FROM `creature_template` WHERE `entry`=14720 AND `patch`=3;
DELETE FROM `creature_template` WHERE `entry`=14981 AND `patch`=4;
DELETE FROM `creature_template` WHERE `entry`=14982 AND `patch`=4;
DELETE FROM `creature_template` WHERE `entry`=14987 AND `patch`=5;
DELETE FROM `creature_template` WHERE `entry`=15102 AND `patch`=5;
DELETE FROM `creature_template` WHERE `entry`=15105 AND `patch`=5;
DELETE FROM `creature_template` WHERE `entry`=15112 AND `patch`=5;
DELETE FROM `creature_template` WHERE `entry`=15203 AND `patch`=6;
DELETE FROM `creature_template` WHERE `entry`=15204 AND `patch`=6;
DELETE FROM `creature_template` WHERE `entry`=15205 AND `patch`=6;
DELETE FROM `creature_template` WHERE `entry`=15209 AND `patch`=6;
DELETE FROM `creature_template` WHERE `entry`=15211 AND `patch`=6;
DELETE FROM `creature_template` WHERE `entry`=15212 AND `patch`=6;
DELETE FROM `creature_template` WHERE `entry`=15305 AND `patch`=6;
DELETE FROM `creature_template` WHERE `entry`=15307 AND `patch`=6;
DELETE FROM `creature_template` WHERE `entry`=15316 AND `patch`=7;
DELETE FROM `creature_template` WHERE `entry`=15317 AND `patch`=7;
DELETE FROM `creature_template` WHERE `entry`=16028 AND `patch`=9;
DELETE FROM `creature_template` WHERE `entry`=16117 AND `patch`=8;
DELETE FROM `creature_template` WHERE `entry`=16371 AND `patch`=8;
DELETE FROM `creature_template` WHERE `entry`=16377 AND `patch`=8;
DELETE FROM `creature_template` WHERE `entry`=51539 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=80506 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=91865 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=91912 AND `patch`=0;
DELETE FROM `creature_template` WHERE `entry`=92202 AND `patch`=0;
ALTER TABLE `creature_template`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`entry`) USING BTREE;
ALTER TABLE `creature_template`
	DROP COLUMN `patch`;

-- DELETE duplicates which are left over and replaced by a later patch
DELETE FROM `creature_template_addon` WHERE `entry`=3502 AND `patch`=0;
DELETE FROM `creature_template_addon` WHERE `entry`=4624 AND `patch`=0;
DELETE FROM `creature_template_addon` WHERE `entry`=9460 AND `patch`=0;
DELETE FROM `creature_template_addon` WHERE `entry`=11190 AND `patch`=0;
DELETE FROM `creature_template_addon` WHERE `entry`=11822 AND `patch`=0;
DELETE FROM `creature_template_addon` WHERE `entry`=15184 AND `patch`=6;
DELETE FROM `creature_template_addon` WHERE `entry`=16378 AND `patch`=9;
ALTER TABLE `creature_template_addon`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`entry`) USING BTREE;
ALTER TABLE `creature_template_addon`
	DROP COLUMN `patch`;

ALTER TABLE `disenchant_loot_template`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

ALTER TABLE `fishing_loot_template`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

DROP TABLE `forbidden_items`; -- Dead table without progression system

DELETE FROM `gameobject` WHERE `guid` IN -- Remove left over entries which shouldn't exist in patch 1.12
(
	30699,
	31660,
	14106,
	397022
);
ALTER TABLE `gameobject`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

ALTER TABLE `gameobject_involvedrelation`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

DELETE FROM `gameobject_loot_template` WHERE `entry`=5426 AND `item`=8425;
DELETE FROM `gameobject_loot_template` WHERE `entry`=5426 AND `item`=8426;
DELETE FROM `gameobject_loot_template` WHERE `entry`=5426 AND `item`=8427;
DELETE FROM `gameobject_loot_template` WHERE `entry`=17441 AND `item`=1015;
DELETE FROM `gameobject_loot_template` WHERE `entry`=17498 AND `item`=1016;
DELETE FROM `gameobject_loot_template` WHERE `entry`=17518 AND `item`=1017;
DELETE FROM `gameobject_loot_template` WHERE `entry`=17534 AND `item`=1018;
ALTER TABLE `gameobject_loot_template`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

ALTER TABLE `gameobject_questrelation`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

DELETE FROM `gameobject_template` WHERE `entry`=103016 AND `patch`=0;
DELETE FROM `gameobject_template` WHERE `entry`=123330 AND `patch`=0;
DELETE FROM `gameobject_template` WHERE `entry`=142143 AND `patch`=0;
DELETE FROM `gameobject_template` WHERE `entry`=175886 AND `patch`=0;
DELETE FROM `gameobject_template` WHERE `entry`=179785 AND `patch`=0;
DELETE FROM `gameobject_template` WHERE `entry`=179786 AND `patch`=0;
DELETE FROM `gameobject_template` WHERE `entry`=180248 AND `patch`=5;
DELETE FROM `gameobject_template` WHERE `entry`=180369 AND `patch`=5;
DELETE FROM `gameobject_template` WHERE `entry`=180394 AND `patch`=5;
DELETE FROM `gameobject_template` WHERE `entry`=180418 AND `patch`=3;
DELETE FROM `gameobject_template` WHERE `entry`=180421 AND `patch`=3;
ALTER TABLE `gameobject_template`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`entry`) USING BTREE;
ALTER TABLE `gameobject_template`
	DROP COLUMN `patch`;

ALTER TABLE `game_event`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

ALTER TABLE `game_event_quest`
	DROP COLUMN `patch_min`;

ALTER TABLE `game_graveyard_zone`
	DROP COLUMN `build_min`;

DELETE FROM `item_enchantment_template` WHERE `patch_max` < '10'; -- Remave entries which aren't available in patch 1.12 -> Affected rows: 2.916
ALTER TABLE `item_enchantment_template`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`entry`, `ench`) USING BTREE;
ALTER TABLE `item_enchantment_template`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

DELETE FROM `item_loot_template` WHERE `entry`=21133 AND `item`=20948 AND `patch_min`=7 AND `patch_max`=7;
DELETE FROM `item_loot_template` WHERE `entry`=20805 AND `item`=21514 AND `patch_min`=7 AND `patch_max`=7;
DELETE FROM `item_loot_template` WHERE `entry`=21386 AND `item`=21514 AND `patch_min`=7 AND `patch_max`=7;
DELETE FROM `item_loot_template` WHERE `entry`=20808 AND `item`=20941 AND `patch_min`=7 AND `patch_max`=8;
DELETE FROM `item_loot_template` WHERE `entry`=20808 AND `item`=20942 AND `patch_min`=7 AND `patch_max`=8;
DELETE FROM `item_loot_template` WHERE `entry`=20808 AND `item`=21749 AND `patch_min`=7 AND `patch_max`=8;
DELETE FROM `item_loot_template` WHERE `entry`=20808 AND `item`=21750 AND `patch_min`=7 AND `patch_max`=8;
DELETE FROM `item_loot_template` WHERE `entry`=20808 AND `item`=21252 AND `patch_min`=7 AND `patch_max`=8;
DELETE FROM `item_loot_template` WHERE `entry`=20808 AND `item`=21253 AND `patch_min`=7 AND `patch_max`=8;
DELETE FROM `item_loot_template` WHERE `entry`=20808 AND `item`=21255 AND `patch_min`=7 AND `patch_max`=8;
DELETE FROM `item_loot_template` WHERE `entry`=20808 AND `item`=21249 AND `patch_min`=7 AND `patch_max`=8;
DELETE FROM `item_loot_template` WHERE `entry`=20808 AND `item`=21256 AND `patch_min`=7 AND `patch_max`=8;
DELETE FROM `item_loot_template` WHERE `entry`=20808 AND `item`=21248 AND `patch_min`=7 AND `patch_max`=8;
DELETE FROM `item_loot_template` WHERE `entry`=20808 AND `item`=21250 AND `patch_min`=7 AND `patch_max`=8;
DELETE FROM `item_loot_template` WHERE `entry`=20808 AND `item`=21251 AND `patch_min`=7 AND `patch_max`=8;
ALTER TABLE `item_loot_template`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`entry`, `item`) USING BTREE;
ALTER TABLE `item_loot_template`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

DELETE FROM `item_template` WHERE `entry`=6522 AND `patch`=0;
DELETE FROM `item_template` WHERE `entry`=6522 AND `patch`=2;
DELETE FROM `item_template` WHERE `entry`=19157 AND `patch`=4;
DELETE FROM `item_template` WHERE `entry`=80314 AND `patch`=0;
DELETE FROM `item_template` WHERE `entry`=83271 AND `patch`=0;
ALTER TABLE `item_template`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`entry`) USING BTREE;
ALTER TABLE `item_template`
	DROP COLUMN `patch`;

ALTER TABLE `mail_loot_template`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

DELETE FROM `map_template` WHERE `entry`=33 AND `patch`=0;
DELETE FROM `map_template` WHERE `entry`=34 AND `patch`=0;
DELETE FROM `map_template` WHERE `entry`=36 AND `patch`=0;
DELETE FROM `map_template` WHERE `entry`=43 AND `patch`=0;
DELETE FROM `map_template` WHERE `entry`=47 AND `patch`=0;
DELETE FROM `map_template` WHERE `entry`=48 AND `patch`=0;
DELETE FROM `map_template` WHERE `entry`=70 AND `patch`=0;
DELETE FROM `map_template` WHERE `entry`=90 AND `patch`=0;
DELETE FROM `map_template` WHERE `entry`=109 AND `patch`=0;
DELETE FROM `map_template` WHERE `entry`=129 AND `patch`=0;
DELETE FROM `map_template` WHERE `entry`=189 AND `patch`=0;
DELETE FROM `map_template` WHERE `entry`=209 AND `patch`=0;
DELETE FROM `map_template` WHERE `entry`=229 AND `patch`=0;
DELETE FROM `map_template` WHERE `entry`=229 AND `patch`=1;
DELETE FROM `map_template` WHERE `entry`=230 AND `patch`=0;
DELETE FROM `map_template` WHERE `entry`=230 AND `patch`=1;
DELETE FROM `map_template` WHERE `entry`=289 AND `patch`=0;
DELETE FROM `map_template` WHERE `entry`=289 AND `patch`=1;
DELETE FROM `map_template` WHERE `entry`=329 AND `patch`=0;
DELETE FROM `map_template` WHERE `entry`=329 AND `patch`=1;
DELETE FROM `map_template` WHERE `entry`=349 AND `patch`=0;
DELETE FROM `map_template` WHERE `entry`=389 AND `patch`=0;
ALTER TABLE `map_template`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`entry`) USING BTREE;
ALTER TABLE `map_template`
	DROP COLUMN `patch`;

DELETE FROM `npc_trainer` WHERE `build_max` < '5875'; -- Remove unintended npc_trainer offers on 1.12 build -> Affected rows: 454
ALTER TABLE `npc_trainer`
	DROP INDEX `entry_spell`,
	ADD UNIQUE INDEX `entry_spell` (`entry`, `spell`) USING BTREE;
ALTER TABLE `npc_trainer`
	DROP COLUMN `build_min`,
	DROP COLUMN `build_max`;

ALTER TABLE `npc_trainer_template`
	DROP COLUMN `build_min`,
	DROP COLUMN `build_max`;

ALTER TABLE `petcreateinfo_spell`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

ALTER TABLE `pickpocketing_loot_template`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

DELETE FROM `playercreateinfo_spell` WHERE `race`=8 AND `class`=1 AND `spell`=20554;
DELETE FROM `playercreateinfo_spell` WHERE `race`=8 AND `class`=4 AND `spell`=20554;
ALTER TABLE `playercreateinfo_spell`
	DROP COLUMN `build_min`,
	DROP COLUMN `build_max`;

DELETE FROM `pool_creature` WHERE `guid` IN
(
	47775,
	47771,
	90627,
	90861,
	47304,
	47774,
	47893,
	47895,
	47894
);
ALTER TABLE `pool_creature`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

ALTER TABLE `pool_creature_template`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

ALTER TABLE `pool_gameobject`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

ALTER TABLE `pool_gameobject_template`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

DELETE FROM `pool_template` WHERE `entry` IN
(
	42909,
	42908,
	23001,
	42907,
	42906
);
ALTER TABLE `pool_template`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

DELETE FROM `quest_template` WHERE `entry`=171 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=171 AND `patch`=2;
DELETE FROM `quest_template` WHERE `entry`=182 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=236 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=614 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=757 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=792 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=916 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=933 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=934 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=935 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=969 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=975 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=1288 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=1474 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=1480 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=1513 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=1739 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=1795 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=2359 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=2478 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=2561 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=2741 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=3381 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=3503 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=4381 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=4382 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=4383 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=4384 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=4385 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=4386 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=4801 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=4802 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=4803 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=4804 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=4805 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=4806 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=4807 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=5054 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=5055 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=5056 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=5057 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=5213 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=5502 AND `patch`=2;
DELETE FROM `quest_template` WHERE `entry`=6163 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=6402 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=6606 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=6622 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=6623 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=6624 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=6625 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=6824 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=6961 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=6962 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=6963 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=6964 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=6983 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=6984 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=7021 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=7022 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=7023 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=7024 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=7025 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=7042 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=7043 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=7045 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=7061 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=7062 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=7063 AND `patch`=0;
DELETE FROM `quest_template` WHERE `entry`=7181 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=7202 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=7498 AND `patch`=1;
DELETE FROM `quest_template` WHERE `entry`=7499 AND `patch`=1;
DELETE FROM `quest_template` WHERE `entry`=7500 AND `patch`=1;
DELETE FROM `quest_template` WHERE `entry`=7501 AND `patch`=1;
DELETE FROM `quest_template` WHERE `entry`=7502 AND `patch`=1;
DELETE FROM `quest_template` WHERE `entry`=7503 AND `patch`=1;
DELETE FROM `quest_template` WHERE `entry`=7504 AND `patch`=1;
DELETE FROM `quest_template` WHERE `entry`=7505 AND `patch`=1;
DELETE FROM `quest_template` WHERE `entry`=7506 AND `patch`=1;
DELETE FROM `quest_template` WHERE `entry`=7636 AND `patch`=2;
DELETE FROM `quest_template` WHERE `entry`=7667 AND `patch`=2;
DELETE FROM `quest_template` WHERE `entry`=7668 AND `patch`=2;
DELETE FROM `quest_template` WHERE `entry`=7788 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=7789 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=7871 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=7872 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=7873 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=7874 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=7875 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=7876 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=7886 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=7887 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=7888 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=7921 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=7922 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=7923 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=7924 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=7925 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=8053 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8054 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8055 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8056 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8057 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8058 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8059 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8060 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8061 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8062 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8063 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8064 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8065 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8066 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8067 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8068 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8069 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8070 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8071 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8072 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8073 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8074 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8075 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8076 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8077 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8078 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8079 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8080 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8081 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8123 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8124 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8154 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8155 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8156 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8157 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8158 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8159 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8160 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8161 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8162 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8163 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8164 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8165 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8184 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8185 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8186 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8187 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8188 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8189 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8190 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8191 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8192 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8201 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8243 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8266 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8267 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8268 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8269 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8291 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=8292 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=8293 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=8294 AND `patch`=3;
DELETE FROM `quest_template` WHERE `entry`=8297 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8298 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8299 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8300 AND `patch`=5;
DELETE FROM `quest_template` WHERE `entry`=8508 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8556 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8557 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8558 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8689 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8690 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8691 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8692 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8693 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8694 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8695 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8696 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8697 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8698 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8699 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8700 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8701 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8702 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8703 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8704 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8705 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8706 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8707 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8708 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8709 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8710 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8711 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8712 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8732 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8811 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8812 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8813 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8814 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8815 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8816 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8817 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8818 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8819 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8820 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8821 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8822 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8823 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8824 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8825 AND `patch`=7;
DELETE FROM `quest_template` WHERE `entry`=8826 AND `patch`=7;
ALTER TABLE `quest_template`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`entry`) USING BTREE;
ALTER TABLE `quest_template`
	DROP COLUMN `patch`;

DELETE FROM `reference_loot_template` WHERE `patch_max` < '10'; -- Remove loot from earlier patches -> Affected rows: 164
ALTER TABLE `reference_loot_template`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`entry`, `item`) USING BTREE;
ALTER TABLE `reference_loot_template`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

DELETE FROM `skinning_loot_template` WHERE `entry`=1047 AND `item`=15414 AND `patch_min`=0 AND `patch_max`=7;
DELETE FROM `skinning_loot_template` WHERE `entry`=1046 AND `item`=15414 AND `patch_min`=0 AND `patch_max`=7;
DELETE FROM `skinning_loot_template` WHERE `entry`=1045 AND `item`=15414 AND `patch_min`=0 AND `patch_max`=7;
DELETE FROM `skinning_loot_template` WHERE `entry`=1048 AND `item`=15414 AND `patch_min`=0 AND `patch_max`=7;
DELETE FROM `skinning_loot_template` WHERE `entry`=1049 AND `item`=15414 AND `patch_min`=0 AND `patch_max`=7;
DELETE FROM `skinning_loot_template` WHERE `entry`=1050 AND `item`=15414 AND `patch_min`=0 AND `patch_max`=7;
ALTER TABLE `skinning_loot_template`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`entry`, `item`) USING BTREE;
ALTER TABLE `skinning_loot_template`
	DROP COLUMN `patch_min`,
	DROP COLUMN `patch_max`;

ALTER TABLE `spell_affect`
	DROP COLUMN `build_min`,
	DROP COLUMN `build_max`;

DELETE FROM `spell_chain` WHERE `spell_id`=19386 AND `build_min`=4695 AND `build_max`=4544;
DELETE FROM `spell_chain` WHERE `spell_id`=20907 AND `build_min`=0 AND `build_max`=4544;
DELETE FROM `spell_chain` WHERE `spell_id`=20908 AND `build_min`=0 AND `build_max`=4544;
DELETE FROM `spell_chain` WHERE `spell_id`=19386 AND `build_min`=0 AND `build_max`=4544;
DELETE FROM `spell_chain` WHERE `spell_id`=16855 AND `build_min`=0 AND `build_max`=4695;
DELETE FROM `spell_chain` WHERE `spell_id`=17387 AND `build_min`=0 AND `build_max`=4695;
DELETE FROM `spell_chain` WHERE `spell_id`=17388 AND `build_min`=0 AND `build_max`=4695;
DELETE FROM `spell_chain` WHERE `spell_id`=17389 AND `build_min`=0 AND `build_max`=4695;
DELETE FROM `spell_chain` WHERE `spell_id`=20116 AND `build_min`=0 AND `build_max`=4878;
DELETE FROM `spell_chain` WHERE `spell_id`=20922 AND `build_min`=0 AND `build_max`=4878;
DELETE FROM `spell_chain` WHERE `spell_id`=20923 AND `build_min`=0 AND `build_max`=4878;
DELETE FROM `spell_chain` WHERE `spell_id`=20924 AND `build_min`=0 AND `build_max`=4878;
DELETE FROM `spell_chain` WHERE `spell_id`=20163 AND `build_min`=0 AND `build_max`=4878;
DELETE FROM `spell_chain` WHERE `spell_id`=20419 AND `build_min`=0 AND `build_max`=4878;
DELETE FROM `spell_chain` WHERE `spell_id`=20421 AND `build_min`=0 AND `build_max`=4878;
DELETE FROM `spell_chain` WHERE `spell_id`=20422 AND `build_min`=0 AND `build_max`=4878;
DELETE FROM `spell_chain` WHERE `spell_id`=20423 AND `build_min`=0 AND `build_max`=4878;
DELETE FROM `spell_chain` WHERE `spell_id`=20204 AND `build_min`=0 AND `build_max`=4878;
DELETE FROM `spell_chain` WHERE `spell_id`=20911 AND `build_min`=0 AND `build_max`=4878;
DELETE FROM `spell_chain` WHERE `spell_id`=20912 AND `build_min`=0 AND `build_max`=4878;
DELETE FROM `spell_chain` WHERE `spell_id`=20913 AND `build_min`=0 AND `build_max`=4878;
DELETE FROM `spell_chain` WHERE `spell_id`=20914 AND `build_min`=0 AND `build_max`=4878;
DELETE FROM `spell_chain` WHERE `spell_id`=20169 AND `build_min`=0 AND `build_max`=4878;
DELETE FROM `spell_chain` WHERE `spell_id`=20925 AND `build_min`=0 AND `build_max`=4878;
DELETE FROM `spell_chain` WHERE `spell_id`=20927 AND `build_min`=0 AND `build_max`=4878;
DELETE FROM `spell_chain` WHERE `spell_id`=20928 AND `build_min`=0 AND `build_max`=4878;
ALTER TABLE `spell_chain`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`spell_id`) USING BTREE;
ALTER TABLE `spell_chain`
	DROP COLUMN `build_min`,
	DROP COLUMN `build_max`;

ALTER TABLE `spell_elixir`
	DROP COLUMN `build_min`,
	DROP COLUMN `build_max`;

ALTER TABLE `spell_group`
	DROP COLUMN `build_min`,
	DROP COLUMN `build_max`;

ALTER TABLE `spell_group_stack_rules`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`group_id`) USING BTREE;
ALTER TABLE `spell_group_stack_rules`
	DROP COLUMN `build`;

ALTER TABLE `spell_learn_spell`
	DROP COLUMN `build_min`,
	DROP COLUMN `build_max`;

DELETE FROM `spell_proc_event` WHERE `entry`=20169;
ALTER TABLE `spell_proc_event`
	DROP COLUMN `build_min`,
	DROP COLUMN `build_max`;

ALTER TABLE `spell_script_target`
	DROP COLUMN `build_min`,
	DROP COLUMN `build_max`;

ALTER TABLE `spell_target_position`
	DROP COLUMN `build_min`,
	DROP COLUMN `build_max`;

ALTER TABLE `spell_template`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`entry`) USING BTREE;
ALTER TABLE `spell_template`
	DROP COLUMN `build`;

DELETE FROM `spell_threat` WHERE `entry`=20169;
ALTER TABLE `spell_threat`
	DROP COLUMN `build_min`,
	DROP COLUMN `build_max`;

DELETE FROM `taxi_nodes` WHERE `id`=10 AND `build`=4222;
DELETE FROM `taxi_nodes` WHERE `id`=34 AND `build`=4222;
DELETE FROM `taxi_nodes` WHERE `id`=35 AND `build`=4222;
DELETE FROM `taxi_nodes` WHERE `id`=36 AND `build`=4222;
DELETE FROM `taxi_nodes` WHERE `id`=36 AND `build`=5086;
DELETE FROM `taxi_nodes` WHERE `id`=47 AND `build`=4222;
DELETE FROM `taxi_nodes` WHERE `id`=49 AND `build`=4222;
DELETE FROM `taxi_nodes` WHERE `id`=50 AND `build`=4222;
DELETE FROM `taxi_nodes` WHERE `id`=51 AND `build`=4222;
DELETE FROM `taxi_nodes` WHERE `id`=54 AND `build`=4222;
DELETE FROM `taxi_nodes` WHERE `id`=64 AND `build`=4222;
DELETE FROM `taxi_nodes` WHERE `id`=64 AND `build`=5302;
DELETE FROM `taxi_nodes` WHERE `id`=65 AND `build`=4222;
DELETE FROM `taxi_nodes` WHERE `id`=66 AND `build`=4222;
DELETE FROM `taxi_nodes` WHERE `id`=67 AND `build`=4222;
DELETE FROM `taxi_nodes` WHERE `id`=68 AND `build`=4222;
DELETE FROM `taxi_nodes` WHERE `id`=69 AND `build`=4222;
DELETE FROM `taxi_nodes` WHERE `id`=72 AND `build`=4297;
DELETE FROM `taxi_nodes` WHERE `id`=73 AND `build`=4297;
DELETE FROM `taxi_nodes` WHERE `id`=84 AND `build`=5464;
ALTER TABLE `taxi_nodes`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`id`) USING BTREE;
ALTER TABLE `taxi_nodes`
	DROP COLUMN `build`;

ALTER TABLE `taxi_path_transitions`
	DROP COLUMN `build_min`;

DELETE FROM `warden_checks` WHERE `id` IN
(
	1561,
	1559,
	1560,
	1562,
	1563,
	1564
);
ALTER TABLE `warden_checks`
	DROP COLUMN `build`;

DELETE FROM `pet_spell_data` WHERE `entry`=5787 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5789 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5790 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5791 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5791 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=5792 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5793 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5793 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=5794 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5831 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5833 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5861 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5862 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5863 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5863 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=5865 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5866 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5867 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5868 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5869 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5870 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5871 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5872 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5874 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5876 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5877 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5878 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5922 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5924 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5929 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5930 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5931 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5932 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5933 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5934 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5942 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5945 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5946 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5950 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5951 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5952 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5953 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5953 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=5954 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5958 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5962 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=5963 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=7344 AND `build`=0;
DELETE FROM `pet_spell_data` WHERE `entry`=7344 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=8261 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=8262 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=8266 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=8267 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=8270 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=8272 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=8294 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=8311 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=8315 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=8318 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=8319 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=8320 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=8321 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=8322 AND `build`=4375;
DELETE FROM `pet_spell_data` WHERE `entry`=8323 AND `build`=4375;
ALTER TABLE `pet_spell_data`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`entry`) USING BTREE;
ALTER TABLE `pet_spell_data`
	DROP COLUMN `build`;

DELETE FROM `creature_display_info_addon` WHERE `display_id`=4033 AND `build`=0;
DELETE FROM `creature_display_info_addon` WHERE `display_id`=6436 AND `build`=0;
DELETE FROM `creature_display_info_addon` WHERE `display_id`=6437 AND `build`=0;
DELETE FROM `creature_display_info_addon` WHERE `display_id`=10727 AND `build`=0;
DELETE FROM `creature_display_info_addon` WHERE `display_id`=18135 AND `build`=0;
DELETE FROM `creature_display_info_addon` WHERE `display_id`=18239 AND `build`=0;
DELETE FROM `creature_display_info_addon` WHERE `display_id`=18376 AND `build`=0;
ALTER TABLE `creature_display_info_addon`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`display_id`) USING BTREE;
ALTER TABLE `creature_display_info_addon`
	DROP COLUMN `build`;

ALTER TABLE `creature_addon`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`guid`) USING BTREE;
ALTER TABLE `creature_addon`
	DROP COLUMN `patch`;

DELETE FROM `skill_line_ability` WHERE `build` < 5875; -- Affected rows: 50.507
ALTER TABLE `skill_line_ability`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`id`) USING BTREE;
ALTER TABLE `skill_line_ability`
	DROP COLUMN `build`;

/* Affected rows: 827.295  Found rows: 0  Warnings: 0  Duration for 967 queries: 4,137 sec. */
