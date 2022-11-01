-- Please fix the item's name. Should be Darlthos' Jewelry Box.
update item_template set name = 'Darlthos\'' where entry = 60189;
-- Make https://database.turtle-wow.org/?item=80606 require only honored.
update item_template set required_reputation_faction = 893 where entry in (80606);
update item_template set required_reputation_rank = 5 where entry in (80606);
-- Change displayid of Archmage Talyvanah to 19100 (If the displayid is invalid wait a bit cause it's in today's patch)
update creature_template set display_id1 = 19100 where entry = 61064;
REPLACE INTO creature_display_info_addon VALUES (19100, 0, 0, 0, 0);
-- Change that quote from Orgnil. Instead of "Food can get…" should be: What?? The Burning Blade is Spreading! We must investigate!
update broadcast_text set male_text = 'What?? The Burning Blade is Spreading! We must investigate!' where entry = 982;
-- Quest "Food for Baby" grammar fix.
update quest_template set details = 'Sprite darters are omnivores--that means they eat both meat and vegetation. If your egg here\'s gonna hatch, we best be prepared. Some good eats for these little guys are flanks of meat, raw and juicy, believe it or not. I was never able to find out why, but it has somethin\' to do with Elune\'s plan for the elves... maybe they were to be protectors or somethin\', I don\'t know.\n\nI\'ll take care of the egg for now, why don\'t you get me some good Silvermane stalker flanks for \'em to eat when he\'s hatched.' where entry = 4297;