-- Make Will of Shahram able to stack 5 times.
UPDATE `spell_template` SET `stackAmount`=5, `customFlags`=(`customFlags` | 1) WHERE `entry`=16598;
