set @trainer = 7867;
set @spell = 47234;
set @spellcost = 50000; -- in copper
set @reqskill = 165; -- not needed for class spells
set @reqskillvalue = 300; -- not needed for class spells
set @player_level = 0; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 7866;
set @spell = 47234;
set @spellcost = 50000; -- in copper
set @reqskill = 165; -- not needed for class spells
set @reqskillvalue = 300; -- not needed for class spells
set @player_level = 0; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

replace into creature_loot_template values (1045, 83537, 5, 6, 1, 1, 0);
replace into creature_loot_template values (1046, 83537, 5, 6, 1, 1, 0);
replace into creature_loot_template values (1047, 83537, 5, 6, 1, 1, 0);

-- Pattern: Shadowskin Boots
replace into creature_loot_template values (699, 83536, 5, 6, 1, 1, 0);
replace into creature_loot_template values (595, 83536, 5, 6, 1, 1, 0);
replace into creature_loot_template values (784, 83536, 5, 6, 1, 1, 0);
replace into creature_loot_template values (669, 83536, 5, 6, 1, 1, 0);
-- Pattern: Dragonscale Leggings
replace into creature_loot_template values (4331, 83534, 3, 6, 1, 1, 0);
replace into creature_loot_template values (4334, 83534, 3, 6, 1, 1, 0);
replace into creature_loot_template values (4328, 83534, 3, 6, 1, 1, 0);
replace into creature_loot_template values (4329, 83534, 3, 6, 1, 1, 0);

update item_template set quality = 1 where entry = 83538;

replace into npc_vendor values (4883, 83538, 1, 1200, 0, 0);
replace into npc_vendor values (2679, 83538, 1, 1200, 0, 0);

replace into npc_vendor values (2810, 83507, 1, 1200, 0, 0);
replace into npc_vendor values (2821, 83507, 1, 1200, 0, 0);

replace into npc_vendor values (92200, 15751, 1, 1200, 0, 0);

update item_template set item_level = 40 where entry = 80785;
update item_template set item_level = 41 where entry = 80806;
update item_template set item_level = 35 where entry = 83064;
update item_template set item_level = 40 where entry = 80797;