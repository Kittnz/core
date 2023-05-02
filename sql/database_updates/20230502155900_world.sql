-- Gilneas City Reward Fixes
update item_template set bonding = 2 where entry = 61336; -- Knife Juggler Gloves
update item_template set display_id = 27096 where entry = 61335; -- Dragonbane Pauldrons
update item_template set display_id = 31899 where entry = 61312;-- The Black Pendant
update item_template set display_id = 31616 where entry = 61332;-- Ring of Electrical Binding
-- Kara10 Display
update item_template set display_id = 66384 where entry = 61332;-- Ring of Electrical Binding
-- Gilneas City Reward Fixes
update item_template set bonding = 2 where entry = 61336; -- Knife Juggler Gloves
update item_template set display_id = 24966 where entry = 61335; -- Dragonbane Pauldrons
update item_template set display_id = 31899 where entry = 61312; -- The Black Pendant
update item_template set display_id = 31616 where entry = 61332; -- Ring of Electrical Binding
update item_template set spellid_1 = 45421, spelltrigger_1 = 1, spellid_2 = 13679, spelltrigger_2 = 1 where entry = 61328; -- Wolfblood
update item_template set spellid_1 = 45420, spelltrigger_1 = 1 where entry = 61313; -- Greymane Helmet
update item_template set spellid_1 = 45420, spelltrigger_1 = 1 where entry = 61324; -- Greymane Shoulders
update item_template set spellid_1 = 45420, spelltrigger_1 = 1 where entry = 61302; -- Wolfheart Necklace
update item_template set spellid_1 = 45420, spelltrigger_1 = 1, stat_value1 = 3, stat_value2 = 0 where entry = 61311; -- Sutherland's Cuffs
update item_template set spellid_1 = 45420, spelltrigger_1 = 1, stat_type1 = 3 where entry = 61331; -- Blackcowl Sash
-- Dimbil Stormshot (Entry 61443), change display ID to 4895.
update creature_template set display_id1 = 4895 where entry = 61443;
-- Automated Servitor (entry 61432) , set display ID to 6889.
update creature_template set display_id1 = 6889 where entry = 61432;
-- NPC Greymane Instigator Entry 61366, replace display ID 13 with 20276.
update creature_template set display_id1 = 20275, display_id2 = 20276, display_id3 = 0, display_id4 = 0 where entry = 61366;
-- The scales of these npcs were overwritten, please reset them back to scale 1: 61419, 61418, 61417, 61398.
update creature_template set scale = 1 where entry in (61419, 61418, 61417, 61398);
-- Item entry 61214 change display ID to 22457.
update item_template set display_id = 22457 where entry = 61214;
-- Item entry 61339 change display ID to 9577.
update item_template set display_id = 9577 where entry = 61339;