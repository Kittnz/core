-- Now in the quest "Whispers of Autumn" you need to choose one of two awards.
update quest_template set RewChoiceItemId1 = 41151, RewChoiceItemId2 = 41152, RewChoiceItemCount1 = 1, RewChoiceItemCount2 = 1, RewItemId1 = 0, RewItemId2 = 0, RewItemCount1 = 0, RewItemCount2 = 0 where entry = 41215;
-- Сopper vein in Durotar (60.1, 61.8) was pulled out of the ground.
update gameobject set position_z = 33.129925 where guid = 12376;
