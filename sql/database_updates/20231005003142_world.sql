-- Argent Dawn Shoulder enchants require reputation and a quest to unlock.
-- Revered
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (548, 5, 529, 6, 0, 0, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (551, 8, 5504, 0, 0, 0, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (552, 8, 5507, 0, 0, 0, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (553, 8, 5513, 0, 0, 0, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (554, -2, 551, 552, 553, 0, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (555, -1, 554, 548, 0, 0, 0);
UPDATE `npc_vendor` SET `condition_id` = 555 WHERE `entry` IN (10856, 10857, 11536) AND `item` IN (18169, 18170, 18171, 18172, 18173);
-- Exalted
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (549, 5, 529, 7, 0, 0, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (556, 8, 5517, 0, 0, 0, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (557, 8, 5521, 0, 0, 0, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (558, 8, 5524, 0, 0, 0, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (559, -2, 556, 557, 558, 0, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (560, -1, 559, 549, 0, 0, 0);
UPDATE `npc_vendor` SET `condition_id` = 560 WHERE `entry` IN (10856, 10857, 11536) AND `item` = 18182;

-- Superior Armaments of Battle - Honored Amongst the Dawn should be repeatable like the other versions.
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 9223;
