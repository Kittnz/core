-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/855
update quest_template set requiredminrepfaction = 509, requiredminrepvalue = 3000 where entry = 8115;

-- Delete War Reqruiters:
delete from creature_template where entry in (50000, 50001);

-- Revert PvP Tabards back to their original state:

-- Frostwolf Battle Tabard
-- Stormpike Battle Tabard
-- Warsong Battle Tabard
-- Silverwing Battle Tabard
-- Battle Tabard of the Defilers
-- Arathor Battle Tabard

update item_template set description = '', script_name = '', buy_price = 10000, sell_price = 2500, required_reputation_faction = 0, required_reputation_rank = 0 where entry = 19031;
update item_template set description = '', script_name = '', buy_price = 10000, sell_price = 2500, required_reputation_faction = 0, required_reputation_rank = 0 where entry = 19032;
update item_template set description = '', script_name = '', buy_price = 50000, sell_price = 12500, required_reputation_faction = 0, required_reputation_rank = 0 where entry = 19505;
update item_template set description = '', script_name = '', buy_price = 50000, sell_price = 12500, required_reputation_faction = 0, required_reputation_rank = 0 where entry = 19506;
update item_template set description = '', script_name = '', buy_price = 50000, sell_price = 12500, required_reputation_faction = 510, required_reputation_rank = 7 where entry = 20131;
update item_template set description = '', script_name = '', buy_price = 50000, sell_price = 12500, required_reputation_faction = 509, required_reputation_rank = 7 where entry = 20132;

-- Lock tabards behind the racemask so transferred people cannot wear the opposite faction tabards:

update item_template set allowable_race = 434, name = 'Frostwolf Battle Tabard' where entry = 19031;
update item_template set allowable_race = 589, name = 'Stormpike Battle Tabard' where entry = 19032;
update item_template set allowable_race = 434, name = 'Warsong Battle Tabard' where entry = 19505;
update item_template set allowable_race = 589, name = 'Silverwing Battle Tabard' where entry = 19506;
update item_template set allowable_race = 434, name = 'Battle Tabard of the Defilers' where entry = 20131;
update item_template set allowable_race = 589, name = 'Arathor Battle Tabard' where entry = 20132;
