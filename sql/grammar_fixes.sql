-- The Azshara Dampening
SET @quest_entry = 40122;
UPDATE quest_template
SET details = 'I received word from a colleague within Azshara quite some time ago about a powerful energy that is dampening magic within the region. If such a threat could pose itself close to Dalaran then much of our spells, magic, and protections would be nullified.\n\nI would like you to travel there, assess if this will be a threat to Dalaran itself, and to see if action is needed to be done. You can find Magus Bromley located just south of the Ruins of Eldarath camped upon the ridgeline, seek him out, and get answers.', -- recieved -> received
	offerrewardtext = 'Ahh, so Ansirem sent you, good. I forwarded a letter to him quite a while ago and it seems that this magical interference has grown ever more potent.' -- Broke up long sentence into two
WHERE entry = @quest_entry;

-- The Dampening Mystery
SET @quest_entry = 40123;
UPDATE quest_template
SET details = 'My studies have been ongoing for the last few months, and from what I can tell the energy within the region has been slowly fading away. Even my own magic hasn\'t been as potent! If whatever is causing this is able to harness even more power, this could be quite damaging for magic across the entire continent, and potentially even Dalaran in the future!\n\nI have a few leads that I want to look into, and the first is the ley-shards that occupy the once great city of Eldarath. Just north of us are the ruins of the once mighty city. Travel there and look for shards of its ley-energy. Gather five, and bring them to me for study, to see if their power is waned.', -- Broke up long sentence, inserted comma
	objectives = 'Gather 5 Eldarath Ley-Shards and bring them to Magus Bromley.', -- Removed apostrophe from plural
	requestitemstext = 'Have you gathered the Ley-Shards yet?', -- Removed apostrophe from plural
	offerrewardtext = 'Splendid! Magnificent, in fact! I shall begin my testing at once.' -- Broke up exclamation and inserted comma
WHERE entry = @quest_entry;

-- Interfering Naga
SET @quest_entry = 40124;
UPDATE quest_template
SET details = 'Even the ley-shards of the city of Eldarath have their energies compromised. This could be the work of the Naga that have encroached and invaded from the ocean depths. I would not put it past the beasts, as savage as they are, for attempting to claim dominion over the landscape.\n\nWe must look into this matter further before claiming we have gotten this solved. I have prepared a scroll of dispelling, use it upon the Spitelash Shrine they have in their clutches. If they are behind this dampening, this should solve the problem. While you\'re there, slay their sirens as well, they are the ones who wield a crude and foul magic.', -- Removed apostrophe from plural, lowered ley-shards in details to be consistent with previous quests, added "they have" to their clutches, removed unnecessary comma
	objectives = 'Slay 15 Spitelash Sirens and dispel the magic at the Spitelash Shrine.', -- Removed apostrophe from plural, removed extra "l" from dispel
	offerrewardtext = 'It has been done? You have dispelled the shrine? Let us see just how much of an effect this has had on our magics. Let us hope this is done, once and for all.' -- Broke up long sentence
WHERE entry = @quest_entry;

-- Out of Options
SET @quest_entry = 40125;
UPDATE quest_template
SET details = 'It would appear that I have run out of ideas about what may be causing this. I hate to admit intellectual defeat, but I must turn to another for an answer. Archmage Ansirem Runeweaver is well versed in more than I know. I need you to travel to him with a crate of the ley-shards you gathered earlier.\n\nIf there is any clue, or magic that lingers upon them, perhaps he will have some answers for them, and know their origination to help me here in Azshara. Please, take these coins for the journey, Dalaran is but far away, and I will assist in what way I can.', -- would appear -> would appear that, ideas in -> ideas about, more then -> more than, broke up long sentence, ley-shard's -> ley-shards, lowered Ley-Shard to ley-shard in details to be in line with previous quests, is any clues -> is any clue
	objectives = 'Travel to Dalaran and deliver the Crate of Ley-Shards to Archmage Ansirem Runeweaver.', -- removed unnecessary comma, Ley-Shard's -> Ley-Shards
	offerrewardtext = 'Magus Bromley sent you? Well, it is good to hear from him. If he desires these shards to be examined, I will begin at once.' --  Removed "at the least", broke up long sentence, shard's -> shards, added comma for better flow of sentence
WHERE entry = @quest_entry;

-- Discovering the Source
SET @quest_entry = 40126;
UPDATE quest_template
SET details = '<The Archmage takes his time to study the magic>.\n\nHmm, I can hardly believe this, why would they... <Ansirem mumbles quietly to himself>.\n\n$N, what we are dealing with is much more serious than I had originally thought. The magic remnants upon the ley-shards are of draconic origin. What the Dragonflights would want, or need from dampening magic in Azshara is a great mystery, but at the least we now have a source.\n\nI have prepared this letter for Bromley. Take it to him, and let him know that the Blue Dragonflight is responsible.', -- Rephrased first sentence for better flow, more serious then -> more serious than, Ley-Shard's -> ley-shards for consistency and removed apostrophe from plural, are that of a draconic -> are of draconic, added comma for better flow of sentence, broke up long sentence
	requestitemstext = 'So, you return. What did Ansirem say about the Ley-Shards?' -- Broke up sentence for better flow, removed apostrophe from plural
WHERE entry = @quest_entry;

-- The Dampening Must End
SET @quest_entry = 40127;
UPDATE quest_template
SET details = 'It seems as though there is only one thing left. I cannot believe the Blue Dragonflight would be responsible for such a thing, if their enemy is magic then that means their enemy is Dalaran. We cannot allow their plans to succeed, and must deal with them now and with due haste in our actions.\n\nJust south of here is Lake Mennar, it is where the Blue Dragonflight has gathered. The cause of which was unknown until now. Head there, slay their Magelords and kill the leader, Lieutenant Azsalus.\n\nThe Blue Dragonflight is not a foe to be under-estimated. I would advise you find a band of mercenaries or like-minded heroes. You will need them to battle with the dragonkin, or at least to stand a chance.', -- take fruition -> succeed (the more correct "to be brought to fruition" reads awkwardly), added comma for better flow, another comma for grammar, broke up sentence, removed one unnecessary comma, rephrased "find a band of mercenaries" sentence, added "at least" to the last sentence
	objectives = 'Slay 3 Draconic Magelords and kill Lieutenant Azsalus.', -- Removed apostrophe from plural, Kill -> kill
	requestitemstext = 'Have you ended the dampening that lies upon Azshara?', -- the dampening upon Azshara -> the dampening that lies upon Azshara
	offerrewardtext = 'It is done? Truly?\n\nYou have my thanks hero, your name shall go down in the annals of Dalaran history. A defender of magic is truly one that stands for virtue. Please, take one of these artifacts, it is the least I can offer. May it serve you well.' -- go down with glory in Dalaran -> go down in the annals of Dalaran history, broke up two sentences for better flow
WHERE entry = @quest_entry;

-- Appealing to the Alliance
UPDATE quest_template
SET title = 'Appealing to the Alliance',
	details = 'Greetings, $N. I am Ranger-General Damilara Sunsorrow of the Alah\'thalas council.\n\nI\'ve heard of you and your efforts. You have my thanks. There\'s a sensitive matter to be discussed. But first, these missives must be delivered to the Alliance.\n\nAlah\'thalas is growing into a proper settlement, and we would like to formally join the Alliance. We will need the support of all the members of the Alliance to make this happen.\n\nPlease take these sealed missives to Sir Bolvar Fordragon, King Magni Bronzebeard, High Tinker Gelbin Mekkatorque, and Priestess Tyrande Whisperwind.\n\nOnce you receive their replies return to me.',
	objectives = 'Take the sealed missives to all four Alliance leaders.',
	requestitemstext = 'Did you get their replies?',
	offerrewardtext = 'It is as I feared... The night elves continue to hold their ancient grudge. Worry not, I had expected this.\n\nBut now that we have formal replies we can work on earning their trust.\n\nI hope I can count on you later. Keep helping us and I will enlist your aid when I can.'
WHERE entry = 80750;

-- The Kaldorei Problem
UPDATE quest_template
SET title = 'The Kaldorei Problem',
	details = 'You have done well. I believe it is time you meet with the true leader of the Silvermoon Remnant. Due to our fragile state and the threats we\'ve faced, she let me act as the public leader of our people, yet it is she who has brought us together. Proceed to the very summit of the Citadel, you will find her there donning our tabard. She requires your help with a plan to earn an audience with the Kaldorei.',
	objectives = 'Ascend the summit of the Citadel of the Sun and speak to the leader of the Silvermoon Remnant.',
	requestitemstext = 'Ah you must be $n.',
	offerrewardtext = 'My name is Vereesa Windrunner... Yes, sister to the lost Hero Alleria, and to what...Sylvanas has become. Thank you for coming to me $n, I believe it is time to set our plan in motion.'
WHERE entry = 40049;

