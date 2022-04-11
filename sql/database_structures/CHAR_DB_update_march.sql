
CREATE TABLE `whisper_targets` (
  `account` int(10) unsigned NOT NULL,
  `target_guid` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  UNIQUE KEY `account_target` (`account`,`target_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
