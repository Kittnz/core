-- Fix quest category of Way of the Spiritwolf chain
UPDATE quest_template SET ZoneOrSort = -82 WHERE entry BETWEEN 40530 AND 40534;
UPDATE quest_template SET NextQuestInChain = 40531 WHERE entry = 40530;
UPDATE quest_template SET NextQuestInChain = 40532 WHERE entry = 40531;
UPDATE quest_template SET NextQuestInChain = 40533 WHERE entry = 40532;
UPDATE quest_template SET NextQuestInChain = 40534 WHERE entry = 40533;

-- Update quests to point to Gnomeregan Reclamation Facility for former Tinker Town NPCs
UPDATE quest_template SET Objectives = 'Bring Techbot''s Memory Core to Tinkmaster Overspark at the Gnomeregan Reclamation Facility.' WHERE entry = 2922;
UPDATE quest_template SET Objectives = 'Find and bring Gigno''s Report to Tinkmaster Overspark at the Gnomeregan Reclamation Facility.' WHERE entry = 40047;
UPDATE quest_template SET Objectives = 'Deliver the Sealed Missive to High Tinker Mekkatorque at the Gnomeregan Reclamation Facility.' WHERE entry = 40374;

-- 100 arp -> 50 arp
update item_template set spellid_2 = 48034 where entry = 61275; -- Breastplate of Earthen Might
update item_template set spellid_1 = 48034 where entry = 60547; -- Band of Calamity
update item_template set spellid_1 = 48034 where entry = 60808; -- Bone Fracture
update item_template set spellid_1 = 48034 where entry = 61517; -- Chimaera's Eye
update item_template set spellid_2 = 48034, name = 'Grand Slammer' where entry = 60547; -- Giants Heavy Mace
update item_template set spellid_1 = 48034 where entry = 61263; -- Tooth of the Packlord

-- 75 arp -> 40-35 arp
update item_template set spellid_1 = 48032 where entry = 61275; -- Shieldbreaker Arbalest
update item_template set spellid_1 = 48033 where entry = 61406; -- Mark of the Worgen
update item_template set spellid_1 = 48033 where entry = 80674; -- Corrosive Core

-- 50 arp -> 25 arp
update item_template set spellid_1 = 48030 where entry = 17016; -- Dark Iron Destroyer
update item_template set spellid_3 = 48030 where entry = 61291; -- Darkflame Helm
update item_template set spellid_2 = 48030 where entry = 61365; -- Dreamsteel Leggings
update item_template set spellid_2 = 48030 where entry = 61273; -- Earthbreaker Belt
update item_template set spellid_2 = 48030 where entry = 51525; -- Nature's Call
update item_template set spellid_1 = 48030 where entry = 61246; -- Sabatons of the Endless March
update item_template set spellid_2 = 48030 where entry = 83486; -- Sandstalker's Shroud
update item_template set spellid_1 = 48030 where entry = 60806; -- Coldheart Icicle
update item_template set spellid_2 = 48030 where entry = 61272; -- Deepstone Boots
update item_template set spellid_1 = 48030 where entry = 21567; -- Rune of Duty (Level 40 Version)
update item_template set spellid_2 = 48030 where entry = 61279; -- Slateplate Leggings
update item_template set spellid_1 = 48030 where entry = 61518; -- Apefist Pummelers
update item_template set spellid_1 = 48030 where entry = 3837; -- Golden Scale Coif
update item_template set spellid_1 = 48030 where entry = 61582; -- Sharp Teeth Necklace

-- 40 arp -> 20 arp
update item_template set spellid_2 = 48029 where entry = 51734; -- Shawl of Haunted Memories
update item_template set spellid_2 = 48029 where entry = 61274; -- Pulverizer Gauntlets

-- 30 arp -> 15 arp
update item_template set spellid_2 = 48029 where entry = 60567; -- Blackhammer Pauldrons
-- Dropped to 20 arp instead of 15 arp due to being slightly underbudget, somehow.

update item_template set spellid_1 = 48028, stat_value1 = 11, spellid_2 = 9331 where entry = 61280; -- Granitized Bracers
update item_template set spellid_2 = 48028 where entry = 3845; -- Golden Scale Cuirass
-- Blade of Rotting was excluded due to being very undertuned already, with this change it is actually in budget.

-- 25 arp -> 15-20 arp
update item_template set spellid_1 = 48029 where entry = 21568; -- Rune of Duty (Level 20 Version)
update item_template set spellid_1 = 48029 where entry = 3843; -- Golden Scale Leggings
-- Skullcrushing Gauntlets and Winter Veil Branch was excluded due to being very undertuned already, with this change it is actually in budget.

-- 20 arp -> 10 arp
update item_template set spellid_1 = 48026 where entry = 61367; -- Dreamsteel Boots
update item_template set spellid_2 = 48026 where entry = 60752; -- Sentinel's Glaive
update item_template set spellid_1 = 48026 where entry = 6040; -- Golden Scale Bracers
update item_template set spellid_1 = 48026 where entry = 9366; -- Golden Scale Gauntlets

-- nuke arp
update item_template set spellid_2 = 0 where entry = 60746; -- Sentinel's Breastplate
update item_template set spellid_2 = 0 where entry = 60748; -- Sentinel's Crown
update item_template set spellid_2 = 0 where entry = 60749; -- Sentinel's Leggings

-- misc
update item_template set frost_res = 10, stat_value1 = 25 where entry = 61087; -- Winter Veil Branch

-- fix
update item_template set dmg_type1 = 0 where entry = 61594; -- Magus Blade
update item_template set spellid_1 = 9346 where entry = 61032; -- Band of Infinite Possibilities
update item_template set dmg_min1 = 28, dmg_max1 = 51 where entry = 60124; -- Axe of the Wildtusk
update item_template set required_skill_rank = 300, required_skill = 197, spellid_1 = 14254, spellid_2 = 21364, stat_value1 = 19 where entry = 61360; -- Dreamthread Mantle
update item_template set required_skill_rank = 300, required_skill = 164, spellid_1 = 7597, spellid_2 = 0, stat_value1 = 25, stat_value2 = 15, stat_type2 = 7 where entry = 61364; -- Dreamsteel Mantle
