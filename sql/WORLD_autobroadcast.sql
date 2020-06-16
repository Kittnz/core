
delete from mangos_string where entry between 50000 and 50015;
replace into mangos_string (entry, content_default) values 
('50000', 'Delete your WDB folder regularly. This is your game cache, and can often fix minor game glitches. Always try this before submitting a ticket, thanks!'),
('50001', 'Visit Stranglethorn Vale and speak to S. J. Erlgadin of Nesingwary\'s Expedition to get your intensive training in Survival.'),
('50002', '|cff0ccaecAll shop items are half the price on 17-24 June!|r Exotic tabards, mounts, large bags, mysterious engineering devices and more: turtle-wow.org/donate'),
('50003', 'Keep up to date with the Turtle WoW community and join our Discord channel: discord.turtle-wow.org'),
('50004', 'Type |cff0ccaec/join world|r now to connect with the community around you, and find friends for groups, dungeons, and trades! Please /join horde or /join alliance for faction-only talks.'),
('50005', '|cff0ccaecAll shop items are half the price on 17-24 June!|r Exotic pets, mounts, large bags, mysterious engineering devices and more: turtle-wow.org/donate'),
('50006', 'Speak to Fara Boltbreaker in Stormwind or Orgrimmar for a fast transfer to Shimmering Flats and participate to the real player controlled Mirage Raceway.'),
('50007', 'Few of us know where and how to preserve style and fashion while protecting your kingdoms and helping your allies. We are eagerly invite you and your friends to come and visit our fashionistas and barbers in all major cities!'),
('50008', '|cff0ccaecAll shop items are half the price on 17-24 June!|r Exotic tabards, mounts, large bags, mysterious engineering devices and more: turtle-wow.org/donate'),
('50009', 'Speak to Karn Deepeye in Orgrimmar or Tarun Swifteagle in Stormwind to become a diplomat! You will be able to group and trade with the players of an opposite faction.'),
('50010', 'We\'ve implemented a list of features that Blizzard never published, you can find information about them on our forums under Sands of Time section.'),
('50011', '|cff0ccaecAll shop items are half the price on 17-24 June!|r Exotic pets, mounts, large bags, mysterious engineering devices and more: turtle-wow.org/donate'),
('50012', 'If you really like questing and leveling, play in hardcore mode, your creature kill rates will be set to 0.5 raters. Enjoy your journey and receive rewards every 10 levels!'),
('50013', 'We\'re constantly working on improving the leveling experience on Turtle WoW: creating new quests for starting locations or extending the existing quest chains. If you have an idea for a new quest, please visit this page: dev.turtle-wow.org'),
('50014', '|cff0ccaecAll shop items are half the price on 17-24 June!|r Exotic tabards, mounts, large bags, mysterious engineering devices and more: turtle-wow.org/donate'),
('50015', 'Have you ever had a dream about setting your own garden? Grow your own food: plant the seed, water it, foster it, and enjoy the results of your hard work once it’s fully grown! Speak to Kern Mosshoof in Mulgore or find Mortimer Stansfield in Elwynn Forest.');

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
('50011'),
('50012'),
('50013'),
('50014'),
('50015');