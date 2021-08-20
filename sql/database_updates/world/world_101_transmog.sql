DROP TABLE `transmog_template`;

CREATE TABLE `item_transmogrify_template`
( `ID` INT(11) UNSIGNED NOT NULL,
  `ItemID` INT(11) UNSIGNED NOT NULL,
  `DisplayID` INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MYISAM CHARSET=utf8 COLLATE=utf8_general_ci;

