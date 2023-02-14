
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2574460,1853,0,0,0,1,16226.2,16257,13.2022,1.65007,120,120,5,100,100,1,1,200);
DELETE FROM creature WHERE guid=2574460;
DELETE FROM creature_addon WHERE guid=2574460;
DELETE FROM creature_movement WHERE id=2574460;
DELETE FROM game_event_creature WHERE guid=2574460;
DELETE FROM game_event_creature_data WHERE guid=2574460;
DELETE FROM creature_battleground WHERE guid=2574460;

-- Changes by DRAGUNOVI
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2574072, 1);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2574072, 0);
DELETE FROM creature WHERE guid=2574447;
DELETE FROM creature_addon WHERE guid=2574447;
DELETE FROM creature_movement WHERE id=2574447;
DELETE FROM game_event_creature WHERE guid=2574447;
DELETE FROM game_event_creature_data WHERE guid=2574447;
DELETE FROM creature_battleground WHERE guid=2574447;
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574214, 233);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574082, 233);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574213, 233);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574078, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574079, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574105, 69);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574100, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574103, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574115, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574114, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574093, 69);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574094, 69);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574095, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574096, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574212, 313);
