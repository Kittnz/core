
-- Remove texts from custom table.
DELETE FROM `script_texts` WHERE `entry` IN (-1249005, -1469032, -1469033, -1000002, -1469008, -1469007, -1469009, -1469010, -1469011, -1469012, -1469013, -1469014, -1469015, -1469016, -1469017, -1469018, -1469019, -1469020, -1469021);

-- Assign chat type and sounds to texts.
UPDATE `broadcast_text` SET `chat_type`=1, `sound_id`=8288 WHERE `entry`=9973;
UPDATE `broadcast_text` SET `chat_type`=1, `sound_id`=8290 WHERE `entry`=9974;
UPDATE `broadcast_text` SET `chat_type`=1, `sound_id`=8291 WHERE `entry`=9883;
UPDATE `broadcast_text` SET `chat_type`=1, `sound_id`=8293 WHERE `entry`=9972;
UPDATE `broadcast_text` SET `chat_type`=1, `sound_id`=8292 WHERE `entry`=9971;
UPDATE `broadcast_text` SET `chat_type`=1, `sound_id`=0 WHERE `entry`=9850;
UPDATE `broadcast_text` SET `chat_type`=1, `sound_id`=0 WHERE `entry`=9855;
UPDATE `broadcast_text` SET `chat_type`=1, `sound_id`=0 WHERE `entry`=9851;
UPDATE `broadcast_text` SET `chat_type`=1, `sound_id`=0 WHERE `entry`=9848;
UPDATE `broadcast_text` SET `chat_type`=1, `sound_id`=0 WHERE `entry`=9853;
UPDATE `broadcast_text` SET `chat_type`=1, `sound_id`=0 WHERE `entry`=9854;
UPDATE `broadcast_text` SET `chat_type`=1, `sound_id`=0 WHERE `entry`=9852;
UPDATE `broadcast_text` SET `chat_type`=1, `sound_id`=0 WHERE `entry`=9849;
UPDATE `broadcast_text` SET `chat_type`=1, `sound_id`=0 WHERE `entry`=9856;
