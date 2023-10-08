UPDATE `areatrigger_teleport` SET `required_condition` = 30003 WHERE `id` = 5017;

-- fixes
update item_template set spellppmrate_1 = 2 where entry = 12798; -- Annihilator
update item_template set max_count = 1 where entry = 61243; -- Kara10 vial
update item_template set max_count = 1 where entry = 61251; -- Kara10 ring
update item_template set quality = 3 where entry = 8547; -- smelling salts recipe
update item_template set block = 0 where entry = 61510; -- stonehewn shoulders
update item_template set stat_type1 = 3 where entry = 61239; -- ancient jade leggings
update item_template set armor = 618 where entry = 61244; -- kara10 plate legs


-- Fix Kara instance binds:

update creature_template set flags_extra = 1  where entry in (61225,61221,61223,61222,61224);

-- key fix:

-- quest 40818 needs to be marked as a raid quest.
-- quest 40826 needs to be marked as a dungeon quest

UPDATE quest_template SET questflags = 64, type = 62 WHERE entry = 40818;
UPDATE quest_template SET type = 81  WHERE entry = 40826;