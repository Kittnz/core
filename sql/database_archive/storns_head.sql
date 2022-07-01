delete from creature_loot_template where entry = 91718;
replace into creature_loot_template values (91718,60197,-100,1,1,1,0); 
update creature_template set loot_id = 91718 where entry = 91718;