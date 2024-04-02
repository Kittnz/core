UPDATE quest_template SET
Objectives = 'Speak to Mayten Boomrifle at Rustgate Ridge on Blackstone Island.',
Details = 'Hello, young hunter. You look to me like you are skilled enough to handle a beast and train it as your companion.$B$BWe hunters tend to have a pet by our side, though I hear your kind have some... unorthodox methods. Nonetheless, you should speak to Mayten Boomrifle at Rustgate Ridge over on Blackstone Island if you wish to learn how to tame a pet of your own.',
OfferRewardText = 'There you are! I was wondering where you''d run off to. You didn''t think I''d notice you go missing?$B$BWell at least you''re here now, so let''s get down to business.'
WHERE entry = 80330;

UPDATE quest_tempalte SET Title = '[DEPRECATED] Taming the Beast' WHERE entry BETWEEN 80331 AND 80334; -- LOOK BROTALNIA, I REMEMBERED TO USE TITLE INSTEAD OF NAME, OKAY???
DELETE FROM creature_involvedrelation WHERE id = 80903 AND quest = 80330;
REPLACE INTO creature_involvedrelation VALUES (80105, 80330);
