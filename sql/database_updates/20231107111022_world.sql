-- Skinning tables for Blackstone:
update creature_template set skinning_loot_id = 3126 where entry in (61660,61661,61662); -- NPC Stonetail Scorpid, Stonetail Lasher, Blackvenom Scorpid make skinnable, copy skinning loot from npc 3126.
update creature_template set skinning_loot_id = 525 where entry in (61658,61659); -- NPC Ashpaw Hyena, Ashpaw Hunter make skinnable, copy skinning loot from npc 525.
-- NPC Doran Steelwing, add gossip and quest flags, change gossip text.
replace into gossip_menu (entry, text_id, condition_id) VALUES (41568, 30140, '0'); 
replace into broadcast_text (entry, Male_Text) values (30140, 'Many of us Wildhammer do not kno\' much about our past, be it the united clans under High Kind Modimus or the fall of our great Grim Batol. It\'s the task of lorekeepers like myself to remind the fledglings of their roots before they take flight.');
replace into npc_text (ID, BroadcastTextID0) values (30140, 30140);
update creature_template set gossip_menu_id = 41568, npc_flags = 3 where entry = 7778;
