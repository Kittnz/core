replace into migrations values (20200213152953);

ALTER TABLE account ADD COLUMN `token_key` varchar(100) NOT NULL DEFAULT '' AFTER `forum_username`;

