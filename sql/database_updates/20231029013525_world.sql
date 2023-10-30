UPDATE quest_template SET
Details = 'You there, servant!$B$BI must say, the room service you have here is utterly dreadful. I feel like I have been waiting years for someone to come along and help me with my problem.$B$BThe chambers I have been assigned are not suitable, and I cannot get a wink of sleep. I need a more comfortable pillow, or something of that regard. Find one for me so that I may actually get a good night''s rest in this place.',
NextQuestInChain = 41084
WHERE entry = 41083;

UPDATE quest_template SET NextQuestInChain = 41085 WHERE entry = 41084;

UPDATE quest_template SET
Details = 'Believe it or not, I do have a recipe for Spectral Wine. Wine that can be consumed by spirits was a concept that I did practice and refine. It is a somewhat complicated process and requires materials that are foreign here in Karazhan.$B$BIf you can acquire for me three Essences of Death, five Flasks of Port, and a single Ghost Mushroom, I can make Spectral Wine for Councilman Kyleson. Though, I must question your sanity in going to this trouble.',
NextQuestInChain = 41086
WHERE entry = 41085;

UPDATE quest_template SET
Details = 'I have prepared the Spectral Wine for you. Here you are. I do hope that Councilman Kyleson is offering you something in exchange for all your work. Bring it to him promptly, and do not waste any time. After a few years, the Spectral Wine will lose its magical potency, and may just become normal wine.',
OfferRewardText = '<Councilman Kyleson takes a drink from the Spectral Wine, and looks lost as he savors it for a few, brief moments.>$B$BI must say, this is certainly exquisite. Nothing has parched my intense thirst for what seems like years. Truly, this is the most fascinating wine I have tasted in quite a long time. You have gone above and beyond to ensure I have been treated well here in Karazhan.$B$BSuch a fine servant, you will go a long way here in Karazhan, and you deserve a worthy tip.$B$B<Kyleson places a single coin in your pocket.>$B$BDo not spend such wealth all in one place. If you need anything at all, just ask me.'
WHERE entry = 41086;
