-- Rename Quest ID 41011 to "The Upper Binding I", quest ID 41011 should be a raid quest.
update quest_template set title = 'The Upper Binding I', type = 62 where entry = 41011;
-- Change the displayID of Item ID 61695 to 26772.
update item_template set display_id = 26772 where entry = 61695;
-- Change the drop chance of Item ID 61695 from NPC 14399 to 40%.
update creature_loot_template set ChanceOrQuestChance = -40 where entry = 14399 and item = 61695;