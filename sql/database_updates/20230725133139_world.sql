REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (52132, 'Vagrant''s Endeavor is a unique gameplay mode that challenges players to embrace a minimalist approach to their character''s gear. In this mode, players are restricted to wearing only items of poor and uncommon quality, with no option to use enchants. This creates a thrilling and immersive experience as players must rely on their skill and strategy rather than relying on powerful gear.\n\nAs players progress and reach level 60, the resctition for gearing will be removed, and they are rewarded with a special companion known as the Forworn Mule. This adorable bank pet not only adds a touch of charm to the gameplay, but also serves as a helpful assistant by providing additional storage space for players'' belongings.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (52132, 52132, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Remove 5 copper cost from glyphs, causes issues for new characters.

UPDATE`item_template` SET `name` = 'Glyph of War', `buy_price` = 1, `sell_price` = 0 WHERE `entry` = 80060;
UPDATE`item_template` SET `name` = 'Glyph of Self-Restraint', `buy_price` = 1, `sell_price` = 0 WHERE `entry` = 50745;
UPDATE`item_template` SET `name` = 'Glyph of Exhaustion', `buy_price` = 1, `sell_price` = 0 WHERE `entry` = 50520;
UPDATE`item_template` SET `name` = 'Glyph of the Turtle', `buy_price` = 1, `sell_price` = 0 WHERE `entry` = 51230;
UPDATE`item_template` SET `name` = 'Glyph of the Honorless', `buy_price` = 1, `sell_price` = 0 WHERE `entry` = 50746;
UPDATE`item_template` SET `name` = 'Glyph of the Vagrant', `buy_price` = 1, `sell_price` = 0 WHERE `entry` = 51029;
