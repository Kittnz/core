
-- Remove not used db script.
DELETE FROM `event_scripts` WHERE `id`=8420;

-- Correct type of dreadstead ritual circle. This fixes the animation.
UPDATE `gameobject_template` SET `type`=0, `flags`=20 WHERE `entry`=179668;
