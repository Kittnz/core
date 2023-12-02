-- Add Lesser Healing Potion recipe to Kylanna Windwhisper.
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (7948, 2341, 250, 171, 55, 0);

update item_template set allowable_race = 589, required_skill_rank = 100, required_skill = 202 where entry = 51312; -- Portable Wormhole Generator: Stormwind
update item_template set allowable_race = 434, required_skill_rank = 100, required_skill = 202 where entry = 51313; -- Portable Wormhole Generator: Orgrimmar
