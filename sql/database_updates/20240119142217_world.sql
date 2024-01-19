-- fix deez nuts
update item_template set sheath = 2 where entry = 41110; -- Ley-Technician Staff
update item_template set spellppmrate_1 = 2 where entry = 871; -- Flurry Axe
update item_template set spellppmrate_1 = 2 where entry = 13204; -- Bashguuder
update item_template set spellppmrate_1 = 3, spellppmrate_2 = 3, spellppmrate_3 = 3 where entry = 17182; -- Sulfuras, Hand of Ragnaros
update item_template set sheath = 0 where entry = 80834; -- Satyr Claw
update item_template set armor = 129 where entry = 41054; -- Bruiser's Chainmail
update item_template set display_id = 9837 where entry = 41185; -- Signet of Themar
update item_template set display_id = 9288 where entry = 41071; -- Rustgate's Water Shipment
update item_template set display_id = 20613 where entry = 61014; -- Temporal Anomaly
update item_template set inventory_type = 14, class = 4, subclass = 6 where entry = 41034; -- Rakklan's Targe
update item_template set name = 'Formal Purple Waistcoat' where entry = 41252; -- formal Purple Waistcoat
update item_template set spellid_3 = 15464 where entry = 19157; -- Chromatic Gauntlets
update item_template set item_level = 30, required_level = 30, allowable_race = -1 where entry = 60895; -- Razor-Sharp Knife
update item_template set display_id = 4494 where entry = 61321; -- Wildfeather Bracers
update item_template set max_count = 1 where entry = 18965; -- Hawksbill Snapjaw
update item_template set max_count = 1 where entry = 18966; -- Leatherback Snapjaw
update item_template set max_count = 1 where entry = 18963; -- Albino Snapjaw
update item_template set max_count = 1 where entry = 18964; -- Loggerhead Snapjaw
update item_template set max_count = 1 where entry = 18967; -- Olive Snapjaw
update item_template set subclass = 1 where entry = 61753; -- Drape of Nordrassil
update item_template set description = "LEGendary quality." where entry = 51833; -- Femur Staff
update item_template set display_id = 26542 where entry = 61630; -- Ebonmere Vambracers
update item_template set spellcooldown_1 = -1 where entry = 51267; -- Spicy Beef Burrito
update item_template set required_spell = -1, required_skill = 164, required_skill_rank = 300 where entry = 17049; -- Plans: Fiery Chain Girdle
update item_template set required_spell = -1, required_skill = 164, required_skill_rank = 300 where entry = 17053; -- Plans: Fiery Chain Shoulders
update item_template set allowable_class = -1 where entry = 21889; -- Gloves of the Redeemed Prophecy
update item_template set allowable_class = -1 where entry = 21890; -- Gloves of the Fallen Prophet
update item_template set flags = 0 where entry = 51861; -- Waters of Vision
update item_template set sheath = 2 where entry = 60787; -- Scythe of the Harvest
update item_template set sheath = 2 where entry = 19874; -- Halberd of Smiting
update item_template set spellppmrate_1 = 0.4 where entry = 21134; -- Dark Edge of Insanity

update quest_template set title = '[DEPRECATED] Shellcoins' where entry = 80381;
delete from creature_involvedrelation where quest = 80381;
delete from creature_questrelation where quest = 80381;