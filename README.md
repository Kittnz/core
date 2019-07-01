
# World DB download: 

https://drive.google.com/open?id=1PTyHWbT5Hv0aj9QRJOLps0quR-2JDKQj

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


