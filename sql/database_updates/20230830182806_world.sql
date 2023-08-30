-- Rename Quest ID 41011 to "The Upper Binding I", quest ID 41011 should be a raid quest.
update quest_template set title = 'The Upper Binding I', type = 62 where entry = 41011;
-- Change the displayID of Item ID 61695 to 26772.
update item_template set display_id = 26772 where entry = 61695;