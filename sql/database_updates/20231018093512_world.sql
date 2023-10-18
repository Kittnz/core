-- Replace vanilla "high elf" display IDs with proper Theramore High Elves on Theramore Guard and Theramore Sentry random display IDs on spawn
UPDATE creature_template SET display_id3 = 18212, display_id4 = 18213 WHERE entry = 5184;
UPDATE creature_template SET display_id2 = 18212, display_id3 = 18213 WHERE entry = 4979;
