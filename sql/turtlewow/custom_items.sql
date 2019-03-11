
-- ### Any custom item on Turtle WoW should remain in 50000-51000 entry range. 
-- ### If you insert something in the middle I will find you and hurt you.

-- [Character Name Change]:

DELETE FROM `item_template` WHERE `entry` = '50000';
INSERT INTO `item_template` (`entry`, `name`, `description`) VALUES ('50000', 'Character Name Change', 'Right click to use. You will be requested to choose a new name on your next login.');

-- Common quality:

UPDATE `item_template` SET `quality`='1' WHERE `entry`='50000';

-- Nice glowing effect & 'Blizzard' DisplayID:

UPDATE `item_template` SET `spellid_1`='1575' WHERE `entry`='50000'; 
UPDATE `item_template` SET `display_id`='30658' WHERE `entry`='50000';

-- Destroy after the first usage:

UPDATE `item_template` SET `spellcharges_1`='-1' WHERE `entry`='50000';

-- Attach item script:

UPDATE `item_template` SET `script_name`='character_rename' WHERE `entry`='50000';

-- [Bloody Coin]

delete from item_template where entry = 50015;

insert into item_template (entry, class, subclass, name, description, display_id, quality, stackable, bonding) values
(50015, 0, 15, 'Bloody Coin', 'Local currency used in some bloody events.', 32277, 1, 200, 1);
