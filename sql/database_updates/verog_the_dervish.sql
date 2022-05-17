-- Increase spawn chance of Verog the Dervish:
update creature_ai_events set event_chance = 10 where id in (327402, 327504, 339703); 