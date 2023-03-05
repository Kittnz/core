-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2954
UPDATE `quest_template` SET `ZoneOrSort` = 1517 WHERE `entry` = 40129;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2952
UPDATE `quest_template` SET `Details` = 'Five nights ago we were harassed by a band of trolls with blue hair, they threw all sorts of javelins at us.$B$BThey made off with crates and bundles of supplies, not to mention killing a few good folk before we fought them off.$B$BThose trolls are Skullsplitter, and came from the Ziata\'jai Ruins to the north east of here. Head there, and recover 5 Bloodsail Supply Crates.$B$BWhile you\'re there, you may as well kill some to get a payback, we need to keep our image after all.' WHERE `entry` = 40331;
