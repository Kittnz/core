-- Custom server side trap for Bubbly Fissures. 
-- We cannot know the entry of the real trap,
-- since its server side, so we need to use custom entry.
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (200002, 6, 344, 'Bubbly Fissure TRAP', 0, 0, 1, 0, 0, 8, 17775, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (14521, 200002, 1, 89.9668, -1943.97, 78.7301, 1.6057, 0, 0, 0.687357, 0.726319, 10, 10, 100, 1, 0, 0);
UPDATE `gameobject` SET `id`=200002 WHERE `guid`=21128;

-- We need to make Air Bubbles ignore LoS checks,
-- because trap is spawned inside another object.
-- On turtle all gameobjects break LoS which is incorrect.
-- This spell doesn't need to ignore LoS on official servers,
-- because there only doors break LoS, other m2 models don't.
UPDATE `spell_template` SET `attributesEx2`=4 WHERE  `entry`=17775;
