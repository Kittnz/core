-- Haunted Spirits should not drop any money:
update creature_template set gold_min = 0, gold_max = 0 where entry = 4958;
update spell_effect_mod set effectamplitude = 30000, comment = 'Haunting Spirits: tick every 30 seconds.' where id = 7057 and effectindex = 0;