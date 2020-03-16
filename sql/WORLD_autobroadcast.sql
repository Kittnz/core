
replace into mangos_string (entry, content_default) values 
('50000', 'Delete your WDB folder regularly. This is your game cache, and can often fix minor game glitches. Always try this before submitting a ticket, thanks!'),
('50002', 'Visit Stranglethorn Vale and speak to S. J. Erlgadin of Nesingwary\'s Expedition to get your intensive training in Survival.'),
('50003', 'Keep up to date with the Turtle WoW community and join our Discord channel: |cff0ccaecdiscord.turtle-wow.org|r'),
('50004', 'Type |cff0ccaec/join world|r now to connect with the community around you, and find friends for groups, dungeons, and trades! Please |cff0ccaec/join horde|r or |cff0ccaec/join alliance|r for faction-only talks.'),
('50005', 'Please remember, a GM will never ask for your password, so please do not share your password with anyone. Use a secure password, and change it often.'),
('50006', 'Donations are a way to help us improve your experience here at Turtle WoW, as well as help pay for general server costs. Check our shop for donation rewards if you are interested to contribute to this community: |cff0ccaecturtle-wow.org/donate|r'),
('50007', 'Speak to Fara Boltbreaker in Stormwind or Orgrimmar for a fast transfer to Shimmering Flats and participate to the real Player Controlled Mirage Raceway.'),
('50008', 'Few of us know where and how to preserve style and fashion while protecting your kingdoms and helping your allies. We are eagerly invite you and your friends to come and visit our fashionistas and barbers in all major cities!'),
('50009', 'Remember that the level 1, 2—9 PvP brackets are open for Warsong Gulch in Turtle WoW.'),
('50013', 'Speak to Karn Deepeye in Orgrimmar or Tarun Swifteagle in Stormwind to become a diplomat! You will be able to group and trade with the players of an opposite faction.'),
('50014', 'We\'ve implemented a list of features that Blizzard never published, you can find information about them on our forums under |cff0ccaecSands of Time|r section.'),
('50015', 'If you really like questing and leveling, play in hardcore mode, your creature kill rates will be set to 0.5 raters. Enjoy your journey and receive rewards every 10 levels!'),
('50016', 'We\'re constantly working on improving the leveling experience on Turtle WoW: creating new quests for starting locations or extending the existing quest chains. If you have an idea for a new quest, please visit this page: |cff0ccaecdev.turtle-wow.org|r');

delete from autobroadcast where string_id between 50000 and 50020;
replace into autobroadcast (string_Id) values
('50000'),
('50001'),
('50002'),
('50003'),
('50004'),
('50005'),
('50006'),
('50007'),
('50009'),
('50010'),
('50011'),
('50012'),
('50013'),
('50014'),
('50015'),
('50016');
