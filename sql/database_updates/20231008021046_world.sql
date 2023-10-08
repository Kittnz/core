-- Fix Chromie's Broken Pocket Watch.
-- "reduce casting speed" means make casting slower!
-- if you want to cast faster, that's increasing the speed 
UPDATE `spell_template` SET `description`='Your direct damaging spells have a 10% chance to increase your casting speed by $45860s1% for $45860d.' WHERE  `entry`=45861;
UPDATE `spell_template` SET `effectBasePoints1`=9 WHERE  `entry`=45860;
