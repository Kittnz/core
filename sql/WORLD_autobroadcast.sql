
delete from mangos_string where entry between 50000 and 50018;
replace into mangos_string (entry, content_default) values 
('50000', 'Delete your WDB folder regularly. This is your game cache, and deleting it can often fix minor game glitches. Always try this before submitting a ticket.'),

('50001', 'Visit Stranglethorn Vale and speak to S. J. Erlgadin of Nesingwary\'s Expedition to get your intensive training in Survival.'),

('50002', 'If you want to help the server grow, check our shop for these donation rewards: exotic mounts, large bags, mysterious engineering devices, and much more. Visit turtle-wow.org/donate'),

('50003', 'Join /world to connect with the community around you. Keep up to date with the news and join our Discord channel: discord.turtle-wow.org'),

('50004', 'Speak to Fara Boltbreaker in Stormwind or Orgrimmar for a quick transfer to Shimmering Flats and participate in the real player-controlled race at Mirage Raceway.'),

('50005', 'We\'ve implemented a list of features that Blizzard never published. You can find more information about them on our website: turtle-wow.org.'),

('50006', 'If you really enjoy questing and leveling, do it slow and steady with the Glyph of the Turtle. Your experience rates for killing monsters will be halved. Enjoy your journey and receive rewards every 10 levels.'),

('50007', 'Have you ever dreamed of setting up your own garden? Grow consumable food by planting the seed and watering it, then enjoy the results of your hard work once it’s fully grown! Speak to Kern Mosshoof in Mulgore or Mortimer Stansfield in Elwynn Forest.');

delete from autobroadcast where string_id between 50000 and 50018;
replace into autobroadcast (string_Id) values
('50000'),
('50001'),
('50002'),
('50003'),
('50004'),
('50005'),
('50006'),
('50007');
