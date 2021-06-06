update broadcast_text set maletext = 'Hop right in for a first class seating to the Shimmering Flats! A premier traveling experience for a low affordable cost. Best prices anywhere!' where id=90253;

-- Adjust player's Goblin model bounding radius:

update creature_model_info set bounding_radius = 0.3, combat_reach = 1.3 where modelid = 6895; -- Female 
update creature_model_info set bounding_radius = 0.3, combat_reach = 1.3 where modelid = 6894; -- Male 