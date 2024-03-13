-- Item Voidheart Charm (55200), make bind on equip.
update item_template set bonding = 2 where entry = 55200;
-- Item Runebound Amulet (55204), make bind on equip.
update item_template set bonding = 2 where entry = 55204;

-- Guard direction map marker for Orgrimmar should be called "Asoran's Jewelry House" instead of "Orgrimmar Jewelcrafting Trainer"
update points_of_interest set icon_name = 'Asoran\'s Jewelry House' where entry = 2004;
-- Guard direction map marker for Undercity should be called "Undercity Jewelcrafting Trainer" instead of "Ironforge Jewelcrafting Trainer"
update points_of_interest set icon_name = 'Undercity Jewelcrafting Trainer' where entry = 2001;
-- Guard direction map marker for Ironforge should be called "Ironforge Jewelers Guild" instead of "Ironforge Jewelcrafting Trainer"
update points_of_interest set icon_name = 'Ironforge Jewelers Guild' where entry = 2000;
-- Guard direction map marker for Stormwind should be called "Fencer Family Jewels" instead of "Ironforge Jewelcrafting Trainer"
update points_of_interest set icon_name = 'Fencer Family Jewels' where entry = 2002;