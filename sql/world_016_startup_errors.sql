update page_text set next_page = 0 where entry = 50105;
delete from spell_proc_event where entry = 6346;
delete from spell_bonus_data where entry = 348;
delete from spell_bonus_data where entry = 26573;
update item_template set script_name = '' where script_name = 'item_survival_kit';
update creature_template set script_name = '' where script_name = 'npc_chixpixx';
update creature_template set script_name = '' where script_name = 'npc_lost_turtle';
update creature_template set script_name = '' where script_name = 'npc_lost_turtles_questgiver';
update gameobject_template set script_name = '' where script_name = 'go_epl_tree_of_life';
delete from npc_vendor where entry = 50078;
delete from npc_vendor where entry = 50084;
delete from npc_vendor where entry = 50083;
delete from npc_vendor where entry = 50082;
delete from npc_vendor where entry = 50081;
delete from npc_vendor where entry = 50078;
delete from npc_vendor where entry = 50078;
delete from npc_vendor where entry = 50078;
delete from npc_vendor where entry = 50078;
delete from npc_vendor where entry = 50078;
delete from npc_vendor where entry = 50078;
delete from npc_vendor where entry = 51580;
delete from npc_vendor where entry = 51580;
delete from npc_vendor where entry = 50085;
delete from npc_vendor where entry = 50086;
delete from npc_vendor where entry = 50087;
delete from npc_vendor where entry = 50078;
delete from npc_vendor where entry = 50078;
delete from npc_vendor where entry = 80811 and item = 80436;
delete from npc_vendor where entry = 80953 and item = 81078;
update creature_template set vendor_id = 0 where entry = 50000;
update creature_template set vendor_id = 0 where entry = 50001;
update creature_template set vendor_id = 0 where entry = 50643;
update creature_template set vendor_id = 0 where entry = 81026;
update creature_template set vendor_id = 0 where entry = 50099;
update creature_template set gossip_menu_id = 0 where entry = 50512;
update creature_template set gossip_menu_id = 0 where entry = 50521;
update creature_template set gossip_menu_id = 0 where entry = 50522;
update creature_template set gossip_menu_id = 0 where entry = 50530;
update creature_template set gossip_menu_id = 0 where entry = 50537;
delete from npc_trainer where entry = 80228;
delete from npc_trainer where entry = 80130;
delete from npc_gossip where npc_guid = 8018; 
delete from npc_gossip where npc_guid = 457;
delete from npc_gossip where npc_guid = 79695;
delete from npc_gossip where npc_guid = 21592;
delete from npc_gossip where npc_guid = 5719;
delete from npc_gossip where npc_guid = 5718;
delete from npc_gossip where npc_guid = 5717;
delete from npc_gossip where npc_guid = 5729;
delete from npc_gossip where npc_guid = 5749;
delete from npc_gossip where npc_guid = 5723;
delete from npc_gossip where npc_guid = 5724;
delete from npc_gossip where npc_guid = 5725;
delete from npc_gossip where npc_guid = 7715;
delete from npc_gossip where npc_guid = 6875;
delete from npc_gossip where npc_guid = 6858;
delete from npc_gossip where npc_guid = 6849;
delete from npc_gossip where npc_guid = 5715;
delete from creature_questrelation where quest = 7671 and id = 4730;
delete from creature_questrelation where quest = 7672 and id = 4730;
delete from creature_questrelation where quest = 7664 and id = 7952;
delete from creature_questrelation where quest = 7665 and id = 7952;
delete from creature_questrelation where quest = 7675 and id = 7955;
delete from creature_questrelation where quest = 7676 and id = 7955;
delete from creature_questrelation where quest = 50214 and id = 50016;
delete from creature_questrelation where quest = 50216 and id = 50016;
delete from creature_questrelation where quest = 50217 and id = 50016;
delete from creature_questrelation where quest = 50218 and id = 50016;
delete from creature_questrelation where quest = 50219 and id = 50016;
delete from creature_questrelation where quest = 50221 and id = 50016;
delete from creature_questrelation where quest = 50222 and id = 50016;
delete from creature_questrelation where quest = 50223 and id = 50016;
delete from creature_questrelation where quest = 50224 and id = 50016;
delete from creature_questrelation where quest = 50225 and id = 50016;
delete from creature_questrelation where quest = 80257 and id = 80242;
delete from creature_questrelation where quest = 80122 and id = 80132;
delete from creature_questrelation where quest = 80123 and id = 80134;
delete from creature_questrelation where quest = 80105 and id = 0;
delete from creature_questrelation where quest = 80398 and id = 0;
delete from creature_questrelation where quest = 70059 and id = 0;
delete from creature_questrelation where quest = 50210 and id = 50016;
delete from creature_questrelation where quest = 50211 and id = 50016;
delete from creature_questrelation where quest = 50212 and id = 50016;
delete from creature_questrelation where quest = 50213 and id = 50016;
delete from creature_questrelation where quest = 50215 and id = 50016;
delete from creature_questrelation where quest = 50220 and id = 50016;
delete from creature_questrelation where quest = 50226 and id = 50016;
delete from creature_involvedrelation where quest = 7671 and id = 4730;
delete from creature_involvedrelation where quest = 7672 and id = 4730;
delete from creature_involvedrelation where quest = 7664 and id = 7952;
delete from creature_involvedrelation where quest = 7665 and id = 7952;
delete from creature_involvedrelation where quest = 7675 and id = 7955;
delete from creature_involvedrelation where quest = 7676 and id = 7955;
delete from creature_involvedrelation where quest = 50214 and id = 50016;
delete from creature_involvedrelation where quest = 50216 and id = 50016;
delete from creature_involvedrelation where quest = 50217 and id = 50016;
delete from creature_involvedrelation where quest = 50218 and id = 50016;
delete from creature_involvedrelation where quest = 50219 and id = 50016;
delete from creature_involvedrelation where quest = 50221 and id = 50016;
delete from creature_involvedrelation where quest = 50222 and id = 50016;
delete from creature_involvedrelation where quest = 50223 and id = 50016;
delete from creature_involvedrelation where quest = 50224 and id = 50016;
delete from creature_involvedrelation where quest = 50225 and id = 50016;
delete from creature_involvedrelation where quest = 80257 and id = 1752;
delete from creature_involvedrelation where quest = 80122 and id = 80134;
delete from creature_involvedrelation where quest = 80123 and id = 80134;
delete from creature_involvedrelation where id = 50016 and quest = 50210;
delete from creature_involvedrelation where id = 50016 and quest = 50211;
delete from creature_involvedrelation where id = 50016 and quest = 50212;
delete from creature_involvedrelation where id = 50016 and quest = 50213;
delete from creature_involvedrelation where id = 50016 and quest = 50215;
delete from creature_involvedrelation where id = 50016 and quest = 50220;
delete from creature_involvedrelation where id = 50016 and quest = 50226;
replace into creature_model_info values (18480, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18491, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18492, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18487, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18488, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18484, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18476, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18471, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18493, 5875, 2, 2, 0, 0, 0);
replace into creature_model_info values (18481, 5875, 2, 2, 0, 0, 0);
update creature_template set display_id1 = 328 where entry = 80203;
update creature_template set display_id1 = 328 where entry = 80204;
update creature_template set display_id1 = 328 where entry = 80206;
update creature_template set display_id1 = 328 where entry = 80211;
update creature_template set display_id1 = 328 where entry = 80212;
update creature_template set display_id1 = 328 where entry = 80229;
update creature_template set display_id1 = 328 where entry = 80233;
update creature_template set display_id1 = 328 where entry = 80270;
update creature_template set display_id1 = 328 where entry = 80271;
update creature_template set display_id1 = 328 where entry = 80272;
update creature_template set display_id1 = 328 where entry = 80273;
update creature_template set display_id1 = 328 where entry = 80274;
update creature_template set display_id1 = 328 where entry = 80275;
update creature_template set display_id1 = 328 where entry = 80276;
update creature_template set display_id1 = 328 where entry = 80277;
update creature_template set display_id1 = 328 where entry = 80278;
update creature_template set display_id1 = 328 where entry = 80279;
update creature_template set display_id1 = 328 where entry = 80280;
update creature_template set display_id1 = 328 where entry = 80281;
update creature_template set display_id1 = 328 where entry = 80282;
update creature_template set display_id1 = 328 where entry = 80283;
update creature_template set display_id1 = 328 where entry = 80284;
update creature_template set display_id1 = 328 where entry = 80285;
update creature_template set display_id1 = 328 where entry = 80286;
update creature_template set display_id1 = 328 where entry = 80287;
update creature_template set display_id1 = 328 where entry = 80288;
update creature_template set display_id1 = 328 where entry = 80289;
update creature_template set display_id1 = 328 where entry = 80600;
update creature_template set display_id1 = 328 where entry = 80606;
update creature_template set display_id1 = 328 where entry = 80803;
update creature_template set display_id1 = 328 where entry = 80804;
update creature_template set display_id1 = 328 where entry = 80135;
update creature_template set display_id1 = 328 where entry = 70030;
update creature set spawntimesecsmin = 260, spawntimesecsmax = 400 where spawntimesecsmin = 25 and id > 50000;
update creature set spawntimesecsmin = 260, spawntimesecsmax = 400 where spawntimesecsmax = 25 and id > 50000;
delete from gameobject where id = 180523;
update creature_template set faction = 470 where entry = 81022;
update creature_template set faction = 470 where entry = 81023;
update creature_template set faction = 470 where entry = 81024;
update creature_template set faction = 470 where entry = 81025;
update creature_template set faction = 470 where entry = 81026;
update creature_template set faction = 470 where entry = 81027;
update creature_template set faction = 470 where entry = 81028;
update creature_template set faction = 35 where entry = 70030;
update creature_template set faction = 470 where entry = 80137;
update creature_template set faction = 35 where entry = 51582;
update creature_template set equipment_id = 0 where entry = 51566;
update creature_template set vendor_id = 0 where entry = 51525;
update creature_template set vendor_id = 0 where entry = 51570;
update creature_template set vendor_id = 0 where entry = 51571;
update creature_template set vendor_id = 0 where entry = 51572;
update creature_template set vendor_id = 0 where entry = 51573;
update creature_template set vendor_id = 0 where entry = 51574;
update creature_template set vendor_id = 0 where entry = 51575;
update creature_template set vendor_id = 0 where entry = 51579;
update creature_template set vendor_id = 0 where entry = 51591;
update creature_template set vendor_id = 0 where entry = 51592;
update creature_template set vendor_id = 0 where entry = 51681;
update creature_template set vendor_id = 0 where entry = 81033;
update creature_template set vendor_id = 0 where entry = 81034;
delete from creature_template_addon where entry = 5738;
delete from creature_template_addon where entry = 155530;
update quest_template set ReqItemCount1 = 0 where ReqItemCount1 = 1 and ReqItemId1 = 0;
update quest_template set RewItemCount1 = 0 where RewItemCount1 = 1 and RewItemId1 = 0;
update quest_template set SrcItemCount = 0 where SrcItemCount = 1 and SrcItemId = 0;
update quest_template set ReqCreatureOrGOId2 = 0 where entry = 60013;
update quest_template set ReqCreatureOrGOCount1 = 0 where entry = 60065;
update quest_template set ReqCreatureOrGOId2 = 0 where entry = 80411;
update creature set movementtype = 0 where spawndist=0 and movementtype = 1;
update quest_template set ReqItemId2 = 0, ReqItemCount2 = 0 where entry = 33234;
update quest_template set ReqItemId2 = 0, ReqItemCount2 = 0 where entry = 7521;
update creature set spawntimesecsmax = 300 where spawntimesecsmax = 25 and spawntimesecsmin > 100;
update gameobject_template set data0 = 0, data1 = 0, data2 = 0 where entry =1000312;
update gameobject_template set data0 = 0, data1 = 0, data2 = 0 where entry =000314;
update gameobject_template set data0 = 0, data1 = 0, data2 = 0 where entry =1000320;
update gameobject_template set data0 = 0, data1 = 0, data2 = 0 where entry =1000337;
update gameobject_template set data0 = 0, data1 = 0, data2 = 0 where entry =1000339;
update gameobject_template set data0 = 0, data1 = 0, data2 = 0 where entry =1000341;
update gameobject_template set data0 = 0, data1 = 0, data2 = 0 where entry =1000344;
update gameobject_template set data0 = 0, data1 = 0, data2 = 0 where entry =1000346;
update gameobject_template set data0 = 0, data1 = 0, data2 = 0 where entry =1000348;
update gameobject_template set data0 = 0, data1 = 0, data2 = 0 where entry =1000351;
update gameobject_template set data0 = 0, data1 = 0, data2 = 0 where entry =1000353;
update gameobject_template set data0 = 0, data1 = 0, data2 = 0 where entry =1000355;
update gameobject_template set data0 = 0, data1 = 0, data2 = 0 where entry =1000359;
update gameobject_template set data0 = 0, data1 = 0, data2 = 0 where entry =1000361;
update gameobject_template set data0 = 0, data1 = 0, data2 = 0 where entry =1000363;
update gameobject_template set data0 = 0, data1 = 0, data2 = 0 where entry =1000314;
update creature_template set vendor_id = 0 where entry = 50521;
update creature_template set vendor_id = 0 where entry = 50513;
update creature_template set vendor_id = 0 where entry = 50522;
update creature_template set display_id1 = 5433, display_id2 = 5451, display_id3 = 5435 where entry = 50525;
update creature_template set vendor_id = 0 where entry = 50530;
update creature_template set vendor_id = 0 where entry = 50537;
update creature_template set vendor_id = 0 where entry = 51682;
update creature_template set spell_list_id = 0 where entry = 50565;
update creature_template set spell_list_id = 0 where entry = 50566;
update item_template set stackable = 1 where entry = 81116;
update item_template set bag_family = 0 where entry in (51855, 51856, 51900, 59990);
update item_template set spellcategory_1 = 0 where entry in (51900, 81140);
update item_template set container_slots = 0 where entry in (51845, 51846, 51217);
delete from creature where id = 5738;
update creature set spawntimesecsmax = 2500 where id = 80815;
update quest_template set nextquestid = 0 where entry = 60005;
update quest_template set nextquestid = 0 where entry = 60008;
delete from quest_template where entry in (7661, 7660, 7663, 7662, 7677, 7674, 7673, 7678);
delete from creature_questrelation where quest in (7661, 7660, 7663, 7662, 7677, 7674, 7673, 7678);
delete from creature_involvedrelation where quest in (7661, 7660, 7663, 7662, 7677, 7674, 7673, 7678);
update quest_template set reqitemcount1 = 0 where entry = 80200;
update quest_template set NextQuestInChain = 0 where entry = 60005;
update item_template set class = 4, subclass = 0 where entry = 51301;
update item_template set class = 4, subclass = 0 where entry = 51843;
update item_template set class = 15, subclass = 0 where entry = 17967;

