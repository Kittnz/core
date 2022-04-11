-- Dragu Formular fix
UPDATE item_template SET spellid_1 = 46604, name = "Formula: Enchant Gloves - Arcane Power", display_id = 7798 WHERE entry = 70001;
UPDATE item_template SET spellid_1 = 46605, name = "Formula: Enchant Gloves - Nature Power", display_id = 7798 WHERE entry = 70000;
UPDATE item_template SET spellid_1 = 46606, name = "Formula: Enchant Gloves - Holy Power", display_id = 7798 WHERE entry = 70002;
UPDATE item_template SET required_spell = 9787 WHERE entry = 83535;
UPDATE item_template SET display_id = 32903 WHERE entry = 60405;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1260
UPDATE creature_involvedrelation SET id = 60652 WHERE quest = 40366;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1250
REPLACE into creature_loot_template VALUES
(91718, 118, 0.0103, 0, 1, 1, 0),
(91718, 414, 4.5836, 0, 1, 1, 0),
(91718, 765, 0.04, 0, 1, 1, 0),
(91718, 774, 0.02, 0, 1, 1, 0),
(91718, 785, 0.02, 0, 1, 1, 0),
(91718, 818, 0.14, 0, 1, 1, 0),
(91718, 827, 1, 0, 1, 1, 0),
(91718, 829, -80, 0, 1, 1, 0),
(91718, 856, 0.0517, 0, 1, 1, 0),
(91718, 858, 1.3293, 0, 1, 1, 0),
(91718, 954, 0.34, 0, 1, 1, 0),
(91718, 955, 0.54, 0, 1, 1, 0),
(91718, 1179, 2.4451, 0, 1, 1, 0),
(91718, 1180, 0.54, 0, 1, 1, 0),
(91718, 1206, 0.14, 0, 1, 1, 0),
(91718, 1210, 0.46, 0, 1, 1, 0),
(91718, 1529, 0.0034, 0, 1, 1, 0),
(91718, 2287, 0.02, 0, 1, 1, 0),
(91718, 2406, 0.02, 0, 1, 1, 0),
(91718, 2407, 0.02, 0, 1, 1, 0),
(91718, 2408, 0.02, 0, 1, 1, 0),
(91718, 2409, 0.02, 0, 1, 1, 0),
(91718, 2447, 0.02, 0, 1, 1, 0),
(91718, 2449, 0.02, 0, 1, 1, 0),
(91718, 2450, 0.02, 0, 1, 1, 0),
(91718, 2452, 0.02, 0, 1, 1, 0),
(91718, 2453, 0.02, 0, 1, 1, 0),
(91718, 2455, 0.7094, 0, 1, 1, 0),
(91718, 2553, 0.02, 0, 1, 1, 0),
(91718, 2555, 0.02, 0, 1, 1, 0),
(91718, 2589, 18.5412, 0, 1, 3, 0),
(91718, 2592, 19.3712, 0, 1, 2, 0),
(91718, 2601, 0.02, 0, 1, 1, 0),
(91718, 2657, 0.0103, 0, 1, 1, 0),
(91718, 2698, 0.08, 0, 1, 1, 0),
(91718, 2770, 0.12, 0, 1, 1, 0),
(91718, 2771, 0.06, 0, 1, 1, 0),
(91718, 2775, 0.02, 0, 1, 1, 0),
(91718, 2835, 0.06, 0, 1, 1, 0),
(91718, 2836, 0.02, 0, 1, 1, 0),
(91718, 2881, 0.02, 0, 1, 1, 0),
(91718, 2882, 0.02, 0, 1, 1, 0),
(91718, 2883, 0.02, 0, 1, 1, 0),
(91718, 2996, 0.02, 0, 1, 1, 0),
(91718, 3012, 0.38, 0, 1, 1, 0),
(91718, 3393, 0.02, 0, 1, 1, 0),
(91718, 3394, 0.02, 0, 1, 1, 0),
(91718, 3610, 0.02, 0, 1, 1, 0),
(91718, 4292, 0.02, 0, 1, 1, 0),
(91718, 4293, 0.02, 0, 1, 1, 0),
(91718, 4294, 0.02, 0, 1, 1, 0),
(91718, 4345, 0.02, 0, 1, 1, 0),
(91718, 4346, 0.02, 0, 1, 1, 0),
(91718, 4347, 0.02, 0, 1, 1, 0),
(91718, 4348, 0.02, 0, 1, 1, 0),
(91718, 4349, 0.02, 0, 1, 1, 0),
(91718, 4408, 0.02, 0, 1, 1, 0),
(91718, 4409, 0.02, 0, 1, 1, 0),
(91718, 4410, 0.02, 0, 1, 1, 0),
(91718, 4537, 0.02, 0, 1, 1, 0),
(91718, 4541, 0.0034, 0, 1, 1, 0),
(91718, 4605, 0.02, 0, 1, 1, 0),
(91718, 4698, 0.02, 0, 1, 1, 0),
(91718, 4700, 0.0034, 0, 1, 1, 0),
(91718, 5368, 0.0103, 0, 1, 1, 0),
(91718, 5503, 0.02, 0, 1, 1, 0),
(91718, 5573, 0.0103, 0, 1, 1, 0),
(91718, 5574, 0.0172, 0, 1, 1, 0),
(91718, 5578, 0.02, 0, 1, 1, 0),
(91718, 5972, 0.02, 0, 1, 1, 0),
(91718, 6271, 0.02, 0, 1, 1, 0),
(91718, 6342, 0.02, 0, 1, 1, 0),
(91718, 6344, 0.02, 0, 1, 1, 0),
(91718, 6347, 0.02, 0, 1, 1, 0),
(91718, 6348, 0.02, 0, 1, 1, 0),
(91718, 6375, 0.02, 0, 1, 1, 0),
(91718, 6390, 0.02, 0, 1, 1, 0),
(91718, 6391, 0.02, 0, 1, 1, 0),
(91718, 6716, 0.02, 0, 1, 1, 0),
(91718, 7288, 0.02, 0, 1, 1, 0),
(91718, 7997, 1.9216, 0, 1, 1, 0),
(91718, 9751, 0.02, 0, 1, 1, 0),
(91718, 10316, 0.02, 0, 1, 1, 0),
(91718, 10407, 0.02, 0, 1, 1, 0),
(91718, 11038, 0.02, 0, 1, 1, 0),
(91718, 11039, 0.02, 0, 1, 1, 0),
(91718, 11081, 0.02, 0, 1, 1, 0),
(91718, 30018, 2.5, 0, -30018, 1, 0),
(91718, 30019, 0.5, 0, -30019, 1, 0),
(91718, 30022, 0.5, 0, -30022, 1, 0),
(91718, 30024, 0.5, 0, -30024, 1, 0),
(91718, 30037, 2.5, 0, -30037, 1, 0),
(91718, 30038, 0.5, 0, -30038, 1, 0),
(91718, 60197, -100, 3, 1, 1, 0);
DELETE from creature_loot_template WHERE entry = 122 AND item = 60197;
UPDATE creature_template SET loot_id = 91718 WHERE entry = 91718;

