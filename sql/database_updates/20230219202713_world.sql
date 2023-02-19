-- Makes Blood Talon Bind on Equip
update item_template set bonding = 2 where entry = 12795; -- Blood Talon
-- Remove BoP Gear Prof Req
update item_template set required_skill = 0, required_skill_rank = 0 where entry = 14154; -- Truefaith Vestments
update item_template set required_skill = 0, required_skill_rank = 0 where entry = 14153; -- Robe of the Void
update item_template set required_skill = 0, required_skill_rank = 0 where entry = 14152; -- Robe of the Archmage





