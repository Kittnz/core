update creature_template set display_id1 = 3845 where entry = 92201;
update creature_template set display_id1 = 4010 where entry = 60488;
update creature_template set display_id1 = 2613 where entry = 91982;
update creature_template set subname = '' where entry = 60497;
update creature_template set npc_flags = 16391 + 2 where entry = 4556;
update creature_template set npc_flags = 135 + 2 where entry = 6739;
update gameobject set spawntimesecsmin = 120, spawntimesecsmax = 120 where id = 2010816;
delete from playercreateinfo_spell where class = 3 and race = 5 and spell = 26290;

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

