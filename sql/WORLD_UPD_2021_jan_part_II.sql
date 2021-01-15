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