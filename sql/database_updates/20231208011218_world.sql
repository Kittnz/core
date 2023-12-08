-- Fix hitbox of Glyph of the Panther display id.
UPDATE `creature_display_info_addon` SET `bounding_radius`=0.9, `combat_reach`=1.35 WHERE `display_id`=20410;

