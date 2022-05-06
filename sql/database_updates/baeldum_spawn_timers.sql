-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1373
update creature set spawntimesecsmin = 300, spawntimesecsmax = 300 where id in (2990, 2989, 60442, 3377, 3374) and guid > 1000000;