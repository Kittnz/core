-- Fix Race restriction on Ironweave Battlesuit (whoops)
update item_template set allowable_race = -1 where entry = 22306;
update item_template set allowable_race = -1 where entry = 22311;
update item_template set allowable_race = -1 where entry = 22302;
update item_template set allowable_race = -1 where entry = 22304;
update item_template set allowable_race = -1 where entry = 22305;
update item_template set allowable_race = -1 where entry = 22303;
update item_template set allowable_race = -1 where entry = 22301;
update item_template set allowable_race = -1 where entry = 22313;
-- What I intended to do
update item_template set allowable_class = 1424 where entry = 22306;
update item_template set allowable_class = 1424 where entry = 22311;
update item_template set allowable_class = 1424 where entry = 22302;
update item_template set allowable_class = 1424 where entry = 22304;
update item_template set allowable_class = 1424 where entry = 22305;
update item_template set allowable_class = 1424 where entry = 22303;
update item_template set allowable_class = 1424 where entry = 22301;
update item_template set allowable_class = 1424 where entry = 22313;

-- Cloth Set
update item_template set set_id = 608 where entry = 83428;
update item_template set set_id = 608 where entry = 83427;
update item_template set set_id = 608 where entry = 83426;
update item_template set set_id = 608 where entry = 83425;
update item_template set set_id = 608 where entry = 83424;
update item_template set set_id = 608 where entry = 83423;
update item_template set set_id = 608 where entry = 83421;
update item_template set set_id = 608 where entry = 83420;
-- Leather Set
update item_template set set_id = 609 where entry = 83429;
update item_template set set_id = 609 where entry = 83430;
update item_template set set_id = 609 where entry = 83431;
update item_template set set_id = 609 where entry = 83432;
update item_template set set_id = 609 where entry = 83433;
update item_template set set_id = 609 where entry = 83434;
update item_template set set_id = 609 where entry = 83435;
update item_template set set_id = 609 where entry = 83436;
-- Mail Set
update item_template set set_id = 610 where entry = 60350;
update item_template set set_id = 610 where entry = 60351;
update item_template set set_id = 610 where entry = 60352;
update item_template set set_id = 610 where entry = 60353;
update item_template set set_id = 610 where entry = 60354;
update item_template set set_id = 610 where entry = 60355;
update item_template set set_id = 610 where entry = 60356;
update item_template set set_id = 610 where entry = 60357;
-- Plate Set
update item_template set set_id = 611 where entry = 60358;
update item_template set set_id = 611 where entry = 60359;
update item_template set set_id = 611 where entry = 60360;
update item_template set set_id = 611 where entry = 60361;
update item_template set set_id = 611 where entry = 60362;
update item_template set set_id = 611 where entry = 60363;
update item_template set set_id = 611 where entry = 60364;
update item_template set set_id = 611 where entry = 60365;

update item_template set stat_type2 = 5, stat_value1 = 8, stat_value2 = 8, stat_value3 = 0, spellid_1 = 9346, spellid_2 = 18384, spelltrigger_2 = 1 where entry = 18403;

-- Molten Core Item Adjustments
update item_template set spellid_1 = 18677, spellid_2 = 21361, spelltrigger_2 = 1, shadow_res = 0, frost_res = 0, fire_res = 0, arcane_res = 0, nature_res = 0 where entry = 16860; -- Seal of the Archmagus
-- (No real stat change, just swaps long paragraph resistances for an one line spell version added later in Vanilla, around AQ)
update item_template set spellppmRate_1 = 1.5 where entry = 17074; -- Shadowstrike
update item_template set spellppmRate_1 = 1.5 where entry = 17223; -- Thunderstrike
-- TRASHSTRIKE BUFF?!
update item_template set spellid_2 = 21606 where entry = 18809; -- Sash of Whispered Secrets
-- Tiny Health Regen/5 Buff 
update item_template set stat_type2 = 7, stat_value2 = 13, stat_value3 = 0, spellid_1 = 9417, spelltrigger_1 = 1 where entry = 21389; -- Band of Sulfuras
-- Removes spirit and adds 12 spellpower instead.

