-- Delete deprecated artcit fox:
delete from creature_template where entry = 80253;
delete from creature_loot_template where entry = 80253;

-- Fixed shop amani bears:
update mount_spells set spellid = 46525 where itemid = 81153; -- Purple
update mount_spells set spellid = 46524 where itemid = 81154; -- Black
update mount_spells set spellid = 46526 where itemid = 81155; -- Red
