-- Grammar fix
UPDATE broadcast_text SET male_text = 'The horse, despite being an undead creature, seems to be aware of your motion.' WHERE entry = 90369;
UPDATE broadcast_text SET male_text = 'The wolf scratches the ground looking for something. As you approach, it looks up. A new smell has caught its attention.' WHERE entry = 90368;

-- Ram, Kodo Gossip
REPLACE INTO npc_text (ID, BroadcastTextID0) VALUES
(90381, 90381),
(90382, 90382);

-- Ram, Kodo Gossip text
REPLACE INTO broadcast_text (entry, male_text) VALUES
(90381, 'The Ram, a creature as majestic as it is stubborn. It gazes at you.'),
(90382, 'The Kodo Beast is a peaceful creature. There isn\'t much which is able to stop it once in motion.');

UPDATE creature_template SET npc_flags = 1, script_name = 'rented_mount' WHERE entry in (12354, 12355, 4710, 4779);
