
delete from mangos_string where entry between 50000 and 50018;
replace into mangos_string (entry, content_default) values 
('50000', 'Delete your WDB folder regularly. This is your game cache, and deleting it can often fix minor game glitches. Always try this before submitting a ticket.'),

('50001', 'If you want to help the server grow, check our shop for these donation rewards: exotic mounts, large bags, mysterious engineering devices, and much more: turtle-wow.org/donate'),

('50002', 'Join /world to connect with the community around you. Keep up to date with the news and join our Discord channel: discord.turtle-wow.org'),

('50003', 'You can find more information on our unique features here: turtle-wow.org.'),

('50004', 'If you really enjoy questing and leveling, do it slow and steady with the Glyph of the Turtle. Your experience rates for killing monsters will be halved. Enjoy your journey and receive rewards every 10 levels.');

delete from autobroadcast where string_id between 50000 and 50018;
replace into autobroadcast (string_Id) values
('50000'),
('50001'),
('50002'),
('50003'),
('50004');
