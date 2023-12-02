-- Remove energize threat from Vampiric Touch.
UPDATE `spell_template` SET `attributesEx4`=(`attributesEx4` | 8) WHERE `entry`=45966;
