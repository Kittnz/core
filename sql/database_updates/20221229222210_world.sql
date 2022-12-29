UPDATE `quest_template` SET `Details` = 'So the shield really belonged to the tauren from Brackenwall. Good work.\n\nOn the other hand, the reported killing of Paval Reethe by our soldiers is troubling. Deeply troubling. I cannot just trust the Horde on this. My role, as a captain, is not only to order, but also to serve.\n\nI\'m worried that Lieutenant Caldwell only acted in his self defence. But, if the orc was really speaking the truth, you may find some evidence in Caldwell\'s belongings. You can find his quarters downstairs. He was sent there with a soldier named Hallan. Check hers, too.\n\nI will prepare the report for Lady Jaina.' WHERE `entry` = 40559;

UPDATE `quest_template` SET `Details` = 'Already we have established contact with the Horde Diplomat named Kagoro.\n\n$N, Please remain calm, and try not to provoke them. I know it may be difficult, given our history, but they are much like you and me.\n\nJust perhaps a bit more green.' WHERE `entry` = 40558;

UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue2` = -100 WHERE `creature_id` = 4662;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = 20 WHERE `creature_id` = 4640;

UPDATE `quest_template` SET `MinLevel` = 32 WHERE `ZoneOrSort` = 5077;

UPDATE `quest_template` SET `RewRepFaction1` = 108 WHERE `entry` IN (40554, 40555, 40556, 40557, 40558);

UPDATE `item_template` SET `stackable` = 60 WHERE `entry` = 81301;

UPDATE `quest_template` SET `Details` = 'I feel pride. The fire that had settled before has once again been fueled. It\'s time for my last order.\n\n$N, I command you to find Zetharia and end this nightmare. As a last gift to my people, the Lord of the Living Flame has granted me the way to find her.\n\nFar to the south west in these lands and atop the rocks, she lingers, forever searching for new souls to torture. Make sure you succeed, if not she will probably torment your soul for generations, as she did to me and my people.' WHERE `entry` = 40717;