-- Coun
REPLACE INTO gameobject_template (entry, type, displayId, name, size, data0, data1) VALUES (2004013, 5, 24800, 'Orgrimmar Outskirts', 1, 1, 1);
REPLACE INTO gameobject_template (entry, type, displayId, name, size, data0, data1) VALUES (2004012, 5, 17, '<Rats>', 1, 1, 1);

-- Dragunovovitsch
UPDATE quest_template SET details = 'It seems as though there is only one thing left. I cannot believe the Blue Dragonflight would be responsible for such a thing. If their enemy is magic, then that means their enemy is Dalaran. We cannot allow their plans to succeed. We must deal with them now with due haste in our actions.\n\nJust south of here is Lake Mennar where the Blue Dragonflight has gathered. The cause of which was unknown until now. Head there, slay their Magelords, and kill the leader, Lieutenant Azsalus. Report back to me once you were able to shatter them. \n\nOne more thing... The Blue Dragonflight is not a foe to be underestimated. I would advise you to find a band of mercenaries or like-minded heroes. You will need them to battle with the dragonkin, or at least to stand a chance.' WHERE entry = 40127;

-- Flag creature 60705 as repair NPC. Already is a vendor.
update creature_template set npc_flags = 16388 where entry = 60705;

-- Creatures 60700, 60702 and 60703 need to be flagged PvP and Civilians.
update creature_template set unit_flags = 4608, civilian = 1, flags_extra = 524298 where entry in (60700, 60702, 60703);