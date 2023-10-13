-- Fix feral attack power bonus on Grand Marshal's Glaive and High Warlord's Pig Sticker.
UPDATE `item_template` SET `spelltrigger_2`=1 WHERE `entry` IN (18869, 18871);
