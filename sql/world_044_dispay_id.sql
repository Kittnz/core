
-- These mobs shouldn't have a forced display id.
UPDATE `creature` SET `display_id`=0 WHERE `id2`!=0 && `display_id`!=0;
