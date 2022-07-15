-- Fix Race restriction on Ironweave Battlesuit (whoops)
update item_template set allowable_race = -1 where entry = 22306;
update item_template set allowable_race = -1 where entry = 22311;
update item_template set allowable_race = -1 where entry = 22302;
update item_template set allowable_race = -1 where entry = 22304;
update item_template set allowable_race = -1 where entry = 22305;
update item_template set allowable_race = -1 where entry = 22303;
update item_template set allowable_race = -1 where entry = 22301;
update item_template set allowable_race = -1 where entry = 22313;
-- What I intended to do
update item_template set allowable_class = 1424 where entry = 22306;
update item_template set allowable_class = 1424 where entry = 22311;
update item_template set allowable_class = 1424 where entry = 22302;
update item_template set allowable_class = 1424 where entry = 22304;
update item_template set allowable_class = 1424 where entry = 22305;
update item_template set allowable_class = 1424 where entry = 22303;
update item_template set allowable_class = 1424 where entry = 22301;
update item_template set allowable_class = 1424 where entry = 22313;