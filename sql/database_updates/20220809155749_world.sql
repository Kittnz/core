-- Auto select display ids for creatures.
UPDATE `creature` SET `display_id`=0 WHERE `guid` NOT IN (80127, 80137, 80145, 80262, 80881, 81391);
