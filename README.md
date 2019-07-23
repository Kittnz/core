
# World DB download: 

https://drive.google.com/open?id=1faDzD9CpYaaextb8ZkU4EITWXwMk1wkR

# account_balance_update function, apply to logon DB:

```sql
BEGIN
    SELECT `coins` INTO @CoinCount FROM `shop_coins` WHERE `id`= AccountID FOR UPDATE;
    IF @CoinCount >= Price THEN
        UPDATE `shop_coins` SET `coins` = `coins` - Price WHERE `id` = AccountID;
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
	RETURN 0;
END
```

Parameter: 
```sql
`AccountID` int,`Price` int
```
Return Type: int(11)

# Add coins and check on latest transactions:

```sql
SET @accountname='Torta';
SET @coinamount=500;

UPDATE shop_coins
INNER JOIN account ON shop_coins.id = account.id
SET shop_coins.coins = shop_coins.coins + @coinamount
WHERE account.username=@accountname;

SELECT account.username, shop_diff.prev_bonus, shop_diff.new_bonus, shop_diff.date
FROM account
JOIN shop_diff ON account.id = shop_diff.accountid
WHERE account.username=@accountname AND date > UNIX_TIMESTAMP(NOW() - INTERVAL 24 HOUR);
```


