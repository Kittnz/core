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
