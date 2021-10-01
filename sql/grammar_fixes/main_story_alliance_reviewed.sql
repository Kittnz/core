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
