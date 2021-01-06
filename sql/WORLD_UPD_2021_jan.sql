update creature_template set gold_min = 24055, gold_max = 31418 where entry = 15544;
delete from spell_effect_mod where Id = 26093;
update areatrigger_teleport set required_level = 60 where id in (4008, 4010);
delete from gameobject where guid = 4007494;
update item_template set required_reputation_faction = 0, required_reputation_rank = 0 where entry = 22999;