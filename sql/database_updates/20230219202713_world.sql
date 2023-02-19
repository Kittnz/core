-- Makes Blood Talon Bind on Equip
update item_template set bonding = 2 where entry = 12795; -- Blood Talon
-- Remove BoP Gear Prof Req
update item_template set required_skill = 0, required_skill_rank = 0 where entry = 14154; -- Truefaith Vestments
update item_template set required_skill = 0, required_skill_rank = 0 where entry = 14153; -- Robe of the Void
update item_template set required_skill = 0, required_skill_rank = 0 where entry = 14152; -- Robe of the Archmage

-- Shovel stuff.

UPDATE `quest_template` SET `OfferRewardText` = 'What do you have there, $C?$B$BOh, where did you find this?$B$BTThis was the shovel my father had given me back when we worked the farmstead years ago. It served me well, and reminds me of him.$B$BMemories of a better time.$B$B<Sven stares at the shovel and hands it back to you.>$B$BIt was a nice gesture of you to bring me this, $N, but I have no use for it anymore.$B$BDo with it what you will.' WHERE `entry` = 70057;

UPDATE `creature_template` SET `npc_flags` = 2 WHERE `entry` = 60821;