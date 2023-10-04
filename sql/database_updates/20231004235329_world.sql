-- Restore old spell id to Eternal Quintessence, making it share cooldown with Aqual Quintessence again.
UPDATE `item_template` SET `spellid_1`=21358 WHERE `entry`=22754;
