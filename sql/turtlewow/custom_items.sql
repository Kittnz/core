
-- ### Any custom item on Turtle WoW should remain in 50000-51000 entry range. 
-- ### If you insert something in the middle I will find you and hurt you.

-- [Character Name Change]:

delete from `item_template` where `entry` = '50000';
insert into `item_template` (`entry`, `name`, `description`) values ('50000', 'Character Name Change', 'Right click to use. You will be requested to choose a new name on your next login.');

-- Common quality:

update `item_template` set `quality`='1' where `entry`='50000';

-- Nice glowing effect & 'Blizzard' DisplayID:

update `item_template` set `spellid_1`='1575' where `entry`='50000'; 
update `item_template` set `display_id`='30658' where `entry`='50000';

-- Destroy after the first usage:

update `item_template` set `spellcharges_1`='-1' where `entry`='50000';

-- Attach item script:

update `item_template` set `script_name`='character_rename' where `entry`='50000';

-- [Bloody Coin]

delete from item_template where entry = 50015;

insert into item_template (entry, class, subclass, name, description, display_id, quality, stackable, bonding) values
(50015, 0, 15, 'Bloody Coin', 'Local currency used in some bloody events.', 32277, 1, 200, 1);

-- [Portable Meeting Stone]

delete from `item_template` where `entry` = 50016;
insert into `item_template` (`entry`, `name`, `description`, `display_id`, `quality`, `spellid_1`, `spellcooldown_1`, `script_name`) 
values ('50016', 'Portable Meeting Stone', 'Right click to meet new friends.', '33543', '1', '31726', '3600000', 'portable_meeting_stone');

-- [Highborne Soul Mirror]

delete from `item_template` where `entry` = 50017;
insert into `item_template` (`entry`, `name`, `description`, `display_id`, `quality`, `spellid_1`, `spellcooldown_1`, `script_name`)
values ('50017', 'Highborne Soul Mirror', 'Before the Great Sundering, the Highborne were known among the night elves for their arrogance, avarice and outlandish clothing. It was said that nothing was so pleasing to the gaze of the Highborne as themselves. These mirrors were created so that elven ladies could see their colorful garments in three full dimensions, yet the reflection often exaggerated the already depraved visage of the viewer.', '14007', '1', '31726', '3600000', 'highborne_soul_mirror'); 
