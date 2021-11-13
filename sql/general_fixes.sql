update creature_template set display_id1 = 3845 where entry = 92201;
update creature_template set display_id1 = 4010 where entry = 60488;
update creature_template set display_id1 = 2613 where entry = 91982;
update creature_template set subname = '' where entry = 60497;
update creature_template set npc_flags = 16391 + 2 where entry = 4556;
update creature_template set npc_flags = 135 + 2 where entry = 6739;
update gameobject set spawntimesecsmin = 120, spawntimesecsmax = 120 where id = 2010816;
delete from playercreateinfo_spell where class = 3 and race = 5 and spell = 26290;
update playercreateinfo_item set itemid = 2092 where class = 3 and race = 5 and itemid = 37;
replace into playercreateinfo_spell values (5, 3, 1180, 'Daggers');

replace into creature_template (entry, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, phase_quest_id, script_name) VALUES (80466, 1082, 1083, 0, 0, 'Tirisfal Plagued Bear', NULL, 0, 7, 9, 195, 220, 0, 0, 155, 44, 0, 1, 0.857143, 1, 20, 5, 0, 0, 1, 14, 19, 0, 60, 1, 2500, 2000, 1, 0, 0, 4, 0, 0, 0, 0, 13.4464, 18.4888, 100, 1, 1, 822, 0, 822, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5797, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Red Flag over the Sea
UPDATE quest_template
SET title = 'Red Flag over the Sea',
    details = 'Ahoy mate, fine day, innit?\n\n<Garfield takes a deep breath.>\n\nAye, the salty smell of the sea forcefully entering your nostrils, the cotton mouth from last night\'s rum and the ultimate headache and pain you got from the local bar fight. Thar is no better life matey, this I tell ye. But this city be borin\'. I reckon they are no real pirates. If ye truly want to live yer adventures at sea and see how it really be to be a Corsair ye should come join me and me crew!\n\nI be a crew member of the Bloodsail Buccaneers and I be lookin\' for new folk to join us. We are sworn enemies to Booty Bay so keep this small piece to yerself eh? If ye decide to join us I got a mission for ye, if not, we never met, savvy?',
    objectives = 'Speak to Garfield Sparkleblast if you wish to aid him.',
    requestitemstext = 'Don\'t waste me time mate, I be tryin\' to enjoy the sun and this here fine rum.',
    offerrewardtext = 'I\'d like to say welcome aboard but ye are not ready to become a crew member yet, first ye must do us a favor.'
WHERE entry = 40172;

-- Weapons Laying About
UPDATE quest_template
SET title = 'Weapons Laying About',
    details = 'So listen here mate, ye see these foul sea tailed imps? These Blackwater Pirates are naught but a joke, hiding in their port. They even have thar weapons laying around in crates, truly a disgrace to all pirates around.\n\n<Garfield spits on the ground.>\n\nSo that\'s exactly why ye are going to collect them and bring them to a special someone in the city. What, ye thought these sea tailed imps wouldn\'t have a rat? Outrageous, but hilarious, innit? Narkk be the name.',
    objectives = 'Bring five weapon crates to Narkk.',
    requestitemstext = 'Aye?',
    offerrewardtext = 'Not so loud! You want the whole bruiser brigade on our hands? Just put that crate in and keep them coming.\n\n<After you bring each crate one by one you turn your attention towards Narkk.>\n\nFine work mate, here\'s your pay. Now leave and don\'t worry about it, you were never here today.'
WHERE entry = 40173;

-- A Cannon's Misfortune
UPDATE quest_template
SET title = 'A Cannon\'s Misfortune',
    details = 'All right mate. Ye\'ve done well so far but thar\'s still some stuff we have to do afore leavin\' this rotten port. If we wants these idiots to never have a chance in the face of the Bloodsail Buccaneers, we shall have to also tamper with thar ammo. That bein\' said, I\'m gonna give ye a flask o\' "special" water ye will have to pour in any barrel of blast powder ye can find.\n\nSavvy?',
    objectives = 'Sabotage the Blast Powder Kegs.',
    requestitemstext = 'Done already mate?',
    offerrewardtext = 'Aye, good job lad. This is all fer the greater good of the crew, aye?'
WHERE entry = 40174;

-- The Bet
UPDATE quest_template
SET title = 'The Bet',
    details = 'I may not have the most gold on me, but I do have a fortune that\'s waiting out there for me. I made a bet with this goblin, named Nagzel, crafty little guy. You see, we were playing cards one day and he was telling me about his plans of joinin\' the Venture Co. and working at the base camp by Lake Nazferiti. For the first time in my life, I was actually winnin\', and he offered this big hunk of a ring.\n\nNow, the ring itself I cared little for, it was nothing more then some cheap old iron lug nut, but it had this BIG jade sticking on top of it. I\'m talking the size of my thumb!\n\nBets are more then just games, they\'re a way of life, and this man took the ring when he lost, and vanished, never to be seen again. Go find this punk and get that green stone, it\'s rightfully mine!',
    objectives = 'Bring back the "Rightful" Jade for Dirty Jacob.',
    requestitemstext = 'It might be hard to track him down, but I\'m sure you can do it.',
    offerrewardtext = 'Damn, look at this beauty, such a beautiful rock. Here, have some silver for the hard work of getting it for me. Some people should really learn not to flash their expensive rocks out in public, you never know who could be looking for them, heh.'
WHERE entry = 40175;

-- Crumbling Allies
UPDATE quest_template
SET title = 'Crumbling Allies',
    details = 'When we first came to this island, we were greeted by hostility from all who were around us. We were seen as pirates still, and had yet to make a mark for ourselves. It was the Seer Jang\'zo from the Razzari tribe who helped bring peace between us and them. For quite a while we kept a rather peaceful bond with one another. We traded and assisted with tasks of both a spiritual nature and physical.\n\nThough all seems to have fallen apart within the last weeks. The Razzari have began to show hostilities toward us, and have even gone so far as to attack. There are rumors of them speaking with the Hazzuri trolls and being influenced by their dark magics. There must be some kind of curse at play.\n\nI fear for Jang\'zo and wish to assist him, as he did us. I require materials from around the island to create a spell that could lift such a curse. Firstly I need 6 Junglepaw Fangs from the local panthers, 3 Creeper Roots from the ruins creepers in the Ruins of Zul\'Razu, and a single Jungle Venom Gland from the jungle serpents.',
    objectives = 'Collect 6 Junglepaw Fangs, 3 Creeper Roots, and a Jungle Venom Gland for Euokia on Gillijim\'s Island.',
    requestitemstext = 'These materials will be the only thing to help Jang\'zo. If I am correct, the dark magic could be influencing the trolls of the Razzari and driving them further into madness.'
WHERE entry = 40176;

-- The Gobcrank Flazwanger
UPDATE quest_template
SET title = 'The Gobcrank Flazwanger',
    details = 'Damn, did we come down like a meteor, all the controls were going haywire, sparks flying everywhere, as the zeppelin hauled ass and smashed into the island! It was a miracle that I survived, though my luck ran out when I had to leave behind the wreck.\n\nAfter we plummeted down, we attracted the attention of a bunch of basilisks. The damn buggers made it impossible for me to go and find my Gobcrank Flazwanger! I made the thing back in Kezan a long time ago to help with stabilization, and let me tell you it\'s revolutionary!\n\nYou think you can manage a quick tilted turn on a zeppelin? Not unless you have a Gobcrank Flazwanger... Look pal, you\'re looking at me like I\'m an alien, all you need to know is the thing is valuable, okay? And I\'m willing to pay for you to go get it, now am I speaking your language?\n\nThe wreck was over by the Maul\'ogg post to the south-west, it shouldn\'t be hard to miss!',
    objectives = 'Find and bring the Gobcrank Flazwanger back to Flaz Fusemix in Maul\'ogg Refuge.',
    requestitemstext = 'Look buddy, the longer we sit around here and talk, the higher the probability that thing is getting chewed up!',
    offerrewardtext = '<The Goblin takes the device and quickly inspect it.>\n\nYeah, this is it. Here, take your cash. Now scram, I gotta make sure this baby ain\'t broken!'
WHERE entry = 40177;

-- Loss of Good Rum
UPDATE quest_template
SET title = 'Loss of Good Rum',
    details = 'What we be about to do be a great sin, mate. I hope the Goddess o\' Rum will forgive this foolish scallywag. Aye, we\'ll poison the rum in the inn, wha\' a damn shame, ain\'t it?\n\nBut sometimes ye gotta do wha\' ye gotta do. Here\'s the poison, just toss it into the huge keg of rum they usually keep on the low level of the port, close to the auction house. They fill the rum everyday \'n they\'ve got thar share already, they will only be feelin\' it tomorrow.',
    objectives = 'Poison the Rum.',
    requestitemstext = 'Just go already, this action makes me eyes water.',
    offerrewardtext = 'What kind of monster am I to make ye sully such great rum, I hope one day I will be able to forgive meself.'
WHERE entry = 40178;

-- Exterminate the Rat
UPDATE quest_template
SET title = 'Exterminate the Rat',
    details = 'So it seems these Blackwater fools sent some rat to keep track of our mates. He already asked someone to scuttle one of our new captains, although to be fair that orc was an idiot. Blood fer blood! I wants ye to go meet Morgan the Storm \'n spit in his face. Bring me his head. Ye can find him on the Eastern beach where most of me mates set anchor.',
    objectives = 'Kill Morgan the Storm and bring his head to Garfield Sparkleblast.',
    requestitemstext = 'Don\'t got all day.',
    offerrewardtext = 'The rat finally lays dead. Put that bag down fer now, I\'ll tell ye what ye gotta do next afore we get the deck all bloody.'
WHERE entry = 40179;

-- Making a Statement
UPDATE quest_template
SET title = 'Making a Statement',
    details = 'Here mate, put Morgan\'s head in this Jolly Roger. Ye ain\'t about to like what ye\'re goin\' to do next, but that shall only prove how insane \'n courageous ye be. Ye\'re goin\' to toss the head at the feet o\' the Baron \'n the First Mate \'n make a damn run fer it! Ye\'re gonna find us on Jaguero Island, I hope ye make it thar alive, ye\'d be a great asset to the crew. If ye do come, I will officially make ye a crewmate.',
    objectives = 'Make a statement.',
    requestitemstext = 'Shiver me timbers, ye actually made it. Were they mad?',
    offerrewardtext = 'Haha idiots! Now they know what\'s gonna happen when they try to mess with us next, great job. And welcome aboard.'
WHERE entry = 40180;

-- Taking over Faldir's Cove
UPDATE quest_template
SET title = 'Taking over Faldir\'s Cove',
    details = 'Now that we\'ve let \'em know who they be dealin\' with it\'s also time to hit \'em when they\'d less expect. I hear thar be some fools that set anchor in to Faldir\'s Cove in Arathi Highlands. I wants ye to scuttle \'em, all of \'em.',
    objectives = 'Invade Faldir\'s Cove and kill everything in your way.',
    requestitemstext = 'Been a long road, eh?',
    offerrewardtext = 'Their ship, the Harbinger, was sent fer some reason in Arathi Highlands. We dunno why, \'n we mighty don\'t care that much either. All we care about right now be that they be dead, \'n we\'ve landed once again a blow to the Blackwater Pirates.'
WHERE entry = 40181;

-- South Sea Losers
UPDATE quest_template
SET title = 'South Sea Losers',
    details = 'Now that we be done with the mongrels from Blackwater, we have time to focus on a different kind of enemy. I hear the South Sea Pirates anchored on the Isle of Lapidis, a mysterious island that be known to hide some sort o\' booty from wha\' me mates tell me. I say it\'s just fairy tales. Go pick a fight with \'em, \'n here, take this. It\'s about time ye represent the Jolly Roger, tie this red bandana over yer wrist, ye\'re a Bloodsail after all.',
    objectives = 'Travel to Lapidis and pick a fight with the local pirates.',
    requestitemstext = 'Still as weak as they used to be?',
    offerrewardtext = 'So they be thar after all. Good, some of me scallywags be trackin\' behind ye to see if they can get any kind of information while ye be wreakin\' havoc, \'n it seems we got what we needs.'
WHERE entry = 40182;

-- First Mate McCoy
UPDATE quest_template
SET title = 'First Mate McCoy',
    details = 'Right, the information. Well ye see, I\'ve been huntin\' this First Mate since me early days of piracy, he took me eye and I want his head. He be a real pain in the gut, I tell ye.\n\nOnce we were at sea through the vast cold areas close to Northrend. The wind blew so harshly that when we was fighting at sea the ships eventually hit one another and we had to fight through the coldest rain I\'ve ever had to witness. We\'ve barely made it alive on rowboats to Eastern Kingdoms, only to meet again on land and swear to claim each other\'s head. With ye here, a long grudge will be fulfilled.',
    objectives = 'Kill First Mate McCoy.',
    requestitemstext = 'Bah, as ugly as it used to be.',
    offerrewardtext = 'Aye, toss it on the floor over there, I\'ll be mountin\' it on me wall in the room I sleep.'
WHERE entry = 40183;

-- Magical Compass
UPDATE quest_template
SET title = 'Magical Compass',
    details = 'The cap\'n of this fool ye\'re about to scuttle used to have a magical compass, or so they claim. It seems the compass would find whatever ye desire when ye\'d open it up, which sounds like a madman gab.\n\nEnter the lodgin\' of the cap\'n \'n see if ye can find this compass. I hear he keeps it locked in a chest. Some say the chest be black spotted, but that\'s definitely some squiffy excuse.',
    objectives = 'Find the Magical Compass.',
    requestitemstext = 'How goes the search fer legends \'n myths?',
    offerrewardtext = 'I\'ll be damned, ye found something, eh? Looks like a damn normal compass to me.\n\n<Garfield frowns.>\n\nWhatever, we\'ll try it some other time.'
WHERE entry = 40185;

-- Land ho? More like land no
UPDATE quest_template
SET title = 'Land ho? More like land no',
    details = 'Last thing ye\'re gonna do fer me with these fools be to set fire to thar ship. Fun, ain\'t it?\n\nAye, I wants ye to light this torch on fire while ye\'re close to the cannons, \'n set fire to the blast powder. Make sure t\' get out o\' thar as quickly as possible!',
    objectives = 'Light the fuse of a blast powder keg.',
    requestitemstext = 'Did it burn nicely?',
    offerrewardtext = 'Good, somethin\' else ye\'ve dealt with. I be startin\' to fear the thought of ye bein\' me enemy, mate.'
WHERE entry = 40186;

-- Captain of the Bloodsail Buccaneers
UPDATE quest_template
SET title = 'Captain of the Bloodsail Buccaneers',
    details = 'Mate, at this point, I can nah even argue wit\' the fact that ye\'re a mighty resourceful individual. That bein\' said, I be givin\' ye yer own wee crew. Ye won\'t have to do much other than live a free damn life \'n go search fer adventure, gold, rum \'n wenches. It\'s been a fun run, \'n it\'s \'cause of ye that we be here. Speak with me when ye\'re ready to claim yer new title \'n yer crew.',
    objectives = 'Talk to Garfield Sparkleblast when you\'re ready.',
    requestitemstext = 'It be no great honour mate, this ain\'t a knight\'s ceremony.',
    offerrewardtext = 'Yo-ho-ho!'
WHERE entry = 40187;

-- No Hope for Tomorrow
UPDATE quest_template
SET title = 'No Hope for Tomorrow',
    details = 'It\'s been so long, so long ago that we\'ve decided to let go of our principles. So long ago we stopped to care for anyone but us. We\'ve given up on our lives in favor of the demons, we are nothing but shadows of memories from the past. I can no longer do this, I can no longer wait.\n\nI wish days would return when we, the Highborne, were the ones standing atop the Night Elves. All we are now are shadows of what we used to be, hunted by the ogres and demons that took residence in the lands we used to call Eldre\'thalas.\n\nPlease, kill me, end my suffering. I want to go to my mother moon and join the afterlife that I\'ve courted for so many years. Please, end my torment.',
    objectives = '"Free" Thirael Blistersong.',
    requestitemstext = '<Thirael\'s broken corpse lays before your eyes.>',
    offerrewardtext = '<Thirael lays dead, you\'ve fulfilled your promise to him. All that is left of him is a bag of coins you pick up.>'
WHERE entry = 40184;

replace into item_template values
 ('81060', '2', '8', 'Tempered Runeblade', 'You can feel a hunger to to inflict destruction deep inside.', '60983', '4', '0', '1', '722976', '180744', '17', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '20', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3700', '0',
 '0', '183', '278', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '20', '0', '21617', '1', '0', '0', '-1', '0', '-1', '9331', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '120', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
update quest_template set objectives = 'Gather 5 Jadefire Felhorns, and 5 Purple Lotus for Insom\'ni on Kazon Island.' where entry = 40211;
update quest_template set objectives = 'Gather a Barrel of Steamwheedle Wine, 10 Flasks of Port, a Cast of Merlot, and a Jug of Orgrimmar Brown for Fazzle \'The Slick\' in Bloodsail Retreat.' where entry = 40198;
update quest_template set details = 'Hey, you! I be needing a bit of work that is off the boat if you think you can be a hand. When we get moving all that people really got to do is either drink, or work to keep the ship clean and orderly. I\'ve found it always good to keep a good reserve of ale on hand, and a good variety of it too!\n\nWhat I\'m gonna ask you to do is bring some ale from various sources, some of which might require you to have some friends, or connections with the opposite faction at that!\n\nFirst, I need a Barrel of Steamwheedle Wine, which can be found at the port, steal it. Secondly I\'ll need common ale, 10 Flasks of Port. Finally get me a Cask of Merlot from Stormwind at the Gallina Winery, and a jug of Orgrimmar Brown from the Tavern in Orgrimmar.' where entry = 40198;
update quest_template set reqitemid1 = 60270, reqitemcount1 = 1 where entry = 40198;
update quest_template set reqitemid2 = 2593, reqitemcount2 = 10 where entry = 40198;
update quest_template set reqitemid3 = 1941, reqitemcount3 = 1 where entry = 40198;
update quest_template set reqitemid4 = 60271, reqitemcount4 = 1 where entry = 40198;

update quest_template set details = 'The Dark Iron Dwarves have been a long standing rival of ours, their attacks against our people have been ruthless. I have come to attempt to bolster our strength in the region, and if we want that to be possible, then we must set our sights on Angor Fortress.\n\nThe place is run by Captain Barlgruf, he has been sent from Shadowforge City to oversee actions here within the Badlands, cut him down, and the rest of them will be aimless. He should be inside Angor Fortress, no doubt nestled with the rest of his lackeys.\n\nKill him, and return to me.' where entry = 40228;
update quest_template set offerrewardtext = 'Great work, Ironforge would be proud of the actions you have done this day, please, take these coins, as a token of our gratitude.\n\nPerhaps one day we may resume our work here on a more larger scale!' where entry = 40228;

delete from quest_template where title = 'In Need of Assistance';
delete from quest_template where title = 'Dire Situation';
delete from quest_template where title = 'Crumblepoint Tower';
delete from quest_template where title = 'Head Of The Pack';
delete from quest_template where title = 'Worthy Ally';
delete from quest_template where title = 'Into The Uplands';
delete from quest_template where title = 'Outnumbered';
delete from quest_template where title = 'In The Dark';
delete from quest_template where title = 'Cutting Them Off';
delete from quest_template where title = 'Uncanny Allies';
delete from quest_template where title = 'Divide and Conquer';
delete from quest_template where title = 'Fresh Perspective';
delete from quest_template where title = 'The Price';
delete from quest_template where title = 'Indebted';
delete from quest_template where title = 'War On Two Fronts';
delete from quest_template where title = 'Fall Of The Usurper';
delete from quest_template where title = 'Quest An Old Friend';

update creature_equip_template set equipentry1 = 2901 where entry = 55143;
update item_template set name = 'Eldarath Harmonization Gem' where name = 'Eldarath Harmonization';

-- Crumbling Allies
UPDATE quest_template
SET offerrewardtext = '<Eudokia looks toward the materials curiously.>\n\nThis should do, I will begin to prepare the spell now.'
WHERE entry = 40176;

update quest_template set title = 'Conserving Stonetalon Peak' where entry = 40227;

update quest_template set details = 'As much as I appreciate this delivery I know what it means. I made a promise long ago to uphold an end of the bargain. I desired him to pillage the areas I gave him in return for some goods and information.\n\nHe is looking for the killer of Jade, the one who broke up our old crew some time ago, and now that he has fulfilled his end, I will do the same, I aint no rat, I keep my bond.\n\nThe person who organized the hit to break us up went by the name Wally Wisecrack, he now hangs out with those Syndicate Boys, though I am sure \'Slip\' knows that. Once you tell \'Slip\' this is the person who was behind it all, he will no doubt want revenge.' where entry = 40225;

update item_template set display_id = 14443 where entry = 83403;

replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id) values 
(7105,60295,-11,1,1,0),
(7107,60295,-15,1,1,0),
(7108,60295,-15,1,1,0),
(7109,60295,-13,1,1,0),
(7111,60295,-16,1,1,0);

update creature_template set faction = 189 where name = 'Keeper Iselus';
update creature_template set faction = 189 where name = 'Keeper Laena';

-- Analyzer X-51 and X-48 cannot be spawned (wrong syntax?)
replace into creature_display_info_addon (display_id) values (18691);
replace into creature_display_info_addon (display_id) values (18692);
replace into creature_display_info_addon (display_id) values (18625);

update creature_template set faction = 35 where entry = 60443;

update creature_template set faction = 189, unit_flags = 2 where entry = 91289;
update creature_template set faction = 106, unit_flags = 2 where entry = 91290;

update gameobject_template set name = 'Crate labelled "A"' where entry = 2010826;
update gameobject_template set name = 'Crate labelled "B"' where entry = 2010825;

update creature_template set unit_flags = 0, unit_class = 8, flags_extra = 0 where entry = 52119;

replace into creature_template values 
(89020, 18625, 0, 0, 0, 'Magic Broom', NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0.25, 20, 5, 0, 0, 1, 11, 11, 0, 44, 1, 2000, 2200, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, ''),
(89021, 18624, 0, 0, 0, 'White Stag', NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, 0.25, 20, 5, 0, 0, 1, 11, 11, 0, 44, 1, 2000, 2200, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, '');

delete from companion_spells where spellid = 28505;

replace into companion_spells values (81283,49503); 
replace into companion_spells values (81254,49502); 
replace into companion_spells values (81248,49501); 
replace into companion_spells values (81243,46487); 
replace into companion_spells values (81207,49500); 
replace into companion_spells values (81183,46497); 
replace into companion_spells values (46497,46496); 
replace into companion_spells values (81152,46495); 
replace into companion_spells values (22781,28505); 
replace into companion_spells values (81151,46494); 
replace into companion_spells values (81150,46493); 
replace into companion_spells values (80878,46033); 
replace into companion_spells values (70016,46492); 
replace into companion_spells values (51891,46490); 
replace into companion_spells values (51858,46491); 
replace into companion_spells values (51700,46485); 
replace into companion_spells values (51251,46479); 

-- Blood Ring PvP rewards:

replace into item_template values
 ('83420', '4', '1', 'Bloody Gladiator\'s Sash', '', '17261', '3', '0', '1', '52347', '13087', '6', '-1', '-1',
 '66', '60', '0', '0', '0', '0', '0', '1008', '5', '0', '1', '0', '5', '10', '7',
 '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '93', '0', '0',
 '0', '0', '0', '0', '9417', '1', '0', '0', '-1', '0', '-1', '18676', '1', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '30', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', null);
 replace into item_template values
 ('83421', '4', '1', 'Bloody Gladiator\'s Handwraps', '', '24977', '3', '0', '1', '30171', '7543', '10', '-1', '-1',
 '66', '60', '0', '0', '0', '0', '0', '1008', '5', '0', '1', '0', '5', '10', '7',
 '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '98', '0', '0',
 '0', '0', '0', '0', '9346', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '30', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', null);
 replace into item_template values
 ('83423', '4', '1', 'Bloody Gladiator\'s Britches', '', '11166', '3', '0', '1', '58236', '14559', '7', '-1', '-1',
 '68', '60', '0', '0', '0', '0', '0', '1008', '6', '0', '1', '0', '5', '12', '7',
 '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '134', '0', '0',
 '0', '0', '0', '0', '14248', '1', '0', '0', '-1', '0', '-1', '18676', '1', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '65', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', null);
 replace into item_template values
 ('83424', '4', '1', 'Bloody Gladiator\'s Footwraps', '', '31188', '3', '0', '1', '45274', '11318', '8', '-1', '-1',
 '68', '60', '0', '0', '0', '0', '0', '1008', '6', '0', '1', '0', '5', '10', '7',
 '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '116', '0', '0',
 '0', '0', '0', '0', '9346', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', null);
 replace into item_template values
 ('83425', '4', '1', 'Bloody Gladiator\'s Wraps', '', '16892', '3', '0', '1', '32341', '8085', '9', '-1', '-1',
 '68', '60', '0', '0', '0', '0', '0', '1008', '6', '0', '1', '0', '5', '10', '7',
 '11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '82', '0', '0',
 '0', '0', '0', '0', '9416', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '30', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', null); 
 replace into item_template values
 ('83426',  '4', '1', 'Bloody Gladiator\'s Vestments', '', '18347', '4', '0', '1', '68972', '17243', '5', '-1', '-1',
 '66', '60', '0', '0', '0', '0', '0', '1008', '7', '0', '1', '0', '5', '12', '7',
 '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '152', '0', '0',
 '0', '0', '0', '0', '23727', '1', '0', '0', '-1', '0', '-1', '18384', '1', '0', '0', '-1', '0', '-1', '14127',
 '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '100', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', null);
 replace into item_template values
 ('83427',  '4', '1', 'Bloody Gladiator\'s Amice', '', '13677', '4', '0', '1', '66624', '16656', '3', '-1', '-1',
 '66', '60', '0', '0', '0', '0', '0', '1008', '7', '0', '1', '0', '5', '13', '7',
 '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '136', '0', '0',
 '0', '0', '0', '0', '9345', '1', '0', '0', '-1', '0', '-1', '18379', '1', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', null);
 replace into item_template values
 ('83428',  '4', '1', 'Bloody Gladiator\'s Circlet', '', '26033', '4', '0', '1', '58126', '14531', '1', '-1', '-1',
 '66', '60', '0', '0', '0', '0', '0', '1008', '7', '0', '1', '0', '5', '24', '7',
 '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '133', '0', '0',
 '0', '0', '0', '0', '18384', '0', '0', '0', '-1', '0', '-1', '15714', '1', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', null);
 -- Leather Set
 replace into item_template values
 ('83429',  '4', '2', 'Bloody Gladiator\'s Belt', '', '14492', '3', '0', '1', '52264', '13066', '6', '-1', '-1',
 '66', '60', '0', '0', '0', '0', '0', '1008', '5', '0', '1', '0', '3', '14', '4',
 '12', '7', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '143', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '35', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', null);
 replace into item_template values
 ('83430', '4', '2', 'Bloody Gladiator\'s Gloves', '', '17070', '3', '0', '1', '30252', '7563', '10', '-1', '-1',
 '66', '60', '0', '0', '0', '0', '0', '1008', '5', '0', '1', '0', '3', '10', '4',
 '10', '7', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '155', '0', '0',
 '0', '0', '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '35', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', null);
 replace into item_template values
 ('83431', '4', '2', 'Bloody Gladiator\'s Pants', '', '27843', '3', '0', '1', '57920', '14480', '7', '-1', '-1',
 '68', '60', '0', '0', '0', '0', '0', '1008', '6', '0', '1', '0', '3', '14', '4',
 '12', '7', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '215', '0', '0',
 '0', '0', '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '75', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', null);
 replace into item_template values
 ('83432', '4', '2', 'Bloody Gladiator\'s Boots', '', '16995', '3', '0', '1', '48056', '12014', '8', '-1', '-1',
 '68', '60', '0', '0', '0', '0', '0', '1008', '6', '0', '1', '0', '3', '12', '4',
 '10', '7', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '179', '0', '0',
 '0', '0', '0', '0', '17746', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '50', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', null);
 replace into item_template values
 ('83433', '4', '2', 'Bloody Gladiator\'s Bands', '', '17019', '3', '0', '1', '27522', '6910', '9', '-1', '-1',
 '68', '60', '0', '0', '0', '0', '0', '1008', '6', '0', '1', '0', '3', '9', '4',
 '9', '7', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '122', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '35', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', null);
 replace into item_template values
 ('83434',  '4', '2', 'Bloody Gladiator\'s Tunic', '', '28018', '4', '0', '1', '68972', '17243', '5', '-1', '-1',
 '68', '60', '0', '0', '0', '0', '0', '1008', '7', '0', '1', '0', '3', '10', '4',
 '10', '7', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '246', '0', '0',
 '0', '0', '0', '0', '7598', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '100', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', null);
 replace into item_template values
 ('83435', '4', '2', 'Bloody Gladiator\'s Shoulders', '', '27652', '4', '0', '1', '66544', '16636', '3', '-1', '-1',
 '68', '60', '0', '0', '0', '0', '0', '1008', '7', '0', '1', '0', '3', '14', '4',
 '14', '7', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '208', '0', '0',
 '0', '0', '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '70', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', null);
 replace into item_template values
 ('83436',  '4', '2', 'Bloody Gladiator\'s Headband', '', '25729', '4', '0', '1', '58348', '14587', '1', '-1', '-1',
 '68', '60', '0', '0', '0', '0', '0', '1008', '7', '0', '1', '0', '3', '14', '4',
 '16', '7', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '219', '0', '0',
 '0', '0', '0', '0', '13670', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0',
 '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1',
 '0', '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '70', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', null);
  
replace into npc_vendor values
(40049, 83420, 0, 0, 0, 0),
(40049, 83421, 0, 0, 0, 0),
(40049, 83422, 0, 0, 0, 0),
(40049, 83423, 0, 0, 0, 0),
(40049, 83424, 0, 0, 0, 0),
(40049, 83425, 0, 0, 0, 0),
(40049, 83426, 0, 0, 0, 0),
(40049, 83427, 0, 0, 0, 0),
(40049, 83428, 0, 0, 0, 0),
(40049, 83429, 0, 0, 0, 0),
(40049, 83430, 0, 0, 0, 0),
(40049, 83431, 0, 0, 0, 0),
(40049, 83432, 0, 0, 0, 0),
(40049, 83433, 0, 0, 0, 0),
(40049, 83434, 0, 0, 0, 0),
(40049, 83435, 0, 0, 0, 0),
(40049, 83436, 0, 0, 0, 0);

replace into item_template values
 ('70049', '2', '18', 'Worn Crossbow', '', '10671', '1', '0', '1', '4', '1', '26', '-1', '-1', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3000', '100',
 '2', '3', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

update playercreateinfo_item set itemid = 70049 where class = 3 and race = 5 and itemid = 2504;
update playercreateinfo_spell set spell = 5011 where class = 3 and race = 5 and spell = 264;

update playercreateinfo_item set itemid = 49 where class = 3 and race = 5 and itemid = 127; -- Shirt
update playercreateinfo_item set itemid = 48 where class = 3 and race = 5 and itemid = 6126; -- Pants
update playercreateinfo_item set itemid = 48 where class = 3 and race = 5 and itemid = 6131; -- Pants

update creature_template set npc_flags = 3 where entry = 52030;