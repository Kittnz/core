UPDATE `item_template` SET `display_id` =  67804 WHERE `entry` = 12064;
UPDATE `item_template` SET `display_id` = 67805 WHERE `entry` = 2586;
UPDATE `item_template` SET `display_id` = 67806 WHERE `entry` = 11508;

-- Replace item 61185 (Dawnstone Hammer), from all loot tables it drops from, and replace it with Plans: Dawnstone Hammer (Entry 61189) @Shorta

UPDATE `creature_loot_template` SET `item` = 61189 WHERE `item` = 61185;

-- lion horn of stormwind
update spell_template SET Effect2 = 6, Effect3 = 6, effectDieSides2 = 1, effectDieSides3 = 1, effectBaseDice2 = 1, effectBaseDice3 = 1, EffectBasePoints1 = 4, EffectBasePoints2 = 4, EffectBasePoints3 = 9, effectApplyAuraName1 = 138, effectApplyAuraName2 = 140, effectApplyAuraName3 = 65, effectMiscValue2 = 1, effectMiscValue3 = 1, description = 'Increases attack speed by $s1 and casting speed by $s3 for $d.', auraDescription = 'Increases attack speed by $s1 and casting speed by $s3 for $d.' WHERE entry = 18946; -- The Lion Horn of Stormwind (Proc Buff Effect)
update spell_template SET procchance = 2, description = 'When struck in combat has a 2% chance of increasing all party member\'s attack speed by $18946s1 and casting speed by $18946s3 for $18946d.' WHERE entry = 20847; -- The Lion Horn of Stormwind (Equip Spell)

-- Change name of npc 61591 to Sentinel Briarie

UPDATE creature_template SET name = 'Sentinel Briarie' WHERE entry = 61591;

-- set respawn time of Harlow Family Chest to 7 days

UPDATE `gameobject` SET `spawntimesecsmin` = 604800, `spawntimesecsmax` = 604800 WHERE `guid` = 5015837;

-- item Genn Greymane's Head (Entry 61352), change display ID to 2945

UPDATE `item_template` SET `display_id` = 2945 WHERE `entry` = 61352;

-- item The Binding of Xanthar (entry 61731), change to bind on pickup

UPDATE `item_template` SET `bonding` = 1 WHERE `entry` = 61731;

-- Change "Faelindella" and "Nordrassil Nymph" to faction 35 

UPDATE creature_template SET faction = 35 WHERE name in ('Faelindella', 'Nordrassil Nymph');