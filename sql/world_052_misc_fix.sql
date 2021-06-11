
-- Not captured AB banners should be friendly faction according to TDB.
UPDATE `gameobject_template` SET `faction`=35 WHERE `entry` IN (180087, 180088, 180089, 180090, 180091);
