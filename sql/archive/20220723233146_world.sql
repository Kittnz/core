-- Shaman Two-Handed Maces and Axes should be learned on character creation, didn’t have time to fully figure it out, they won’t mind getting it earlier than level 5. Make sure existing shamans also get them. 

replace into playercreateinfo_spell values (2, 7, 199, 'Two-Handed Maces');
replace into playercreateinfo_spell values (6, 7, 199, 'Two-Handed Maces');
replace into playercreateinfo_spell values (8, 7, 199, 'Two-Handed Maces');

replace into playercreateinfo_spell values (2, 7, 197, 'Two-Handed Axes');
replace into playercreateinfo_spell values (6, 7, 197, 'Two-Handed Axes');
replace into playercreateinfo_spell values (8, 7, 197, 'Two-Handed Axes');

-- Grimoire of Avoidance needs to be added to all Demon Trainer book vendors.

replace into npc_vendor values (5520,  83584, 0, 0, 0, 0);
replace into npc_vendor values (5749,  83584, 0, 0, 0, 0);
replace into npc_vendor values (5750,  83584, 0, 0, 0, 0);
replace into npc_vendor values (5753,  83584, 0, 0, 0, 0);
replace into npc_vendor values (5815,  83584, 0, 0, 0, 0);
replace into npc_vendor values (6027,  83584, 0, 0, 0, 0);
replace into npc_vendor values (6328,  83584, 0, 0, 0, 0);
replace into npc_vendor values (6373,  83584, 0, 0, 0, 0);
replace into npc_vendor values (6374,  83584, 0, 0, 0, 0);
replace into npc_vendor values (6376,  83584, 0, 0, 0, 0);
replace into npc_vendor values (6382,  83584, 0, 0, 0, 0);
replace into npc_vendor values (12776, 83584, 0, 0, 0, 0);