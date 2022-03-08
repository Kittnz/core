-- Adds 1% Spell Crit to Onyxia Scale Breastplate, a small incentivizer even if still quite wasteful. 
update item_template set spellid_2 = 18384, spelltrigger_2 = 1 where entry = 15141;

update item_template set spelltrigger_2 = 1 where entry = 21481;

-- Hazzuri Scavenger on Lapidis Isle is tracked as a beast mob:
update creature_tem

-- Sinrek's Childern text update:
replace into broadcast_text values (9656, '', 'There are costs with war, $c... ones that are often overlooked.\n\nThose costs are the orphans—children who have lost their parents to the far-too-numerous conflicts that rage across Azeroth.\n\nThose children have no one else to turn to come here often to live until they are old enough to fend for themselves.\n\nOne week out of the month, the Horde takes time to give something back to these innocents. This time is called Children\'s Week.', 0, 0, 0, 1, 1, 0, 0, 0, 0);
replace into broadcast_text values (9659, '', 'There are costs with war, $c... ones that are often overlooked.\n\nThose costs are the orphans—children who have lost their parents to the far-too-numerous conflicts that rage across Azeroth.\n\nThose children have no one else to turn to come here often to live until they are old enough to fend for themselves.\n\nOne week out of the month, the Alliance takes time to give something back to these innocents. This time is called Children\'s Week.', 0, 0, 0, 1, 1, 0, 0, 0, 0);

-- Boat to Auberdine deprecated sign:
delete from gameobject where guid = 13779;

-- Prepare instanced map for `Scourge!` quest:
update map_template set map_type = 1, player_limit = 1 where entry = 42;