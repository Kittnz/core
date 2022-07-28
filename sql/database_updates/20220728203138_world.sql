-- Change damage class of Holy Strike to Melee so it procs seals and does 2x damage on crit. Add no resistance attribute.
UPDATE `spell_template` SET `dmgClass`=2, `attributesEx4`= (`attributesEx4` | 1) WHERE `name` = 'Holy Strike' && `effect1`=58
