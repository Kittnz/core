delete from item_template where entry = 69005;
delete from item_template where entry = 20651;
delete from item_template where entry = 83010;
-- Players keep asking about those, but they're not coming back!
delete from item_template where name like '%Dressing Box%';
-- Rename Steel Plate Helm:
update item_template set name = 'Steel Helm' where entry = 7922;
-- Farmer's Guidebook: Surviving on the Land!
update item_template set sell_price = 0, buy_price = 0 where entry = 51709;
-- Cryptwatcher's Call can't be repaired:
update item_template set item_level = 65, required_level = 60 where entry = 83467;