update creature_template set script_name = 'boss_damian_the_ripper' where entry = 80854;
update creature_template set script_name = 'boss_aszosh_grimflame' where entry = 80853;
update creature_template set script_name = 'boss_thamgrarr' where entry = 80852;
update creature_template set script_name = 'boss_volkan_cruelblade' where entry = 80851;
update creature_template set script_name = 'boss_black_bride' where entry = 80850;
update creature_template set script_name = 'boss_nazorna' where entry = 80830;
update creature_template set script_name = 'mob_vault_guard' where entry = 80828;

-- possess spell to target sw guards
replace into spell_script_target (entry, type, targetentry) values (23014, 1, 80829);
replace into spell_script_target (entry, type, targetentry) values (23014, 1, 80935);

-- Instance script onto map
replace into map_template (entry, parent, map_type, linked_zone, player_limit, reset_delay, ghost_entrance_map, ghost_entrance_x, ghost_entrance_y, map_name, script_name) VALUES (35, 0, 1, 717, 5, 0, 0, 0, 0, 'Stormwind Vault', 'instance_stormwind_vault');
