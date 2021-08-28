-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/246
UPDATE `quest_template` SET `Details`='This gonna be the last task I’m giving you, champ. You better be ready, ‘cause if you’re not, you won’t come back breathing.\n\nOur partners, the orcs, call these babies Armored Scorpions. This beast’s quick on its tiny feet, and their carapace is light yet durable if that wasn’t clear enough when I said “armored”. And they got a deadly sting, so if you get your hands one of these pups, you won’t have to worry about getting pushed around anymore, ever.\n\nWhen you get back, I’m gonna show you my skills. Let me tell you, pal, these skills are beyond mad!\n\nYou will be able to tame whatever beast you want. All you need is the right amount of confidence and animals will eat it up. It won’t be long before they’ll be treating you as their master.\n\nThe beasts you tame will grow with you, kid, and you’ll become a fearsome duo. I’m gonna also teach you how to call them in or send them out.';
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/261
UPDATE `item_template` SET `range_mod`='100' WHERE (`entry`='80799') AND (`patch`='0');
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/250
UPDATE `quest_template` SET `RewRepFaction1`='893' WHERE (`entry`='80302') AND (`patch`='0');
-- Directions given in quest: Package to Quel'Danil need to be changed from Northwest to East as Quel'Danil is east of Aerie Peak:
UPDATE `quest_template` SET `Details`='Excuse me, may I have your attention for a second?\n\nMy name is Lieren and you look like a seasoned traveler. I have a task for you if you do not mind helping me, I am quite busy with my own, I need a package taken to Quel\'Danil East of here.\n\nJust look for an Elf lodge there and take it to my sister. My sister has similar features to mine, but she is all of elvish ancestry.\n\nI\'ve attached your payment to the package, now what do you say pipsqueak, will you help me out?' WHERE (`entry`='80392') AND (`patch`='0');
UPDATE `quest_template` SET `Objectives`='Take Lieren\'s Package to Quel\'Danil and deliver it to Loania.' WHERE (`entry`='80392') AND (`patch`='0');
-- Replace guardian's totem with a proper 2h version:
replace into item_template values
 ('81199', '0', '2', '5', 'Ancestral War Totem', 'Carved by our forefathers.', '5415', '3', '0', '1', '75223', '18641', '17', '-1', '-1', '50',
 '45', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '15', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3700', '0',
 '0', '125', '197', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
-- Generate and add this item to TB rep quartermaster:
replace into item_template values
 ('81167', '0', '4', '2', 'Chieftain\'s Ceremonial Mantle', '', '60884', '3', '0', '1', '196413', '51201', '3', '-1', '-1', '63',
 '60', '0', '0', '0', '0', '0', '81', '7', '0', '1', '0', '4', '6', '5', '9',
 '6', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '193', '0', '0', '0',
 '0', '0', '0', '18029', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '55', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into npc_vendor values (80948, 81167, 0, 0, 0, 0);
 