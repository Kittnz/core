-- Remove XP from Tomb Bats:
update creature_template set flags_extra = 64 where entry = 91921;
-- Doomcaller Staff needs a sell value added to it, make it 6 gold 74 silver, 8 copper:
update item_template set buy_price = 269920, sell_price = 67480 where entry = 60546;
-- Remove casttimeindex from Illusions:
update spell_template set castingtimeindex = 0 where entry = 46003;
-- Remove cooldown from functional companions:
update spell_template set recoverytime = 0 where entry in (46460, 46472, 46457);
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1733
update item_template set allowable_race = -1 where entry = 5415;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1726
update creature set position_x = -10035.79, position_y = 1980.40, position_z = 0 where guid = 89490;
-- Fix Infinite Dragonspawns in Black Morass randomly respawn in seconds:
update creature set spawntimesecsmin = 14400, spawntimesecsmax = 14400 where id in (65100, 65123, 65127);
-- Remove charge from Tempest's Rage:
update item_template set spellcharges_1 = 0 where entry = 83564;