-- Breaking the Felstar
UPDATE quest_template
SET title = 'Breaking the Felstar',
	details = 'I am aware of your approach to the Alliance members. I knew from the start that it would be difficult to earn the trust of the Kaldorei. A long time ago they welcomed us into their home as kin provided we abandon magic. For two millenia we lived as one until our ancestors\' addiction grew out of control. To spite the Kaldorei they unleashed a terrible magical storm over Ashenvale. It is then fitting that it is Ashenvale we shall save. A powerful Satyr leading a band of demons is preparing an incursion into Ashenvale from Felwood. Several of our best Rangers have risked their lives to retrieve this information. They await you at the border to Felwood north of Raynewood\'s Retreat where the fiend has summoned a Felstone. Meet up at the border to Ashenvale and help them stop this incursion, take the Satyr\'s horns as proof. Once that is done, speak to Ashylah Starcaller in Darnassus, she is an ally to our cause.',
	objectives = 'Rendezvous with the Rangers and defeat the Satyr threat to Ashenvale. Take the Satyr horns to Ashylah Starcaller in Darnassus.',
	requestitemstext = 'Ah $r what can I do for you?.',
	offerrewardtext = 'You have defeated Dra\'lox Felstar? After ten thousand years... It seems I was right to trust the Quel\'dorei. I will explain anon.'
WHERE entry = 40050;

-- Razlik's Tools
UPDATE quest_template
SET title = 'Razlik\'s Tools',
    details = 'Hey, you! Yeah, you!\n\nI got a problem that I need fixing and I\'ll tell ya, it\'s not sitting around waiting to work again by itself, that\'s for sure!\n\nWe\'re living paradise right now, but, you know how goblins work, eventually we\'ll be back on that oil platform, one way or another.\n\nThing is, I got a set of tools up there, from way back in the Venture Co. days. I\'m used to em, see, and the last thing I want is some sea sucker knocking em off into the water to be lost forever.\n\nGo up there, find my tools, and get a few silver, whaddya say, kid?',
    objectives = 'Find Razlik\'s lost tools on the Oil Platform east of the Port.',
    requestitemstext = 'You got em yet? Or you just waitin\' around?',
    offerrewardtext = 'About time, I was gettin\' scared, thought I might\'a lost em!\n\nThey are a bit more dirty than I remember though, for muckin\' up my tools yer gonna get a silver less, no hard feelings!'
WHERE entry = 55000;

-- The Oil Stops Flowing
UPDATE quest_template
SET title = 'The Oil Stops Flowing',
    details = 'Damned, blasted, stupid, good for NOTHING. Isn\'t this just great? It\'s one thing after another with that oil platform, and I\'m a week behind schedule!\n\nIf you don\'t call havin\' two workers get sucked into the ocean and your oil platform over-run by lobsters a nightmare, then I don\'t know where you\'re from pal!\n\nThe oil needs to keep flowing, and if the boss finds out that this has gone on, he\'ll have my head!\n\nMaybe I could blame this on someone, but first things first, get on over there and clear some of those blasted creatures so we can kick that baby into overdrive and start catching up on all the lost work!',
    objectives = 'Kill 5 Makrura Oilclaws and 5 Makrura Threshers at the oil platform east of the Port.',
    requestitemstext = 'You get rid of them yet? Time\'s tickin\' here and I need that platform up and running!',
    offerrewardtext = 'Finally, I was devising a plan but all I could come up with was a flame thrower and a bomb. Big no-nos if ya know anything about oil safety!\n\nIt might not be ALL of em, but a few less of the seafood is good enough for me!'
WHERE entry = 55001;

-- Supplies to the Port!
UPDATE quest_template
SET title = 'Supplies to the Port!',
    details = 'Supplies, supplies, supplies. It\'s all they ever want, those goblins!\n\nI send them four saw blades and the next thing I know they need six! I send them tin, and then they need iron.\n\nYou would swear they went through more materials then the Horde Warmachine!\n\nI\'ve got this shipment to run down, but I\'ve got so much other work, if you could be of assistance it would be much appreciated, $r.\n\nThe Goblins have set up a new town up to the north east along the coast, you can\'t miss it. Just follow the smell of the smoke.',
    objectives = 'Deliver the Sealed Trade Goods to the nearby Port Town of Sparkwater to the north-east of Razor Hill.',
    requestitemstext = 'What, was there anything that I could help with?',
    offerrewardtext = 'Yes? Can I help you? I\'m very busy, ya see! Oh, supplies from Razor Hill?\n\nIt\'s about time, we\'re going through material here faster then a kodo with a hole shot through em...\n\nOnly four saw blades?! Oh well, it\'ll do. Now scram!'
WHERE entry = 55002;

-- A New Power Source
UPDATE quest_template
SET title = 'A New Power Source',
    details = 'As a technician, it\'s our job to keep everythin\' runnin\' ya see? Well, we\'ve run into a small problem, and by a small problem, I mean a big problem!\n\nThe Oil from the platform isn\'t coming in and we\'re barely making due with what we got! That and we\'re gonna run outta barrels of the juice soon.\n\nBut, I got an idea anyway. There\'s a place not far from here to the west called Thunder Ridge, and it\'s got that name for a reason.\n\nThe beasts there pack one HELL of a punch! Get me six of their energized scales, so I can tinker with them as a power source. Now, they\'re not gonna be givin\' you their scales, so use some force!',
    objectives = 'Gather six Energized Scales from Lightning Hides and Thunder Lizards at Thunder Ridge to the west.',
    requestitemstext = 'Find those lizards yet? I said they were at Thunder Ridge!',
    offerrewardtext = '<The goblin quickly tinkers with the acquired scales>\n\nThe energy in these babies is off the chart! My hunches were correct, maybe this will work!\n\nOh, my chances of gettin\' promoted to Head Technician just went up, about fifteen percent for sure!'
WHERE entry = 55003;

-- Adding a Little Sting
UPDATE quest_template
SET title = 'Adding a Little Sting',
    details = 'Hail, it is in times of peace that the body is set to engage within past-times of enjoyment. One such enjoyment for these goblins is that of eating, and eat they do, $r.\n\nAs much as they eat, I am still competing with the others around me, and I\'m hoping to set myself apart.\n\nI have been wanting to experiment with new recipes from around the Barrens, and while I may never get tired of roasted boar meat, there is more I can do to make my food even more alluring.\n\nAll around Sparkwater Port there are Scorpids and Boars. Gather Chunks of Boar Meat and Scorpid Stingers from around the area and I will reward you for the effort.',
    objectives = 'Collect 5 Chunk of Boar Meat and 5 Scorpid Stinger.',
    requestitemstext = 'Have you gathered everything I need yet?',
    offerrewardtext = '<Hargosh takes his time preparing the food, and begins to cook with an utmost determination. The aroma and smell starts as something horrific, but begins to turn pleasant as the fire cooks. Soon enough, the orc takes a bite from his creation.>\n\nMmn... Yes... Hah! This will do just the trick. The kick is strong in this, just like an orcish axe! You\'ve done me a service, here.'
WHERE entry = 55004;

-- Prototype Thievery
UPDATE quest_template
SET title = 'Prototype Thievery',
    details = 'Sneed and I used to be close friends and colleagues back in Kezan, he was a great assistant. But it seems he wasn\'t satisfied with the silver I paid him, and he snatched MY prototype shredder schematic and ran off one night!\n\nNow that we\'re finally settling up here I had time to call in a few favors on where he ended up. He apparently got contracted by some "Edwin" guy and that\'s where the trail ran cold.\n\nTime is money, and his time ran out, find him and get back my plans, make him pay for doublecrossing me.',
    objectives = 'Bring the Prototype Shredder X0-1 Schematic to Wrix Ozzlenut.',
    requestitemstext = 'Any luck finding him?',
    offerrewardtext = 'Nice job. He actually built the shredder, you say?\n\nGuess he was always smarter than he looked. I almost gave up on you and was about to put up a bounty. You can have the bounty reward instead.'
WHERE entry = 55005;

-- Backup Capacitor
UPDATE quest_template
SET title = 'Backup Capacitor',
    details = 'That was almost a disaster. We ran out of oil and almost used all of the power from the thunder lizard scales. What do you mean just work without power?\n\nPal, most things here don\'t have a failsafe when the tap runs dry. Some things don\'t even have an off button!\n\nThis town is a ticking timebomb. It\'ll blow up sky high if the oil platform is destroyed or overrun again, and I plan to have a backup plan.\n\nYou see, I\'ve heard some whispers that the gnomes invented some sort of capacitor that can power entire rigs for hours without end in an emergency, though I also heard Gnomeregan blew up and got radiated, and the capacitor went missing after that. That explains why nobody got their grubby hands on it yet.\n\nVenture there and see if you have any luck finding it, maybe bring your friends too, who knows what lurks down there.',
    objectives = 'Bring the Megaflux Capacitor to Technician Grimzlow.',
    requestitemstext = 'Time is ticking, and there\'s no telling when disaster might strike.',
    offerrewardtext = 'Some green gnome was using it to power a giant robot? What a waste!\n\n<Grimzlow takes the capacitor and inserts it to the machine behind him.>\n\nThere, this should work well enough. If it doesn\'t explode, that is. Thanks for the hussle by the way. Feel free to take one of these prototypes as reward, and don\'t stick your fingers into any turning pieces if you want to keep them.'
