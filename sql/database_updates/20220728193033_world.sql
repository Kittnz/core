-- Add spell power scaling to Retribution Aura.
UPDATE `spell_template` SET `effectBonusCoefficient1`=0.033 WHERE `name` = "Retribution Aura" && `effectApplyAuraName1`=15;


