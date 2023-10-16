-- Remove redundant quest requirements
UPDATE quest_template SET ReqCreatureOrGOId1 = 0, ReqCreatureOrGOId2 = 0, ReqItemId1 = 61494, ReqItemCount1 = 1 WHERE entry = 40949;
UPDATE quest_template SET ReqCreatureOrGOId1 = 0, ReqCreatureOrGOId2 = 0, ReqItemId1 = 61466, ReqItemCount1 = 1 WHERE entry = 40924;
