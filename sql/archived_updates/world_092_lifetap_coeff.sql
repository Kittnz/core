-- https://wowwiki-archive.fandom.com/wiki/Patch_1.12.0
-- Life Tap: This spell now benefits from effects which increase your spell damage.
--  At rank 3 and above, the base amount of health lost and mana gained 
--  will increase by 80% of your bonus spell damage effects. Talents and items can further 
--  modify those values. Rank 1 and 2 receive reduced effect.

update `spell_template` set `effectBonusCoefficient1` = 0.2 where `entry` = 1454;  -- rank1
update `spell_template` set `effectBonusCoefficient1` = 0.6 where `entry` = 1455;  -- rank2
update `spell_template` set `effectBonusCoefficient1` = 0.8 where `entry` = 1456;  -- rank3
update `spell_template` set `effectBonusCoefficient1` = 0.8 where `entry` = 11687; -- rank4
update `spell_template` set `effectBonusCoefficient1` = 0.8 where `entry` = 11688; -- rank5
update `spell_template` set `effectBonusCoefficient1` = 0.8 where `entry` = 11689; -- rank6

