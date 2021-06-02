
-- Change faction of following gameobjects to friendly.
-- Cleansed Night Dragon, Cleansed Songflower, Cleansed Whipper Root, Cleansed Windblossom
UPDATE `gameobject_template` SET `faction`=35 WHERE `entry` IN (164881, 164882, 164883, 164884, 171940, 171943, 173325, 173326, 174609, 174610, 174612, 174613, 174614, 174615, 174616, 174617, 174618, 174619, 174620, 174621, 174622, 174623, 174624, 174625, 174685, 174687, 174710, 174711, 174714, 174715);

-- Remove channeled spell from auras of Scholomance Adept.
UPDATE `creature_addon` SET `auras`='' WHERE `guid`=48784;
