-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1453
UPDATE creature SET spawntimesecsmin = 200000, spawntimesecsmax = 200000 WHERE map = 800;