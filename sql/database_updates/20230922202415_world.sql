-- Deleted Mysterious Stranger spawns:
DELETE FROM creature WHERE id = 81030;

-- Higher values for BG min teams.

UPDATE `battleground_template` SET `min_players_per_team` = 30, `max_players_per_team` = 40, `min_level` = 51, `max_level` = 60, `alliance_win_spell` = 24955, `alliance_lose_spell` = 24954, `horde_win_spell` = 24955, `horde_lose_spell` = 24954, `alliance_start_location` = 611, `horde_start_location` = 610, `player_loot_id` = 1 WHERE `id` = 1;
UPDATE `battleground_template` SET `min_players_per_team` = 8, `max_players_per_team` = 10, `min_level` = 0, `max_level` = 60, `alliance_win_spell` = 24951, `alliance_lose_spell` = 24950, `horde_win_spell` = 24951, `horde_lose_spell` = 24950, `alliance_start_location` = 769, `horde_start_location` = 770, `player_loot_id` = 0 WHERE `id` = 2;
UPDATE `battleground_template` SET `min_players_per_team` = 10, `max_players_per_team` = 15, `min_level` = 0, `max_level` = 60, `alliance_win_spell` = 24953, `alliance_lose_spell` = 24952, `horde_win_spell` = 24953, `horde_lose_spell` = 24952, `alliance_start_location` = 890, `horde_start_location` = 889, `player_loot_id` = 0 WHERE `id` = 3;
UPDATE `battleground_template` SET `min_players_per_team` = 3, `max_players_per_team` = 3, `min_level` = 0, `max_level` = 60, `alliance_win_spell` = 29129, `alliance_lose_spell` = 29128, `horde_win_spell` = 29129, `horde_lose_spell` = 29128, `alliance_start_location` = 9000, `horde_start_location` = 9001, `player_loot_id` = 0 WHERE `id` = 4;
UPDATE `battleground_template` SET `min_players_per_team` = 14, `max_players_per_team` = 20, `min_level` = 51, `max_level` = 60, `alliance_win_spell` = 0, `alliance_lose_spell` = 0, `horde_win_spell` = 0, `horde_lose_spell` = 0, `alliance_start_location` = 700, `horde_start_location` = 701, `player_loot_id` = 0 WHERE `id` = 5;

-- Remove War Mode glyph:

DELETE FROM npc_vendor WHERE item = 80060;
DELETE FROM npc_vendor_template WHERE item = 80060;