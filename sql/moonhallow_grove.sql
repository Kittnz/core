
delete from creature_template where entry between 92000 and 92100;

-- Groveweald Warrior , display ID 6821, scale 0.9, level 31-32 elite, weapon 1 2259, weapon 2 15543 , has a higher armor value , give 1.5x armor then normal , faction 82
-- Groveweald Shaman , display ID 1997, scale 0.8 , level 32-33 elite, weapon 1 35 , casts 10391 , has 2000 mana , faction 82
-- Groveweald Pathfinder , display ID 6821 , scale 1, level 32-33 elite, weapon 10799 , casts 14268 , casts 21949, has 2000 mana , faction 82
-- Groveweald Warder , display ID 1997 , scale 1.2 , level 32-33 , weapon 5292, casts 8903 on friendly weak targets, has 2000 mana , faction 82
-- Groveweald Ursa , display ID 6825 , scale 1 , level 32-33 , weapon 3325 ((Hits hard, make damage 1.5x normal)) , faction 82
-- Elder 'One Eye' , display iD 6825 , scale 1.3 , weapon 1 15444 , has 4500 mana , faction 82
-- Elder Blackmaw , display ID 1012 , scale 1.3 , weapon 1 15444, has 4500 mana , faction 82
-- Grovetender Engryss , display ID 11363, scale 1.7  , weapon 1 10685 , faction 8

replace into creature_template values

(92000, 0, 6821, 0, 0, 0, 'Groveweald Warrior', NULL, 0, 30, 31, 2865, 3018, 0, 0, 1661, 152, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 193, 249, 0, 126, 1, 2000, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 44.84, 61.655, 100, 7, 0, 4623, 4623, 0, 0, 0, 0, 0, 0, 0, 7164, 8258, 15572, 0, 0, 0, 180, 240, 'EventAI', 0, 1, 0, 0, 3, 4623, 0, 0, 0, 0, 0, 0, ''),
(92001, 0, 1997, 0, 0, 0, 'Groveweald Shaman', NULL, 0, 32, 33, 2220, 2263, 1963, 2007, 1121, 28, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 45, 55, 0, 134, 1, 2000, 2000, 2, 32768, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 697, 697, 0, 0, 0, 0, 0, 0, 0, 8599, 11969, 8788, 0, 6970, 0, 51, 71, 'EventAI', 1, 3, 0, 0, 3, 697, 0, 0, 0, 0, 0, 0, '');

update creature_template set scale = 0.9 where entry = 92000;
update creature_template set scale = 0.8, rank = 1 where entry = 92001;

update creature_template set faction = 82 where entry between 92000 and 92050;

set @equip_template = 56001; set @weapon_1 = 2259; set @weapon_2 = 15543; set @creature = 92000;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56002; set @weapon_1 = 35; set @weapon_2 = 0; set @creature = 92001;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;