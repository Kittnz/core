-- Add item 61407 to NPC with GUID 2574685.
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269, 0, 61407, 0, 0, 0, 0);
-- NPC Postworker Albertus Manethas (Entry 61611), change faction to 12.
update creature_template set faction = 12 where entry = 61611;
-- NPC Darius Ravenwood, change greeting text to : Gilneas has seen darker days. But with newfound allies, such as you, hope remains. I feared the Alliance would've abandoned us, but here we stand. I will bend no knee to these Alteraci scum.$B$BWe will prevail. 
update broadcast_text set male_text = 'Gilneas has seen darker days. But with newfound allies, such as you, hope remains. I feared the Alliance would\'ve abandoned us, but here we stand. I will bend no knee to these Alteraci scum.$B$BWe will prevail.' where entry = 61259;
-- Fix dumb desc.
update spell_template SET description = 'Increases the Holy damage bonus of your Crusader Strike by $s1 per stack.' WHERE entry = 23300; -- Seal of the Crusader Judgement Increase.