
-- ### Create `account_balance_update` function in the logon database, if you plan on using shop
-- CREATE DEFINER=`root`@`localhost` FUNCTION `account_balance_update`(`AccountID` int,`Price` int) RETURNS int(11)

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
