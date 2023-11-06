-- Fix wrong level requirement for Razormane Orders on item.
UPDATE `item_template` SET `required_level`=3 WHERE `entry`=60520;
