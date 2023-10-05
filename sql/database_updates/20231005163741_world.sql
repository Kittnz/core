REPLACE INTO `mangos_string` (`entry`, `content_default`) VALUES (11160, 'The beast returns from whence it came. The wrath of Neptulon has subsided.');

UPDATE `mangos_string` SET `content_loc4` = '這頭野獸回去了，奈普圖隆的憤怒也已平息。' WHERE `entry` = 11160;

-- fix
update item_template set spellid_1 = 18107, spellppmrate_1 = 1.5 where entry = 61318; -- Fleshslasher
update item_template set block = 28 where entry = 61314; -- Marshal's Blocker
update item_template set stat_type1 = 7 where entry = 16988; -- Fiery Chain Shoulders;