WHERE entry = 55006;

-- Searching for New Methods
UPDATE quest_template
SET title = 'Searching for New Methods',
    details = 'The technicians of Sparkwater are always looking for more methods to optimize and make use of energy sources across Azeroth. We have quite a few people out on the field doing just that!\n\nI got a guy that\'s located in Azshara that I\'d like you to check on. He last was located within Valormok.\n\nJust make sure he\'s doing what I paid him to do. The last thing a goblin likes is wasted gold and wasted potential!',
    objectives = 'Find Gazztoggle Krewpipe in the camp of Valormok in Azshara.',
    requestitemstext = 'Have you found him yet?',
    offerrewardtext = 'Look at all this barren nothingness in Azshara!\n\nWhat do you mean theres stuff all around us? I meant as in nobody is doing any work here, all this wasted potential. Such a shame that I\'m here doing this rather than setting up factories all over, heh.'
WHERE entry = 55007;

-- Frix's Folly
UPDATE quest_template
SET title = 'Frix\'s Folly',
    details = 'Oh, that\'s why you\'re here, yeah...\n\nI\'ve been knee deep in research and tinkering to try and find new methods of power and energy for Sparkwater.\n\nI\'ve ran into a few hiccups, mostly with Frix. He\'s been gone for a few days now and I haven\'t heard anything from him. Worst of all, I sent the guy with the only working Surveying Gear that we had!\n\nLast thing I knew was that he went south-west to the nearby elvish ruins to go take some surveys and readings around the Satyrs in the area. He\'s probably gotten himself killed, or worse, captured!\n\nPlease go find him. If you indeed find his corpse, keep an eye out for the Surveying Gear I sent with him!',
    objectives = 'Find Frix to the south-west by the elvish ruins.',
    requestitemstext = 'You find that lout yet?',
    offerrewardtext = 'This dead goblin seems to fit the description of a goblin being dead in elvish ruins. He is covered in marks of struggle, bruises, and puncture wounds.\n\nYou begin your search for the Surveying Gear amongst the scattered bones and blood.'
WHERE entry = 55008;

-- Empty Handed
UPDATE quest_template
SET title = 'Empty Handed',
    details = 'Upon searching the corpse of Frix Tallycog and the surrounding area, you find no sign of the Surveying Gear that you were meant to retrieve. You should report your findings to Gazztoggle Krewpipe.',
    objectives = 'Return to Gazztoggle Krewpipe in Valormok with the bad news.',
    requestitemstext = 'Hmm?',
    offerrewardtext = 'Ahh, just as I suspected, dead... Wait, he lost it?!\n\nDamn you Frix, you blasted, good for nothing, worthless...'
WHERE entry = 55009;

-- Grabbing the Gear
UPDATE quest_template
SET title = 'Grabbing the Gear',
    details = '...Gah! We can\'t waste our time cursing the dumb lout... we have to get this fixed before the higher-ups in Sparkwater find out that I\'ve put the important equipment in his hands.\n\nI\'m willing to bet the Survey Equipment is still around where he died. The Satyrs probably pried it from his hands and are still trying to figure out what the complex goblin machinery is, and I doubt they ever will.\n\nGo back there and dispatch them until you find my Goblin Surveying Gear!',
    objectives = 'Travel to Haldarr Encampment and retrieve the Goblin Surveying Gear.',
    requestitemstext = 'Have you found the Surveying Gear yet?',
    offerrewardtext = 'Did you find it? Oh...\n\nDamn I was getting ready to pack it up and start heading into exile, you really saved my hide here kid, and BIG time. Here, this is Frix\'s necklace. He gave it to me before he headed out, aparently the metal messed with the survey gear. It\'s probably coated in bad luck, last thing I want is to keep it.'
WHERE entry = 55010;

-- Employing the Cabal
UPDATE quest_template
SET title = 'Employing the Cabal',
    details = 'Not good pal, not good at all! And here I thought we\'d be safe and sound under the Horde\'s banner.\n\nThere\'s rumors coming from the Undermine that Razdunk found out our location and might come knocking on our doors! Times are desperate enough for me to seek him...\n\nThere\'s a crazy old goblin hiding somewhere in the Barrens. Knowing him and his folk, they definitely have a barrier over the blasted thing or I don\'t know whatever mages do to protect a place they own.\n\nThere\'s a slim chance you might find him in the north, when you follow the road to Ashenvale.\n\nGive him this piece of paper and this sack of coins. I hate having to pay someone before they do something for me but this is a special case! I really hope you can find him, we definitely could use his help.',
    objectives = 'Find Grimm Onearm in the Barrens.',
    requestitemstext = 'Hey, hey, move along bub, nothing to see here!',
    offerrewardtext = 'Toss me in a dirty sack and cover me in oil! Here I thought everyone forgot about ol\' Grimm, Blastentom is running with the Horde now huh?'
WHERE entry = 55011;

-- Short Five Minute Adventure
UPDATE quest_template
SET title = 'Short Five Minute Adventure',
    details = 'As you can see, my stupid shredder broke and I miss the parts to fix it! I also lost my wal... means of communication with my people back home!\n\nSo, I gotta ask you to do a quick errand for me, yea?\n\nShould be easy enough. This new place, where Nert said him and the others settled in, should have everything you need.\n\nOh come on, don\'t stare at me like that, YOU need my help more than I need yours, so travelling back there shouldn\'t be too much to ask.\n\nDon\'t worry, I can wait. Just get me some oil flasks, copper tubes and arcane dust, and I will work the rest of the magic.',
    objectives = 'Gather the required items from Sparkwater Port.',
    requestitemstext = 'Look at you go!',
    offerrewardtext = 'Ah there, there. You got all the stuff I needed and you came back quick enough not to be a disappointment.'
WHERE entry = 55012;

-- Shaking a Cold Arm
UPDATE quest_template
SET title = 'Shaking a Cold Arm',
    details = 'With my Shredder fixed I can get back home and grab one of my dearest assistants to come aid the cause back in Sparkwater. Let Blastentom know I am coming, he better get a place for me to sleep ready and some good looking goblin babes. \n\nIt\'s gonna be fun to work on some new projects, yeah, especially if it’s all against that ugly toad Razdunk, bleh.\n\nOh and do remind him, while I will be helping him, I don\'t owe anything to those Horde bastards!',
    objectives = ' Report back to Nert Blastentom in Sparkwater Port.',
    requestitemstext = 'So, how did it go?',
    offerrewardtext = 'Not only did you find him but he\'s willing to come help? Great, I should start searching through my pockets.\n\nHe\'s a gold sink! But the stuff that maniac creates is totally worth it.'
WHERE entry = 55013;

-- The Ethereal Project
UPDATE quest_template
SET title = 'The Ethereal Project',
    details = 'Me and Frix had spent quite a bit of our time researching power sources out here in Azshara. and there is some stuff that seemed to pose quite lucrative ventures.\n\nTo the south-west is more ruins, haunted and seemingly guarded by the passed ghosts of Highborne.\n\nI believe these spirits could very well be used as a source of power. You see, their essence is extremely potent. The only problem is, well, to get it from them.\n\nHead there and gather me the ghosts\' essences, and don\'t worry about being moral, they\'ll pass on to whatever fate awaits them!\n\n<Gazztoggle smirks to himself.>',
    objectives = 'Head Southwest and gather 8 Intense Ethereal Essences from Highborne Apparitions and Highborne Lichlings.',
    requestitemstext = 'Get to gathering that ghost dust, pal!',
    offerrewardtext = 'Finally got it huh? Here, let\'s try and see if we can get some energy off this thing.\n\n<Gazztoggle quickly begins his task, soon producing many small objects and devices. He takes quite a healthy amount of the powder and places it within one machine after the other. After a few minutes of trying, he seems to give up using the Essence.>\n\nDamn! Looks like this isn\'t actually viable. I\'d best come up with something else.'
WHERE entry = 55014;

-- The Eldarath Project
UPDATE quest_template
SET title = 'The Eldarath Project',
    details = 'There\'s always new projects popping up, and subsequently turning up worthless!\n\nIt seems this region is cursed, or I am, anyway, with my horrid luck.\n\nFrix is haunting me from the grave, but still, there are a few of our projects that I\'d like to see through.\n\nTo the east lays the ancient Highborne city of Eldarath. Now you won\'t find any friendly elves, but instead twisted versions of them...\n\nNaga occupy almost the entirety of the ruins, it\'s mostly why me and Frix never bothered with pushing this project forward.\n\nNow with you around though, we can finally test it out! Go to the Ruins of Eldarath to the east. Once there, look for small shards of energy known as Eldarath Ley-Shards.',
    objectives = 'Venture to the Ruins of Eldarath and find 5 Eldarath Ley-Shards.',
    requestitemstext = 'What, are the Naga being too much trouble?',
    offerrewardtext = 'Glad you came back in one piece. Now, did you get those shards?!\n\n<The goblin greedily takes the ley-shards and begins to tinker with them. It is not long before the unstable shards crackle and fizzle, beginning to turn to dust.>\n\nDamned! These crystals are worthless, junk even, too unstable and not even in the good way...\n\nI\'m really going to have to use my noggin here.'
