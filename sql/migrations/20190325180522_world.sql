DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190325180522');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190325180522');
-- Add your query below.

-- Overriding spell effects with SPELL_AURA_MOUNTED for for non-speed mounts:

replace into spell_effect_mod (Id, EffectIndex, Effect, EffectBasePoints, EffectApplyAuraName) values

(30174, 1, 6, 0, 32), -- Riding Turtle
(8396, 1, 6, 0, 32),  -- Summon Ivory Tallstrider
(10800, 1, 6, 0, 32), -- Summon Brown Tallstrider
(10801, 1, 6, 0, 32), -- Summon Gray Tallstrider
(10802, 1, 6, 0, 32), -- Summon Pink Tallstrider
(10803, 1, 6, 0, 32), -- Summon Purple Tallstrider
(10804, 1, 6, 0, 32); -- Summon Turquoise Tallstrider

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
