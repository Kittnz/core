UPDATE `quest_template` SET
`details` = 'Nert is a good friend, and despite his choice of employment, I don\'t think he\'s a bad person. Convincing Gar\'Thok of the same, though... And getting you all into the Horde? That\'s a tall order!\n\nGar\'Thok may love my boar ribs, but I\'d like to think he\'s got a better head on his shoulders than to recruit former Venture Co. crew in exchange for a meal.\n\nI\'ll cook these up for you at least. If you\'re set on this plan, take my advice: Tell Gar\'Thok your lot are refugees willing to serve. Do not mention the Venture Co. at all.\n\nGive Nert my regards.',
`requestitemstext` = 'You don\'t look like the caravan from Ratchet. What business do you have in Razor Hill?\n\n<Gar\'Thok sniffs the air and starts to salivate.>\n\nIs that Torka\'s cooking I smell? What I wouldn\'t give for some of his boar ribs...',
`offerrewardtext` = 'A gift on behalf of you and your goblin refugee companions? You wish to join the Horde?! Listen, goblin...\n\n<You offer the boar ribs in an enticing manner, and after a moment of hesitation, Gar\'Thok hungrily grabs the ribs. He devours the food with relish, making a mess but looking satisfied.>\n\nA goblin giving food freely. Hmm, I will see what I can do... First, formalities.\n\nAre you prepared to fight with honor among the ranks of the Warchief\'s army? To be his blade and shield in lands unknown?'
WHERE `entry` = 80110;

UPDATE `quest_template` SET
`details` = 'Our situation ain\'t good. If the Horde won\'t help us, I don\'t know where else we could go. But I\'ve got a plan, see?\n\nAn old friend of mine is the cook at Razor Hill, the orc town just below that guard tower. Torka and I write now and then, and he ain\'t above bragging about his cooking.\n\nHe went so far as to say his boar ribs could bring the commander there to his knees. We\'re counting on that.\n\nHunt some of these boars and bring their meat to Torka. We\'ll have him cook \'em up and put in a good word for us, yeah? Any goblin will tell you one good word can take you all the way to the top!',
`requestitemstext` = 'Hail, goblin. Are you with the caravan from Ratchet we\'re expecting?',
`offerrewardtext` = 'What is this? Boar meat? You present this to me like an offering rather than delivering supplies...\n\nYou say Nert sent you? Nert Blastentom?'
WHERE `entry` = 80109;

UPDATE `quest_template` SET `NextQuestInChain` = '40594' WHERE `entry` = '40593';
UPDATE `quest_template` SET `NextQuestInChain` = '40595' WHERE `entry` = '40594';
UPDATE `quest_template` SET `NextQuestInChain` = '40596' WHERE `entry` = '40595';
UPDATE `quest_template` SET `NextQuestInChain` = '40597' WHERE `entry` = '40596';
UPDATE `quest_template` SET `NextQuestInChain` = '40598' WHERE `entry` = '40597';
UPDATE `quest_template` SET `NextQuestInChain` = '40599' WHERE `entry` = '40598';
UPDATE `quest_template` SET `NextQuestInChain` = '40600' WHERE `entry` = '40599';
UPDATE `quest_template` SET `NextQuestInChain` = '40601' WHERE `entry` = '40600';
UPDATE `quest_template` SET `NextQuestInChain` = '40602' WHERE `entry` = '40601';
UPDATE `quest_template` SET `NextQuestInChain` = '40603' WHERE `entry` = '40602';