WHERE entry = 55015;

-- The Skystormer Project
UPDATE quest_template
SET title = 'The Skystormer Project',
    details = 'Azshara seems hopeless, but for all that\'s failed and everything I\'ve tried out here I still have a few more things left to try.\n\nWithin the region there is a species of hippogryph known as Thunderheads. They can be found all over the area but I\'m looking for the ones with the real power to get the best results!\n\nFar to the north-east near the very edges of the Azshara plateau are Thunderhead Skystormers. Now they\'re really the kingpins of the Thunderheads. Grab me 3 Skystormer Antlers, that\'s where they gotta hold their power.\n\nBring em to me so we can test if they hold any ability for energy.',
    objectives = 'Slay Thunderhead Skystormers for Skystormer Antlers far to the north-east of Azshara.',
    requestitemstext = 'What? Getting bored of searching for them?',
    offerrewardtext = 'Ahh, took you long enough! Had trouble finding the blasted things? Oh well, gimme!\n\n<Gazztoggle takes the Antlers from you, quickly moving to test their power.>\n\nYes! Finally something! Who would have guessed this would be worth our time...\n\nThanks again, $N, for all you\'ve done.'
WHERE entry = 55016;

-- Report to Sparkwater!
UPDATE quest_template
SET title = 'Report to Sparkwater!',
    details = 'Ahh... It feels good finally having something to report. No doubt Grimzlow is pretty angry, given how long it took me to get back to him!\n\nThe higher-ups in Sparkwater are going to need a report, run it up to them while I continue my work here!\n\nYou\'re going to buy me some time to keep my work up, and keep getting paid!\n\nMaybe I\'ll even get a new assistant that isn\'t as bad as Frix, bless his soul.',
    objectives = 'Take Gazztoggle\'s Report to Grimzlow.',
    requestitemstext = 'He\'s in Sparkwater!',
    offerrewardtext = 'Oh, didn\'t I send you to Azshara?\n\nDon\'t tell me you\'ve been in the tavern this entire time!\n\nThis is from Gazztoggle, I figured he had run with Sparkwater\'s money, I was getting ready to call up my people to go and give him a REAL visit.\n\nHe seems to have found some promising results at least.'
WHERE entry = 55017;

-- The Big Energy Project
UPDATE quest_template
SET title = 'The Big Energy Project',
    details = 'I have one final project that I am calling The Big Energy Project, it has to do with the gathering of the Blue Dragonflight that has cropped up a while ago around the Lake Mennar to the south-east.\n\nIt\'s not often that dragons get involved with much, but from what I\'ve learned, these blue dragons love their magic!\n\nIf I can get my hand on some dragonkin\'s staff, just think of the possibilities!\n\nThe orcs in Valormok have been talking a little about their presence and a new Lieutenant posted there. It\'s a good thing my long ears were able to hear the little details! Go find this Lieutenant and take his staff, he has to have one! Now, gather up a group of friends, or fellow adventurers, this is gonna be a big operation, not just something you can do alone.',
    objectives = 'Go to Lake Mennar to the south-east and retrieve the Staff of Azsalus from the Lieutenant there.',
    requestitemstext = 'What? We\'re on the brink of greatness here, you gotta get that staff.',
    offerrewardtext = 'Wait... You actually pulled it off?\n\nI can\'t believe you managed to interfere with the Dragonkin in such a way! Haha!\n\nWith this staff I could power Sparkwater for weeks, maybe even set up my own shop here...\n\nOh, take this!'
WHERE entry = 55018;

-- Missing Blood
UPDATE quest_template
SET title = 'Missing Blood',
    details = 'My brother has recently been dispatched out to the far reaches of our strength and posted within the encampment of Stonard.\n\nIt\'s not for me to question the Warchief\'s desires but I still do worry for my bother\'s safety out there, even if he is strong and good of health.\n\nIt has been months since we have last seen one another with all of the deployments, from one to the next, and now the Swamp of Sorrows of all places?\n\nThe only thing that has me at peace is that he had been promoted to a position of some power within the garrison there.\n\nIt\'s good knowing that maybe he is not on the very frontlines and is instead commanding his men.\n\nIt\'s an odd thing to watch a younger brother become more important then you but, well, duty calls and we must all do our part.\n\n Please find Zuul within Stonard in the Swamp of Sorrows and deliver him this letter.',
    objectives = 'Deliver Rugnar\'s Letter to Zuul in Stonard.',
    requestitemstext = 'Why hello there, stranger, what brings you to Stonard?',
    offerrewardtext = 'You\'re looking for Zuul? Well that would be me, what\'s this?'
WHERE entry = 55019;

-- Misgotten Honor
UPDATE quest_template
SET title = 'Misgotten Honor',
    details = 'Well, this is a little embarrasing, it seems my embellishments might have gotten to the wrong hands and led before me.\n\nI\'ve always wanted to be more of a success in my brother\'s eyes, and whilst he has made a good living as a trader, I\'ve served Orgrimmar for years only to remain a Grunt.\n\n<Zuul sighs.>\n\nI suppose I should come clean, it is honor that dictates I be honest, especially with those of my own kin.\n\nLying to try and make appearances is what Alliance diplomat\'s would do, not the sons of Durotar.\n\nAs much as I desire to go and apologize in person, I cannot. I have too many tasks to do in such a short time.\n\nSpeak to my commander and let him know I desire leave to Durotar for a short time.',
    objectives = 'Speak to Dispatch Commander Ruag in the Stonard Keep.',
    requestitemstext = 'He is located within the large building in the encampment.',
    offerrewardtext = 'What is it you require from Commander Ruag? It had better be important.'
WHERE entry = 55020;

-- Beyond the Walls
UPDATE quest_template
SET title = 'Beyond the Walls',
    details = 'So, Zuul sent you? He wants to leave Stonard, that\'s it?\n\nHeh, well I\'ll make you a deal $r. Zuul has been an obedient grunt, one that listens well and does well when called upon, it\'s the only reason I\'m offering this. You do a task for me, and I\'ll give him leave for a few days.\n\nThe local wildlife has been a continuous thorn in our side. There is no other presence than the large beasts that dwell within the shadows beyond the light of our torches.\n\nI\'ve had orcs go missing and not turn up late at night, and there is no doubt in my mind that the beasts outside our walls are responsible.\n\nClear out the area outside our walls of what you find: jaguars, spiders and crocolisks. Make sure to thin their numbers.',
    objectives = 'Kill 6 Young Sawtooth Crocolisks, 8 Sorrow Spinners, and 8 Swamp Jaguars, then return to Dispatch Commander Ruag.',
    requestitemstext = 'The Swamp has earned its name, has it not?',
    offerrewardtext = 'It seems you\'ve done well, I\'ll be pleased to have fewer orcs go missing.'
WHERE entry = 55021;

-- Taking Leave
UPDATE quest_template
SET title = 'Taking Leave',
    details = 'Ahh... Fine, I\'ll put in the work to have Zuul dispatched, I cannot hold the title of Commander without honoring my word.\n\nTell Zuul that he will have three days leave to Orgrimmar, on the fourth day I will make arrangements for him to return to Stonard.\n\nAdvise him to make good use of these three days.',
    objectives = 'Speak with Grunt Zuul.',
    requestitemstext = 'Have you heard word from my brother?',
    offerrewardtext = 'Really? I didn\'t actually expect the chance to go.\n\nThis means a lot to me, it\'s the chance to correct wrongs and make rights.\n\nI realize that there should be no competition between brothers and getting this note only serves to remind me that we should be proud of who we are.'
WHERE entry = 55022;

-- Relief and Reprise
UPDATE quest_template
SET title = 'Relief and Reprise',
    details = 'There is one last thing I require from you, friend, if you could but be of help a moment longer.\n\nI still may be here for a while longer waiting for my leave. If you could take this letter from me and deliver it to my brother letting him know I will be arriving soon, it would mean quite a lot to me.\n\nThanks again, friend, Blood and Honor.',
    objectives = 'Travel to Sparkwater port and deliver Zuul\'s Note to Rugnar.',
    requestitemstext = 'He should be located in Sparkwater.',
    offerrewardtext = 'Oh, a letter?\n\n<Rugnar begins to read intently.>\n\nWell, this is unexpected news, I must offer my thanks for everything you\'ve done> The last thing I expected was a letter back so quickly. Take this, for all of the troubles.'
