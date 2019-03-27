
-- ### This will add x coins to a username and show you transactions in last 24 hours.

SET @accountname='Torta';
SET @coinamount=500;

-- ## Add coins:

UPDATE shop_coins
INNER JOIN account ON shop_coins.id = account.id
SET shop_coins.coins = shop_coins.coins + @coinamount
WHERE account.username=@accountname;

-- ## Show coin transactions: 

SELECT account.username, shop_diff.prev_bonus, shop_diff.new_bonus, shop_diff.date
FROM account
JOIN shop_diff ON account.id = shop_diff.accountid
WHERE account.username=@accountname AND date > UNIX_TIMESTAMP(NOW() - INTERVAL 24 HOUR);