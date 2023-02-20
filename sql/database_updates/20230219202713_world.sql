-- Makes Blood Talon Bind on Equip
update item_template set bonding = 2 where entry = 12795; -- Blood Talon
-- Remove BoP Gear Prof Req
update item_template set required_skill = 0, required_skill_rank = 0 where entry = 14154; -- Truefaith Vestments
update item_template set required_skill = 0, required_skill_rank = 0 where entry = 14153; -- Robe of the Void
update item_template set required_skill = 0, required_skill_rank = 0 where entry = 14152; -- Robe of the Archmage

-- Shovel stuff.

UPDATE `quest_template` SET `OfferRewardText` = 'What do you have there, $C?$B$BOh, where did you find this?$B$BTThis was the shovel my father had given me back when we worked the farmstead years ago. It served me well, and reminds me of him.$B$BMemories of a better time.$B$B<Sven stares at the shovel and hands it back to you.>$B$BIt was a nice gesture of you to bring me this, $N, but I have no use for it anymore.$B$BDo with it what you will.' WHERE `entry` = 70057;

UPDATE `creature_template` SET `npc_flags` = 2 WHERE `entry` = 60821;

-- Fix stupid HC drake:

UPDATE `creature_template` SET `display_id1` = 18286 WHERE `entry` = 80155;

-- Restored Uldum Pedestal original GUID.

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (17230, 142343, 1, -9619.27, -2815.05, 8.21132, -3.13287, 0, 0, 0.99999, -0.004363, 2, 2, 100, 1, 0, 0);
