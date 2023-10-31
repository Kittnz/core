-- Fix unusable Rich Thorium Vein.
DELETE FROM `gameobject_requirement` WHERE `guid` IN (397160, 397161);
