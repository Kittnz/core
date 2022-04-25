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