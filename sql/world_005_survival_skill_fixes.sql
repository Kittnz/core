-- This item is no longer required:

update item_template set spellId_1 = 0, quality = 0, name = 'Erlgadin\'s Survival Guide', description = 'Teaches how to create tools to overcome obstancles and tame the wilderness up to a maximum potential skill of 150.' where entry = 50230;

-- Fixes for survival blueprints:

replace into item_template values 

(50234, 0, 9, 6, 'Outline: Traveler\'s Tent', '', 15274, 2, 64, 1, 15000, 3750, 0, -1, -1, 55, 0, 142, 75, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46059, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_survival_outline'),
(50235, 0, 9, 6, 'Outline: Fishing Boat', '', 6270, 2, 64, 1, 25000, 3750, 0, -1, -1, 55, 0, 142, 125, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46061, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_survival_outline'),
(50254, 0, 9, 6, 'Outline: Bright Campfire', '', 6270, 2, 64, 1, 5000, 3750, 0, -1, -1, 55, 0, 142, 15, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7361, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_survival_outline');

update item_template set quality = 1 where entry = 50254;
update item_template set quality = 2 where entry in (50234, 50235, 50254);
update item_template set description = 'Boats for Dummies, second edition.' where entry = 50235;
update item_template set description = 'Gnome pillow not included.' where entry = 50234;
update item_template set description = 'The brighter the campfire, the less spooky the stories.' where entry = 50254;

replace into npc_vendor (entry, item) values (50070, 50254);

-- Fixes for the Night's Exploration:

update quest_template set rewitemid1 = 6183, rewitemcount1 = 1, rewitemid2 = 0, rewitemcount2 = 0, rewspellcast = 46052, rewspell = 46053 where entry = 50230;