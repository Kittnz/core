-- Tanalla Sagebranch <Materials Collector> , display ID 10592, faction 35, level 56, quest/gossip flags, gossip text : "We must always prepare our stockpiles, for demons encroach upon Hyjal day after day. If their goal is to attempt to corrupt Nordrassil, we shall be ready to deny them.$B$B What can I do for you $c?.
REPLACE INTO creature_template VALUES
(61327, 10592, 0, 0, 0, 0, 'Tanalla Sagebranch', 'Materials Collector', 0, 56, 56, 3643, 3643, 0, 0, 2699, 35, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 102, 131, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.456, 98.252, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41397; set @magic_number = 61327;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We must always prepare our stockpiles, for demons encroach upon Hyjal day after day. If their goal is to attempt to corrupt Nordrassil, we shall be ready to deny them.$B$BWhat can I do for you $c?.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Remove ghost visual on npc 61325
update creature_template set auras = NULL where entry = 61325;

-- The Cook, display ID 3377, faction 35, level 54, undead, scale 1, quest flags (Has ghost visual)
REPLACE INTO creature_template VALUES
(61328, 3377, 0, 0, 0, 0, 'The Cook', NULL, 0, 54, 54, 3292, 3292, 0, 0, 3216, 35, 2, 1, 1.14286, 0, 20, 5, 40, 0, 1, 106, 136, 0, 244, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '9617', 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');
