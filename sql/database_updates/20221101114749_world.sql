-- Please fix the item's name. Should be Darlthos' Jewelry Box.
update item_template set name = 'Darlthos\'' where entry = 60189;
-- Make https://database.turtle-wow.org/?item=80606 require only honored.
update item_template set required_reputation_faction = 893 where entry in (80606);
update item_template set required_reputation_rank = 5 where entry in (80606);
