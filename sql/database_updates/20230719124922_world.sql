ALTER TABLE `game_weather` 
DROP COLUMN `comment`;

ALTER TABLE `game_weather`
ADD `comment` varchar(255);

UPDATE `game_weather` SET `comment` = 'Dun Morogh' WHERE `zone` = 1;
UPDATE `game_weather` SET `comment` = 'Badlands' WHERE `zone` = 3;
UPDATE `game_weather` SET `comment` = 'Duskwood' WHERE `zone` = 10;
UPDATE `game_weather` SET `comment` = 'Wetlands' WHERE `zone` = 11;
UPDATE `game_weather` SET `comment` = 'Elwynn Forest' WHERE `zone` = 12;
UPDATE `game_weather` SET `comment` = 'Durotar' WHERE `zone` = 14;
UPDATE `game_weather` SET `comment` = 'Dustwallow Marsh' WHERE `zone` = 15;
UPDATE `game_weather` SET `comment` = 'Western Plaguelands' WHERE `zone` = 28;
UPDATE `game_weather` SET `comment` = 'Stranglethorn Vale' WHERE `zone` = 33;
UPDATE `game_weather` SET `comment` = 'Alterac Mountains' WHERE `zone` = 36;
UPDATE `game_weather` SET `comment` = 'Loch Modan' WHERE `zone` = 38;
UPDATE `game_weather` SET `comment` = 'Deadwind Pass' WHERE `zone` = 41;
UPDATE `game_weather` SET `comment` = 'Redridge Mountains' WHERE `zone` = 44;
UPDATE `game_weather` SET `comment` = 'Arathi Highlands' WHERE `zone` = 45;
UPDATE `game_weather` SET `comment` = 'The Hinterlands' WHERE `zone` = 47;
UPDATE `game_weather` SET `comment` = 'Tirisfal Glades' WHERE `zone` = 85;
UPDATE `game_weather` SET `comment` = 'Eastern Plaguelands' WHERE `zone` = 139;
UPDATE `game_weather` SET `comment` = 'Teldrassil' WHERE `zone` = 141;
UPDATE `game_weather` SET `comment` = 'Darkshore' WHERE `zone` = 148;
UPDATE `game_weather` SET `comment` = 'Mulgore' WHERE `zone` = 215;
UPDATE `game_weather` SET `comment` = 'Hillsbrad Foothills' WHERE `zone` = 267;
UPDATE `game_weather` SET `comment` = 'Feralas' WHERE `zone` = 357;
UPDATE `game_weather` SET `comment` = 'Desolace' WHERE `zone` = 405;
UPDATE `game_weather` SET `comment` = 'Tanaris' WHERE `zone` = 440;
UPDATE `game_weather` SET `comment` = 'Un\'Goro Crater' WHERE `zone` = 490;
UPDATE `game_weather` SET `comment` = 'Winterspring' WHERE `zone` = 618;
UPDATE `game_weather` SET `comment` = 'Scarlet Monastery' WHERE `zone` = 796;
UPDATE `game_weather` SET `comment` = 'GM Island' WHERE `zone` = 876;
UPDATE `game_weather` SET `comment` = 'Silithus' WHERE `zone` = 1377;
UPDATE `game_weather` SET `comment` = 'Thunder Bluff' WHERE `zone` = 1638;
UPDATE `game_weather` SET `comment` = 'Darnassus' WHERE `zone` = 1657;
UPDATE `game_weather` SET `comment` = 'Zul\'Gurub' WHERE `zone` = 1977;
UPDATE `game_weather` SET `comment` = 'Stratholme' WHERE `zone` = 2017;
UPDATE `game_weather` SET `comment` = 'Alterac Valley' WHERE `zone` = 2597;
UPDATE `game_weather` SET `comment` = 'Arathi Basin' WHERE `zone` = 3358;
UPDATE `game_weather` SET `comment` = 'Ahn\'Qiraj' WHERE `zone` = 3428;
UPDATE `game_weather` SET `comment` = 'Ruins of Ahn\'Qiraj' WHERE `zone` = 3429;
UPDATE `game_weather` SET `comment` = 'Icepoint Rock' WHERE `zone` = 5024;
UPDATE `game_weather` SET `comment` = 'North Sea' WHERE `zone` = 5027;
UPDATE `game_weather` SET `comment` = 'Kaneq\'nuun' WHERE `zone` = 5052;
UPDATE `game_weather` SET `comment` = 'Winter Veil Vale' WHERE `zone` = 5130;
UPDATE `game_weather` SET `comment` = 'Gilneas' WHERE `zone` = 5179;

REPLACE INTO `game_weather` (`zone`, `copy_weather_from`, `spring_rain_chance`, `spring_snow_chance`, `spring_storm_chance`, `summer_rain_chance`, `summer_snow_chance`, `summer_storm_chance`, `fall_rain_chance`, `fall_snow_chance`, `fall_storm_chance`, `winter_rain_chance`, `winter_snow_chance`, `winter_storm_chance`, `comment`) VALUES 

(408, NULL,  10, 0, 0, 25, 0, 0, 25, 0, 0, 10, 0, 0, 'Gilijim''s Isle'),
(409, NULL,  10, 0, 0, 25, 0, 0, 25, 0, 0, 10, 0, 0, 'Lapidis Isle'),
(5121, NULL, 10, 0, 0, 25, 0, 0, 25, 0, 0, 10, 0, 0, 'Tel''Abim');

ALTER TABLE `game_weather` 
DROP COLUMN `copy_weather_from`;