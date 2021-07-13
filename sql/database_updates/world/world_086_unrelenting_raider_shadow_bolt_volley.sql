-- Make Unrelenting Raider's (16126) Shadow Bolt Volley (27831) interruptable
-- Proofs:
-- https://youtu.be/s_Z4G9_O7rQ?t=151
-- https://youtu.be/wapLvjPI9mE?t=146
-- Flag before update: interruptFlags = 9

UPDATE `spell_template` SET `interruptFlags` = '11' WHERE `entry` = 27831;