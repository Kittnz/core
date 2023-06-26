-- Delete Hakkari Shroud from players below level 46.
DELETE FROM `character_inventory` WHERE `item_template`=10782 && guid IN (SELECT guid FROM `characters` WHERE `level` < 46);

