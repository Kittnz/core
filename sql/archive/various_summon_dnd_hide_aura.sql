-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1265
delete from spell_effect_mod where id = 27203 and effectindex = 1;
-- Backup:
-- REPLACE INTO `spell_effect_mod` (`Id`, `EffectIndex`, `Effect`, `EffectDieSides`, `EffectBaseDice`, `EffectDicePerLevel`, `EffectRealPointsPerLevel`, `EffectBasePoints`, `EffectAmplitude`, `EffectPointsPerComboPoint`, `EffectChainTarget`, `EffectMultipleValue`, `EffectMechanic`, `EffectImplicitTargetA`, `EffectImplicitTargetB`, `EffectRadiusIndex`, `EffectApplyAuraName`, `EffectItemType`, `EffectMiscValue`, `EffectTriggerSpell`, `Comment`) VALUES (27203, 1, 6, 1, 1, -1, -1, 999, -1, -1, -1, -1, -1, 31, -1, -1, 19, -1, 5, -1, 'Summon tous les boss T0.5 : effect detect invisibility');
