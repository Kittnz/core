UPDATE gameobject SET spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE id IN (180456, 180518, 180529, 180544, 180549, 180564);
UPDATE gameobject SET spawntimesecsmin = 900, spawntimesecsmax = 900 WHERE id IN (180461, 180502, 180534, 180554);
UPDATE gameobject SET spawntimesecsmin = 10800, spawntimesecsmax = 10800 WHERE id IN (180466, 180539, 180559);

REPLACE INTO game_event_gameobject (guid, event) VALUES (49313, 1);

UPDATE quest_template SET ReqCreatureOrGOId1 = 0, ReqCreatureOrGOCount1 = 0, NextQuestInChain = 41042 WHERE entry = 41041;
UPDATE quest_template SET NextQuestInChain = 41054 WHERE entry = 41053;
UPDATE quest_template SET NextQuestInChain = 41044 WHERE entry = 41043;
UPDATE quest_template SET NextQuestInChain = 41045 WHERE entry = 41044;
UPDATE quest_template SET NextQuestInChain = 41046 WHERE entry = 41045;
UPDATE quest_template SET NextQuestInChain = 41047 WHERE entry = 41046;
UPDATE quest_template SET NextQuestInChain = 41048 WHERE entry = 41047;
UPDATE quest_template SET NextQuestInChain = 41051 WHERE entry = 41050;
UPDATE quest_template SET NextQuestInChain = 41052 WHERE entry = 41051;

update item_template set spellid_1 = 48034, spellid_2 = 0, name = 'Band of Calamity' where entry = 60547; -- Band of Calamity
update item_template set spellid_2 = 48034, name = 'Grand Slammer' where entry = 61532; -- Giants Heavy Mace