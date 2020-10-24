
delete from mangos_string where entry between 50000 and 50018;
replace into mangos_string (entry, content_default) values 
('50000', 'All shop items are half the price on 23—31 October! Exotic mounts, large bags, mysterious engineering devices and more: turtle-wow.org/donate'),

('50001', 'Visit Stranglethorn Vale and speak to S. J. Erlgadin of Nesingwary\'s Expedition to get your intensive training in Survival.'),

('50002', 'All shop items are half the price on 23—31 October! Exotic mounts, large bags, mysterious engineering devices and more: turtle-wow.org/donate'),

('50003', '/join world to connect with the community around you! Keep up to date with the our news and join our Discord channel: discord.turtle-wow.org'),

('50004', 'Speak to Fara Boltbreaker in Stormwind or Orgrimmar for a fast transfer to Shimmering Flats and participate to the real player controlled Mirage Raceway.'),

('50005', 'All shop items are half the price on 23—31 October! Exotic mounts, large bags, mysterious engineering devices and more: turtle-wow.org/donate'),

('50006', '/join world to connect with the community around you! Keep up to date with the our news and join our Discord channel: discord.turtle-wow.org'),

('50007', 'Speak to Karn Deepeye in Orgrimmar or Tarun Swifteagle in Stormwind to become a diplomat! You will be able to group and trade with the players of an opposite faction.'),

('50008', 'We\'re constantly working on improving the leveling experience on Turtle WoW: creating new quests for starting locations or extending the existing quest chains. If you have an idea for a new quest, please visit this page: dev.turtle-wow.org'),

('50009', 'If you really like questing and leveling, play in hardcore mode, your creature kill rates will be set to 0.5. Enjoy your journey and receive rewards every 10 levels!'),

('50010', 'All shop items are half the price on 23—31 October! Exotic mounts, large bags, mysterious engineering devices and more: turtle-wow.org/donate'),

('50011', '/join world to connect with the community around you! Keep up to date with the Turtle WoW news and join our Discord channel: discord.turtle-wow.org'),

('50012', 'Have you ever had a dream about setting your own garden? Grow your own food: plant the seed, water it, foster it, and enjoy the results of your hard work once it’s fully grown! Speak to Kern Mosshoof in Mulgore or find Mortimer Stansfield in Elwynn Forest.'),

('50013', 'Prepare yourself for an all-new, never-told chapter in the story of World of Warcraft: a three-part expansion storyline that will lead you on adventures never had and to depths never visited: turtle-wow.org/expansion'),

('50014', 'All shop items are half the price on 23—31 October! Exotic mounts, large bags, mysterious engineering devices and more: turtle-wow.org/donate');

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
