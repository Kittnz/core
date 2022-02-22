-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1143
update item_template set flags = 2048 where entry = 9234;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1138
update quest_template set objectives = 'Gather 10 Deeptide Bracelets from Deeptide Naga for Explorer Fangosh in Maul\'ogg Refuge.' where entry = 40275;
update quest_template set objectives = 'Gather a Gold Bar for Blazno Blastpipe on Gillijim\'s Isle.' where entry = 40190;

delete from item_template where entry = 50611;