-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1380

-- Horde
replace into reputation_spillover_template (faction, faction1, rate_1, rank_1, faction2, rate_2, rank_2, faction3, rate_3, rank_3, faction4, rate_4, rank_4) 
values (67, 68, 0.25, 7, 76, 0.25, 7, 81, 0.25, 7, 530, 0.25, 7);
-- Alliance
replace into reputation_spillover_template (faction, faction1, rate_1, rank_1, faction2, rate_2, rank_2, faction3, rate_3, rank_3, faction4, rate_4, rank_4) 
values (469, 47, 0.25, 7, 54, 0.25, 7, 69, 0.25, 7, 72, 0.25, 7);
