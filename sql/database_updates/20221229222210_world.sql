UPDATE `quest_template` SET `Details` = 'So the shield really belonged to the tauren from Brackenwall. Good work.\n\nOn the other hand, the reported killing of Paval Reethe by our soldiers is troubling. Deeply troubling. I cannot just trust the Horde on this. My role, as a captain, is not only to order, but also to serve.\n\nI\'m worried that Lieutenant Caldwell only acted in his self defence. But, if the orc was really speaking the truth, you may find some evidence in Caldwell\'s belongings. You can find his quarters downstairs. He was sent there with a soldier named Hallan. Check hers, too.\n\nI will prepare the report for Lady Jaina.' WHERE `entry` = 40559;

UPDATE `quest_template` SET `Details` = 'Already we have established contact with the Horde Diplomat named Kagoro.\n\n$N, Please remain calm, and try not to provoke them. I know it may be difficult, given our history, but they are much like you and me.\n\nJust perhaps a bit more green.' WHERE `entry` = 40558;

UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue2` = -100 WHERE `creature_id` = 4662;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = 20 WHERE `creature_id` = 4640;

UPDATE `quest_template` SET `MinLevel` = 32 WHERE `ZoneOrSort` = 5077;

UPDATE `quest_template` SET `RewRepFaction1` = 108 WHERE `entry` IN (40554, 40555, 40556, 40557, 40558);

UPDATE `item_template` SET `stackable` = 60 WHERE `entry` = 81301;

UPDATE `quest_template` SET `Details` = 'I feel pride. The fire that had settled before has once again been fueled. It\'s time for my last order.\n\n$N, I command you to find Zetharia and end this nightmare. As a last gift to my people, the Lord of the Living Flame has granted me the way to find her.\n\nFar to the south west in these lands and atop the rocks, she lingers, forever searching for new souls to torture. Make sure you succeed, if not she will probably torment your soul for generations, as she did to me and my people.' WHERE `entry` = 40717;

UPDATE `quest_template` SET `Details` = 'Trust is something you can\'t buy, $R.\n\nHere\'s the deal, lad. You earn the trust of this gryphon over here and you\'ll get your ride to the camp. Fail and he\'ll have you as his breakfast.\n\nHah! Of course I\'m pulling your leg here, lad. This winged beast won\'t even budge unless it trust you completely.\n\nHow, you ask? Food, of course.\n\nAnd a toy. Go figure. He likes to gnaw on them discarded bones the Lion\'s Pride Inn\'s cook throws out with the trash.\n\nHe\'s gone and snapped all his, judging by the refuse at his talons.' WHERE `entry` = 60070;

UPDATE `quest_template` SET `OfferRewardText` = 'The gryphon sniffs the air about you excitedly, sensing the treats you\'ve brought.\n\nHis pupils grow wide and he chirps with joy at the sight of his favorite Chew Toy in your hand.\n\nHe looks happy!' WHERE `entry` = 60070;

UPDATE `broadcast_text` SET `male_text` = 'The gryphon\'s languid demeanor suggests he\'s not ready for flight any time soon.\n\nLethargic and hungry, no doubt. Some spare Dwarven Mild would perk him right up and likely earn you a flight.', `female_text` = NULL, `chat_type` = 0, `sound_id` = 0, `language_id` = 0, `emote_id1` = 0, `emote_id2` = 0, `emote_id3` = 0, `emote_delay1` = 0, `emote_delay2` = 0, `emote_delay3` = 0 WHERE `entry` = 90366;
