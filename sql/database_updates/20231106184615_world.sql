-- Fix wrong level requirement for Razormane Orders on item.
UPDATE `item_template` SET `required_level`=3 WHERE `entry`=60520;

UPDATE quest_template SET RequiredRaces = 0 WHERE entry IN (40676, 40677);
