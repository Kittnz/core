
-- Changes by TORTA
DELETE FROM creature WHERE guid=2561607;
DELETE FROM creature_addon WHERE guid=2561607;
DELETE FROM creature_movement WHERE id=2561607;
DELETE FROM game_event_creature WHERE guid=2561607;
DELETE FROM game_event_creature_data WHERE guid=2561607;
DELETE FROM creature_battleground WHERE guid=2561607;

-- Changes by DRAGU
DELETE FROM gameobject WHERE guid = '4005021';
DELETE FROM game_event_gameobject WHERE guid = '4005021';
DELETE FROM gameobject_battleground WHERE guid = '4005021';
