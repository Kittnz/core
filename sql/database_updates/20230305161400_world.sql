-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2954
UPDATE `quest_template` SET `ZoneOrSort` = 1517 WHERE `entry` = 40129;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2952
UPDATE `quest_template` SET `Details` = 'Five nights ago we were harassed by a band of trolls with blue hair, they threw all sorts of javelins at us.$B$BThey made off with crates and bundles of supplies, not to mention killing a few good folk before we fought them off.$B$BThose trolls are Skullsplitter, and came from the Ziata\'jai Ruins to the north east of here. Head there, and recover 5 Bloodsail Supply Crates.$B$BWhile you\'re there, you may as well kill some to get a payback, we need to keep our image after all.' WHERE `entry` = 40331;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2944
UPDATE `creature_template` SET `armor` = 1373 WHERE `entry` = 7329;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2947
UPDATE `quest_template` SET `Details` = 'It has come to my attention that a dark magic has been growing in power within the region. Our Analyser Wigglestip has documented an extensive amount of magic being introduced into the area.$B$BThere is no doubt that the Shadowsworn would be the ones utilizing such forces. Those that gather around the Altar of Storms are to blame, and our reports only confirm that.$B$BI need someone to dispatch of the Dreadweavers that spread the corruption. Who knows what plans they have in motion, but I do not intend to sit around to find out.' WHERE `entry` = 40434;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2948
UPDATE `spell_template` SET `description` = 'The sword must be reforged before it can be used. Reforging the sword requires 4 Steel Bars, 4 Strong Flux, 2 Elemental Fire and 2 Heavy Grinding Stones.' WHERE `entry` = 11923;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2949
UPDATE `quest_template` SET `ObjectiveText1` = '', `ObjectiveText2` = '' WHERE `entry` = 60074;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2950
UPDATE `creature_template` SET `armor` = 1200, `faction` = 12, `type` = 7 WHERE `entry` = 50028;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2945
UPDATE `creature_template` SET `armor` = 1480 WHERE `entry` = 7328;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2928
UPDATE `quest_template` SET `Details` = 'For thousands of years I have kept my watch over this place. I have seen the world change around me, and most of the old city be swept beneath the waves. The magic that once ran through this place has been dampened and is almost non-existent.$B$BWith the rising waters my studies have been increasingly difficult. To keep watch over this tower is to protect it, and with the growing threat of the invasive ocean species my time has been more toward survival then study.$B$BI ask for assistance in this matter. Slay the murloc, the hydra and the crab beasts around the area to preserve this tower if even for a moment longer.' WHERE `entry` = 40243;

UPDATE `quest_template` SET `OfferRewardText` = 'I can breathe a sigh of relief. At one time I could walk the entirety of the beach, I could journey through the buried ruins of the old city, now submerged beneath the waves, but now, I am confined to this very tower. Perhaps one day I will be free to journey again.' WHERE `entry` = 40243;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2925 	
UPDATE `creature_template` SET `loot_id` = 2673 WHERE `entry` = 2673;
UPDATE `creature_template` SET `loot_id` = 2674 WHERE `entry` = 2674;
UPDATE `creature_template` SET `loot_id` = 12426 WHERE `entry` = 12426;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2606
UPDATE `item_template` SET `class` = 7, `subclass` = 1, `bonding` = 0 WHERE `entry` = 17411;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2594
UPDATE `creature_template` SET `pickpocket_loot_id` = 1711, `fire_res` = 10, `nature_res` = 10, `frost_res` = 10, `shadow_res` = 10, `arcane_res` = 10, `gold_min` = 127, `gold_max` = 171 WHERE `entry` = 60878;
UPDATE `creature_template` SET `unit_flags` = 32832 WHERE `entry` = 60878;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2926
UPDATE `spell_template` SET `description` = 'Creates a Spellstone for the caster.  When equipped and used, the Spellstone removes all magic effects from the caster and will absorb $128s2 magic damage for $128d.  In addition, equipping the Spellstone improves your chance to get a critical strike with spells by $18384s1%.\n\nConjured items disappear if logged out for more than 15 minutes.' WHERE `entry` = 2362;
