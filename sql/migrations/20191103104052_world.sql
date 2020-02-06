DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20191103104052');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20191103104052');
-- Add your query below.


-- Correct POI ids to match classic.
UPDATE `locales_points_of_interest` SET `entry`=`entry`+10000;
UPDATE `locales_points_of_interest` SET `entry`=416 WHERE `entry`=10056;
UPDATE `locales_points_of_interest` SET `entry`=1474 WHERE `entry`=10094;
UPDATE `locales_points_of_interest` SET `entry`=368 WHERE `entry`=10279;
UPDATE `locales_points_of_interest` SET `entry`=275 WHERE `entry`=10306;
UPDATE `locales_points_of_interest` SET `entry`=271 WHERE `entry`=10180;
UPDATE `locales_points_of_interest` SET `entry`=451 WHERE `entry`=10329;
UPDATE `points_of_interest` SET `entry`=658, `x`=-9459.35, `y`=42.0805, `icon`=6, `flags`=99, `icon_name`='Lion\'s Pride Inn' WHERE `entry`=10001;
UPDATE `points_of_interest` SET `entry`=652, `x`=-9471.12, `y`=33.4441, `icon`=6, `flags`=99, `icon_name`='Zaldimar Wefhellt' WHERE `entry`=10002;
UPDATE `points_of_interest` SET `entry`=660, `x`=-9469, `y`=108.053, `icon`=6, `flags`=99, `icon_name`='Brother Wilhelm' WHERE `entry`=10003;
UPDATE `points_of_interest` SET `entry`=653, `x`=-9461.07, `y`=32.996, `icon`=6, `flags`=99, `icon_name`='Priestess Josetta' WHERE `entry`=10004;
UPDATE `points_of_interest` SET `entry`=657, `x`=-9465.14, `y`=13.2936, `icon`=6, `flags`=99, `icon_name`='Keryn Sylvius' WHERE `entry`=10005;
UPDATE `points_of_interest` SET `entry`=656, `x`=-9473.22, `y`=-4.08464, `icon`=6, `flags`=99, `icon_name`='Maximillian Crowe' WHERE `entry`=10006;
UPDATE `points_of_interest` SET `entry`=661, `x`=-9461.82, `y`=109.505, `icon`=6, `flags`=99, `icon_name`='Lyria Du Lac' WHERE `entry`=10007;
UPDATE `points_of_interest` SET `entry`=663, `x`=-9057.04, `y`=153.637, `icon`=6, `flags`=99, `icon_name`='Alchemist Mallory' WHERE `entry`=10008;
UPDATE `points_of_interest` SET `entry`=659, `x`=-9456.59, `y`=87.9022, `icon`=6, `flags`=99, `icon_name`='Smith Argus' WHERE `entry`=10009;
UPDATE `points_of_interest` SET `entry`=655, `x`=-9467.54, `y`=-3.16732, `icon`=6, `flags`=99, `icon_name`='Tomas' WHERE `entry`=10010;
UPDATE `points_of_interest` SET `entry`=654, `x`=-9456.82, `y`=30.4947, `icon`=6, `flags`=99, `icon_name`='Michelle Belle' WHERE `entry`=10011;
UPDATE `points_of_interest` SET `entry`=650, `x`=-9376.12, `y`=-75.2306, `icon`=6, `flags`=99, `icon_name`='Adele Fielder' WHERE `entry`=10014;
UPDATE `points_of_interest` SET `entry`=651, `x`=-9381.13, `y`=-70.1127, `icon`=6, `flags`=99, `icon_name`='Helene Peltskinner' WHERE `entry`=10015;
UPDATE `points_of_interest` SET `entry`=647, `x`=-9536.92, `y`=-1212.76, `icon`=6, `flags`=99, `icon_name`='Eldrin' WHERE `entry`=10016;
UPDATE `points_of_interest` SET `entry`=869, `x`=-9466.62, `y`=45.8709, `icon`=6, `flags`=99, `icon_name`='Erma' WHERE `entry`=10017;
UPDATE `points_of_interest` SET `entry`=527, `x`=-8812.57, `y`=666.354, `icon`=6, `flags`=99, `icon_name`='Stormwind Auction House' WHERE `entry`=10018;
UPDATE `points_of_interest` SET `entry`=47, `x`=-8885.39, `y`=640.052, `icon`=6, `flags`=99, `icon_name`='Stormwind Bank' WHERE `entry`=10019;
UPDATE `points_of_interest` SET `entry`=532, `x`=-8387.53, `y`=565.012, `icon`=6, `flags`=99, `icon_name`='The Deeprun Tram' WHERE `entry`=10021;
UPDATE `points_of_interest` SET `entry`=529, `x`=-8867.65, `y`=673.634, `icon`=6, `flags`=99, `icon_name`='The Gilded Rose' WHERE `entry`=10022;
UPDATE `points_of_interest` SET `entry`=535, `x`=-8839.35, `y`=487.546, `icon`=6, `flags`=99, `icon_name`='Stormwind Gryphon Master' WHERE `entry`=10023;
UPDATE `points_of_interest` SET `entry`=870, `x`=-8432.87, `y`=555.121, `icon`=6, `flags`=99, `icon_name`='Jenova Stoneshield' WHERE `entry`=10026;
UPDATE `points_of_interest` SET `entry`=808, `x`=-8796.2, `y`=613.098, `icon`=6, `flags`=99, `icon_name`='Woo Ping' WHERE `entry`=10027;
UPDATE `points_of_interest` SET `entry`=1467, `x`=-8762.39, `y`=401.972, `icon`=6, `flags`=99, `icon_name`='Champions\' Hall' WHERE `entry`=10028;
UPDATE `points_of_interest` SET `entry`=72, `x`=-8749.69, `y`=1075.78, `icon`=6, `flags`=99, `icon_name`='The Park' WHERE `entry`=10032;
UPDATE `points_of_interest` SET `entry`=74, `x`=-8430.27, `y`=559.87, `icon`=6, `flags`=99, `icon_name`='Hunter Lodge' WHERE `entry`=10033;
UPDATE `points_of_interest` SET `entry`=71, `x`=-9008.55, `y`=857.193, `icon`=6, `flags`=99, `icon_name`='Wizard\'s Sanctum' WHERE `entry`=10034;
UPDATE `points_of_interest` SET `entry`=73, `x`=-8621.68, `y`=777.189, `icon`=6, `flags`=99, `icon_name`='Cathedral Of Light' WHERE `entry`=10035;
UPDATE `points_of_interest` SET `entry`=69, `x`=-8782.15, `y`=353.099, `icon`=6, `flags`=99, `icon_name`='Stormwind - Rogue House' WHERE `entry`=10036;
UPDATE `points_of_interest` SET `entry`=75, `x`=-8938.57, `y`=986.894, `icon`=6, `flags`=99, `icon_name`='The Slaughtered Lamb' WHERE `entry`=10038;
UPDATE `points_of_interest` SET `entry`=70, `x`=-8714.84, `y`=342.761, `icon`=6, `flags`=99, `icon_name`='Stormwind Barracks' WHERE `entry`=10039;
UPDATE `points_of_interest` SET `entry`=91, `x`=-8975.3, `y`=778.865, `icon`=6, `flags`=99, `icon_name`='Alchemy Needs' WHERE `entry`=10040;
UPDATE `points_of_interest` SET `entry`=94, `x`=-8433.29, `y`=610.413, `icon`=6, `flags`=99, `icon_name`='Therum Deepforge' WHERE `entry`=10041;
UPDATE `points_of_interest` SET `entry`=68, `x`=-8641.24, `y`=423.502, `icon`=6, `flags`=99, `icon_name`='Pig and Whistle Tavern' WHERE `entry`=10042;
UPDATE `points_of_interest` SET `entry`=108, `x`=-8838.32, `y`=782.35, `icon`=6, `flags`=99, `icon_name`='Lucan Cordell' WHERE `entry`=10043;
UPDATE `points_of_interest` SET `entry`=93, `x`=-8348.42, `y`=640.412, `icon`=6, `flags`=99, `icon_name`='Lilliam Sparkspindle' WHERE `entry`=10044;
UPDATE `points_of_interest` SET `entry`=1427, `x`=-8515.48, `y`=804.505, `icon`=6, `flags`=99, `icon_name`='Shaina Fuller' WHERE `entry`=10045;
UPDATE `points_of_interest` SET `entry`=107, `x`=-8793.17, `y`=741.886, `icon`=6, `flags`=99, `icon_name`='Arnold Leland' WHERE `entry`=10046;
UPDATE `points_of_interest` SET `entry`=90, `x`=-8707.42, `y`=462.037, `icon`=6, `flags`=99, `icon_name`='The Protective Hide' WHERE `entry`=10047;
UPDATE `points_of_interest` SET `entry`=95, `x`=-8416.23, `y`=672.791, `icon`=6, `flags`=99, `icon_name`='Gelman Stonehand' WHERE `entry`=10048;
UPDATE `points_of_interest` SET `entry`=92, `x`=-8940.58, `y`=771.346, `icon`=6, `flags`=99, `icon_name`='Duncan\'s Textiles' WHERE `entry`=10049;
UPDATE `points_of_interest` SET `entry`=418, `x`=-4957.39, `y`=-911.604, `icon`=6, `flags`=99, `icon_name`='Ironforge Auction House' WHERE `entry`=10050;
UPDATE `points_of_interest` SET `entry`=415, `x`=-4891.91, `y`=-991.48, `icon`=6, `flags`=99, `icon_name`='The Vault' WHERE `entry`=10051;
UPDATE `points_of_interest` SET `entry`=547, `x`=-4835.28, `y`=-1294.7, `icon`=6, `flags`=99, `icon_name`='Deeprun Tram' WHERE `entry`=10052;
UPDATE `points_of_interest` SET `entry`=407, `x`=-4821.52, `y`=-1152.3, `icon`=6, `flags`=99, `icon_name`='Ironforge Gryphon Master' WHERE `entry`=10053;
UPDATE `points_of_interest` SET `entry`=424, `x`=-5021.06, `y`=-996.453, `icon`=6, `flags`=99, `icon_name`='Ironforge Visitor\'s Center' WHERE `entry`=10054;
UPDATE `points_of_interest` SET `entry`=417, `x`=-4850.48, `y`=-872.571, `icon`=6, `flags`=99, `icon_name`='Stonefire Tavern' WHERE `entry`=10055;
UPDATE `points_of_interest` SET `entry`=867, `x`=-5010.21, `y`=-1262.03, `icon`=6, `flags`=99, `icon_name`='Ulbrek Firehand' WHERE `entry`=10057;
UPDATE `points_of_interest` SET `entry`=928, `x`=-5040.01, `y`=-1201.88, `icon`=6, `flags`=99, `icon_name`='Bixi and Buliwyf' WHERE `entry`=10058;
UPDATE `points_of_interest` SET `entry`=413, `x`=-5023.08, `y`=-1253.68, `icon`=6, `flags`=99, `icon_name`='Hall of Arms' WHERE `entry`=10061;
UPDATE `points_of_interest` SET `entry`=412, `x`=-4627.02, `y`=-926.459, `icon`=6, `flags`=99, `icon_name`='Hall of Mysteries' WHERE `entry`=10062;
UPDATE `points_of_interest` SET `entry`=427, `x`=-4647.83, `y`=-1124, `icon`=6, `flags`=99, `icon_name`='Ironforge Rogue Trainer' WHERE `entry`=10063;
UPDATE `points_of_interest` SET `entry`=426, `x`=-4605.03, `y`=-1110.46, `icon`=6, `flags`=99, `icon_name`='Ironforge Warlock Trainer' WHERE `entry`=10064;
UPDATE `points_of_interest` SET `entry`=419, `x`=-4858.5, `y`=-1241.84, `icon`=6, `flags`=99, `icon_name`='Berryfizz\'s Potions and Mixed Drinks' WHERE `entry`=10066;
UPDATE `points_of_interest` SET `entry`=423, `x`=-4796.98, `y`=-1110.17, `icon`=6, `flags`=99, `icon_name`='The Great Forge' WHERE `entry`=10067;
UPDATE `points_of_interest` SET `entry`=410, `x`=-4767.83, `y`=-1184.6, `icon`=6, `flags`=99, `icon_name`='The Bronze Kettle' WHERE `entry`=10068;
UPDATE `points_of_interest` SET `entry`=409, `x`=-4803.72, `y`=-1196.53, `icon`=6, `flags`=99, `icon_name`='Thistlefuzz Arcanery' WHERE `entry`=10069;
UPDATE `points_of_interest` SET `entry`=408, `x`=-4881.6, `y`=-1153.13, `icon`=6, `flags`=99, `icon_name`='Ironforge Physician' WHERE `entry`=10070;
UPDATE `points_of_interest` SET `entry`=425, `x`=-4597.91, `y`=-1091.93, `icon`=6, `flags`=99, `icon_name`='Traveling Fisherman' WHERE `entry`=10071;
UPDATE `points_of_interest` SET `entry`=987, `x`=-4745.01, `y`=-1027.58, `icon`=6, `flags`=99, `icon_name`='Finespindle\'s Leather Goods' WHERE `entry`=10073;
UPDATE `points_of_interest` SET `entry`=411, `x`=-4705.06, `y`=-1116.43, `icon`=6, `flags`=99, `icon_name`='Deepmountain Mining Guild' WHERE `entry`=10074;
UPDATE `points_of_interest` SET `entry`=422, `x`=-4719.61, `y`=-1056.97, `icon`=6, `flags`=99, `icon_name`='Stonebrow\'s Clothier' WHERE `entry`=10075;
UPDATE `points_of_interest` SET `entry`=671, `x`=-5584.11, `y`=-510.862, `icon`=6, `flags`=99, `icon_name`='Thunderbrew Distillery' WHERE `entry`=10076;
UPDATE `points_of_interest` SET `entry`=868, `x`=-5606.17, `y`=-513.008, `icon`=6, `flags`=99, `icon_name`='Shelby Stoneflint' WHERE `entry`=10077;
UPDATE `points_of_interest` SET `entry`=674, `x`=-5618.73, `y`=-453.72, `icon`=6, `flags`=99, `icon_name`='Grif Wildheart' WHERE `entry`=10078;
UPDATE `points_of_interest` SET `entry`=664, `x`=-5587.37, `y`=-539.037, `icon`=6, `flags`=99, `icon_name`='Magis Sparkmantle' WHERE `entry`=10079;
UPDATE `points_of_interest` SET `entry`=665, `x`=-5584.69, `y`=-542.492, `icon`=6, `flags`=99, `icon_name`='Azar Stronghammer' WHERE `entry`=10080;
UPDATE `points_of_interest` SET `entry`=666, `x`=-5589.19, `y`=-530.288, `icon`=6, `flags`=99, `icon_name`='Maxan Anvol' WHERE `entry`=10081;
UPDATE `points_of_interest` SET `entry`=669, `x`=-5604.48, `y`=-540.089, `icon`=6, `flags`=99, `icon_name`='Hogral Bakkan' WHERE `entry`=10082;
UPDATE `points_of_interest` SET `entry`=677, `x`=-5639.5, `y`=-528.501, `icon`=6, `flags`=99, `icon_name`='Gimrizz Shadowcog' WHERE `entry`=10083;
UPDATE `points_of_interest` SET `entry`=667, `x`=-5605.01, `y`=-530.145, `icon`=6, `flags`=99, `icon_name`='Granis Swiftaxe' WHERE `entry`=10084;
UPDATE `points_of_interest` SET `entry`=672, `x`=-5582.17, `y`=-430.441, `icon`=6, `flags`=99, `icon_name`='Tognus Flintfire' WHERE `entry`=10085;
UPDATE `points_of_interest` SET `entry`=670, `x`=-5594.46, `y`=-544.573, `icon`=6, `flags`=99, `icon_name`='Gremlock Pilsnor' WHERE `entry`=10086;
UPDATE `points_of_interest` SET `entry`=668, `x`=-5604.89, `y`=-521.037, `icon`=6, `flags`=99, `icon_name`='Thamner Pol' WHERE `entry`=10087;
UPDATE `points_of_interest` SET `entry`=747, `x`=-5198.56, `y`=53.3649, `icon`=6, `flags`=99, `icon_name`='Paxton Ganter' WHERE `entry`=10088;
UPDATE `points_of_interest` SET `entry`=1693, `x`=9862.37, `y`=2339.19, `icon`=6, `flags`=99, `icon_name`='Darnassus Auction House' WHERE `entry`=10089;
UPDATE `points_of_interest` SET `entry`=465, `x`=9938.46, `y`=2512.35, `icon`=6, `flags`=99, `icon_name`='Darnassus Bank' WHERE `entry`=10090;
UPDATE `points_of_interest` SET `entry`=490, `x`=10076.4, `y`=2199.59, `icon`=6, `flags`=99, `icon_name`='Darnassus Guild Master' WHERE `entry`=10092;
UPDATE `points_of_interest` SET `entry`=468, `x`=10133.3, `y`=2222.52, `icon`=6, `flags`=99, `icon_name`='Darnassus Inn' WHERE `entry`=10093;
UPDATE `points_of_interest` SET `entry`=872, `x`=10167.2, `y`=2522.67, `icon`=6, `flags`=99, `icon_name`='Alassin' WHERE `entry`=10095;
UPDATE `points_of_interest` SET `entry`=750, `x`=9907.11, `y`=2329.71, `icon`=6, `flags`=99, `icon_name`='Ilyenia Moonfire' WHERE `entry`=10096;
UPDATE `points_of_interest` SET `entry`=486, `x`=10186, `y`=2570.47, `icon`=6, `flags`=99, `icon_name`='Darnassus Druid Trainer' WHERE `entry`=10098;
UPDATE `points_of_interest` SET `entry`=479, `x`=10177.3, `y`=2511.1, `icon`=6, `flags`=99, `icon_name`='Darnassus Hunter Trainer' WHERE `entry`=10099;
UPDATE `points_of_interest` SET `entry`=507, `x`=10122, `y`=2599.13, `icon`=6, `flags`=99, `icon_name`='Darnassus Rogue Trainer' WHERE `entry`=10100;
UPDATE `points_of_interest` SET `entry`=461, `x`=9951.91, `y`=2280.39, `icon`=6, `flags`=99, `icon_name`='Warrior\'s Terrace' WHERE `entry`=10101;
UPDATE `points_of_interest` SET `entry`=476, `x`=10075.9, `y`=2356.76, `icon`=6, `flags`=99, `icon_name`='Darnassus Alchemy Trainer' WHERE `entry`=10102;
UPDATE `points_of_interest` SET `entry`=478, `x`=10088.6, `y`=2419.22, `icon`=6, `flags`=99, `icon_name`='Darnassus Cooking Trainer' WHERE `entry`=10103;
UPDATE `points_of_interest` SET `entry`=473, `x`=10146.1, `y`=2313.43, `icon`=6, `flags`=99, `icon_name`='Darnassus Enchanting Trainer' WHERE `entry`=10104;
UPDATE `points_of_interest` SET `entry`=474, `x`=10150.1, `y`=2390.44, `icon`=6, `flags`=99, `icon_name`='Darnassus First Aid Trainer' WHERE `entry`=10105;
UPDATE `points_of_interest` SET `entry`=489, `x`=9836.21, `y`=2432.18, `icon`=6, `flags`=99, `icon_name`='Darnassus Fishing Trainer' WHERE `entry`=10106;
UPDATE `points_of_interest` SET `entry`=471, `x`=10086.6, `y`=2255.77, `icon`=6, `flags`=99, `icon_name`='Darnassus Leatherworking Trainer' WHERE `entry`=10108;
UPDATE `points_of_interest` SET `entry`=472, `x`=10081.4, `y`=2257.19, `icon`=6, `flags`=99, `icon_name`='Darnassus Skinning Trainer' WHERE `entry`=10109;
UPDATE `points_of_interest` SET `entry`=470, `x`=10079.7, `y`=2268.2, `icon`=6, `flags`=99, `icon_name`='Darnassus Tailor' WHERE `entry`=10110;
UPDATE `points_of_interest` SET `entry`=464, `x`=9659.13, `y`=2524.89, `icon`=6, `flags`=99, `icon_name`='Temple of the Moon' WHERE `entry`=10267;
UPDATE `points_of_interest` SET `entry`=463, `x`=9757.18, `y`=2430.17, `icon`=6, `flags`=99, `icon_name`='Darnassus Herbalism Trainer' WHERE `entry`=10268;
UPDATE `points_of_interest` SET `entry`=662, `x`=-9060.71, `y`=149.236, `icon`=6, `flags`=99, `icon_name`='Herbalist Pomeroy' WHERE `entry`=10269;
UPDATE `points_of_interest` SET `entry`=420, `x`=-4799.56, `y`=-1250.24, `icon`=6, `flags`=99, `icon_name`='Springspindle\'s Gadgets' WHERE `entry`=10401;
UPDATE `points_of_interest` SET `entry`=676, `x`=-5529.12, `y`=-660.912, `icon`=6, `flags`=99, `icon_name`='Yarr Hammerstone' WHERE `entry`=10402;
UPDATE `locales_points_of_interest` SET `entry`=658 WHERE `entry`=10001;
UPDATE `locales_points_of_interest` SET `entry`=652 WHERE `entry`=10002;
UPDATE `locales_points_of_interest` SET `entry`=660 WHERE `entry`=10003;
UPDATE `locales_points_of_interest` SET `entry`=653 WHERE `entry`=10004;
UPDATE `locales_points_of_interest` SET `entry`=657 WHERE `entry`=10005;
UPDATE `locales_points_of_interest` SET `entry`=656 WHERE `entry`=10006;
UPDATE `locales_points_of_interest` SET `entry`=661 WHERE `entry`=10007;
UPDATE `locales_points_of_interest` SET `entry`=663 WHERE `entry`=10008;
UPDATE `locales_points_of_interest` SET `entry`=659 WHERE `entry`=10009;
UPDATE `locales_points_of_interest` SET `entry`=655 WHERE `entry`=10010;
UPDATE `locales_points_of_interest` SET `entry`=654 WHERE `entry`=10011;
UPDATE `locales_points_of_interest` SET `entry`=650 WHERE `entry`=10014;
UPDATE `locales_points_of_interest` SET `entry`=651 WHERE `entry`=10015;
UPDATE `locales_points_of_interest` SET `entry`=647 WHERE `entry`=10016;
UPDATE `locales_points_of_interest` SET `entry`=869 WHERE `entry`=10017;
UPDATE `locales_points_of_interest` SET `entry`=527 WHERE `entry`=10018;
UPDATE `locales_points_of_interest` SET `entry`=47 WHERE `entry`=10019;
UPDATE `locales_points_of_interest` SET `entry`=532 WHERE `entry`=10021;
UPDATE `locales_points_of_interest` SET `entry`=529 WHERE `entry`=10022;
UPDATE `locales_points_of_interest` SET `entry`=535 WHERE `entry`=10023;
UPDATE `locales_points_of_interest` SET `entry`=870 WHERE `entry`=10026;
UPDATE `locales_points_of_interest` SET `entry`=808 WHERE `entry`=10027;
UPDATE `locales_points_of_interest` SET `entry`=1467 WHERE `entry`=10028;
UPDATE `locales_points_of_interest` SET `entry`=72 WHERE `entry`=10032;
UPDATE `locales_points_of_interest` SET `entry`=74 WHERE `entry`=10033;
UPDATE `locales_points_of_interest` SET `entry`=71 WHERE `entry`=10034;
UPDATE `locales_points_of_interest` SET `entry`=73 WHERE `entry`=10035;
UPDATE `locales_points_of_interest` SET `entry`=69 WHERE `entry`=10036;
UPDATE `locales_points_of_interest` SET `entry`=75 WHERE `entry`=10038;
UPDATE `locales_points_of_interest` SET `entry`=70 WHERE `entry`=10039;
UPDATE `locales_points_of_interest` SET `entry`=91 WHERE `entry`=10040;
UPDATE `locales_points_of_interest` SET `entry`=94 WHERE `entry`=10041;
UPDATE `locales_points_of_interest` SET `entry`=68 WHERE `entry`=10042;
UPDATE `locales_points_of_interest` SET `entry`=108 WHERE `entry`=10043;
UPDATE `locales_points_of_interest` SET `entry`=93 WHERE `entry`=10044;
UPDATE `locales_points_of_interest` SET `entry`=1427 WHERE `entry`=10045;
UPDATE `locales_points_of_interest` SET `entry`=107 WHERE `entry`=10046;
UPDATE `locales_points_of_interest` SET `entry`=90 WHERE `entry`=10047;
UPDATE `locales_points_of_interest` SET `entry`=95 WHERE `entry`=10048;
UPDATE `locales_points_of_interest` SET `entry`=92 WHERE `entry`=10049;
UPDATE `locales_points_of_interest` SET `entry`=418 WHERE `entry`=10050;
UPDATE `locales_points_of_interest` SET `entry`=415 WHERE `entry`=10051;
UPDATE `locales_points_of_interest` SET `entry`=547 WHERE `entry`=10052;
UPDATE `locales_points_of_interest` SET `entry`=407 WHERE `entry`=10053;
UPDATE `locales_points_of_interest` SET `entry`=424 WHERE `entry`=10054;
UPDATE `locales_points_of_interest` SET `entry`=417 WHERE `entry`=10055;
UPDATE `locales_points_of_interest` SET `entry`=867 WHERE `entry`=10057;
UPDATE `locales_points_of_interest` SET `entry`=928 WHERE `entry`=10058;
UPDATE `locales_points_of_interest` SET `entry`=413 WHERE `entry`=10061;
UPDATE `locales_points_of_interest` SET `entry`=412 WHERE `entry`=10062;
UPDATE `locales_points_of_interest` SET `entry`=427 WHERE `entry`=10063;
UPDATE `locales_points_of_interest` SET `entry`=426 WHERE `entry`=10064;
UPDATE `locales_points_of_interest` SET `entry`=419 WHERE `entry`=10066;
UPDATE `locales_points_of_interest` SET `entry`=423 WHERE `entry`=10067;
UPDATE `locales_points_of_interest` SET `entry`=410 WHERE `entry`=10068;
UPDATE `locales_points_of_interest` SET `entry`=409 WHERE `entry`=10069;
UPDATE `locales_points_of_interest` SET `entry`=408 WHERE `entry`=10070;
UPDATE `locales_points_of_interest` SET `entry`=425 WHERE `entry`=10071;
UPDATE `locales_points_of_interest` SET `entry`=987 WHERE `entry`=10073;
UPDATE `locales_points_of_interest` SET `entry`=411 WHERE `entry`=10074;
UPDATE `locales_points_of_interest` SET `entry`=422 WHERE `entry`=10075;
UPDATE `locales_points_of_interest` SET `entry`=671 WHERE `entry`=10076;
UPDATE `locales_points_of_interest` SET `entry`=868 WHERE `entry`=10077;
UPDATE `locales_points_of_interest` SET `entry`=674 WHERE `entry`=10078;
UPDATE `locales_points_of_interest` SET `entry`=664 WHERE `entry`=10079;
UPDATE `locales_points_of_interest` SET `entry`=665 WHERE `entry`=10080;
UPDATE `locales_points_of_interest` SET `entry`=666 WHERE `entry`=10081;
UPDATE `locales_points_of_interest` SET `entry`=669 WHERE `entry`=10082;
UPDATE `locales_points_of_interest` SET `entry`=677 WHERE `entry`=10083;
UPDATE `locales_points_of_interest` SET `entry`=667 WHERE `entry`=10084;
UPDATE `locales_points_of_interest` SET `entry`=672 WHERE `entry`=10085;
UPDATE `locales_points_of_interest` SET `entry`=670 WHERE `entry`=10086;
UPDATE `locales_points_of_interest` SET `entry`=668 WHERE `entry`=10087;
UPDATE `locales_points_of_interest` SET `entry`=747 WHERE `entry`=10088;
UPDATE `locales_points_of_interest` SET `entry`=1693 WHERE `entry`=10089;
UPDATE `locales_points_of_interest` SET `entry`=465 WHERE `entry`=10090;
UPDATE `locales_points_of_interest` SET `entry`=490 WHERE `entry`=10092;
UPDATE `locales_points_of_interest` SET `entry`=468 WHERE `entry`=10093;
UPDATE `locales_points_of_interest` SET `entry`=872 WHERE `entry`=10095;
UPDATE `locales_points_of_interest` SET `entry`=750 WHERE `entry`=10096;
UPDATE `locales_points_of_interest` SET `entry`=486 WHERE `entry`=10098;
UPDATE `locales_points_of_interest` SET `entry`=479 WHERE `entry`=10099;
UPDATE `locales_points_of_interest` SET `entry`=507 WHERE `entry`=10100;
UPDATE `locales_points_of_interest` SET `entry`=461 WHERE `entry`=10101;
UPDATE `locales_points_of_interest` SET `entry`=476 WHERE `entry`=10102;
UPDATE `locales_points_of_interest` SET `entry`=478 WHERE `entry`=10103;
UPDATE `locales_points_of_interest` SET `entry`=473 WHERE `entry`=10104;
UPDATE `locales_points_of_interest` SET `entry`=474 WHERE `entry`=10105;
UPDATE `locales_points_of_interest` SET `entry`=489 WHERE `entry`=10106;
UPDATE `locales_points_of_interest` SET `entry`=471 WHERE `entry`=10108;
UPDATE `locales_points_of_interest` SET `entry`=472 WHERE `entry`=10109;
UPDATE `locales_points_of_interest` SET `entry`=470 WHERE `entry`=10110;
UPDATE `locales_points_of_interest` SET `entry`=464 WHERE `entry`=10267;
UPDATE `locales_points_of_interest` SET `entry`=463 WHERE `entry`=10268;
UPDATE `locales_points_of_interest` SET `entry`=662 WHERE `entry`=10269;
UPDATE `locales_points_of_interest` SET `entry`=420 WHERE `entry`=10401;
UPDATE `locales_points_of_interest` SET `entry`=676 WHERE `entry`=10402;
UPDATE `gossip_menu_option` SET `action_poi_id`=658 WHERE `action_poi_id`=10001;
UPDATE `gossip_menu_option` SET `action_poi_id`=652 WHERE `action_poi_id`=10002;
UPDATE `gossip_menu_option` SET `action_poi_id`=660 WHERE `action_poi_id`=10003;
UPDATE `gossip_menu_option` SET `action_poi_id`=653 WHERE `action_poi_id`=10004;
UPDATE `gossip_menu_option` SET `action_poi_id`=657 WHERE `action_poi_id`=10005;
UPDATE `gossip_menu_option` SET `action_poi_id`=656 WHERE `action_poi_id`=10006;
UPDATE `gossip_menu_option` SET `action_poi_id`=661 WHERE `action_poi_id`=10007;
UPDATE `gossip_menu_option` SET `action_poi_id`=663 WHERE `action_poi_id`=10008;
UPDATE `gossip_menu_option` SET `action_poi_id`=659 WHERE `action_poi_id`=10009;
UPDATE `gossip_menu_option` SET `action_poi_id`=655 WHERE `action_poi_id`=10010;
UPDATE `gossip_menu_option` SET `action_poi_id`=654 WHERE `action_poi_id`=10011;
UPDATE `gossip_menu_option` SET `action_poi_id`=650 WHERE `action_poi_id`=10014;
UPDATE `gossip_menu_option` SET `action_poi_id`=651 WHERE `action_poi_id`=10015;
UPDATE `gossip_menu_option` SET `action_poi_id`=647 WHERE `action_poi_id`=10016;
UPDATE `gossip_menu_option` SET `action_poi_id`=869 WHERE `action_poi_id`=10017;
UPDATE `gossip_menu_option` SET `action_poi_id`=527 WHERE `action_poi_id`=10018;
UPDATE `gossip_menu_option` SET `action_poi_id`=47 WHERE `action_poi_id`=10019;
UPDATE `gossip_menu_option` SET `action_poi_id`=532 WHERE `action_poi_id`=10021;
UPDATE `gossip_menu_option` SET `action_poi_id`=529 WHERE `action_poi_id`=10022;
UPDATE `gossip_menu_option` SET `action_poi_id`=535 WHERE `action_poi_id`=10023;
UPDATE `gossip_menu_option` SET `action_poi_id`=870 WHERE `action_poi_id`=10026;
UPDATE `gossip_menu_option` SET `action_poi_id`=808 WHERE `action_poi_id`=10027;
UPDATE `gossip_menu_option` SET `action_poi_id`=1467 WHERE `action_poi_id`=10028;
UPDATE `gossip_menu_option` SET `action_poi_id`=72 WHERE `action_poi_id`=10032;
UPDATE `gossip_menu_option` SET `action_poi_id`=74 WHERE `action_poi_id`=10033;
UPDATE `gossip_menu_option` SET `action_poi_id`=71 WHERE `action_poi_id`=10034;
UPDATE `gossip_menu_option` SET `action_poi_id`=73 WHERE `action_poi_id`=10035;
UPDATE `gossip_menu_option` SET `action_poi_id`=69 WHERE `action_poi_id`=10036;
UPDATE `gossip_menu_option` SET `action_poi_id`=75 WHERE `action_poi_id`=10038;
UPDATE `gossip_menu_option` SET `action_poi_id`=70 WHERE `action_poi_id`=10039;
UPDATE `gossip_menu_option` SET `action_poi_id`=91 WHERE `action_poi_id`=10040;
UPDATE `gossip_menu_option` SET `action_poi_id`=94 WHERE `action_poi_id`=10041;
UPDATE `gossip_menu_option` SET `action_poi_id`=68 WHERE `action_poi_id`=10042;
UPDATE `gossip_menu_option` SET `action_poi_id`=108 WHERE `action_poi_id`=10043;
UPDATE `gossip_menu_option` SET `action_poi_id`=93 WHERE `action_poi_id`=10044;
UPDATE `gossip_menu_option` SET `action_poi_id`=1427 WHERE `action_poi_id`=10045;
UPDATE `gossip_menu_option` SET `action_poi_id`=107 WHERE `action_poi_id`=10046;
UPDATE `gossip_menu_option` SET `action_poi_id`=90 WHERE `action_poi_id`=10047;
UPDATE `gossip_menu_option` SET `action_poi_id`=95 WHERE `action_poi_id`=10048;
UPDATE `gossip_menu_option` SET `action_poi_id`=92 WHERE `action_poi_id`=10049;
UPDATE `gossip_menu_option` SET `action_poi_id`=418 WHERE `action_poi_id`=10050;
UPDATE `gossip_menu_option` SET `action_poi_id`=415 WHERE `action_poi_id`=10051;
UPDATE `gossip_menu_option` SET `action_poi_id`=547 WHERE `action_poi_id`=10052;
UPDATE `gossip_menu_option` SET `action_poi_id`=407 WHERE `action_poi_id`=10053;
UPDATE `gossip_menu_option` SET `action_poi_id`=424 WHERE `action_poi_id`=10054;
UPDATE `gossip_menu_option` SET `action_poi_id`=417 WHERE `action_poi_id`=10055;
UPDATE `gossip_menu_option` SET `action_poi_id`=867 WHERE `action_poi_id`=10057;
UPDATE `gossip_menu_option` SET `action_poi_id`=928 WHERE `action_poi_id`=10058;
UPDATE `gossip_menu_option` SET `action_poi_id`=413 WHERE `action_poi_id`=10061;
UPDATE `gossip_menu_option` SET `action_poi_id`=412 WHERE `action_poi_id`=10062;
UPDATE `gossip_menu_option` SET `action_poi_id`=427 WHERE `action_poi_id`=10063;
UPDATE `gossip_menu_option` SET `action_poi_id`=426 WHERE `action_poi_id`=10064;
UPDATE `gossip_menu_option` SET `action_poi_id`=419 WHERE `action_poi_id`=10066;
UPDATE `gossip_menu_option` SET `action_poi_id`=423 WHERE `action_poi_id`=10067;
UPDATE `gossip_menu_option` SET `action_poi_id`=410 WHERE `action_poi_id`=10068;
UPDATE `gossip_menu_option` SET `action_poi_id`=409 WHERE `action_poi_id`=10069;
UPDATE `gossip_menu_option` SET `action_poi_id`=408 WHERE `action_poi_id`=10070;
UPDATE `gossip_menu_option` SET `action_poi_id`=425 WHERE `action_poi_id`=10071;
UPDATE `gossip_menu_option` SET `action_poi_id`=987 WHERE `action_poi_id`=10073;
UPDATE `gossip_menu_option` SET `action_poi_id`=411 WHERE `action_poi_id`=10074;
UPDATE `gossip_menu_option` SET `action_poi_id`=422 WHERE `action_poi_id`=10075;
UPDATE `gossip_menu_option` SET `action_poi_id`=671 WHERE `action_poi_id`=10076;
UPDATE `gossip_menu_option` SET `action_poi_id`=868 WHERE `action_poi_id`=10077;
UPDATE `gossip_menu_option` SET `action_poi_id`=674 WHERE `action_poi_id`=10078;
UPDATE `gossip_menu_option` SET `action_poi_id`=664 WHERE `action_poi_id`=10079;
UPDATE `gossip_menu_option` SET `action_poi_id`=665 WHERE `action_poi_id`=10080;
UPDATE `gossip_menu_option` SET `action_poi_id`=666 WHERE `action_poi_id`=10081;
UPDATE `gossip_menu_option` SET `action_poi_id`=669 WHERE `action_poi_id`=10082;
UPDATE `gossip_menu_option` SET `action_poi_id`=677 WHERE `action_poi_id`=10083;
UPDATE `gossip_menu_option` SET `action_poi_id`=667 WHERE `action_poi_id`=10084;
UPDATE `gossip_menu_option` SET `action_poi_id`=672 WHERE `action_poi_id`=10085;
UPDATE `gossip_menu_option` SET `action_poi_id`=670 WHERE `action_poi_id`=10086;
UPDATE `gossip_menu_option` SET `action_poi_id`=668 WHERE `action_poi_id`=10087;
UPDATE `gossip_menu_option` SET `action_poi_id`=747 WHERE `action_poi_id`=10088;
UPDATE `gossip_menu_option` SET `action_poi_id`=1693 WHERE `action_poi_id`=10089;
UPDATE `gossip_menu_option` SET `action_poi_id`=465 WHERE `action_poi_id`=10090;
UPDATE `gossip_menu_option` SET `action_poi_id`=490 WHERE `action_poi_id`=10092;
UPDATE `gossip_menu_option` SET `action_poi_id`=468 WHERE `action_poi_id`=10093;
UPDATE `gossip_menu_option` SET `action_poi_id`=872 WHERE `action_poi_id`=10095;
UPDATE `gossip_menu_option` SET `action_poi_id`=750 WHERE `action_poi_id`=10096;
UPDATE `gossip_menu_option` SET `action_poi_id`=486 WHERE `action_poi_id`=10098;
UPDATE `gossip_menu_option` SET `action_poi_id`=479 WHERE `action_poi_id`=10099;
UPDATE `gossip_menu_option` SET `action_poi_id`=507 WHERE `action_poi_id`=10100;
UPDATE `gossip_menu_option` SET `action_poi_id`=461 WHERE `action_poi_id`=10101;
UPDATE `gossip_menu_option` SET `action_poi_id`=476 WHERE `action_poi_id`=10102;
UPDATE `gossip_menu_option` SET `action_poi_id`=478 WHERE `action_poi_id`=10103;
UPDATE `gossip_menu_option` SET `action_poi_id`=473 WHERE `action_poi_id`=10104;
UPDATE `gossip_menu_option` SET `action_poi_id`=474 WHERE `action_poi_id`=10105;
UPDATE `gossip_menu_option` SET `action_poi_id`=489 WHERE `action_poi_id`=10106;
UPDATE `gossip_menu_option` SET `action_poi_id`=471 WHERE `action_poi_id`=10108;
UPDATE `gossip_menu_option` SET `action_poi_id`=472 WHERE `action_poi_id`=10109;
UPDATE `gossip_menu_option` SET `action_poi_id`=470 WHERE `action_poi_id`=10110;
UPDATE `gossip_menu_option` SET `action_poi_id`=464 WHERE `action_poi_id`=10267;
UPDATE `gossip_menu_option` SET `action_poi_id`=463 WHERE `action_poi_id`=10268;
UPDATE `gossip_menu_option` SET `action_poi_id`=662 WHERE `action_poi_id`=10269;
UPDATE `gossip_menu_option` SET `action_poi_id`=420 WHERE `action_poi_id`=10401;
UPDATE `gossip_menu_option` SET `action_poi_id`=676 WHERE `action_poi_id`=10402;
UPDATE `gossip_menu_option` SET `action_poi_id`=467 WHERE `action_poi_id`=10091;
UPDATE `locales_points_of_interest` SET `entry`=467 WHERE `entry`=10091;
UPDATE `points_of_interest` SET `entry`=467, `x`=9945.65, `y`=2618.95, `icon_name`='Rut\'theran Village' WHERE `entry`=10091;
UPDATE `gossip_menu_option` SET `action_poi_id`=87 WHERE `action_poi_id`=10024;
UPDATE `locales_points_of_interest` SET `entry`=87 WHERE `entry`=10024;
UPDATE `points_of_interest` SET `entry`=87, `x`=-8886.4, `y`=595.38, `icon_name`='Stormwind Vistor\'s Center' WHERE `entry`=10024;


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
