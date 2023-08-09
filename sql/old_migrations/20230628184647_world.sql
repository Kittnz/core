REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36450, 354, 45910, 0, 256, 1, 0, 0, 0, 0, 0);

REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (51210, 15, 0, 'Illusion: Green Dragonkin', 'This disguise will work until logout.', 36521, 1, 64, 1, 0, 0, 0, -1, -1, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46003, 0, 0, 0, 10, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- Spell fixes from Dragu:

update spell_template SET name = 'Armor +32/Stamina +4', description = 'Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 32 and Stamina by 4. Only usable on items level 25 and above.' WHERE entry = 10344; -- Armor +32 (Thick Armor Kit)
update spell_template SET name = 'Armor +40/Stamina +5', description = 'Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 40 and Stamina by 5. Only usable on items level 35 and above.' WHERE entry = 10344; -- Armor +40 (Rugged Armor Kit)
update spell_template SET description = 'Increases your pet\'s melee and spell critical strike chance by 2%.' WHERE entry = 27043; -- Increased Pet Crit +2%
update spell_template SET EffectBasePoints1 = 0, EffectBasePoints2 = 1, EffectBasePoints3 = 2 WHERE entry = 13679; -- Haste 1
update spell_template SET EffectBasePoints1 = 1, EffectBasePoints2 = 2, EffectBasePoints3 = 4 WHERE entry = 8815; -- Haste 2
update spell_template SET EffectBasePoints1 = 2, EffectBasePoints2 = 3, EffectBasePoints3 = 6 WHERE entry = 13680; -- Haste 3
update spell_template SET EffectBasePoints1 = 3, EffectBasePoints2 = 4, EffectBasePoints3 = 8 WHERE entry = 13681; -- Haste 4
update spell_template SET EffectBasePoints1 = 4, EffectBasePoints2 = 5, EffectBasePoints3 = 10 WHERE entry = 13682; -- Haste 5
update spell_template SET EffectBasePoints1 = 9, EffectBasePoints2 = 10, EffectBasePoints3 = 20 WHERE entry = 18065; -- Haste 10
update spell_template SET EffectBasePoints1 = -75 WHERE entry = 16621; -- Self Protectipn (Invulnerable Mail)
update spell_template SET EffectBasePoints2 = -51, effectApplyAuraName2 = 79, auraDescription = 'Immune to all attacks and spells, but decreases damage caused by by $s2%.' WHERE entry = 642; -- Divine Shield Rank 1
update spell_template SET EffectBasePoints2 = -51, effectApplyAuraName2 = 79, auraDescription = 'Immune to all attacks and spells, but decreases damage caused by by $s2%.' WHERE entry = 1020; -- Divine Shield Rank 2
update spell_template SET Reagent2 = 8836, ReagentCount2 = 2 WHERE entry = 17578;
update spell_template SET EffectBasePoints1 = 1, EffectBasePoints2 = 2, EffectBasePoints3 = 2 WHERE entry = 57046; -- Well Fed (Danonzo's Tel'Abim Medley)
update spell_template SET ReagentCount3 = 2 WHERE entry = 57051; 

-- Fixed Ansimer's Runeweaver:

UPDATE `item_template` SET `subclass` = 10 WHERE `entry` = 61264;
UPDATE `item_template` SET `sheath` = 2 WHERE `entry` = 61264;