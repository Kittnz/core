update quest_template set prevquestid = 0 where entry = 60116;

-- scripts for ony/nef turnins to npc, commented out cause i'm not sure they have the same entry, torta please check
update creature_template set script_name = 'npc_overlord_runthak' where entry = 14392;
update creature_template set script_name = 'npc_major_mattingly' where entry = 14394;
update creature_template set script_name = 'npc_field_marshal_afrasiabi' where entry = 14721;
update creature_template set script_name = 'npc_overlord_saurfang' where entry = 14720;
