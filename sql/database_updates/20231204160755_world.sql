-- Make Will of Shahram able to stack 5 times.
UPDATE `spell_template` SET `stackAmount`=5, `customFlags`=(`customFlags` | 1) WHERE `entry`=16598;

-- Remove rep from Qiraji Scarab
DELETE FROM creature_onkill_reputation WHERE creature_id = 15316;

-- Make Foul Effigy Unique
UPDATE item_template SET Max_Count = 1 WHERE entry = 61153;
