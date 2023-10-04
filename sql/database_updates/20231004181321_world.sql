-- Reduce respawn timer temporarily to 1 minute or 30 seconds to eleviate stress from attunement

-- Vilemusk Felsworn 
-- Vilemusk Hellcaller 
-- Vilemusk Shadowstalker

-- All hard bottlenecks atm for attunement chain

UPDATE `creature` SET `spawntimesecsmin` = 120, `spawntimesecsmax` = 120 WHERE `id` in (61339,61340,61341);