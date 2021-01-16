update item_template set allowable_race = -1 where entry in (5102, 4898, 4897);

update quest_template set method = 1 where entry in (50300, 50301, 50302, 50303);

replace into item_template (entry, name, inventory_type, display_id, quality, bonding, description, spellid_1, spelltrigger_1, allowable_race) values
(50440, 'Scarlet Crusade Insignia', 11, 9834, 2, 1, "This ring marks the bearer as a fully fledged member of the Scarlet Crusade.", 0, 0, 0);

replace into broadcast_text (ID, MaleText) values ('90501', 'I’m a free knight! I don’t have a lord. You got a problem with that?\n\n<She glares at you for a moment before lighting up.>\n\nAh whatever... Welcome to our chapel! I can give you a sleeping bag or offer you some rations.');
 
UPDATE `quest_template` SET `ReqItemCount1`='5', `ReqItemCount2`='3' WHERE (`entry`='80304') AND (`patch`='0');
UPDATE `quest_template` SET `ReqItemCount1`='5' WHERE (`entry`='80360') AND (`patch`='0');

update skill_line_ability set race_mask = 2047 where id = 251;
update skill_line_ability set race_mask = 2047 where id = 4413;
update skill_line_ability set race_mask = 2047 where id = 2929;
update skill_line_ability set race_mask = 2047 where id = 4412;
update skill_line_ability set race_mask = 0 where id = 11026;

update skill_line_ability set race_mask = 1613 where id = 3269;
update skill_line_ability set race_mask = 1613 where id = 3270;
update skill_line_ability set race_mask = 1613 where id = 3272;
update skill_line_ability set race_mask = 1613 where id = 5989;
update skill_line_ability set race_mask = 1613 where id = 5990;
update skill_line_ability set race_mask = 1613 where id = 5992;

update skill_line_ability set race_mask = 434 where id = 3271;
update skill_line_ability set race_mask = 434 where id = 3273;
update skill_line_ability set race_mask = 434 where id = 3274;
update skill_line_ability set race_mask = 434 where id = 5991;
update skill_line_ability set race_mask = 434 where id = 5993;
update skill_line_ability set race_mask = 434 where id = 5994;

update creature_template set faction = 7, equipment_id = 0, gold_min = 0, gold_max = 0, type = 10 where entry = 80965;

update quest_template set requiredraces = 255 + 256 where requiredraces = 255;
update quest_template set requiredraces = 511 + 512 where requiredraces = 256;

update item_template set required_level = 23, item_level = 23, disenchant_id = 41 where entry = 80712;
update item_template set required_level = 23 where entry = 80730;
update item_template set class = 4,  subclass = 1 where entry = 80759;

-- Childern's Week monthly:
UPDATE game_event SET occurence = 42480 WHERE entry = 10;

update quest_template set title = 'Defending the Supply Lines' where entry = 80255;

update gameobject_template set size = 1, name = 'Tent (Human)' where entry = 1000001; -- Human tent
update gameobject_template set size = 1, displayid = 32215, name = 'Tent (Orc)' where entry = 1000236; -- Orc tent

replace into `gameobject_template` values 

(1000456, 0, 5, 9149, 'Tent (Night Elf)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_survival_tent'),
(1000457, 0, 5, 6738, 'Tent (Dwarf)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_survival_tent'),
(1000458, 0, 5, 28901, 'Tent (Gnome)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_survival_tent'),
(1000459, 0, 5, 29663, 'Tent (High Elf)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_survival_tent'),
(1000460, 0, 5, 28901, 'Tent (Troll)', 0, 0, 0.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_survival_tent'),
(1000461, 0, 5, 32215, 'Tent (Tauren)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_survival_tent'),
(1000462, 0, 5, 22554, 'Tent (Undead)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_survival_tent'),
(1000463, 0, 5, 23899, 'Tent (Goblin)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_survival_tent');

