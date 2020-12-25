
delete from mangos_string where entry between 50000 and 50018;
replace into mangos_string (entry, content_default) values 
('50000', 'Delete your WDB folder regularly. This is your game cache, and deleting it can often fix minor game glitches. Always try this before submitting a ticket. Thanks!'),

('50001', 'Visit Stranglethorn Vale and speak to S. J. Erlgadin of Nesingwary\'s Expedition to get your intensive training in Survival.'),

('50002', 'If you want to help the server grow, check our shop for these donation rewards: exotic mounts, large bags, mysterious engineering devices, and much more. Visit turtle-wow.org/donate'),

('50003', 'Join /world to connect with the community around you! Keep up to date with the news and join our Discord channel: discord.turtle-wow.org'),

('50004', 'Speak to Fara Boltbreaker in Stormwind or Orgrimmar for a quick transfer to Shimmering Flats and participate in the real player-controlled race at Mirage Raceway.'),

('50005', 'We\'ve implemented a list of features that Blizzard never published. You can find more information about them on our website: turtle-wow.org.'),

('50006', 'Join /world to connect with the community around you! Keep up to date with the news and join our Discord channel: discord.turtle-wow.org'),

('50007', 'Speak to Karn Deepeye in Orgrimmar or Tarun Swifteagle in Stormwind to become a diplomat! You will be able to join a group and trade with the players of the opposite faction.'),

('50008', 'If you want to help the server grow, check our shop for these donation rewards: exotic mounts, large bags, mysterious engineering devices, and much more. Visit turtle-wow.org/donate'),

('50009', 'If you really enjoy questing and leveling, play in hardcore mode. Your experience rates for killing monsters will be halved. Enjoy your journey and receive rewards every 10 levels!'),

('50010', 'We\'re constantly working on improving the leveling experience on Turtle WoW by creating new custom quests or extending the existing quest chains. If you have an idea for additional quests, please visit this page: dev.turtle-wow.org'),

('50011', 'Join /world to connect with the community around you! Keep up to date with the news and join our Discord channel: discord.turtle-wow.org'),

('50012', 'Have you ever dreamed of setting up your own garden? Grow consumable food by planting the seed and watering it, then enjoy the results of your hard work once it’s fully grown! Speak to Kern Mosshoof in Mulgore or Mortimer Stansfield in Elwynn Forest.'),

('50013', 'Prepare yourself for an all-new, never-told chapter in the story of World of Warcraft: a three-part expansion storyline that will lead you on adventures never had and to depths never visited: turtle-wow.org/expansion'),

('50014', 'If you want to help the server grow, check our shop for these donation rewards: exotic mounts, large bags, mysterious engineering devices, and much more. Visit turtle-wow.org/donate');

delete from autobroadcast where string_id between 50000 and 50018;
replace into autobroadcast (string_Id) values
('50000'),
('50001'),
('50002'),
('50003'),
('50004'),
('50005'),
('50006'),
('50007'),
('50008'),
('50009'),
('50010'),
('50011'),
('50012'),
('50013'),
('50014');
