-- Remove wrong immunities from Flamewaker Healer.
UPDATE `creature_template` SET `mechanic_immune_mask`=612515807 WHERE `entry`=11663;
