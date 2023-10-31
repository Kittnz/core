UPDATE creature_template SET npc_flags = 3 WHERE entry = 61585;
UPDATE quest_template SET ReqCreatureORGoCount1 = 8 WHERE entry = 80301;

UPDATE item_template SET disenchant_id = 0 WHERE entry IN (60879, 60880, 60881, 60882, 60883, 60884, 60885, 60899, 60900, 60901, 60902, 60903, 60904, 60905,);

UPDATE `spell_template` SET `effectImplicitTargetA2` = 20, `effectImplicitTargetA3` = 20, `effectRadiusIndex2` = 10, `effectRadiusIndex3` = 10 WHERE `entry` = 18946;
