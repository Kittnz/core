-- Grovetender Engryss : 7412 HP
-- Keeper Ranathos : 8780 HP, change nature resistance to 50 
-- Warden Liferoot : 5025 HP
-- Warden Treeshade 5025 HP
-- High Priestess A'lathea : 9027 HP
-- Fenektis the Deceiver :  9526 HP, change armor to 1504, change shadow resistance to 50
-- Master Raxxieth : 11042 HP , change shadow resistance to 50

update creature_template set health_min = 7412, health_max = 7412 where entry = 92107;
update creature_template set health_min = 8780, health_max = 8780, nature_res = 50 where entry = 92109;
update creature_template set health_min = 5025, health_max = 5025 where entry = 92128;
update creature_template set health_min = 5025, health_max = 5025 where entry = 92129;
update creature_template set health_min = 9027, health_max = 9027 where entry = 92108;
update creature_template set health_min = 9526, health_max = 9526, armor = 1504, shadow_res = 50 where entry = 92111;
update creature_template set health_min = 11042, health_max = 11042, shadow_res = 50 where entry = 92110;