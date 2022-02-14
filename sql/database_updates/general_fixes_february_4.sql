-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/866
update gameobject_template set faction = 0, data0 = 259 where entry = 164958;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/485
update creature_template set mechanic_immune_mask = 1019427442-4194304-2048-1024-8192 where entry = 16441; -- Guardian of Icecrown

-- Plagued Guardian is using wrong spell id for Arcane Explosion.
UPDATE creature_spells SET spellId_1 = 15453 WHERE entry = 169810 && spellId_1 = 19712;

-- Move PROC_EX_NO_PERIODIC to 0x0020000.
UPDATE `spell_proc_event` SET `procEx` = `procEx` | 0x0020000 WHERE (`procEx` & 0x0080000);
UPDATE `spell_proc_event` SET `procEx` = `procEx` - 0x0080000 WHERE (`procEx` & 0x0080000);

-- Make Elemental Focus proc on cast end.
UPDATE `spell_proc_event` SET `procEx` = `procEx` | 0x0080000 WHERE `entry`=16164;