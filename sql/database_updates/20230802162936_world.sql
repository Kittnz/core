-- hange NPC 80940 to displayid 
-- Change the weapon of NPC 11500 to 1911 

UPDATE `creature_template` SET `display_id1` = 352 WHERE `entry` = 80940;

UPDATE spell_template SET EffectBasePoints2 = 2, EffectBasePoints3 = 4 WHERE entry = 8815; -- Haste 2
UPDATE spell_template SET EffectBasePoints2 = 3, EffectBasePoints3 = 6 WHERE entry = 13680; -- Haste 3
UPDATE spell_template SET EffectBasePoints2 = 4, EffectBasePoints3 = 8 WHERE entry = 13681; -- Haste 4
UPDATE spell_template SET EffectBasePoints2 = 5, EffectBasePoints3 = 10 WHERE entry = 13682; -- Haste 5
UPDATE spell_template SET EffectBasePoints2 = 10, EffectBasePoints3 = 20 WHERE entry = 18065; -- Haste 10

-- Add graveyard for hyjal and emerald sanctum:

DELETE FROM `game_graveyard_zone` WHERE `id` = 947;

REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (947, 616, 0);
REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (947, 5097, 0);
