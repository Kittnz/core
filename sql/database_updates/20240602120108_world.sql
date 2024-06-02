-- 4223:  Not (Target Has 410 Points In Skill 356)
UPDATE `conditions` SET `type`=7, `value1`=356, `value2`=410 WHERE `condition_entry`= 4223;
update fishing_loot_template set condition_id = 4223 where item = 56087 and entry = 5121;
update fishing_loot_template set condition_id = 4223 where item = 56086 and entry = 5024;