UPDATE quest_template SET
OfferRewardText = 'You truly disgust me, $R. A grown $gman:woman drooling over a pile of junk? Pitiful! Take your reward and get out of my sight.$B$BSounds familiar? It should, because I say it a thousand times per day.$B$BOh how I loathe this world.'
WHERE entry = 3502;

UPDATE quest_template SET NextQuestInChain = 41073 WHERE entry = 41072;
UPDATE quest_template SET NextQuestInChain = 41074 WHERE entry = 41073;
UPDATE quest_template SET NextQuestInChain = 41076 WHERE entry = 41075;
UPDATE quest_template SET NextQuestInChain = 41077 WHERE entry = 41076;
