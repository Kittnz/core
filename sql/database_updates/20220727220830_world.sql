-- Fix Sanctified Command (Custom Paladin Talent)
UPDATE `spell_template` SET `effect2`=6, `effectApplyAuraName2`=4 WHERE `entry` IN (45954, 45955);


