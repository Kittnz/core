
delete from mangos_string where entry between 50000 and 50018;
replace into mangos_string (entry, content_default) values 
('50000', 'Delete your WDB folder regularly. This is your game cache, and deleting it can often fix minor game glitches. Always try this before submitting a ticket. Thanks!'),

('50001', 'Visit Stranglethorn Vale and speak to S. J. Erlgadin of Nesingwary\'s Expedition to get your intensive training in Survival.'),

('50002', 'Shop items are half the price on till March 17. Exotic mounts, large bags, mysterious engineering devices and more: turtle-wow.org/donate'),

('50003', 'Join /world to connect with the community around you! Keep up to date with the news and join our Discord channel: discord.turtle-wow.org'),

('50004', 'Speak to Fara Boltbreaker in Stormwind or Orgrimmar for a quick transfer to Shimmering Flats and participate in the real player-controlled race at Mirage Raceway.'),

('50005', 'Shop items are half the price on till March 17. Exotic mounts, large bags, mysterious engineering devices and more: turtle-wow.org/donate'),

('50006', 'We\'ve implemented a list of features that Blizzard never published. You can find more information about them on our website: turtle-wow.org.'),

('50007', 'Join /world to connect with the community around you! Keep up to date with the news and join our Discord channel: discord.turtle-wow.org'),

('50008', 'Shop items are half the price on till March 17. Exotic mounts, large bags, mysterious engineering devices and more: turtle-wow.org/donate'),

('50009', 'Speak to Karn Deepeye in Orgrimmar or Tarun Swifteagle in Stormwind to become a diplomat! You will be able to join a group and trade with the players of the opposite faction.'),

('50010', 'If you really enjoy questing and leveling, do it slow and steady with the Glyph of the Turtle! Your experience rates for killing monsters will be halved. Enjoy your journey and receive rewards every 10 levels.'),

('50011', 'Shop items are half the price on till March 17. Exotic mounts, large bags, mysterious engineering devices and more: turtle-wow.org/donate'),

('50012', 'We\'re constantly working on improving the leveling experience on Turtle WoW by creating new custom quests or extending the existing quest chains. If you have an idea for additional quests, please visit this page: dev.turtle-wow.org'),

('50013', 'Join /world to connect with the community around you! Keep up to date with the news and join our Discord channel: discord.turtle-wow.org'),

('50014', 'Shop items are half the price on till March 17. Exotic mounts, large bags, mysterious engineering devices and more: turtle-wow.org/donate'),

('50015', 'Have you ever dreamed of setting up your own garden? Grow consumable food by planting the seed and watering it, then enjoy the results of your hard work once it’s fully grown! Speak to Kern Mosshoof in Mulgore or Mortimer Stansfield in Elwynn Forest.');

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
('50014'),
('50015');