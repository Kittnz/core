
-- Doesn't work at this moment, TODO: figure out why 8). Right now it's printing all the messages at once.

-- Autbroadcast messages of Turtle WoW

DELETE FROM `mangos_string` WHERE `entry` BETWEEN 50000 AND 50015;

INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES ('50000', 'Turtle WoW: Don\'t forget to refresh your turtle power by clearing your WDB folder regularly. This is your game cache, and can often fix minor game/display glitches. Always try this before submitting a ticket, thanks!');
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES ('50001', 'Turtle WoW: Have a suggestion for our staff? Head over to our forums and submit your ideas, get support, or post something for the community to get involved in!');
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES ('50002', 'Turtle WoW: Take a peak at our Facebook page every now and then because we tend to it every day. You might just take it to your liking! https://www.facebook.com/turtlewowproject');
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES ('50003', 'Turtle WoW: Dear players, our shop is where you can find exotic wardrobes, mounts, and anything you need to spice up your roleplay! If you want to help support the server, check it out now: turtle-wow.org/donate');
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES ('50004', 'Turtle WoW: Greetings Tortollans! Want to find players to start a RP adventure? Looking for a fun guild to join? Keep up to date with the Turtle WoW community and join our Discord channel: https://discord.gg/mBGxmHy');
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES ('50005', 'Turtle WoW: The world is awaiting you! Type /join World now to connect with the community around you, and find friends for groups, dungeons, and trades!');
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES ('50006', 'Turtle WoW: Please remember, a GM will never ask for your password, so please do NOT share your password with anyone. Use a secure password, and change it often. Protect your account!');
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES ('50007', 'Turtle WoW: Donations are a way to help us improve your experience here at Turtle WoW, as well as help pay for general server costs, advertisement campaigns, developers, and overall production. You can find changelogs and videos on our website and social media platforms. Thanks for your continued support!');
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES ('50009', 'Turtle WoW: Please support Turtle WoW by voting! It will help us to maintain a healthy and stable population: turtle-wow.org/vote');
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES ('50010', 'Turtle WoW: Speak with Karn Deepeye in Orgrimmar or Tarun Swifteagle in Stormwind in order to become diplomats! You will be able to group, trade and speak with members of the other faction!');
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES ('50011', 'Turtle WoW: Come join the arena! You\'ll find Arena Ambassadors in any major city. Join the fray, get cool rewards for murdering friends and enemies in the Battle Ring, where you will experience a bonus x5 honor gaining!');

-- 'delay' is in seconds:

DELETE FROM `autobroadcast` WHERE `string_id` BETWEEN 50000 AND 50015;

INSERT INTO `autobroadcast` (`delay`, `string_id`) VALUES ('10000', '50000');
INSERT INTO `autobroadcast` (`delay`, `string_id`) VALUES ('10000', '50001');
INSERT INTO `autobroadcast` (`delay`, `string_id`) VALUES ('10000', '50002');
INSERT INTO `autobroadcast` (`delay`, `string_id`) VALUES ('10000', '50003');
INSERT INTO `autobroadcast` (`delay`, `string_id`) VALUES ('10000', '50004');
INSERT INTO `autobroadcast` (`delay`, `string_id`) VALUES ('10000', '50005');
INSERT INTO `autobroadcast` (`delay`, `string_id`) VALUES ('10000', '50006');
INSERT INTO `autobroadcast` (`delay`, `string_id`) VALUES ('10000', '50007');
INSERT INTO `autobroadcast` (`delay`, `string_id`) VALUES ('10000', '50009');
INSERT INTO `autobroadcast` (`delay`, `string_id`) VALUES ('10000', '50010');
INSERT INTO `autobroadcast` (`delay`, `string_id`) VALUES ('10000', '50011');

