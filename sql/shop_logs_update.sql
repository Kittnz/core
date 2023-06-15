ALTER TABLE `shop_logs` ADD id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT FIRST;
ALTER TABLE `shop_logs`
	ADD INDEX `account` (`account`),
	ADD INDEX `time` (`time`);
