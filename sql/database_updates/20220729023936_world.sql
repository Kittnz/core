-- Fix Crusader Strike being considered a Judgement and removing other Judgements.
UPDATE `spell_template` SET `SpellFamilyMask`=34359738368 WHERE `name`='Crusader Strike' && `spellFamilyFlags`=536870912;
UPDATE `spell_affect` SET `SpellFamilyMask` = (`SpellFamilyMask` | 34359738368) WHERE `entry` IN (23300, 28852);



