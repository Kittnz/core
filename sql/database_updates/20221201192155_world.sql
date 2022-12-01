DELETE FROM `game_weather` WHERE `zone` IN (5024, 5130, 5131);
UPDATE `game_weather` SET `fall_snow_chance` = 100 WHERE `zone` = 5131;
-- Winter Veil Vale
REPLACE INTO `game_weather` (`zone`, `copy_weather_from`, `spring_rain_chance`, `spring_snow_chance`, `spring_storm_chance`, `summer_rain_chance`, `summer_snow_chance`, `summer_storm_chance`, `fall_rain_chance`, `fall_snow_chance`, `fall_storm_chance`, `winter_rain_chance`, `winter_snow_chance`, `winter_storm_chance`) VALUES (5130, NULL, 0, 100, 0, 0, 100, 0, 0, 100, 0, 0, 100, 0);
REPLACE INTO `game_weather` (`zone`, `copy_weather_from`, `spring_rain_chance`, `spring_snow_chance`, `spring_storm_chance`, `summer_rain_chance`, `summer_snow_chance`, `summer_storm_chance`, `fall_rain_chance`, `fall_snow_chance`, `fall_storm_chance`, `winter_rain_chance`, `winter_snow_chance`, `winter_storm_chance`) VALUES (5024, NULL, 0, 100, 0, 0, 100, 0, 0, 100, 0, 0, 100, 0);