WHERE entry = 55023;

-- Dry Hiding
UPDATE quest_template
SET title = 'Dry Hiding',
    details = 'I\'m losing my mind down here. We\'ve been told to stay a bit under the radar for a while after the old Brightwater took a few cannonballs to the side.\n\nBeen forced to stay in refuge for a few days now and I\'m going loopy! Aaah, if only there was a way to get some booze... Wait a second, you can get booze.\n\nSince we can\'t, make a trip up to The Salty Sailor and get me the following... Ahem...\n\n5 Jugs of Bourbon\n3 Flagons of Mead\n10 Flasks of Port\n...and 10 Cherry Grogs!',
    objectives = 'Collect 5 Jugs of Bourbon, 3 Flags of Mead, 10 Flasks of Port, and 10 Cherry Grogs for Shalgrig Pipeshack and the other Brightwater Crew.',
    requestitemstext = 'Get the booze yet? We\'re dying down here!',
    offerrewardtext = 'Ahh! It\'s been a dang while since I\'ve been able to drink! You\'ve surely saved us.'
WHERE entry = 55025;

-- It All Comes Sinking Down
UPDATE quest_template
SET title = 'It All Comes Sinking Down',
    details = 'Hey watch it, pal! You\'re looking at the Captain of the Brightwater, one of the finest, and most powerful vessels ever to sail the seas... at least by the Horde\'s standard!\n\nAhh... She was a beauty, all before those damn Bloodsail Buccaneers gave us a volley on the starboard side and sank us. It wasn\'t even fair, really, a two-on-one engagement.\n\nMy crew is still stuck out in Booty Bay hiding and I\'m not sure exactly where they\'re at.\n\nI have a favor I can call in from an old pal Revilgaz, who is the baron there. Tell him I sent you, and locate my crew.',
    objectives = 'Travel to the port of Booty Bay and speak with Baron Revilgaz.',
    requestitemstext = 'Is there something that I can help you with?',
    offerrewardtext = 'Yes? Oh.... HE sent you?\n\nFool was oh so eager to offer his assistance to the Horde for coin. He underestimated the pirates in the area and got himself sank.\n\nNow he wants to call in a favor from an age past, hah. Let\'s get this over with.'
WHERE entry = 55026;

-- Employed Help
UPDATE quest_template
SET title = 'Employed Help',
    details = 'Before I give you the information I have, I want something in return. I\'ll honor that "favor" that he is calling it, but I need something done.\n\nThe Venture Co. has been causing some issues around here, mostly in taking up my trade and getting some of it for themselves. That\'s where I need you to come in and be discreet.\n\nThey\'ve been messing with some of my operations, and I want to mess with some of their own, in secrecy of course.\n\nTravel far to the north-east by Lake Nazferiti. I\'ve got it from reliable sources that they are setting up an oil platform there, kill some of the Mechanics they contracted to work on it. That should cost them a lot of time and money.',
    objectives = 'Kill 5 Venture Co. Mechanics at the Oil Platform near Lake Nazferiti.',
    requestitemstext = 'Have you thrown a wrench in their plans?',
    offerrewardtext = 'They\'ve been putting their hands on things that don\'t rightfully belong to them, it\'s time they paid the price, and a price they cannot link to me.'
WHERE entry = 55027;

-- The "Hidden" Crew
UPDATE quest_template
SET title = 'The "Hidden" Crew',
    details = 'Fine, let\'s fulfill this favor and move along. There are many more profitable and useful things we can both spend our time on.\n\nThe crew of the Brightwater has been here the entire time, and I\'ve known about it since the first night they showed up after that fireworks show of a battle.\n\nThey haven\'t exactly done the best job of disguising who or what they are. That, and my contacts are very reliable.\n\nYou\'ll find them on the lower levels of Booty Bay, where Wigcik stays.\n\nWhen you next see "Captain" Pazzle, tell him I\'ve honored his silly favor.',
    objectives = 'Find the crew of the Brightwater on the lower levels of Booty Bay.',
    requestitemstext = 'Yes?',
    offerrewardtext = 'Look bud, we don\'t got any spare copper already, so beat it.'
WHERE entry = 55028;

-- In Need of Information
UPDATE quest_template
SET title = 'In Need of Information',
    details = 'Oh the Captain sent you? Well isn\'t that a relief, it\'s been almost a week that we\'ve been sitting around here with no word.\n\nI was about to start figuring out a way to get out of Booty Bay, but it seems like the only thing keeping us safe are the Bruisers.\n\nThe Bloodsail Buccaneers have been wanting us dead ever since we sunk one of their ships in a battle. Lets just say they got lucky and ambushed us near Grom\'gol!\n\nThey want us all gone and won\'t stop until we are, it seems. \n\nThe Bloodsails are a disorganized bunch, and not centrally commanded. Each encampment or ship has their own crew and their own leader, and this group hunting us is only doing so because we killed the man\'s brother.\n\nIf anyone knows anything, it\'s Revilgaz.',
    objectives = 'Speak to Baron Revilgaz.',
    requestitemstext = 'Yes?',
    offerrewardtext = 'Not you again, don\'t tell me Pazzle is coming back to ask for something else.'
WHERE entry = 55029;

-- Acquiring Information
UPDATE quest_template
SET title = 'Acquiring Information',
    details = 'Pazzle and his crew really have gotten themselves into a jam, but if it means you\'re going to be bothering those goons known as the Bloodsail Buccaneers then I\'m all for helping!\n\nI got many leads on them, but I wouldn\'t entirely know who\'s heading up a hunt for the remains of the Brightwater crew.\n\nThat being said, I know someone who might know. Outside of Booty Bay is an informant I\'ve known for quite a while, I kicked them out of the city for being affiliated with the buccaneers.\n\nI saved their head, they owe me, if they know whats good for em. Find that Bloodsail Traitor, tell them Revilgaz is asking.\n\nOnce you got that information, tell the Brightwater crew, they can do what they want with it.',
    objectives = 'Obtain information from the Bloodsail Traitor outside of Booty Bay and return to Shalgrig Pipeshack in lower Booty Bay.',
    requestitemstext = 'So... Did you figure anything out?',
    offerrewardtext = 'Well, ain\'t that a relief! I thought finding who was hunting us was going to be like finding a drop of water in the ocean, but here we are!'
WHERE entry = 55030;

-- Smash Salt Tooth!
UPDATE quest_template
SET title = 'Smash Salt Tooth!',
    details = 'There\'s only one camp near that location and it\'s gotta be where this Captain Salt Tooth is at, then!\n\nIf we\'re ever gonna have a shot at getting out of this town, well then he\'s gotta go! So, you\'re going to help then, right?\n\nHead up north near the Gurubashi Arena, there is a camp of Bloodsail just south of it, off the road to the west. Find and kill Captain Salt Tooth there, bring me his head so I know this is done. Oh, and bring some friends, he\'s sure to have quite the crew!',
    objectives = 'Kill Captain Salt Tooth and bring his head as proof to Shalgrig Pipeshack.',
    requestitemstext = 'Having a hard time finding him? You\'re telling me.',
    offerrewardtext = '<The goblin stares at the head of the orc.>\n\nWow, it must have taken a small army to take down Salt Tooth. Either that, or you are much stronger then I thought!'
WHERE entry = 55031;

-- Return to Port!
UPDATE quest_template
SET title = 'Return to Port!',
    details = 'I can\'t believe it\'s finally over, heh. No more sitting around in the this basement and getting drunk off cheap liquor, now I can sit around on a beach with the expensive stuff as celebration!\n\nIt\'s been a real pleasure $N and we couldn\'t have done it without you.\n\nHead to Sparkwater Port, let the Captain know that we\'re going to be on our way back when we can organize a ship to get us there. He should be sure to give you some sort of a reward for helping us out, surely.',
    objectives = 'Report the good news to Pazzle Brightwrench in Sparkwater Port.',
    requestitemstext = 'Can I help you?',
    offerrewardtext = 'Well, it certainly has been a while, you got any good news from Booty Bay?\n\nOh, they\'re on their way back? Oh and Revilgaz was upset huh? I don\'t blame him, heh.\n\nYou\'ve saved my crew from an unknown fate and I thank ye for that, $N. Please, take this cutlass, no point in swashbuckling if the ship is gone.'
WHERE entry = 55051;

-- Reduced to Madness
UPDATE quest_template
SET title = 'Reduced to Madness',
    details = 'My people have been reduced to madness, insanity and a bloodlust for riddled fever dreams of nothingness.\n\nIt is like a shadow clouds their minds, and blocks all clarity from being perceived.\n\nDo you know the pain of not knowing those you once knew? To look upon the face of a friend and recognize nothing from them but utter savagery as if they were speaking a foreign language?\n\nMy kin are lost, and it hurts me greatly to admit that I no longer have a home within these forests. Something must be done to stop the madness, and to end it all.\n\nTravel to the Greenpaw Village just south of here, and rid my once home of the Foulweald Shamans that lurk there. They are nothing of what they once were, and perpetuate the horrors.',
    objectives = 'Travel to Greenpaw village and slay 3 Foulweald Shamans.',
    requestitemstext = 'If nothing is done, my friends and kin will slay the innocent senselessly. It must be done...',
    offerrewardtext = 'It pains my soul to imagine it has come to this, it feels as if there is no light left within this once beautiful forest. I thank you for easing the troubled minds, maybe they can find clarity in the afterlife. Take this, I will need it no longer.'
