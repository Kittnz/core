replace into migrations values (20200307001421);

update creature_template set equipment_id = 51260 where entry = 51292;
update creature_template set equipment_id = 51260 where entry = 50053;
update creature_template set npc_flags = 1 where entry = 51292;

REPLACE INTO `gameobject_template` VALUES (1000080, 0, 5, 179, 'Barbershop', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Fashion House Decorations and NPCs:

delete from gameobject where id = 1000079;

REPLACE INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (1000079, 0, -8867, 607.4, 98.5, 5.2847, 0, 0, 0.47876, -0.877946, 25, 25, 100, 1, 0, 0, 0, 10);

delete from creature where id = 51290;
delete from creature where id = 51292;
delete from creature where id = 50053;

REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (51290, 0, 0, 0, -8870.39, 606.938, 93.4834, 5.22689, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);


REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (51292, 0, 0, 0, -8872.04, 602.626, 92.7552, 6.00354, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);

delete from creature where id = 51261;

REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (51261, 0, 0, 51261, -8857.02, 661.961, 97.132, 5.398, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);

delete from gameobject where id = 1000080;

-- REPLACE INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (1000080, 0, -8841, 652.3, 100.4, 3.76751, 0, 0, 0.951427, -0.307874, 25, 25, 100, 1, 0, 0, 0, 10);

REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (50053, 0, 0, 51260, -8839.74, 659.425, 98.5229, 3.64305, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
