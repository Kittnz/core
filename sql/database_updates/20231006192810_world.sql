-- Reduce respawn time of Stonescale Eel Swarm in Tel'Abim.
UPDATE `gameobject` SET `spawntimesecsmin`=900, `spawntimesecsmax`=900 WHERE `guid` IN (5012958, 5012959, 5012960, 5012961, 5012962, 5012963, 5012964, 5012965, 5012966, 5012967, 5012968, 5012969, 5012970);