WHERE entry = 55032;

-- Kill-Kill Sagepaw!
UPDATE quest_template
SET title = 'Kill-Kill Sagepaw!',
    details = 'Gowlfang strong Gnoll, fought-fought dragonmaw orc and many other baddies that were in the way of making Mosshide strong tribe!\n\nNow Gowlfang here, work with goblins yes yes. Gowlfang was almost tribe leader of Mosshide before filthy Sagepaw stole-stole position and kicked me from tribe!\n\nYou help Gowlfang yes yes, kill-kill Sagepaw! He lurks near lake at bottom of dam-dam!',
    objectives = 'Kill Sagepaw near the Mosshide Fen in the Wetlands.',
    requestitemstext = 'Sneaky-sneaky Sagepaw! You kill yet?!',
    offerrewardtext = 'Finally, dead-dead Sagepaw is, maybe one day Mosshide Gnolls be friendly again now that bad leader gone.'
WHERE entry = 55033;

-- Kill-Kill Mosshides!
UPDATE quest_template
SET title = 'Kill-Kill Mosshides!',
    details = 'Friends betray Gowlfang because bad-bad leader says to, Mosshide no longer friend of Gowlfang, and Gowlfang kill-kill betrayers!\n\nGo to Mosshide Fen, in Wetlands yes yes, make sure they suffer, kill them good-good, hah!\n\nBring me armbands to prove-prove you did good work and did what Gowlfang ask-ask, yes yes!',
    objectives = 'Slay Mosshide Gnolls and retrieve 10 Mosshide Gnollbands for Gowlfang.',
    requestitemstext = 'You get-get armbands yet? Why waste Gowlfang time?',
    offerrewardtext = 'Now Mosshide know who real leader is, perhaps one day they listen-listen!'
WHERE entry = 55034;

-- Hidden-Hidden Reward
UPDATE quest_template
SET title = 'Hidden-Hidden Reward',
    details = 'You did Gowlfang good-good, no other gnoll ever do for me like that before! I give you gift show that Mosshide good gnoll, strong gnolls!\n\nI bury-bury chest in hollowed out tree at bottom of dam, should be still there unless someone steal, you find, treasure for you, Gowlfang no need what inside, all for you.',
    objectives = 'Find the Hidden Mosshide Chest and claim its reward.',
    requestitemstext = 'Within the hollowed out tree you see a small pile of muck that is oddly formed.',
    offerrewardtext = 'You notice something glinting within the muck, this must be what Gowlfang had spoken of. Upon searching further, you claim your reward.'
WHERE entry = 55035;

-- Where's My Yeti Fur?!
UPDATE quest_template
SET title = 'Where\'s My Yeti Fur?!',
    details = 'Hey bub, I got a late shipment that I need DEALT with, and by "dealt with" I mean fixed as soon as possible.\n\nTarlo Farcrack is gonna be out of a job once I get my damned Yeti Fur. I sent him out there almost a week ago, and he promised it would be here by now.\n\nIf there\'s one thing you should learn about Sparkwater, it\'s that you don\'t make promises to Laz that you can\'t keep.\n\nHead on down to Tarren Mill in the Hillsbrad Foothills and solve this Yeti issue.\n\nThen, when it\'s done, tell Tarlo HE\'S done.',
    objectives = 'Speak with Tarlo Farcrack in Tarren Mill.',
    requestitemstext = 'Oh, where\'s the... Yes?\n\nCan\'t you see I\'m busy here!',
    offerrewardtext = '... Laz sent you? Oh, please don\'t break my knees! Anything but that... Wait, you\'re here to help with the Yeti fur?\n\nWell, isn\'t that a relief, I could certainly use help.'
WHERE entry = 55036;

-- Filling Back-Orders
UPDATE quest_template
SET title = 'Filling Back-Orders',
    details = 'I\'m in need of some help here, a whole damn lot of help! I was supposed to recieve an order of Yeti Fur from a trusted source but they upped and went AWOL on me! Look pal, if you can help me keep my knees, and not go missing from Azeroth, that would be a huge help.\n\nTo the south west is a cave full of yeti, damn near packed with them. Get me ten Yeti Fur, it should be more then enough to bring back to Laz. And please, be quick, we don\'t got all day here!',
    objectives = 'Gather 10 Yeti Fur and return to Tarlo Farcrack.',
    requestitemstext = 'Have you had any luck hunting the Yeti?',
    offerrewardtext = 'I see you got the Yeti Fur, let me box this up right quick to send to Laz!'
WHERE entry = 55037;

-- A Late Delivery
UPDATE quest_template
SET title = 'A Late Delivery',
    details = 'There, it\'s all packaged up and good to go. Please, take this crate to Tradesman Laz in Sparkwater Port, and give him my apologies for the lateness. I included a small cut of money there for him as well for being late!\n\nThanks again for all the help, I would have been much worse off without you.',
    objectives = 'Bring Tarlo\'s Crate to Tradesman Laz.',
    requestitemstext = 'Welcome back to Sparkwater, did you deal with Tarlo yet?',
    offerrewardtext = 'Well, that took long enough. Last time I deal with him, he\'s a horrible contractor. A goblin should know never to be late, especially not with me.\n\nHere, take the extra coin he gave me for actually getting me this Fur, no doubt you\'re responsible for it getting here at all. Without that, I\'d be out of a shipment of fancy cloaks.'
WHERE entry = 55038;

-- Seeking Lost Answers
UPDATE quest_template
SET title = 'Seeking Lost Answers',
    details = 'The Kingdom of Alterac fell to ruin after their betrayal of the Alliance. I find it fitting that a nation of traitors soon after became a roving band of brigands, pilferers and cut-throats.\n\nIt is those who lay ruin to the lands and take which is not truly theirs in the first place.\n\nThe Syndicate have stolen from Dalaran a tome of great importance that the Kirin Tor require back. It is the third part of the rock elemental compendiums.\n\nThere are many building projects being done in and around Dalaran, and such a book is needed to keep our control over the Elementals around us.\n\nSyndicate Wizards have taken the book to the small town of Strahnbrad in the Alterac Mountains.\n\nTake back that which was taken from us, and dispense justice to the uncivil curs.',
    objectives = 'Retrieve the Rock Elemental Mastery: Compendium III from Syndicate Wizards in Strahnbrad.',
    requestitemstext = 'The tome is of great importance, do act quickly master $r.',
    offerrewardtext = 'Dalaran thanks you greatly for your efforts, it is the effort of adventurers like you that not all seems lost in this new world.'
WHERE entry = 55039;

-- Returning Property
UPDATE quest_template
SET title = 'Returning Property',
    details = 'Many a great tome, book, and archive has been lost during the third war from the libraries of Dalaran.\n\nOur places of knowledge were destroyed and scattered across the world, and are now in the hands of rogue wizards and necromancers alike.\n\nOne such book of power is located not too far from here, up the shoreline. The Vishas family had taken a book from our library before the third war for their son who was an upstart in magic.\n\nI do believe they are now entangled within the depravity of the Scarlet Crusade in the ruins of Lordaeron.\n\nI have tried a few times to retrieve it, but things have only gotten violent. Do your best to reason with these people, and if reasoning cannot be achieved, retrieve it for us by other means.',
    objectives = 'Gather the book Water-Weaving and Command for Ansirem Runeweaver in Dalaran.',
    requestitemstext = 'The book is of great importance to Dalaran and must be retrieved.',
    offerrewardtext = 'The Library of Dalaran gets one step closer to what it once was, we thank you greatly for your efforts, hero.'
WHERE entry = 55040;

-- Wisdom of the Sages
UPDATE quest_template
SET title = 'Wisdom of the Sages',
    details = 'You ever heard the saying "knowledge is power"? Well, a lot of my goblin kin have not. It is knowledge that I seek, and sell, to those who are interested in gaining some new skills.\n\nI\'ve been after this old book for quite a while now, titled "Wisdom of the Sages". An archivist by the name of Landas is holding it.\n\nProblem is, this isn\'t just some guy with a book, he\'s one of them mages from Dalaran, and getting my hands on it isn\'t gonna be easy.\n\nThey\'re pretty protective over their stuff, so that\'s where you come in.\n\nI got some info recently that he was in the heights overlooking the Hillsbrad Fields and the internment camp fairly close to Dalaran. Find him, and get me that book.',
    objectives = 'Find the book "Wisdom of the Sages" and bring it to Krez the Wise.',
    requestitemstext = 'Have you checked all of the heights? I got good sources saying he was there.',
    offerrewardtext = 'Hey, this seems to be it. The damage is certainly going to hurt the resell value when I\'m done reading it.'
