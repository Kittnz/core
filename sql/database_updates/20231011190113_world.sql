-- Dragunovi Disenchant Fixes
update item_template set stat_value1 = 16, stat_value2 = 38 where entry = 22196; -- Thick Obsidian Breastplate
update item_template set stat_type2 = 7, spellid_3 = 15464 where entry = 61365; -- Dreamsteel Leggings
update item_template set stat_value1 = 26, stat_value3 = 13 where entry = 61367; -- Dreamsteel Boots
update item_template set required_skill_rank = 300, required_skill = 197 where entry = 61360; -- Dreamthread Mantle
update item_template set required_skill_rank = 300, required_skill = 165 where entry = 61356; -- Dreamhide Mantle
update item_template set required_skill_rank = 300, required_skill = 164, spellid_1 = 14254, stat_value1 = 19 where entry = 61364; -- Dreamsteel Mantle
update item_template set disenchant_id = 0 where entry = 61006; -- Blade of Infinite Mysteries
update item_template set disenchant_id = 0 where entry = 61012; -- Shard of Eternity
update item_template set disenchant_id = 0 where entry = 61007; -- Temporal Bronze Boots
update item_template set disenchant_id = 0 where entry = 61010; -- Wing of the Time-Lord
update item_template set disenchant_id = 0 where entry = 61005; -- Boots of Flowing Sands
update item_template set disenchant_id = 0 where entry = 61001; -- Claw of the Infinite
update item_template set disenchant_id = 0 where entry = 61013; -- Gauntlets of Temporal Guidance
update item_template set disenchant_id = 0 where entry = 61002; -- Robe of the Custodian
update item_template set disenchant_id = 0 where entry = 61004; -- Sandswept Ring of Arcanum
update item_template set disenchant_id = 0 where entry = 61003; -- Timeskipper's Helm of Alacrity

-- change scaling to potent venom trinket
update spell_template SET effectBonusCoefficient1 = 0 WHERE entry = 45416; -- Potent Venom
update spell_template SET reagentCount3 = 0, reagentCount4 = 0 WHERE entry = 45416; -- Potent Venom
