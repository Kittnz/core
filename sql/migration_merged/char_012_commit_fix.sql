-- Pulled from a world commit - Neto

-- Update quest status for players who have already done the Naxx attunement quests.
INSERT INTO character_queststatus (guid,quest,status,rewarded)
SELECT a.guid,9378,1,1 FROM character_queststatus a WHERE a.quest IN(9121) AND NOT EXISTS (SELECT b.quest FROM character_queststatus b WHERE a.guid=b.guid AND b.quest IN(9378));
INSERT INTO character_queststatus (guid,quest,status,rewarded)
SELECT a.guid,9378,1,1 FROM character_queststatus a WHERE a.quest IN(9122) AND NOT EXISTS (SELECT b.quest FROM character_queststatus b WHERE a.guid=b.guid AND b.quest IN(9378));
INSERT INTO character_queststatus (guid,quest,status,rewarded)
SELECT a.guid,9378,1,1 FROM character_queststatus a WHERE a.quest IN(9123) AND NOT EXISTS (SELECT b.quest FROM character_queststatus b WHERE a.guid=b.guid AND b.quest IN(9378));
