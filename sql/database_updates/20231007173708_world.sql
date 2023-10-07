UPDATE `areatrigger_teleport` SET `required_condition` = 30003 WHERE `id` = 5017;

-- fixes
update item_template set spellppmrate_1 = 2 where entry = 12798; -- Annihilator
update item_template set max_count = 1 where entry = 61243; -- Kara10 vial
update item_template set max_count = 1 where entry = 61251; -- Kara10 ring
update item_template set quality = 3 where entry = 8547; -- smelling salts recipe
update item_template set block = 0 where entry = 61510; -- stonehewn shoulders