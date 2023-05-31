ALTER TABLE `system_fingerprint_usage`
	ADD COLUMN `osVersion` ENUM('None','WinXP','Win7','Win8','Vista','Win10Up','<Unknown>') NOT NULL DEFAULT '<Unknown>' AFTER `qpcData`;
