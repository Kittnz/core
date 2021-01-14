update item_template set allowable_race = -1 where entry in (5102, 4898, 4897);

delete from playercreateinfo_spell where race = 9 and class = 3 and spell = 266;
delete from playercreateinfo_spell where race = 10 and class = 3 and spell = 266;
-- insert into playercreateinfo_spell values
-- (9, 3, 266, 0, 5875, 'Guns'),
-- (10, 3, 266, 0, 5875, 'Guns');

delete from playercreateinfo_spell where race = 9 and class = 3 and spell = 5011;
delete from playercreateinfo_spell where race = 10 and class = 3 and spell = 5011;
-- insert into playercreateinfo_spell values
--(9, 3, 5011, 0, 5875, 'Crossbows'),
--(10, 3, 5011, 0, 5875, 'Crossbows');

-- NOT NEEDED FOR HUNTERS! They use Auto Shop for everything.

-- delete from playercreateinfo_spell where race = 9 and class = 3 and spell = 7918;
-- delete from playercreateinfo_spell where race = 10 and class = 3 and spell = 7918;
-- insert into playercreateinfo_spell values
-- (9, 3, 7918, 0, 5875, 'Shoot Gun'),
-- (10, 3, 7918, 0, 5875, 'Shoot Gun');

-- delete from playercreateinfo_spell where race = 9 and class = 3 and spell = 7919;
-- delete from playercreateinfo_spell where race = 10 and class = 3 and spell = 7919;
-- insert into playercreateinfo_spell values
-- (9, 3, 7919, 0, 5875, 'Shoot Crossbow'),
-- (10, 3, 7919, 0, 5875, 'Shoot Crossbow');

-- EXAMPLE QUERY:

-- INSERT IGNORE INTO character_skills_copy (guid, skill, value, max)
-- Insert data into table and ignore duplicates
-- SELECT guid, 266, 1, 150
-- Select ONLY the guid from characters and enter the other values manually
-- FROM characters
-- Table where we pull the GUID from
-- WHERE race = 10 AND class = 3;
-- We want only race 10 and class 3

update quest_template set method = 1 where entry in (50300, 50301, 50302, 50303);

replace into item_template (entry, name, inventory_type, display_id, quality, bonding, description, spellid_1, spelltrigger_1, allowable_race) values
(50440, 'Scarlet Crusade Insignia', 11, 9834, 2, 1, "This ring marks the bearer as a fully fledged member of the Scarlet Crusade.", 0, 0, 0);

replace into broadcast_text (ID, MaleText) values ('90501', 'I’m a free knight! I don’t have a lord. You got a problem with that?\n\n<She glares at you for a moment before lighting up.>\n\nAh whatever... Welcome to our chapel! I can give you a sleeping bag or offer you some rations.');
 
UPDATE `quest_template` SET `ReqItemCount1`='5', `ReqItemCount2`='3' WHERE (`entry`='80304') AND (`patch`='0');
UPDATE `quest_template` SET `ReqItemCount1`='5' WHERE (`entry`='80360') AND (`patch`='0');