-- Blackwing Lair Item Adjustments
update item_template set dmg_min1 = 99, dmg_max1 = 173, delay = 3100 where entry = 19368; -- Dragonbreath Hand Cannon
-- Makes the gun "Meta-serviceable" aka does not clip auto attack after Aimed Shot fire.
update item_template set spellid_1 = 14521, spelltrigger_1 = 1 where entry = 19369; -- Gloves of Rapid Evolution
-- Ah, the Gloves of Rapid Disenchant, adding 5% mana regeneration in combat to complement the spirit, I'll keep its original SPIRIT the same. (Hah, get it?)
update item_template set spellid_1 = 14799, spelltrigger_1 = 1, stat_type2 = 7, stat_value2 = 21, stat_value3 = 0 where entry = 19399; -- Black Ash Robe 
-- Very fashionable robes, removed 17 Spirit and added 20 Spellpower instead.
update item_template set stat_type2 = 7, stat_value2 = 23, stat_value1 = 23, stat_value3 = 0, spellid_3 = 9343, spelltrigger_3 = 1 where entry = 19401; -- Primalist\'s Linked Legguards
-- Removed 12 spirit and added 13 spellpower instead, also added +1 stat to intellect and stamina.
update item_template set stat_type3 = 3 where entry = 16953; -- Herald of Woe
-- Converts spirit to agility.
update item_template set stat_type3 = 3, spellid_2 = 13679, spelltrigger_2 = 1 where entry = 19393; -- Primalist\'s Linked Waistguard
-- Converts spirit to agility, also adds 1% haste.
update item_template set stat_type4 = 3, stat_value4 = 16, stat_value2 = 17, stat_value5 = 0, spellid_2 = 13679, spelltrigger_2 = 1 where entry = 19392; -- Girdle of the Fallen Crusader
-- Converts spirit to agility and stamina, also adds 1% haste.
update item_template set stat_type2 = 7, stat_value2 = 17, stat_value3 = 0, spellid_2 = 9416, spelltrigger_2 = 1 where entry = 19388; -- Angelista's Grasp

-- Temple of Ahn'qiraj Adjustments
update item_template set set_id = 613 where entry = 21704; -- Boots of the Redeemed Prophecy
-- Applies new set.
update item_template set set_id = 614 where entry = 21705; -- Boots of the Fallen Prophet
-- Applies new set.
update item_template set spellid_3 = 18681, spelltrigger_3 = 1, shadow_res = 0, frost_res = 0, fire_res = 0, arcane_res = 0, nature_res = 0 where entry = 21128; -- Staff of the Qiraji Prophets
-- (No real stat change, just swaps long paragraph resistances for an one line spell version added later in Vanilla, around AQ)
update item_template set stat_type4 = 3, stat_value2 = 10, stat_value4 = 12, stat_value1 = 16, set_id = 613 where entry = 21889; -- Gloves of the Redeemed Prophecy
-- Reduces Stamina by 4 and Intellect by 10 -> Adds 12 Agility
update item_template set stat_type4 = 3, stat_value4 = 12, stat_value1 = 15, set_id = 614 where entry = 21890; -- Gloves of the Fallen Prophet
-- Reduces Intellect by 5 -> Adds 12 Agility
update item_template set stat_type1 = 7, stat_type2 = 4, stat_type3 = 3, stat_type4 = 5, spellid_1 = 14047, set_id = 613, name = 'Mantle of the Redeemed Prophecy' where entry = 21683; -- Mantle of the Desert Crusade
-- Swaps around stats, and swaps heal power for spellpower. Also new name for new item set.
update item_template set stat_value1 = 15, stat_value3 = 9, stat_value4 = 9, stat_type3 = 5, display_id = 28454, set_id = 614, name = 'Mantle of the Fallen Prophet' where entry = 21684; -- Mantle of the Desert's Fury
-- Reduced intellect and increased strength and added agility. Also new name and displayID for new item set.
update item_template set stat_value2 = 18, stat_value3 = 13, spellid_2 = 13669 where entry = 21675; -- Thick Qirajihide Belt
-- WHY DID THEY GIVE PARRY TO A BEAR TANK ITEM?
update item_template set spellid_1 = 18055 where entry = 21668; -- Scaled Leggings of Qiraji Fury
-- 3 spellpower mini buff.

