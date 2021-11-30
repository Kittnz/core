-- Fix Wyvern Sting not being removed on taking damage.
UPDATE `spell_template` SET `procCharges`=1 WHERE (`procFlags` & 1048576) && (`auraInterruptFlags` & 2) && (`procCharges` = 0);

-- Triggered dot aura by Wyvern Sting should be a debuff.
UPDATE `spell_template` SET `customFlags`=`customFlags` | 2 WHERE `entry` IN (24131, 24134, 24135);