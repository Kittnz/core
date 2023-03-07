-- Words of Wisdom
INSERT INTO quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) VALUES (40798,40799,2,331,38,25,0,0,'Words of Wisdom','They still aren\'t responding to me! How do my siblings make it look so easy! It\'s infuriating.$B$B<Her ears prick and she bares her fangs as she fails to summon a disobedient hippogryph to her side.>$B$BMy Shan\'do would tell me to drop my pride at this point, I\'m sure of it. He was always so wise and patient. Please, $n, seek other masters of flight, for advice on these annoying little creatures. Tell them of my struggles, ask them for advice. It pains me to admit that I need help, but… I need help. $B$B Please do not ask Caylais or Fyldren! It can\'t look like I am getting preferential treatment. Look around the local towns. I think I had correspondence from Nigel\'s Point, wherever that is. Teloren will definitely want to help, he\'s at the peak of Stonetalon. I would take what he says with a large pinch of salt, though.','Seek out Kaldorei hippogryph masters and hear their advice.','Hello, $n!','<She listens in silence to the advice, meditating on their words for a few minutes.>$B$BWait, Teloren said what? $B$B <She grows almost as red as a radish.>',0,0,0,0,0,0,0,0, 60031,1,60028,1,60029,1,60030,1, 0,0, 0,850,69,100,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

-- 40799: Target Has Quest 40799 In Log
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (40799, 9, 40799, 0, 0, 0, 0);

INSERT INTO creature_questrelation		(id, quest) VALUES (61292, 40799);
INSERT INTO creature_involvedrelation	(id, quest) VALUES (61292, 40799);

UPDATE quest_template SET objectivetext1 = 'Speak with Teloren', objectivetext2 = 'Speak with Baritanas Skyriver', objectivetext3 = 'Speak with Daelyshia', objectivetext4 = 'Speak with Vesprystus' WHERE entry = 40799;

INSERT INTO creature_template VALUES
(60031, 328, 0, 0, 0, 0, 'quest_40799_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60028, 328, 0, 0, 0, 0, 'quest_40799_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60029, 328, 0, 0, 0, 0, 'quest_40799_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60030, 328, 0, 0, 0, 0, 'quest_40799_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- NPC Teloren (Stonetalon)
UPDATE `creature_template` SET `gossip_menu_id`=59012 WHERE `entry` = 4407;
SET @magic_number = 30077;
INSERT INTO broadcast_text (entry, Male_Text) VALUES (@magic_number, 'Alleana? Ah, she should have visited in person! Of course, tell her it\'s all about appearance and mannerism. Speaking to the fledglings not as a parent, nor a master: but a friend, an equal. They will respect that approach, and only by doing so can she hope to build a bridge between herself and them. Remember they are still wild creatures, they lend us their strength and service, we do not tame them.$B$BAnd please tell Allie I still press her letters to my lips some nights. She really should visit for private tuition some time.');
INSERT INTO npc_text (ID, BroadcastTextID0) VALUES (@magic_number, @magic_number);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(59012, 7778, 0, 0),
(59012, @magic_number, 59012, 40799);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(59012, 0, 2, 'Show me where I can fly.', 12271, 4, 8, 0, 0, 0, 0, 0, '', 0, 0);
DELETE FROM `gossip_scripts` WHERE `id`=59012;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(59012, 0, 0, 8, 60031, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Teloren - Give Quest Credit');

-- NPC Baritanas Skyriver (Desolace)
UPDATE `creature_template` SET `gossip_menu_id`=59013 WHERE `entry` = 6706;
SET @magic_number = 30078;
INSERT INTO broadcast_text (entry, Male_Text) VALUES (@magic_number, 'I am not sure I recognise the name, but the process is roughly the same as gaining the respect of any other animal companion. I would advise taking them into a clearing during a full moon. The gaze of Elune often brings a sense of respect and spirituality, which may be the missing piece in her training.$B$BTell her I wish her well, for this life is demanding, but incredibly rewarding.');
INSERT INTO npc_text (ID, BroadcastTextID0) VALUES (@magic_number, @magic_number);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(59013, 7778, 0, 0),
(59013, @magic_number, 59013, 40799);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(59013, 0, 2, 'Show me where I can fly.', 12271, 4, 8, 0, 0, 0, 0, 0, '', 0, 0);
DELETE FROM `gossip_scripts` WHERE `id`=59013;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(59013, 0, 0, 8, 60028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baritanas Skyriver - Give Quest Credit');

-- NPC Daelyshia (Ashenvale)
UPDATE `creature_template` SET `gossip_menu_id`=59014 WHERE `entry` = 4267;
SET @magic_number = 30079;
INSERT INTO broadcast_text (entry, Male_Text) VALUES (@magic_number, 'Oh my word, that\'s awful. Alleana is a Moonfeather, yes? I have every confidence she will find the methods that work best for her. It is intensely personal, after all, and every master handles the hippogryphs differently.$B$BThat said, I hear the East of our sacred forests are being ravaged about as badly as the north has been. She truly has my condolences, it cannot be easy. May Elune grant her strength. Perhaps taking a small break to relax the mind will help? One cannot hope to calm a wild beast while also being of an uncalm mind.');
INSERT INTO npc_text (ID, BroadcastTextID0) VALUES (@magic_number, @magic_number);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(59014, 7778, 0, 0),
(59014, @magic_number, 59014, 40799);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(59014, 0, 2, 'Show me where I can fly.', 12271, 4, 8, 0, 0, 0, 0, 0, '', 0, 0);
DELETE FROM `gossip_scripts` WHERE `id`=59014;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(59014, 0, 0, 8, 60029, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Daelyshia - Give Quest Credit');

-- NPC Vesprystus (Teldrassil)
UPDATE `creature_template` SET `gossip_menu_id`=59015 WHERE `entry` = 3838;
SET @magic_number = 30080;
INSERT INTO broadcast_text (entry, Male_Text) VALUES (@magic_number, '<He looks up from feeding his flock, and replenishing their food. He wipes sweat from his brow with mucky, worn hands.> $B$B I am extremely busy as of now, performing my duties. I expect if she wants to follow in her siblings\' footsteps and serve, then she had better buckle down and put in the hours and days and years of blood sweat and tears to earn such an austere position.$B$BGoodbye.');
INSERT INTO npc_text (ID, BroadcastTextID0) VALUES (@magic_number, @magic_number);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(59015, 7778, 0, 0),
(59015, @magic_number, 59015, 40799);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(59015, 0, 2, 'Show me where I can fly.', 12271, 4, 8, 0, 0, 0, 0, 0, '', 0, 0);
DELETE FROM `gossip_scripts` WHERE `id`=59015;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(59015, 0, 0, 8, 60030, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vesprystus - Give Quest Credit');