-- Tier 1 Set Agility and SP Additions
update item_template set stat_type2 = 3, spellid_1 = 9416 where entry = 16858; -- Lawbringer Belt
update item_template set stat_type2 = 3, spellid_2 = 9416 where entry = 16859; -- Lawbringer Boots
update item_template set stat_type2 = 3 where entry = 16857; -- Lawbringer Bracers
update item_template set stat_type2 = 3, spellid_1 = 9344 where entry = 16853; -- Lawbringer Chestguard
update item_template set stat_type2 = 3, spellid_1 = 9416 where entry = 16860; -- Lawbringer Gauntlets
update item_template set stat_type2 = 3, spellid_2 = 9344 where entry = 16853; -- Lawbringer Helm
update item_template set stat_type2 = 3, spellid_2 = 9344 where entry = 16853; -- Lawbringer Legplates
update item_template set stat_type2 = 3, spellid_1 = 9416 where entry = 16860; -- Lawbringer Gauntlets

-- Tier 2 Agility and SP Additions
update item_template set stat_type2 = 3 where entry = 16953; -- Judgement Belt
update item_template set stat_type2 = 3 where entry = 16951; -- Judgement Bindings
update item_template set stat_type2 = 3, stat_value2 = 11, nature_res = 0 where entry = 16958; -- Judgement Breastplate
update item_template set stat_type2 = 3, stat_value2 = 12, frost_res = 0 where entry = 16955; -- Judgement Crown
update item_template set stat_type2 = 3 where entry = 16956; -- Judgement Gauntlets
update item_template set stat_type2 = 3, stat_value2 = 11, arcane_res = 0 where entry = 16954; -- Judgement Breastplate
update item_template set stat_type2 = 3 where entry = 16957; -- Judgement Sabatons
update item_template set stat_type2 = 3 where entry = 16953; -- Judgement Spaulders

-- Tier 2.5 Agility and Stam Additions
update item_template set stat_type4 = 7, stat_value4 = 16, stat_value5 = 0, stat_value1 = 15  where entry = 21391; -- Avenger's Pauldrons
update item_template set stat_type4 = 7, stat_value4 = 19, stat_value5 = 0, stat_value1 = 14  where entry = 21388; -- Avenger's Greaves
update item_template set stat_type4 = 7, stat_value4 = 23, stat_value5 = 0, stat_value1 = 16  where entry = 21387; -- Avenger's Crown
update item_template set stat_type4 = 7, stat_value4 = 23, stat_value5 = 0, stat_value1 = 17  where entry = 21390; -- Avenger's Legguards
update item_template set stat_type4 = 7, stat_value4 = 25, stat_value5 = 0, stat_value1 = 17  where entry = 21389; -- Avenger's Breastplate

-- Oddball Paladin and Shaman Items' Spirit Conversion
update item_template set stat_type4 = 3 where entry = 21623; -- Gauntlets of the Righteous Champion
update item_template set stat_type3 = 3 where entry = 21624; -- Gauntlets of Kalimdor
update item_template set spellid_1 = 9346 where entry = 21704; -- Boots of the Redeemed Prophecy
update item_template set spellid_1 = 14799 where entry = 21889; -- Gloves of the Redeemed Prophecy
update item_template set spellid_1 = 14047 where entry = 21890; -- Gloves of the Fallen Prophet (Adding to AQ40 Trash loottables soon!)
