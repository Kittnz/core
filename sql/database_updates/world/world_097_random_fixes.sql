update creature_involvedrelation set id = 80932 where quest = 80390;
delete from creature_template where entry = 80134;
delete from creature where id = 80134;

replace into item_template values (83010, 0, 15, 0, 'Tinyfin', 'He will become a paladin someday!',  18050, 1, 0, 1, 6000, 1500, 0, -1, -1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28505, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);
replace into creature_template values (90989, 0, 15369, 0, 0, 0, 'Lil\' Tinyfin', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
replace into custom_pet_entry_relation values (83010, 90989);

update creature_template set name = 'Black Fox' where entry = 80152;
update creature_template set name = 'Red Fox' where entry = 40000;

replace into creature_template (entry, name, display_id1) values (81021, 'Donation Rewards', 328);

replace into npc_vendor (entry, item) values (81021, 50000);
replace into npc_vendor (entry, item) values (81021, 50611);
replace into npc_vendor (entry, item) values (81021, 80699);
replace into npc_vendor (entry, item) values (81021, 50603);
replace into npc_vendor (entry, item) values (81021, 50604);
replace into npc_vendor (entry, item) values (81021, 50605);
replace into npc_vendor (entry, item) values (81021, 50606);
replace into npc_vendor (entry, item) values (81021, 50607);
replace into npc_vendor (entry, item) values (81021, 50608);
replace into npc_vendor (entry, item) values (81021, 50609);
replace into npc_vendor (entry, item) values (81021, 50610);
replace into npc_vendor (entry, item) values (81021, 50612);
replace into npc_vendor (entry, item) values (81021, 50613);
replace into npc_vendor (entry, item) values (81021, 81210);
replace into npc_vendor (entry, item) values (81021, 50105);
replace into npc_vendor (entry, item) values (81021, 50106);
replace into npc_vendor (entry, item) values (81021, 81230);
replace into npc_vendor (entry, item) values (81021, 50212);
replace into npc_vendor (entry, item) values (81021, 50205);
replace into npc_vendor (entry, item) values (81021, 50206);
replace into npc_vendor (entry, item) values (81021, 81229);
replace into npc_vendor (entry, item) values (81021, 81206);
replace into npc_vendor (entry, item) values (81021, 81209);
replace into npc_vendor (entry, item) values (81021, 81228);
replace into npc_vendor (entry, item) values (81021, 50207);
replace into npc_vendor (entry, item) values (81021, 50208);
replace into npc_vendor (entry, item) values (81021, 50209);
replace into npc_vendor (entry, item) values (81021, 81255);
replace into npc_vendor (entry, item) values (81021, 81256);
replace into npc_vendor (entry, item) values (81021, 50210);
replace into npc_vendor (entry, item) values (81021, 50211);
replace into npc_vendor (entry, item) values (81021, 51010);
replace into npc_vendor (entry, item) values (81021, 51011);
replace into npc_vendor (entry, item) values (81021, 81208);
replace into npc_vendor (entry, item) values (81021, 50003);
replace into npc_vendor (entry, item) values (81021, 50004);
replace into npc_vendor (entry, item) values (81021, 50011);
replace into npc_vendor (entry, item) values (81021, 51715);
replace into npc_vendor (entry, item) values (81021, 50602);
replace into npc_vendor (entry, item) values (81021, 50005);
replace into npc_vendor (entry, item) values (81021, 50007);
replace into npc_vendor (entry, item) values (81021, 51421);
replace into npc_vendor (entry, item) values (81021, 50010);
replace into npc_vendor (entry, item) values (81021, 50008);
replace into npc_vendor (entry, item) values (81021, 50521);
replace into npc_vendor (entry, item) values (81021, 51055);
replace into npc_vendor (entry, item) values (81021, 51057);
replace into npc_vendor (entry, item) values (81021, 51266);
replace into npc_vendor (entry, item) values (81021, 51431);
replace into npc_vendor (entry, item) values (81021, 51830);
replace into npc_vendor (entry, item) values (81021, 51432);
replace into npc_vendor (entry, item) values (81021, 50071);
replace into npc_vendor (entry, item) values (81021, 50072);
replace into npc_vendor (entry, item) values (81021, 50073);
replace into npc_vendor (entry, item) values (81021, 50076);
replace into npc_vendor (entry, item) values (81021, 50074);
replace into npc_vendor (entry, item) values (81021, 81100);
replace into npc_vendor (entry, item) values (81021, 81120);
replace into npc_vendor (entry, item) values (81021, 81121);
replace into npc_vendor (entry, item) values (81021, 81242);
replace into npc_vendor (entry, item) values (81021, 12325);
replace into npc_vendor (entry, item) values (81021, 12326);
replace into npc_vendor (entry, item) values (81021, 12327);
replace into npc_vendor (entry, item) values (81021, 8630);
replace into npc_vendor (entry, item) values (81021, 81227);
replace into npc_vendor (entry, item) values (81021, 12302);
replace into npc_vendor (entry, item) values (81021, 8635);
replace into npc_vendor (entry, item) values (81021, 81232);
replace into npc_vendor (entry, item) values (81021, 18768);
replace into npc_vendor (entry, item) values (81021, 80430);
replace into npc_vendor (entry, item) values (81021, 12303);
replace into npc_vendor (entry, item) values (81021, 81231);
replace into npc_vendor (entry, item) values (81021, 50399);
replace into npc_vendor (entry, item) values (81021, 80449);
replace into npc_vendor (entry, item) values (81021, 81236);
replace into npc_vendor (entry, item) values (81021, 23193);
replace into npc_vendor (entry, item) values (81021, 81235);
replace into npc_vendor (entry, item) values (81021, 50407);
replace into npc_vendor (entry, item) values (81021, 50400);
replace into npc_vendor (entry, item) values (81021, 81234);
replace into npc_vendor (entry, item) values (81021, 80443);
replace into npc_vendor (entry, item) values (81021, 13328);
replace into npc_vendor (entry, item) values (81021, 50406);
replace into npc_vendor (entry, item) values (81021, 80455);
replace into npc_vendor (entry, item) values (81021, 1041);
replace into npc_vendor (entry, item) values (81021, 5663);
replace into npc_vendor (entry, item) values (81021, 80447);
replace into npc_vendor (entry, item) values (81021, 50401);
replace into npc_vendor (entry, item) values (81021, 50402);
replace into npc_vendor (entry, item) values (81021, 50403);
replace into npc_vendor (entry, item) values (81021, 50404);
replace into npc_vendor (entry, item) values (81021, 81154);
replace into npc_vendor (entry, item) values (81021, 81153);
replace into npc_vendor (entry, item) values (81021, 81155);
replace into npc_vendor (entry, item) values (81021, 81158);
replace into npc_vendor (entry, item) values (81021, 81091);
replace into npc_vendor (entry, item) values (81021, 81102);
replace into npc_vendor (entry, item) values (81021, 13325);
replace into npc_vendor (entry, item) values (81021, 81238);
replace into npc_vendor (entry, item) values (81021, 81239);
replace into npc_vendor (entry, item) values (81021, 81240);
replace into npc_vendor (entry, item) values (81021, 23720);
replace into npc_vendor (entry, item) values (81021, 13584);
replace into npc_vendor (entry, item) values (81021, 13583);
replace into npc_vendor (entry, item) values (81021, 20371);
replace into npc_vendor (entry, item) values (81021, 23713);
replace into npc_vendor (entry, item) values (81021, 19055);
replace into npc_vendor (entry, item) values (81021, 50013);
replace into npc_vendor (entry, item) values (81021, 50019);

replace into gameobject_template values (1772030, 0, 9, 218, 'Grim Batol Memorial', 0, 0, 1.5, 1000246, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
replace into page_text values (1772030, 'Grim Batol Memorial\n\n\nA shrine dedicated to those that fought, and gave their lives in the defence of innocents against our greatest of challenges. May this shrine forever honor those that died within our once great halls in defiance against our invaders.\n\nYou shall never be forgotten.', 0);
replace into npc_vendor (entry, item) values (81021, 50083);
replace into npc_vendor (entry, item) values (81021, 50084);
replace into npc_vendor (entry, item) values (81021, 22781);
replace into npc_vendor (entry, item) values (81021, 50085);
replace into npc_vendor (entry, item) values (81021, 51007);
replace into npc_vendor (entry, item) values (81021, 81150);
replace into npc_vendor (entry, item) values (81021, 81151);
replace into npc_vendor (entry, item) values (81021, 81207);
replace into npc_vendor (entry, item) values (81021, 81088);
replace into npc_vendor (entry, item) values (81021, 81087);
replace into npc_vendor (entry, item) values (81021, 23709);
replace into npc_vendor (entry, item) values (81021, 23705);
replace into npc_vendor (entry, item) values (81021, 81083);
replace into npc_vendor (entry, item) values (81021, 81085);
replace into npc_vendor (entry, item) values (81021, 81084);
replace into npc_vendor (entry, item) values (81021, 81082);
replace into npc_vendor (entry, item) values (81021, 81081);
replace into npc_vendor (entry, item) values (81021, 23710);
replace into npc_vendor (entry, item) values (81021, 80314);
replace into npc_vendor (entry, item) values (81021, 50089);
replace into npc_vendor (entry, item) values (81021, 50086);
replace into npc_vendor (entry, item) values (81021, 50087);
replace into npc_vendor (entry, item) values (81021, 50092);
replace into npc_vendor (entry, item) values (81021, 51201);
replace into npc_vendor (entry, item) values (81021, 51205);
replace into npc_vendor (entry, item) values (81021, 51206);
replace into npc_vendor (entry, item) values (81021, 51208);
replace into npc_vendor (entry, item) values (81021, 51065);
replace into npc_vendor (entry, item) values (81021, 80648);
replace into npc_vendor (entry, item) values (81021, 51253);
replace into npc_vendor (entry, item) values (81021, 81145);
replace into npc_vendor (entry, item) values (81021, 80694);
replace into npc_vendor (entry, item) values (81021, 50408);
replace into npc_vendor (entry, item) values (81021, 53008);

UPDATE item_template SET description = 'This disguise will work until logout.' WHERE entry= 53003;

REPLACE INTO item_template VALUES (53008, 0, 12, 0, 'Illusion: Two-headed Ogre', 'This disguise will work until logout.', 36521, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31726, 0, 0, 0, 10, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_illusion');

update creature_template set display_id1 = 11669 where entry in (50110, 50111);

REPLACE INTO creature_template VALUES (50760, 0, 3121, 0, 0, 0, 'Tansy Sparkpen', 'Gadgetzan Times Reporter', 0, 30, 30, 1605, 1605, 0, 0, 1200, 35, 2, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 10, '');
replace into broadcast_text (entry, Male_Text) values ('90260', 'Latest news from the best race event ever! Come and get your own magazine!');
replace into npc_text (id, BroadcastTextID0) values ('90260', '90260');
REPLACE INTO creature_ai_scripts VALUES (50760, 500, 0, 1, 0, 0, 0, 0, 0, 0, 0, 90260, 0, 0, 0, 0, 0, 0, 0, 0, 'Tansy, speaking.');
REPLACE INTO `creature_ai_events` VALUES (50760, 50760, 0, 1, 0, 100, 1, 0, 0, 700000, 800000, 50760, 0, 0, 'Tansy, speaking.');
replace into creature_questrelation (id, quest) values (50760, 50315);
replace into creature_involvedrelation (id, quest) values (50760, 50315);
update creature set id = 50760 where guid = 2555592;

update quest_template set entry = 80735 where entry = 100007;
update quest_template set entry = 80736 where entry = 100008;
update quest_template set entry = 80737 where entry = 100009;

update creature_questrelation set quest = 80735 where id = 100007;
update creature_questrelation set quest = 80736 where id = 100008;
update creature_questrelation set quest = 80737 where id = 100009;

replace into creature_loot_template values (11120, 81282, -100, 6, 1, 1, 0, 0, 10);

update quest_template set prevquestid = 0, nextquestid = 7832, exclusivegroup = 0, nextquestinchain = 0 where entry = 7824; -- A Donation of Runecloth
update quest_template set prevquestid = 7793, nextquestid = 7795, exclusivegroup = 0, nextquestinchain = 0 where entry = 7794; -- A Donation of Mageweave
update quest_template set prevquestid = 0, nextquestid = 7793, exclusivegroup = 0, nextquestinchain = 0 where entry = 7791; -- A Donation of Wool
update quest_template set prevquestid = 7791, nextquestid = 7794, exclusivegroup = 0, nextquestinchain = 0 where entry = 7793; -- A Donation of Silk
update quest_template set prevquestid = 0, nextquestid = 7795, exclusivegroup = -7791, nextquestinchain = 0 where entry = 7793; -- A Donation of Silk
update quest_template set prevquestid = 0, nextquestid = 7795, exclusivegroup = -7791, nextquestinchain = 0 where entry = 7794; -- A Donation of Mageweave
update quest_template set prevquestid = 0, nextquestid = 7795, exclusivegroup = -7791, nextquestinchain = 0 where entry = 7791; -- A Donation of Wool
update quest_template set prevquestid = 0, nextquestid = 7837, exclusivegroup = 0, nextquestinchain = 0 where entry = 7836; -- A Donation of Runecloth
update quest_template set prevquestid = 0, nextquestid = 7825, exclusivegroup = 0, nextquestinchain = 0 where entry = 7823; -- A Donation of Runecloth
update quest_template set prevquestid = 7792, nextquestid = 7799, exclusivegroup = 0, nextquestinchain = 0 where entry = 7798; -- A Donation of Silk
update quest_template set prevquestid = 0, nextquestid = 7800, exclusivegroup = 0, nextquestinchain = 0 where entry = 7799; -- A Donation of Mageweave
update quest_template set prevquestid = 0, nextquestid = 7798, exclusivegroup = 0, nextquestinchain = 0 where entry = 7792; -- A Donation of Wool
update quest_template set prevquestid = 0, nextquestid = 7819, exclusivegroup = 0, nextquestinchain = 0 where entry = 7818; -- A Donation of Runecloth
update quest_template set prevquestid = 0, nextquestid = 7800, exclusivegroup = -7792, nextquestinchain = 0 where entry = 7799; -- A Donation of Mageweave
update quest_template set prevquestid = 0, nextquestid = 7800, exclusivegroup = -7792, nextquestinchain = 0 where entry = 7792; -- A Donation of Wool
update quest_template set prevquestid = 0, nextquestid = 7800, exclusivegroup = -7792, nextquestinchain = 0 where entry = 7798; -- A Donation of Silk
update quest_template set prevquestid = 0, nextquestid = 7812, exclusivegroup = 0, nextquestinchain = 0 where entry = 7811; -- A Donation of Runecloth
update quest_template set prevquestid = 7808, nextquestid = 7805, exclusivegroup = 0, nextquestinchain = 0 where entry = 7804; -- A Donation of Mageweave
update quest_template set prevquestid = 0, nextquestid = 7805, exclusivegroup = -7802, nextquestinchain = 0 where entry = 7804; -- A Donation of Mageweave
update quest_template set prevquestid = 0, nextquestid = 7803, exclusivegroup = 0, nextquestinchain = 0 where entry = 7807; -- A Donation of Wool
update quest_template set prevquestid = 7802, nextquestid = 7809, exclusivegroup = 0, nextquestinchain = 0 where entry = 7808; -- A Donation of Silk
update quest_template set prevquestid = 0, nextquestid = 7806, exclusivegroup = 0, nextquestinchain = 0 where entry = 7805; -- A Donation of Runecloth
update quest_template set prevquestid = 7803, nextquestid = 7811, exclusivegroup = 0, nextquestinchain = 0 where entry = 7809; -- A Donation of Mageweave
update quest_template set prevquestid = 0, nextquestid = 7811, exclusivegroup = -7807, nextquestinchain = 0 where entry = 7807; -- A Donation of Wool
update quest_template set prevquestid = 0, nextquestid = 7811, exclusivegroup = -7807, nextquestinchain = 0 where entry = 7808; -- A Donation of Silk
update quest_template set prevquestid = 0, nextquestid = 7801, exclusivegroup = 0, nextquestinchain = 0 where entry = 7800; -- A Donation of Runecloth
update quest_template set prevquestid = 0, nextquestid = 7811, exclusivegroup = -7807, nextquestinchain = 0 where entry = 7809; -- A Donation of Mageweave
update quest_template set prevquestid = 0, nextquestid = 7796, exclusivegroup = 0, nextquestinchain = 0 where entry = 7795; -- A Donation of Runecloth
update quest_template set prevquestid = 7814, nextquestid = 7818, exclusivegroup = 0, nextquestinchain = 0 where entry = 7817; -- A Donation of Mageweave
update quest_template set prevquestid = 0, nextquestid = 7805, exclusivegroup = -7802, nextquestinchain = 0 where entry = 7802; -- A Donation of Wool
update quest_template set prevquestid = 0, nextquestid = 7805, exclusivegroup = -7802, nextquestinchain = 0 where entry = 7803; -- A Donation of Silk
update quest_template set prevquestid = 0, nextquestid = 7808, exclusivegroup = 0, nextquestinchain = 0 where entry = 7802; -- A Donation of Wool
update quest_template set prevquestid = 7807, nextquestid = 7804, exclusivegroup = 0, nextquestinchain = 0 where entry = 7803; -- A Donation of Silk
update quest_template set prevquestid = 0, nextquestid = 7814, exclusivegroup = 0, nextquestinchain = 0 where entry = 7813; -- A Donation of Wool
update quest_template set prevquestid = 0, nextquestid = 7818, exclusivegroup = -7813, nextquestinchain = 0 where entry = 7813; -- A Donation of Wool
update quest_template set prevquestid = 0, nextquestid = 7821, exclusivegroup = 0, nextquestinchain = 0 where entry = 7820; -- A Donation of Wool
update quest_template set prevquestid = 0, nextquestid = 7823, exclusivegroup = -7820, nextquestinchain = 0 where entry = 7820; -- A Donation of Wool
update quest_template set prevquestid = 0, nextquestid = 7827, exclusivegroup = 0, nextquestinchain = 0 where entry = 7826; -- A Donation of Wool
update quest_template set prevquestid = 0, nextquestid = 7824, exclusivegroup = -7826, nextquestinchain = 0 where entry = 7826; -- A Donation of Wool
update quest_template set prevquestid = 0, nextquestid = 7834, exclusivegroup = 0, nextquestinchain = 0 where entry = 7833; -- A Donation of Wool
update quest_template set prevquestid = 0, nextquestid = 7836, exclusivegroup = -7833, nextquestinchain = 0 where entry = 7833; -- A Donation of Wool
update quest_template set prevquestid = 7813, nextquestid = 7817, exclusivegroup = 0, nextquestinchain = 0 where entry = 7814; -- A Donation of Silk
update quest_template set prevquestid = 0, nextquestid = 7818, exclusivegroup = -7813, nextquestinchain = 0 where entry = 7814; -- A Donation of Silk
update quest_template set prevquestid = 7820, nextquestid = 7822,  exclusivegroup = 0, nextquestinchain = 0 where entry = 7821; -- A Donation of Silk
update quest_template set prevquestid = 0, nextquestid = 7823, exclusivegroup = -7820, nextquestinchain = 0 where entry = 7821; -- A Donation of Silk
update quest_template set prevquestid = 7826, nextquestid = 7831, exclusivegroup = 0, nextquestinchain = 0 where entry = 7827; -- A Donation of Silk
update quest_template set prevquestid = 0, nextquestid = 7824, exclusivegroup = -7826, nextquestinchain = 0 where entry = 7827; -- A Donation of Silk
update quest_template set prevquestid = 7833, nextquestid = 7835, exclusivegroup = 0, nextquestinchain = 0 where entry = 7834; -- A Donation of Silk
update quest_template set prevquestid = 0, nextquestid = 7836, exclusivegroup = -7833, nextquestinchain = 0 where entry = 7834; -- A Donation of Silk
update quest_template set prevquestid = 0, nextquestid = 7818, exclusivegroup = -7813, nextquestinchain = 0 where entry = 7817; -- A Donation of Mageweave
update quest_template set prevquestid = 7821, nextquestid = 7823, exclusivegroup = 0, nextquestinchain = 0 where entry = 7822; -- A Donation of Mageweave
update quest_template set prevquestid = 0, nextquestid = 7823, exclusivegroup = -7820, nextquestinchain = 0 where entry = 7822; -- A Donation of Mageweave
update quest_template set prevquestid = 7827, nextquestid = 7836, exclusivegroup = 0, nextquestinchain = 0 where entry = 7831; -- A Donation of Mageweave
update quest_template set prevquestid = 0, nextquestid = 7824, exclusivegroup = -7826, nextquestinchain = 0 where entry = 7831; -- A Donation of Mageweave
update quest_template set prevquestid = 7834, nextquestid = 7824, exclusivegroup = 0, nextquestinchain = 0 where entry = 7835; -- A Donation of Mageweave
update quest_template set prevquestid = 0, nextquestid = 7836, exclusivegroup = -7833, nextquestinchain = 0 where entry = 7835; -- A Donation of Mageweave
