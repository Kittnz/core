-- Remove obscene Cenarion Cricle rep from a repeatable quest, undermining Ahn'Qiraj farming
UPDATE quest_template SET RewRepFaction1 = 0, RewRepValue1 = 0, RewXP = 0, RewMoneyMaxLevel = 0 WHERE entry = 50316;

-- Several item fixes from Dragunovi
update item_template set bonding = 1 where entry = 51043; -- void linked satchel
update item_template set inventory_type = 15 where entry = 83215; -- Blackflame Wand
update item_template set sheath = 2 where entry = 84503; -- Nature's Gift
update item_template set item_level = 27, disenchant_id = 24 where entry = 60112; -- Evermoon Staff
