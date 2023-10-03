-- Made Zanzas non-unique:

UPDATE `item_template` SET `max_count` = 0 WHERE `entry` IN (20079, 20080, 20081, 8424, 8423, 8411, 8412, 8410);

update item_template set spellid_1 = 8815 where entry = 17015; -- Dark Iron Reaver
update item_template set spellid_1 = 15874, spellid_2 = 7578, spellid_2 = 7527 where entry = 14551; -- Edgemaster\'s Handguards
update item_template set name = "Tome of Teleportation: Theramore" where entry = 92001; -- Theramore Tome
update item_template set name = "Tome of Teleportation: Stonard" where entry = 92002; -- Stonard Tome

-- fix dumb desc
update spell_template SET description = 'Increases the melee attack power bonus of your Seal of the Crusader by $s1 and the Holy damage increase of your Crusader Strike by $s2 per stack.' WHERE entry = 28852; -- Improved Seal of the Crusader
update spell_template SET EffectBasePoints1 = 1, EffectBasePoints2 = 2, effectApplyAuraName2 = 71, Effect2 = 6, EffectDieSides2 = 1, effectBaseDice2 = 1, Description = 'Increases your pet\'s melee and spell critical strike chance by 2%.' WHERE entry = 27042; -- Increased Pet Crit +2%
update spell_template SET description = 'When struck in combat has a 2% chance of increasing all party member\'s attack and casting speed by $18946s1% for $18946d.' WHERE entry = 20847; -- The Lion Horn of Stormwind (Equip Spell)
