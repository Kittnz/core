-- Add converge spells to items
UPDATE item_template SET spellid_1 = 56530 WHERE entry in (83550, 83554);
UPDATE item_template SET spellid_1 = 56531 WHERE entry in (83551, 83555);
UPDATE item_template SET spellid_1 = 56532 WHERE entry in (83552, 83556);
UPDATE item_template SET spellid_1 = 56533 WHERE entry in (83553, 83557);

-- Make all items BoE
UPDATE item_template SET bonding = 2 WHERE entry in (65024, 65025);
