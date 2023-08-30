-- Rename Quest ID 41011 to "The Upper Binding I", quest ID 41011 should be a raid quest.
update quest_template set title = 'The Upper Binding I', type = 62 where entry = 41011;