WHERE entry = 55041;

-- Satisfaction for Shak
UPDATE quest_template
SET title = 'Satisfaction for Shak',
    details = 'Long before I came to this place, I was quite a valuable member of the Venture Co.\n\nThat was a long time ago though, and a different me, but if anything stuck, it\'s the stupid nickname I got.\n\nWhen I was one of the engineers, I was comissioned to make a design for a mega shredder to deforest Stonetalon.\n\nTurns out, another design was better then mine, and by quite a bit. I don\'t have a problem with that, but what I got a problem with is being fired from Foreman Klix for "letting him down".\n\nHe called me a "hack", and now the nickname has stuck. Bastard\'s got what\'s coming to him. You\'ll find him out at the Windshear crag where I used to work at the old lumbermill. He\'s an old coot and I doubt he\'s moved on.\n\nBring me his ring, it\'s this oversized studded thing he wears over his middle finger.',
    objectives = 'Kill Foreman Klix and bring his Studded Ring to Shak.',
    requestitemstext = 'Any luck in finding him out there?',
    offerrewardtext = '<Shak slips the ring on his own finger and chuckles.>\n\nFinally, that idiot had what was coming to him. Maybe now people will stop calling me by that name!'
WHERE entry = 55042;

-- The Brightwater Logs
UPDATE quest_template
SET title = 'The Brightwater Logs',
    details = 'The Brightwater was a mighty vessel, such a shame it was sunk in a tragic manner, ambushed at sea by dastardly Bloodsail.\n\nI had to come to Sparkwater in a bit of a hurry and I need my Logbook from the wreckage.\n\nYou see, it holds some private information that I wouldn\'t want to get in certain people\'s hands, understood?\n\nHead to Grom\'gol in the jungles of Stranglethorn, and head just a bit south, at the bottom of the sea you\'ll find its wreckage and that of another pirate ship. Shouldn\'t be hard to find.',
    objectives = 'Get the Brightwater Logbook from the sunken ship in Stranglethorn.',
    requestitemstext = 'Have you found my sunken beauty\'s logbook yet?',
    offerrewardtext = 'Oh boy, this eases a Captain\'s mind, I was worried some people might go looking before I could find the blasted thing. Here, let\'s share a drink!'
WHERE entry = 55043;

-- Missing Worker!
UPDATE quest_template
SET title = 'Missing Worker!',
    details = 'This mining operation is tough work, and we don\'t always get the toughest workers, you catch my drift?\n\nI got a worker named Axel who has been slacking on delivering his ore. That, and he often dissapears during the day.\n\nI don\'t take well to lazy goons eating up my coin for doing nothing, so go and find him and get the copper I needed him to mine.',
    objectives = 'Find Miner Axel.',
    requestitemstext = 'He\'s gotta be around here somewhere, keep looking!',
    offerrewardtext = 'Hey there, nice view huh?\n\nOh, the boss sent you?'
WHERE entry = 55044;

-- Ore on Time
UPDATE quest_template
SET title = 'Ore on Time',
    details = 'Look, I meant to get the ore to him, I promise. It\'s just been rather stressful day after day to smash a pick against rock, I feel like I can do better things, you know?\n\nYou mind doing me a favor and finding me 10 copper ore? Theres tons of it around the region here if you can mine, or if you know someone who can. It would get me all caught up on my shipments and dues and even have me a little ahead!\n\nI could really use the help. There\'s always the auction house if you don\'t know anyone and can\'t mine yourself.',
    objectives = 'Bring 10 Copper Ore to Big Fraggle for Miner Axel.',
    requestitemstext = 'Yeah? Any luck finding him?',
    offerrewardtext = 'What\'s all this? Axel sent this?\n\nI guess he is working out there after all. This is quite a bit, fine, tell him to keep doing whatever he\'s doing then!'
WHERE entry = 55045;

-- Agon Ore
UPDATE quest_template
SET title = 'Agon Ore',
    details = 'Out in the Badlands by Agmond\'s End is a special type of ore that has been pressured by the elementals there for some time. It\'s unique and rather hard to find.\n\nIt can be used for a lot of things, but I\'d like to hope it can be tested for use in a drill perhaps.\n\nIn Agmond\'s End, a small camp of dwarves were over-run some time ago by troggs.\n\nI don\'t think the dwarves were even close enough to getting all of the ore and some trogg must have some of it. Head there and kill them until you find a piece of it, then bring it back.',
    objectives = 'Find Agon Ore from the Troggs in Agmond\'s End.',
    requestitemstext = 'The Ore should be a dark black color, go find it!',
    offerrewardtext = 'Ahh, finally a piece of this rare ore. Let me see if it can be used, thanks $N.'
WHERE entry = 55046;

-- The Lucky Boots
UPDATE quest_template
SET title = 'The Lucky Boots',
    details = 'Believe it or not, I wasn\'t always a miner. Used to do a lot of piracy back in my day.\n\nI worked with the Southsea Pirates in taking over boats and just stealing what we wanted to.\n\nIt was one hell of a life, but it came to an abrupt end when a friend of mine got killed in a dispute that another member caused.\n\nLet\'s just say I took off after that, and didn\'t look back.\n\nI had a pair of lucky boots during my days in the Southsea Pirates, had \'em most of my life actually from when I left Kezan. They should still be at the Hidden Cove in eastern Tanaris, in my sealed trunk in one of the bunkhouses.\n\nIf you can find \'em, I\'ll pay you well.',
    objectives = 'Find Big Fraggle\'s Lucky Boots.',
    requestitemstext = 'The Pirates can be trouble, but you look like you can handle yourself.',
    offerrewardtext = 'Wow, I haven\'t seen these in a long, long time. This means a lot to me, $N.'
WHERE entry = 55047;

-- WANTED: Hole Escapee
UPDATE quest_template
SET title = 'WANTED: Hole Escapee',
    details = 'To those reading this message, a local prisoner named Baxxil has recently escaped from the hole after something of a tunneling incident, and escaped off the coast.\n\nHe has been reported and sighted at Far Watch Post to the west in the Barrens, along the river of Durotar. Justice must be dealt. Bring this prisoner back dead or alive, and return to Hizzle!',
    objectives = 'Find the prisoner Baxxil at Farwatch Post in the Barrens.',
    requestitemstext = 'What now?',
    offerrewardtext = 'You answered the board did you?\n\nDamn prisoner was able to tunnel his way out of the last hole. We had to board it up after he got out into the ocean. Good thing he\'s dealt with.'
WHERE entry = 55048;

-- WANTED: Shazknock!
UPDATE quest_template
SET title = 'WANTED: Shazknock!',
    details = 'Shazknock is wanted for crimes against Sparkwater Port, sharing vital information and leaking trade secrets of the union to the Venture Co.\n\nHe has secured himself a position as Manager with the information he has leaked. Find the man at his new position at Boulderlode Mine within the Great Hall there and bring his head to Tradesman Laz as proof for reward.',
    objectives = 'Find and slay Shazknock at Boulderlode Mine.',
    requestitemstext = 'What now?',
    offerrewardtext = 'Good to see people like you are out dispensing order to the world, one less rat around is better for all of us. Here, a reward for the good work, Laz always pays for good work.'
WHERE entry = 55049;

-- Grizlik's Wish
UPDATE quest_template
SET title = 'Grizlik\'s Wish',
    details = '<Little Grizlik presses his knuckle to his chest.>\n\nLok\'tar, $r! I\'m Grizlik, son of the Horde and future warrior of Orgrimmar!\n\n<The child flexes his scrawny arms, he almost seems cute.>\n\nHey, don\'t laugh at me! Come on, I\'ve got a long way to go but the matron says if I put my mind to it, I too will have a big axe like the High Overlord, or who knows maybe shoot lightning like the Warchief!\n\n<Grizlik mimics a spell with his hands.>\n\nPew, pew!\n\nAnyway, you seem like a boring elder, you won\'t play with me, right? Can I ask you for a favour? Please take this to Torm Ragetotem in Thunder Bluff. When he was here last time, he brought us toys and taught me how to use a wooden axe!\n\nTake Squeaks with you too, he wants to see Thunder Bluff. You can keep him, he\'s more the adventuring type anyway. I\'d be sad to keep him around forever if he wants to see the world!',
    objectives = 'Take Grizlik\'s letter to Torm Ragetotem in Thunder Bluff.',
    requestitemstext = 'A letter, for me?',
    offerrewardtext = 'Ah, how unexpected. Young Grizlik had sent me a drawing of us training together, including a thank you message.\n\nHe aspires to be trained when he grows older. The future generation of the horde, $N. That\'s why we are all here.'
WHERE entry = 55050;

