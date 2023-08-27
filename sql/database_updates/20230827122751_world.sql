DELETE FROM quest_template WHERE entry = 40013;
DELETE FROM quest_template WHERE entry = 40012;
DELETE FROM quest_template WHERE entry = 40010;

DELETE FROM creature_template WHERE entry = 15;

-- 61341- Vilemusk hellcaller
-- 61339- Vilemusk Felsworn 
-- 61340- Vilemusk Shadowstalker
-- No money drops on any of these satyrs

UPDATE `creature_template` SET `gold_min` = 445 WHERE `entry` = 61341;
UPDATE `creature_template` SET `gold_max` = 586 WHERE `entry` = 61341;

UPDATE `creature_template` SET `gold_min` = 445 WHERE `entry` = 61339;
UPDATE `creature_template` SET `gold_max` = 586 WHERE `entry` = 61339;

UPDATE `creature_template` SET `gold_min` = 445 WHERE `entry` = 61340;
UPDATE `creature_template` SET `gold_max` = 586 WHERE `entry` = 61340;