-- Make Borrowed Time reduce casting speed so casts take longer.
UPDATE `spell_template` SET `description`='Your direct damaging spells have a 10% chance to reduce your casting speed by $45860s1% for $45860d.' WHERE `entry`=45861;
UPDATE `spell_template` SET `effectBasePoints1`=-11 WHERE `entry`=45860;
