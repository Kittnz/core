TRUNCATE TABLE `player_factionchange_reputations`;

REPLACE INTO `player_factionchange_reputations` (`alliance_id`, `horde_id`) VALUES 
(47, 530), -- Ironforge <> Darkspear Trolls
(54, 81), -- Gnomeregan <> Thunder Bluff
(69, 68), -- Darnassus <> Undercity
(72, 76), -- Stormwind <> Orgrimmar
(269, 893), -- Silvermoon Remnant <> Revantusk Trolls
(509, 510), -- League of Arathor <> The Defilers
(730, 729), -- Stormpike Guard <> Frostwolf Clan
(890, 889); -- Silverwing Sentinels <> Warsong Outriders


-- 47	Ironforge
-- 54	Gnomeregan Exiles
-- 68	Undercity
-- 69	Darnassus
-- 72	Stormwind
-- 76	Orgrimmar
-- 81	Thunder Bluff
-- 269	Silvermoon Remnant
-- 509	The League of Arathor
-- 510	The Defilers
-- 530	Darkspear Trolls
-- 729	Frostwolf Clan
-- 730	Stormpike Guard
-- 889	Warsong Outriders
-- 890	Silverwing Sentinels
-- 1001	Durotar Labor Union
-- 893	Revantusk Trolls

UPDATE `player_factionchange_spells` SET `comment` = 'Brown Horse' WHERE `alliance_id` = 458;
UPDATE `player_factionchange_spells` SET `comment` = 'Pinto Horse' WHERE `alliance_id` = 472;
UPDATE `player_factionchange_spells` SET `comment` = 'Teleport: Stormwind' WHERE `alliance_id` = 3561;
UPDATE `player_factionchange_spells` SET `comment` = 'Teleport: Ironforge' WHERE `alliance_id` = 3562;
UPDATE `player_factionchange_spells` SET `comment` = 'Teleport: Darnassus' WHERE `alliance_id` = 3565;
UPDATE `player_factionchange_spells` SET `comment` = 'Chestnut Mare' WHERE `alliance_id` = 6648;
UPDATE `player_factionchange_spells` SET `comment` = 'Gray Ram' WHERE `alliance_id` = 6777;
UPDATE `player_factionchange_spells` SET `comment` = 'White Ram' WHERE `alliance_id` = 6898;
UPDATE `player_factionchange_spells` SET `comment` = 'Brown Ram' WHERE `alliance_id` = 6899;
UPDATE `player_factionchange_spells` SET `comment` = 'Portal: Stormwind' WHERE `alliance_id` = 10059;
UPDATE `player_factionchange_spells` SET `comment` = 'Spotted Frostsaber' WHERE `alliance_id` = 10789;
UPDATE `player_factionchange_spells` SET `comment` = 'Striped Nightsaber' WHERE `alliance_id` = 10793;
UPDATE `player_factionchange_spells` SET `comment` = 'Blue Mechanostrider' WHERE `alliance_id` = 10969;
UPDATE `player_factionchange_spells` SET `comment` = 'Portal: Ironforge' WHERE `alliance_id` = 11416;
UPDATE `player_factionchange_spells` SET `comment` = 'Portal: Darnassus' WHERE `alliance_id` = 11419;
UPDATE `player_factionchange_spells` SET `comment` = 'White Mechanostrider' WHERE `alliance_id` = 15779;
UPDATE `player_factionchange_spells` SET `comment` = 'Palomino Stallion' WHERE `alliance_id` = 16082;
UPDATE `player_factionchange_spells` SET `comment` = 'White Stallion' WHERE `alliance_id` = 16083;
UPDATE `player_factionchange_spells` SET `comment` = 'Green Mechanostrider' WHERE `alliance_id` = 17453;
UPDATE `player_factionchange_spells` SET `comment` = 'Icy Blue Mechanostrider' WHERE `alliance_id` = 17459;
UPDATE `player_factionchange_spells` SET `comment` = 'Frost Ram' WHERE `alliance_id` = 17460;
UPDATE `player_factionchange_spells` SET `comment` = 'Black Ram' WHERE `alliance_id` = 17461;
UPDATE `player_factionchange_spells` SET `comment` = 'Black War Steed' WHERE `alliance_id` = 22717;
UPDATE `player_factionchange_spells` SET `comment` = 'Black Battlestrider' WHERE `alliance_id` = 22719;
UPDATE `player_factionchange_spells` SET `comment` = 'Black War Ram' WHERE `alliance_id` = 22720;
UPDATE `player_factionchange_spells` SET `comment` = 'Black War Tiger' WHERE `alliance_id` = 22723;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift Mistsaber' WHERE `alliance_id` = 23219;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift Yellow Mechanostrider' WHERE `alliance_id` = 23222;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift Green Mechanostrider' WHERE `alliance_id` = 23225;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift Palomino' WHERE `alliance_id` = 23227;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift White Steed' WHERE `alliance_id` = 23228;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift Brown Steed' WHERE `alliance_id` = 23229;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift Brown Ram' WHERE `alliance_id` = 23238;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift Gray Ram' WHERE `alliance_id` = 23239;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift White Ram' WHERE `alliance_id` = 23240;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift Stormsaber' WHERE `alliance_id` = 23338;
UPDATE `player_factionchange_spells` SET `comment` = 'Stormpike Battle Charger' WHERE `alliance_id` = 23510;

UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Large Timber Wolf') WHERE `horde_id` = 580;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Teleport: Undercity') WHERE `horde_id` = 3563;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Teleport: Thunder Bluff') WHERE `horde_id` = 3566;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Teleport: Orgrimmar') WHERE `horde_id` = 3567;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Dire Wolf') WHERE `horde_id` = 6653;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Brown Wolf') WHERE `horde_id` = 6654;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Emerald Raptor') WHERE `horde_id` = 8395;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Turquoise Raptor') WHERE `horde_id` = 10796;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Violet Raptor') WHERE `horde_id` = 10799;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Portal: Orgrimmar') WHERE `horde_id` = 11417;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Portal: Undercity') WHERE `horde_id` = 11418;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Portal: Thunder Bluff') WHERE `horde_id` = 11420;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Red Wolf') WHERE `horde_id` = 16080;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Arctic Wolf') WHERE `horde_id` = 16081;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Mottled Red Raptor') WHERE `horde_id` = 16084;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Ivory Raptor') WHERE `horde_id` = 17450;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Blue Skeletal Horse') WHERE `horde_id` = 17463;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Brown Skeletal Horse') WHERE `horde_id` = 17464;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Green Skeletal Warhorse') WHERE `horde_id` = 17465;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Gray Kodo') WHERE `horde_id` = 18989;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Brown Kodo') WHERE `horde_id` = 18990;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Green Kodo') WHERE `horde_id` = 18991;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Teal Kodo') WHERE `horde_id` = 18992;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Black War Kodo') WHERE `horde_id` = 22718;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Black War Raptor') WHERE `horde_id` = 22721;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Red Skeletal Warhorse') WHERE `horde_id` = 22722;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Black War Wolf') WHERE `horde_id` = 22724;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Swift Blue Raptor') WHERE `horde_id` = 23241;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Swift Olive Raptor') WHERE `horde_id` = 23242;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Swift Orange Raptor') WHERE `horde_id` = 23243;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Purple Skeletal Warhorse') WHERE `horde_id` = 23246;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Great White Kodo') WHERE `horde_id` = 23247;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Great Brown Kodo') WHERE `horde_id` = 23249;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Swift Brown Wolf') WHERE `horde_id` = 23250;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Swift Timber Wolf') WHERE `horde_id` = 23251;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Swift Gray Wolf') WHERE `horde_id` = 23252;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' : Frostwolf Howler') WHERE `horde_id` = 23509;
