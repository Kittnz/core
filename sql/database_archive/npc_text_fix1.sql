UPDATE `broadcast_text` SET `male_text` = 'Greetings, $n.' WHERE `entry` = 10783;
INSERT INTO `broadcast_text` (`entry`, `male_text`) VALUES (50000, 'We are Ancients: protectors of this once great forest.\n\nOur physical forms were destroyed ten thousands years ago when Archimonde and the Burning Legion marched upon Hyjal.\n\nOur spirits, however, remain intact.');
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`) VALUES (50000, 50000, 1);
UPDATE `gossip_menu` SET `text_id` = 50000 WHERE `entry` = 50000;