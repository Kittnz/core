-- Remove pointless copy of Rookery Whelp template.
DELETE FROM `creature` WHERE `id`=160015;
DELETE FROM `creature_template` WHERE `entry`=160015;

-- Remove not needed custom Solakar trigger.
DELETE FROM `creature` WHERE `id`=160014;
DELETE FROM `creature_template` WHERE `entry`=160014;

-- Remove changes to Disturb Rookery Egg spell.
DELETE FROM `spell_effect_mod` WHERE `id`=15746;
