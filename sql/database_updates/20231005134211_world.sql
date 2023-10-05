-- REGENT-LORD MORTIMER HARLOW 61264 add gossip upon fight start: "You will not take what is mine!" --- upon death: "Father..."
REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30138, 'You will not take what is mine!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30139, 'Father...', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Quest: Winterspring - Guardians of the Altar, grammar fix.
update broadcast_text set female_text = 'We found it, $N.' where entry = 7380;
-- Change the npc gossip of npc entryID 61641 to: Yo pal! Welcome to my studio! It's a little crowded, but I make due.$B$B You're talkin' to Zappo Zapblast, your favorite broadcasting DJ, live from Everlook! Tune in to my show sometime, a'ight?
update broadcast_text set male_text = 'Yo pal! Welcome to my studio! It\'s a little crowded, but I make due.$B$BYou\'re talkin\' to Zappo Zapblast, your favorite broadcasting DJ, live from Everlook! Tune in to my show sometime, a\'ight?' where entry = 61641;
