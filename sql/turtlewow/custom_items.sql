
-- ### Any custom item on Turtle WoW should remain in 50000-51000 entry range. 
-- ### If you insert something in the middle I will find you and hurt you.

-- 50000 [Character Name Change]
-- 50001 [Gnomish Plastic Surgery Tools]
-- 50002 [Gnomish Plastic Surgery Tools]
-- 50003 [Loremaster's Backpack]
-- 50004 [Portable Black Hole]
-- 50005 [Field Repair Bot 75B]
-- 50007 [Forworn Mule]
-- 50008 [Twink's Insignia]
-- 50009 [H.A.R.V.E.Y.]
-- 50010 [Loremaster's Glyph]
-- 50011 [MOLL-E (Portable Mailbox)]
-- 50012 [Diplomatic Declaration]
-- 50013 [I like it slow!]
-- 50015 [Bloody Coin]
-- 50016 [Portable Meeting Stone]
-- 50017 [Highborne Soul Mirror]
-- 50018 [Loramus Thalipedes Blindfold]

-- TODO: Hardcore rewards, dressing boses, check if there're real replacements of some of the items which we had: like Hippogryph Hatchling actually is existing in vmangosd DB.

-- 50000 [Character Name Change]:

delete from `item_template` where `entry` = '50000';
insert into `item_template` (`entry`, `name`, `description`, `quality`, `spellid_1`, `display_id`, `spellcharges_1`, `script_name`) values 
('50000', 'Character Name Change', 'Right click to use. You will be requested to choose a new name on your next login.', '1', '1575', '30658', '-1', 'character_rename');

-- 50001 [Gnomish Plastic Surgery Tools]:

delete from `item_template` where `entry` = '50001';
insert into `item_template` (`entry`, `name`, `display_id`, `description`, `quality`) values 
('50001', 'Gnomish Plastic Surgery Tools', '7064', 'Type: .skin <the name of the character you want to look like>. It should be a character of the same race.', '1');

-- 50002 [Gnomish Plastic Surgery Tools]:

delete from `item_template` where `entry` = '50002';
insert into `item_template` (`entry`, `name`, `display_id`, `description`, `quality`) values 
('50002', 'Gnomish Plastic Surgery Tools', '7064', 'Type: .race <the name of the character you want to look like>. It should be a character of the same faction.', '1');

-- 50015 [Bloody Coin]

delete from item_template where entry = 50015;
insert into item_template (entry, class, subclass, name, description, display_id, quality, stackable, bonding) values
(50015, 0, 15, 'Bloody Coin', 'Local currency used in some bloody events.', 32277, 1, 200, 1);

-- 50016 [Portable Meeting Stone]:

delete from `item_template` where `entry` = 50016;
insert into `item_template` (`entry`, `name`, `description`, `display_id`, `quality`, `spellid_1`, `spellcooldown_1`, `script_name`, `bonding`) 
values ('50016', 'Portable Meeting Stone', 'Right click to meet new friends.', '33543', '1', '31726', '3600000', 'portable_meeting_stone', '1');

-- 50017 [Highborne Soul Mirror]:

delete from `item_template` where `entry` = 50017;
insert into `item_template` (`entry`, `name`, `description`, `display_id`, `quality`, `spellid_1`, `spellcooldown_1`, `script_name`)
values ('50017', 'Highborne Soul Mirror', 'Before the Great Sundering, the Highborne were known among the night elves for their arrogance, avarice and outlandish clothing. It was said that nothing was so pleasing to the gaze of the Highborne as themselves. These mirrors were created so that elven ladies could see their colorful garments in three full dimensions, yet the reflection often exaggerated the already depraved visage of the viewer.', '14007', '1', '31726', '3600000', 'highborne_soul_mirror'); 
