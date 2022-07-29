-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1720
update quest_template set zoneorsort = 14 where entry = 40513;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1719
delete from creature_template where entry in (50500, 50501, 50502, 50503, 50504, 50505);
delete from creature where id in (50500, 50501, 50502, 50503, 50504, 50505);
delete from npc_trainer where entry in (50500, 50501, 50502, 50503, 50504, 50505);
delete from npc_trainer where entry in (198, 375, 459, 460, 837, 895, 911, 912, 915, 916, 925, 926, 944, 2119, 2122, 2123, 2124, 2126, 6376, 50500, 50501, 50502, 50503, 50504, 50505, 80220, 80221, 80401, 60483, 60516) and reqlevel > 10;

