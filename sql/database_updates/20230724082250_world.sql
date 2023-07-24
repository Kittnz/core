-- https://database.turtle-wow.org/?quest=40753 from mountain silversage to Icecap
-- https://database.turtle-wow.org/?quest=40754 from essence of air to Golden Sansam 

UPDATE `quest_template` SET `ReqItemId2` = 13467 WHERE `entry` = 40753;
UPDATE `quest_template` SET `ReqItemId2` = 13464 WHERE `entry` = 40754;

-- Kara, require raid group to enter, limit to 10 people, make sure bosses trigger a lockout with same length as onyxia

UPDATE `map_template` SET `map_type` = 2, `reset_delay` = 7 WHERE `entry` = 532;