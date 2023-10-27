-- Lightning Speed
-- Increase Lightning Bolt proc chance to 10%. Increase Stormstrike proc chance to 50%.
UPDATE `spell_template` SET `procChance`=10 WHERE `entry`=45850;

-- Potent Venom
-- Change it so it stacks only up to 2 times. Change total damage from 100 to 120, increase duration to 12 seconds and make it tick every 3 seconds instead of 2 seconds. Basically it ticks every 3 seconds for 30 damage over 12 seconds and stacks twice.
UPDATE `spell_template` SET `stackAmount`=2, `effectBasePoints1`=29 WHERE `entry`=45416;

-- Lifebinding
-- nerf spellpower scaling to 0.01
UPDATE `spell_template` SET `effectBonusCoefficient1`=0.1 WHERE `entry`=48001;
