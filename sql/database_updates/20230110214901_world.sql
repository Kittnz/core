UPDATE `quest_template` SET `Title` = 'The Harvest Golem Mystery' WHERE `entry` BETWEEN 40470 AND 40485;

UPDATE `quest_template` SET
`Details` = 'The mysterious animation runes... I\'ve been trying to get my hands on one, but as a shopkeep, I ain\'t exactly suited to fight mechanical monsters.$B$BI work for a... certain someone who is investigating the harvest golems in Westfall. If you could recover a rune, I\'ll make it worth your while!$B$BYou can find them in any harvest golem in the region.',
`OfferRewardText` = 'What a fine specimen! A little cracked, but this should work just fine. My client is trying to get to the bottom of what caused these golems to go haywire, and he needs all the samples he can get.$B$BI have another task for you, and I\'m willing to spare some coin for your trouble if you\'re interested.'
WHERE `entry` = 40470;

UPDATE `quest_template` SET `Details` = REPLACE(`Details`, '\n\n', '$B$B');
UPDATE `quest_template` SET `RequestItemsText` = REPLACE(`RequestItemsText`, '\n\n', '$B$B');
UPDATE `quest_template` SET `OfferRewardText` = REPLACE(`OfferRewardText`, '\n\n', '$B$B');