-- https://database.turtle-wow.org/?quest=40753 from mountain silversage to Icecap
-- https://database.turtle-wow.org/?quest=40754 from essence of air to Golden Sansam 

UPDATE `quest_template` SET `ReqItemId2` = 13467 WHERE `entry` = 40753;
UPDATE `quest_template` SET `ReqItemId2` = 13464 WHERE `entry` = 40754;

-- Kara, require raid group to enter, limit to 10 people, make sure bosses trigger a lockout with same length as onyxia

UPDATE `map_template` SET `map_type` = 2, `reset_delay` = 7 WHERE `entry` = 532;

-- Change GUID 5016268, 5016269 to have a respawn timer of 5 seconds.

UPDATE `gameobject` SET `spawntimesecsmin` = 5, `spawntimesecsmax` = 5 WHERE `guid` IN (5016268, 5016269);

UPDATE `spell_template` SET `auraDescription` = 'Friendly units within a $a1 yard radius attack $s1% faster.' WHERE `entry` = 57078;

UPDATE `battleground_template` SET `min_players_per_team` = 3, `max_players_per_team` = 3 WHERE `id` = 4;