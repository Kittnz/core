-- Fix rewards for The Seeker's Demise.
UPDATE `quest_template` SET `RewChoiceItemId1`=70012, `RewChoiceItemId2`=81290, `RewChoiceItemCount1`=1, `RewChoiceItemCount2`=1, `RewItemId1`=0, `RewItemId2`=0, `RewItemCount1`=0, `RewItemCount2`=0 WHERE `entry`=70033;
