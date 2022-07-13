REPLACE INTO creature_loot_template (entry, item, chanceorquestchance, groupid) VALUES
(60605, 12206, 30, 2), -- Crab
(60605, 2675, 30, 3), -- Crab
(60545, 4234, 30, 2), -- Bear
(60545, 11410, 30, 3), -- Bear
(60544, 2838, 30, 2), -- Elemental
(60544, 12361, 15, 2); -- Elemental

-- Multiple todo tasks:

update quest_template set title = 'Raider\'s Raid' where entry = 40498;

update item_template set required_reputation_faction = 61, required_reputation_rank = 6 where entry = 60729;
update item_template set required_reputation_faction = 61, required_reputation_rank = 6 where entry = 60730;
update item_template set stat_value1 = 10, arcane_res = 10, spellid_1 = 17826 where entry = 60725;

update item_template set quality = 4, description = 'The trusted mechanical steed of Engineer Figgles, made by accident trying to make improved models of his mechanical whelps.' where entry = 13325;

update item_template set spelltrigger_2 = 1 where entry = 21683;

update item_template set description = '' where entry = 81196;

update creature_loot_template set chanceorquestchance = 100 where item = 51217;
update item_template set dmg_min1 = 28, dmg_max1 = 47 where entry = 80794;

update quest_template set rewxp = 2500 where entry = 40368;

update quest_template set suggestedplayers = 5 where entry in (8348, 8363);

-- Mining animation:

replace into creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES (60830, 0, 0, 0, 0, 233, 0, '');

update creature_addon set emote = 0 where guid in (2571413, 2571414, 2571419, 2571420, 2571579, 2571431, 2571585);

delete from npc_vendor where item = 5110;