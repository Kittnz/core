-- Adds some heal power back to Pally T1
update item_template set spellid_2 = 7677 where entry = 16858; -- Lawbringer Belt
update item_template set spellid_3 = 7677 where entry = 16859; -- Lawbringer Boots
update item_template set spellid_2 = 7678 where entry = 16853; -- Lawbringer Chestguard
update item_template set spellid_2 = 7677 where entry = 16860; -- Lawbringer Gauntlets
update item_template set spellid_3 = 7678 where entry = 16854; -- Lawbringer Helm
update item_template set spellid_3 = 7678 where entry = 16855; -- Lawbringer Legplates
update item_template set spellid_2 = 7677 where entry = 16856; -- Lawbringer Spaulders
-- Dragonslayer Signet Bugfix
update item_template set stat_type2 = 7, spellid_1 = 18384, spellid_2 = 9346 where entry = 18403; -- Dragonslayer's Signet