SET @AINAME = 'PlayerBotWorldPopulationAI';
TRUNCATE `tw_char`.`playerbot`;
INSERT INTO tw_char.playerbot (char_guid, chance, ai)
SELECT
tw_char.characters.guid, tw_char.characters.`level`, @AINAME
FROM tw_char.characters
WHERE
tw_char.characters.map IN (0, 1)
AND
tw_char.characters.zone > 0
AND
tw_char.characters.name <> ''
AND
tw_char.characters.`level` <= 60
AND
tw_char.characters.`level` > 1
AND
tw_char.characters.account IN(SELECT `id` FROM tw_logon.account WHERE tw_logon.account.rank = 0);
