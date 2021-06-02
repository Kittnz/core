-- creates a table where we store primary and secondary talent templates
DROP TABLE IF EXISTS `character_spell_dual_spec`;
CREATE TABLE `character_spell_dual_spec` (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `spec` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'primary or secondary'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System' ROW_FORMAT=DYNAMIC;


ALTER TABLE `character_spell_dual_spec`
  ADD PRIMARY KEY (`guid`,`spell`,`spec`) USING BTREE,
  ADD KEY `idx_spell` (`spell`);