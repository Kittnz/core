-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2981

UPDATE `quest_template` SET `OfferRewardText` = 'Oh, a letter?$B$B<Rugnar begins to read intently.>$B$BWell, this is unexpected news, I must offer my thanks for everything you\'ve done. The last thing I expected was a letter back so quickly. Take this, for all of the troubles.' WHERE `entry` = 55023;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2992

UPDATE `quest_template` SET `RewRepFaction1` = 69, `RewRepValue1` = 125 WHERE `entry` = 40706;
UPDATE `quest_template` SET `RewRepFaction1` = 69, `RewRepValue1` = 125 WHERE `entry` = 40707;