
-- Add proc ex to Fear Ward so it triggers properly.
-- Note that whether the spell procs Fear Ward or not is hardcoded,
-- since it depends on the mechanic type of the proc spell (MECHANIC_FEAR)
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `procEx`) VALUES (6346, 0x00022000, 1);
