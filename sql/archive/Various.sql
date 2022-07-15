-- Hateforge Grips Unique On Use Spell Addition
update item_template set spellid_1 = 56525, spellcooldown_1 = 600000 where entry = 60577;
-- Ironfist Sheathe and One-Hand Fix
update item_template set inventory_type = 13, sheath = 0 where entry = 80794;
-- The Postmaster Item Buffs
update item_template set stat_value1 = 12, spellid_1 = 9417, spelltrigger_1 = 1 where entry = 13392; -- Postmaster's Seal Buff and Spirit Nerf
update item_template set stat_value2 = 13, spellid_1 = 9345, spelltrigger_1 = 1 where entry = 83443; -- Postmaster's Trousers Buff and Spirit Nerf
update item_template set stat_value1 = 13, spellid_1 = 9342 where entry = 83443; -- Postmaster's Treads Buff and Slight Intellect Nerf
-- Adds Druid to the list of class that can wear Ironweave Battlesuit
update item_template set allowable_race = 1424 where entry = 22306;
update item_template set allowable_race = 1424 where entry = 22311;
update item_template set allowable_race = 1424 where entry = 22302;
update item_template set allowable_race = 1424 where entry = 22304;
update item_template set allowable_race = 1424 where entry = 22305;
update item_template set allowable_race = 1424 where entry = 22303;
update item_template set allowable_race = 1424 where entry = 22301;
