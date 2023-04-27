-- Make Prison Cell Key (https://database.turtle-wow.org/?item=11140) party lootable like other dungeon keys
UPDATE item_template SET flags = 2112 WHERE entry = 11140;

-- remove 3mp5 and duplicate water breathing, replace dodge with crit
-- reduce nerf on flamewrath
-- revert nerf on boots
-- revert BoP due to nerf approach instead

update item_template set spellid_2 = 7597,  spellid_4 = 0, spellid_5 = 0, bonding = 2 where entry = 65026; -- Depthstalker Helm
update item_template set stat_type1 = 3, stat_type2 = 4, bonding = 2 where entry = 65025; -- Flamewrath Leggings
update item_template set bonding = 2, stat_value1 = 22, spellid_2 = 13669, spellid_1 = 8815 where entry = 65027; -- Windwalker Boots
update item_template set bonding = 2 where entry = 65024; -- Earthguard Tunic
