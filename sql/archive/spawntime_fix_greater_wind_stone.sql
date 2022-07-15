-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1314
UPDATE gameobject SET spawntimesecsmin = 900, spawntimesecsmax = 900 WHERE id = 180559;