DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190326025249');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190326025249');
-- Add your query below.

update item_template set description = 'I have HUGE, heavy balls and leveled up on 0.5 rates. I like it slow.' where entry = 19160;
update item_template set required_level = 60 where entry = 19160;

-- TODO: ADD MORE JOKES. >D 50200

replace into mangos_string (entry, content_default) values
(50200, '|cffF58CBASword of a Thousand Truths: It worked that way on retail...|r'),
(50201, '|cffF58CBASword of a Thousand Truths: Warlocks are too OP!|r'),
(50202, '|cffF58CBASword of a Thousand Truths: Fire Resistance is overrated.|r'),
(50203, '|cffF58CBASword of a Thousand Truths: You think you do, but you don\'t.|r'),
(50204, '|cffF58CBASword of a Thousand Truths: The grass was greener...|r'),
(50205, '|cffF58CBASword of a Thousand Truths: Protpals can tank!|r'),
(50206, '|cffF58CBASword of a Thousand Truths: One does not simply pull one murloc!|r'),
(50207, '|cffF58CBASword of a Thousand Truths: Holy Resistance smth smth smth...|r'),
(50208, '|cffF58CBASword of a Thousand Truths: Everything was working on Nostalrius.|r'),
(50209, '|cffF58CBASword of a Thousand Truths: Did you know gnomes make the best shoes? The hard part is getting your foot in their tiny mouths.|r'),
(50210, '|cffF58CBASword of a Thousand Truths: Knock, knock. Who\'s there? A gnome, I can\'t reach the doorbell! |r');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
