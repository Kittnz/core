-- Adds 1% Spell Crit to Onyxia Scale Breastplate, a small incentivizer even if still quite wasteful. 
update item_template set spellid_2 = 18384, spelltrigger_2 = 1 where entry = 15141;

update item_template set spelltrigger_2 = 1 where entry = 21481;

-- Hazzuri Scavenger on Lapidis Isle is tracked as a beast mob:
update creature_template set beast_family = 0, type = 7, skinning_loot_id = 0 where entry = 91824;