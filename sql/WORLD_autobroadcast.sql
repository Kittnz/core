
delete from mangos_string where entry between 50000 and 50015;
replace into mangos_string (entry, content_default) values 
('50000', 'Delete your WDB folder regularly. This is your game cache, and can often fix minor game glitches. Always try this before submitting a ticket, thanks!'),
('50001', 'Visit Stranglethorn Vale and speak to S. J. Erlgadin of Nesingwary\'s Expedition to get your intensive training in Survival.'),
('50002', 'Keep up to date with the Turtle WoW community and join our Discord channel: discord.turtle-wow.org'),
('50003', 'Type |cff0ccaec/join world|r now to connect with the community around you, and find friends for groups, dungeons, and trades! Please /join horde or /join alliance for faction-only talks.'),
('50004', 'Speak to Fara Boltbreaker in Stormwind or Orgrimmar for a fast transfer to Shimmering Flats and participate to the real player controlled Mirage Raceway.'),
('50005', 'Few of us know where and how to preserve style and fashion while protecting your kingdoms and helping your allies. We are eagerly invite you and your friends to come and visit our fashionistas and barbers in all major cities!'),
('50006', 'If you want to help our project, check our shop for donation rewards: exotic garments, large bags, mysterious engineering devices and much more: turtle-wow.org/donate'),
('50007', 'Speak to Karn Deepeye in Orgrimmar or Tarun Swifteagle in Stormwind to become a diplomat! You will be able to group and trade with the players of an opposite faction.'),
('50008', 'We\'ve implemented a list of features that Blizzard never published, you can find information about them on our forums under Sands of Time section.'),
('50009', 'If you really like questing and leveling, play in hardcore mode, your creature kill rates will be set to 0.5 raters. Enjoy your journey and receive rewards every 10 levels!'),
('50010', 'We\'re constantly working on improving the leveling experience on Turtle WoW: creating new quests for starting locations or extending the existing quest chains. If you have an idea for a new quest, please visit this page: dev.turtle-wow.org');

delete from autobroadcast where string_id between 50000 and 50015;
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
('50010');
