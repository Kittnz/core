UPDATE quest_template SET NextQuestInChain = 40908 WHERE entry = 40907;

UPDATE quest_template SET
Details = 'The Widows of the Wood are a fickle lot, $N. They hold a strong attachment to the woods. They are playful, yet spiteful. They rejoice in scaring children, luring young men away to rest beneath the canopies they haunt, appearing in their dreams.$B$BI fear we have not much time to save young Aliattan if his journal is anything to go by. They seek to break his will, and draw him into a maddening dance known as the black waltz. They say the soul itself is wrenched from the body with each twirl and spin, before being devoured by the hungry Widows.$B$BReturn to the campsite, $N. You must light that which caused so much grief to begin with. Draw them out of hiding, and dispose of them. May the Wolf Serpent guard you, for a fate worse than death awaits you if you anger the Widows and fail in your efforts.'
WHERE entry = 40908;

UPDATE spell_template SET Name = 'Great Chieftain''s Kodo' WHERE entry = 18363;
