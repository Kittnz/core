-- Item 55336 change display ID to 66456.
update item_template set display_id = 66456 where entry = 55336;
-- Item 55338 change display ID to 27606.
update item_template set display_id = 27606 where entry = 55338;
-- Item 55335 change display ID to 27650.
update item_template set display_id = 27650 where entry = 55335;
-- Item 55335 rename to Netherbane Rod, Item 70190 rename to Plans: Netherbane Rod.
update item_template set name = 'Netherbane Rod' where entry = 55335;
update item_template set name = 'Plans: Netherbane Rod' where entry = 70190;
-- Rename spell 41635 and 41736 to 'Netherbane Rod'.
update spell_template set name = 'Netherbane Rod' where entry = 41635;
-- Item 55333 rename to Shadowmoon Orb, Item 70188 rename to Plans: Shadowmoon Orb.
update item_template set name = 'Shadowmoon Orb' where entry = 55333;
update item_template set name = 'Plans: Shadowmoon Orb' where entry = 70188;
-- Item 55333 change display ID to 24122.
update item_template set display_id = 24122 where entry = 55333;
-- Rename spell 41731, and 41732 to Shadowmoon Orb.
update spell_template set name = 'Shadowmoon Orb' where entry in (41731,41732);