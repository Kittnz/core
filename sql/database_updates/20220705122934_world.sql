-- frostsaber_leather remover from bengal tigers:
update creature_template set skinning_loot_id = 91826 where entry in (91826,91827,91828);

REPLACE INTO skinning_loot_template VALUES
(91826, 4304, 34.0605, 1, 1, 1, 0),
(91826, 8169, 2.3927, 1, 1, 1, 0),
(91826, 8170, 38.2829, 1, 1, 1, 0),
(91826, 8171, 4.9261, 1, 1, 1, 0);
