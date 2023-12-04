-- GY:

REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (949, 5536, 0);
REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (950, 5225, 0);

REPLACE INTO `world_safe_locs_facing` (`id`, `orientation`) VALUES (949, 5.80);
REPLACE INTO `world_safe_locs_facing` (`id`, `orientation`) VALUES (950, 0.03);

-- Weather:

REPLACE INTO `game_weather` (`zone`, `spring_rain_chance`, `spring_snow_chance`, `spring_storm_chance`, `summer_rain_chance`, `summer_snow_chance`, `summer_storm_chance`, `fall_rain_chance`, `fall_snow_chance`, `fall_storm_chance`, `winter_rain_chance`, `winter_snow_chance`, `winter_storm_chance`, `comment`) VALUES (5536, 10, 0, 0, 10, 0, 0, 20, 0, 0, 15, 0, 0, 'Blackstone Island');
