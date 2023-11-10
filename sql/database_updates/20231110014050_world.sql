-- Goblin Hunters should start with ammo pouch instead of quiver.
UPDATE `playercreateinfo_item` SET `itemid`=2102 WHERE `race`=9 AND `class`=3 AND `itemid`=2101 AND `amount`=1 LIMIT 1;
