-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1534

update page_text set text = 'To Duke Ramon III,\n\nThanks again for everything you\'ve done. For my own safety, I had to keep my head low since I left Stormwind.\n\nIt appears that SI:7 has been keeping tabs on me, but I assure you that I have kept myself unseen so far and well-hidden within my room.' where entry = 80327;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1555
update npc_vendor set incrtime = 7200, maxcount = 1 where item = 13308;