UPDATE broadcast_text
SET Male_Text = 'If you\'re lookin\' for odds and ends from across the south seas, then you\'re in luck!\n\nThere\'s no other place you can get this stuff than right here at Zeet\'s!\n\nOh, and NO REFUNDS!'
WHERE entry = 91205;

UPDATE broadcast_text
SET Male_Text = 'Hey there, if you\'re looking to produce your own potions to save a few coins, you\'ve come just to the right place!'
WHERE entry = 91202;

UPDATE broadcast_text
SET Male_Text = 'Unless you have a drink for me, you\'d best shove up, whelp!'
WHERE entry = 91204;

UPDATE broadcast_text
SET Male_Text = 'Cutting wood isn\'t easy work, especially with all these lazy louts!\n\nIt\'s what good foremen like me are here for, up productivity!'
WHERE entry = 91201;

UPDATE broadcast_text
SET Male_Text = 'It\'s all about goblin precision, you think an orc could work such delicate parts?\n\nWhatcha need, bub?'
WHERE entry = 91200;

UPDATE broadcast_text
SET Male_Text = 'Lozzle the Nozzle here! You\'re looking awfully thirsty, the sweat rolling off your face, the hot sun beating down on someone would do JUST that!\n\nWhy don\'t you grab some of my water, it\'s ice cold, and quenches the thirst, priced JUST right!\n\nNot like you\'ll find any other in town.'
WHERE entry = 91220;

UPDATE broadcast_text
SET Male_Text = 'Welcome to Sparkwater!\n\nI designed and built this place from the ground up, from the very first stone and rock into what it is now.\n\nSo, if you got any building projects, let me know. It may cost a pretty penny, but it\'s worth the gold, I\'ll tell you THAT much!'
WHERE entry = 91225;

UPDATE broadcast_text
SET Male_Text = 'You lookin\' for your fix, bub? I got the good stuff, cheap, and home made!\n\nIt will get you drunk faster than any of that silly Dalaran wine, that\'s for sure. Shows you what a goblin with his mind set to a task can do.'
WHERE entry = 91221;

UPDATE broadcast_text
SET Male_Text = 'Throm-Ka, friend. The goblins surely have a taste for fine meat, and it would seem they eat quite the filling of it.'
WHERE entry = 91227;

UPDATE broadcast_text
SET Male_Text = 'I been hearin\' the platform got overrun by the sea crawlers they better not come bother me any!'
WHERE entry = 91229;

UPDATE broadcast_text
SET Male_Text = 'My job here is to make sure the port is safe. Any unknown ships come into range, I fire this bad girl at them. Iron ball packed tight to the brim with gun powder will sink any vessel that is stupid enough to mess with us.'
WHERE entry = 91230;

UPDATE broadcast_text
SET Male_Text = 'Missfire Shmissfire! We\'re ordered to pack this baby full of powder when we see something!\n\nWe\'ll probably hit the eastern kingdoms!'
WHERE entry = 91231;

UPDATE broadcast_text
SET Male_Text = 'Heh, you lookin\' to get smarter, huh? Well, reading some of these scrolls or books certainly could expand your knowledge, a few of them for a little while for sure!'
WHERE entry = 91232;

UPDATE broadcast_text
SET Male_Text = 'Hey! Welcome to the Sparkwater Tavern!\n\nMake yourself at home and find a table! If you need any drinks, come talk to me.'
WHERE entry = 91238;

UPDATE broadcast_text
SET Male_Text = 'Whatcha want, bub? No one\'s supposed to be executed today.'
WHERE entry = 91239;

UPDATE broadcast_text
SET Male_Text = 'Me no want smash, keep peace or Thorg be forced to smash.'
WHERE entry = 91240;

UPDATE broadcast_text
SET Male_Text = 'Yes yes? What does $r want with Gowlfang?\n\nYou think-think just cause I look dif-different you can stare?! Gowlfang comes from strong tribe of gnoll! No bad-talk!'
WHERE entry = 91243;

UPDATE broadcast_text
SET Male_Text = 'No loitering! If you don\'t got business here then scram, unless you want to end up in the hole!'
WHERE entry = 91249;

UPDATE broadcast_text
SET Male_Text = 'Getting fired for being lazy from that stupid lumber cutting job has been the best thing ever!\n\nNo one has found me yet and I got all the time I could ever ask for, screw them!'
WHERE entry = 91253;

UPDATE broadcast_text
SET Male_Text = 'Welcome to Razzle\'s! Don\'t pay any attention to that goof Zeet in the alley, his goods are nothing more than cheap table scratch!\n\nWhat I got here are genuine rare items from across Azeroth! They\'re limited, first come, first serve and should serve any adventurer in this world well!\n\nSo, step up, get some of Razzle\'s Radical Rarities before they are gone and swiped up by another more eager, and... heh, more savvy than yourself!'
WHERE entry = 91256;

UPDATE broadcast_text
SET Male_Text = 'We\'re making good progress here with the woodcutting efforts in Durotar!\n\nThere may not be a big excess of trees around here, but these ones are massive, and large. They offer quite a lot of lumber!'
WHERE entry = 91266;

UPDATE broadcast_text
SET Male_Text = 'The damned heat is making all of the shredders break down way faster than I am used to!\n\nEven with all of my experience in using these things, I haven\'t had this many problems!\n\nIt\'s that damned sun, tell Wrix to hurry up already with those repairs! Last thing I want to do is waste all this experience and be reduced to chopping with my arms, it\'s so inefficient!'
WHERE entry = 91267;

UPDATE broadcast_text
SET Male_Text = 'Always more work to be done and it\'s up to me to make sure it gets done! We got shipments due and people to get all this stone and ore to!\n\nWithout me around, half of what you see here wouldn\'t even exist! Hey, you lookin\' for a job?'
WHERE entry = 91274;

UPDATE broadcast_text
SET Male_Text = 'We shall see soon if these Goblins can embody their station as honorable members of the Horde...'
WHERE entry = 91251;

UPDATE broadcast_text
SET Male_Text = 'Wuzgut make sure no one steal lumber, you buy?'
WHERE entry = 91216;

UPDATE broadcast_text
SET Male_Text = 'The goblin\'s body is covered in various cuts, scrapes bruises and puncture wounds.'
WHERE entry = 91255;

UPDATE broadcast_text
SET Male_Text = 'Can\'t believe they hired me to just swing a pick axe! Easy work!'
WHERE entry = 91277;

UPDATE broadcast_text
SET Male_Text = 'You ever been shipwrecked before? I\'ll tell you, it isn\'t great.'
WHERE entry = 91280;

UPDATE broadcast_text
SET Male_Text = 'Waiting for the Captain to send word back, he\'s taking his time.'
WHERE entry = 91281;

UPDATE broadcast_text
SET Male_Text = 'Darkness lurks, keep your mind safe.'
WHERE entry = 91285;

UPDATE broadcast_text
SET Male_Text = 'Boltratchet looks like he\'s having a bad time, not me though, hah!'
WHERE entry = 91286;

UPDATE broadcast_text
SET Male_Text = 'Welcome, please make yourself at home.'
WHERE entry = 91287;

UPDATE broadcast_text
SET Male_Text = 'The balance of power between the elemental forces keeps shifting.\n\nThere is a disturbance within the realm of earth, I know not where the cracks originate, or how they have begun but I sense a growing disconnect with each passing minute.'
WHERE entry = 91289;

UPDATE broadcast_text
SET Male_Text = 'Ma people have remained hidden within these heights for a long time, it is only now that we have been exiled from our homeland and beaten back to the shadows.\n\nThe supplies of my tribe has dwindled greatly, but I will offer you what little I can mon, is there anything that the Wildtusk can do for you?\n\nOr, is there anything you can do for us?'
WHERE entry = 91290;

UPDATE broadcast_text
SET Male_Text = 'You heard news from Sparkwater Port?'
WHERE entry = 91292;

UPDATE broadcast_text
SET Male_Text = 'The winds at my back, I can do anything I want now!'
WHERE entry = 91297;

UPDATE broadcast_text
SET Male_Text = 'A board with various postings for wanted individuals.'
WHERE entry = 91296;

UPDATE broadcast_text
SET Male_Text = 'Do you know who you\'re talking to?'
WHERE entry = 91259;

UPDATE broadcast_text
SET Male_Text = 'Greetings, $r, the dunes have claimed many a strong adventurer. Walk softly and be careful of the path ahead.'
WHERE entry = 91303;

UPDATE broadcast_text
SET Male_Text = 'It\'s good getting some time off from that Oil Platform!'
WHERE entry = 91252;

UPDATE broadcast_text
SET Male_Text = 'Nothing better than kicking back after a good fishing day.'
WHERE entry = 91244;

UPDATE broadcast_text
SET Male_Text = 'Are you here about my famous Wazzrocket?\n\nWhat do you mean you\'ve never heard of it?'
WHERE entry = 91242;

UPDATE broadcast_text
SET Male_Text = 'The Goblins are an interesting folk, but could use more spiritualism.'
WHERE entry = 91245;

