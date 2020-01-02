replace into migrations values ('20200102223212');

update creature_template set npc_flags = 4 | 16384, SubName = 'Blacksmithing Supplies' where Entry = 6408; /* Making Ula'elek a Blacksmithing Supplies vendor */
replace into npc_vendor (entry, item, maxcount, incrtime) values
/* 3356 = Sumi in Orgrimmar */
(3356, 5577, 1, 1800),
(3356, 7977, 1, 1800),
(3356, 12816, 1, 3600),
(3356, 12826, 1, 7200),
/* 5512 = Kaita Deepforge in Stormwind */
(5512, 5577, 1, 1800),
(5512, 7977, 1, 1800),
(5512, 12816, 1, 3600),
(5512, 12826, 1, 7200),
/* 4259 = Thurgrum Deepforge in Ironforge */
(4259, 6734, 1, 1800),
(4259, 6736, 1, 1800),
/* 2999 = Taur Stonehoof in Thunder Bluff */
(2999, 12831, 1, 7200),
/* 6408 = Ula'elek in Sen'jin Village */
(6408, 2880, 0, 0),
(6408, 2901, 0, 0),
(6408, 3466, 0, 0),
(6408, 3857, 0, 0),
(6408, 5956, 0, 0),
(6408, 18567, 0, 0),
(6408, 12832, 1, 7200),
/* 3005 = Mahu in Thunder Bluff */
(3005, 8388, 1, 5400),
/* 3366 = Tamar in Orgrimmar */
(3366, 8388, 1, 5400),
/* 4589 = Joseph Moore in Undercity */
(4589, 8388, 1, 5400),
/* 5128 = Bombus Finespindle in Ironforge */
(5128, 8388, 1, 5400),
/* 4225 = Saenorion in Darnassus */
(4225, 8388, 1, 5400),
/* 5565 = Jillian Tanner in Stormwind */
(5565, 8388, 1, 5400),
/* 10379 = Altsoba Ragetotem in Felwood */
(10379, 12817, 1, 7200);
replace into quest_template (entry, Method, ZoneOrSort, PrevQuestId, MinLevel, QuestLevel, Type, RequiredSkill, RequiredSkillValue, RewSpell, RewSpellCast, Title, Details, Objectives, ObjectiveText1, RequestItemsText, ReqItemId1, ReqItemCount1, OfferRewardText, RewItemId1, RewItemCount1) values
(100007, 2, -181, 0, 55, 63, 0, 171, 275, 22430, 22432, 'An uncommon request', 'I\'m sure you have a lot of questions, but no answers you will get. Just fulfill my request and I will teach you ancient knowledge.', 'Bring 3 Scales of Onyxia to Aurelius and he will teach you how to transmute them into Refined Scales of Onyxia.',
 'Scale of Onyxia', 'What are you waiting for? Bring me 3 Scales of Onyxia. Aren\'t you hungry for knowledge?', 15410, 3, 'You have done well, with this knowledge you will be very useful to your friends.', 0, 0),
(100008, 2, -284, 0, 55, 63, 0, 333, 275, 22434, 22435, 'A rare request', 'You are not the only one who came here with a lot of questions, but as everyone, no answers you will get. Just fulfill my request and I will teach you forbidden knowledge.$B$BYou will need the help of a good alchemist, someone who has been taught by me.', 'Bring 3 Refined Scales of Onyxia to Aurelius and he will teach you how to turn them into Charged Scales of Onyxia.',
 'Refined Scale of Onyxia', 'What are you waiting for? Bring me 3 Refined Scales of Onyxia. Aren\'t you hungry for knowledge?', 17967, 3, 'You have done well. As the others, you are now part of this knowledge chain.', 0, 0),
(100009, 2, -182, 0, 55, 63, 0, 165, 275, 0, 0, 'An epic request', 'Finally! You are the one who can be the last link of this chain, make no questions, just fulfill my request and I will gift you with an old pattern full of epic knowledge.$B$BYou will need the help of a good alchemist and a good enchanter, both need to have been taught by me.', 'Bring 3 Charged Scales of Onyxia to Aurelius and he will gift you with an old leatherworking pattern.',
 'Charged Scale of Onyxia', 'What are you waiting for? Bring me 3 Charged Scales of Onyxia. Aren\'t you seeking knowledge? Don\'t you want to help the others?', 17968, 3, 'You have done well. Accept this pattern as a gift and be proud of the help you will provide to the others.', 15780, 1);
replace into creature_questrelation (id, quest) values
(100013, 100007),
(100013, 100008),
(100013, 100009);
replace into creature_involvedrelation (id, quest) values
(100013, 100007),
(100013, 100008),
(100013, 100009);
replace into creature_template (Entry, Name, SubName, regeneration, level_min, level_max, display_id1, Scale, Rank, Faction, Type, Inhabit_Type, npc_flags, unit_flags, Speed_Walk, Speed_Run, Unit_Class, Dmg_Multiplier, xp_multiplier, health_min, health_max, mana_min, mana_max, dmg_min, dmg_max, ranged_dmg_min, ranged_dmg_max, Armor, base_attack_time, Equipment_Id) values
(100013, 'Aurelius Bornicus III', 'Unknown Traveler', 1, 63, 63, 3122, 1.4, 3, 35, 7, 3, 2, 0, 1, 1.14286, 8, 8, 1, 1729, 1729, 5013, 5013, 143, 194, 70.664, 97.163, 2609, 1500, 100013);
replace into creature_equip_template (entry, equipentry1) values
(100013, 22800);
replace into creature (id, position_x, position_y, position_z, orientation, map) values (100013, -4697.52, -3704.54, 47.0587, 0.437031, 1);