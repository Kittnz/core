-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2954
UPDATE `quest_template` SET `ZoneOrSort` = 1517 WHERE `entry` = 40129;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2952
UPDATE `quest_template` SET `Details` = 'Five nights ago we were harassed by a band of trolls with blue hair, they threw all sorts of javelins at us.$B$BThey made off with crates and bundles of supplies, not to mention killing a few good folk before we fought them off.$B$BThose trolls are Skullsplitter, and came from the Ziata\'jai Ruins to the north east of here. Head there, and recover 5 Bloodsail Supply Crates.$B$BWhile you\'re there, you may as well kill some to get a payback, we need to keep our image after all.' WHERE `entry` = 40331;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2944
UPDATE `creature_template` SET `armor` = 1373 WHERE `entry` = 7329;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2947
UPDATE `quest_template` SET `Details` = 'It has come to my attention that a dark magic has been growing in power within the region. Our Analyser Wigglestip has documented an extensive amount of magic being introduced into the area.$B$BThere is no doubt that the Shadowsworn would be the ones utilizing such forces. Those that gather around the Altar of Storms are to blame, and our reports only confirm that.$B$BI need someone to dispatch of the Dreadweavers that spread the corruption. Who knows what plans they have in motion, but I do not intend to sit around to find out.' WHERE `entry` = 40434;
