-- Change mulgore wyvern hatchling quests (https://database.turtle-wow.org/?quest=40535) into proper quest chain
update `quest_template` set `NextQuestInChain` = 40536, `NextQuestId` = 0 where `entry` = 40535;
update `quest_template` set `NextQuestInChain` = 40537, `NextQuestId` = 0 where `entry` = 40536;

-- Change mulgore centaur quests (https://database.turtle-wow.org/?quest=40363) into proper quest chain
update `quest_template` set `NextQuestInChain` = 40364, `NextQuestId` = 0 where `entry` = 40363;
update `quest_template` set `NextQuestInChain` = 40365, `NextQuestId` = 0 where `entry` = 40364;
update `quest_template` set `NextQuestInChain` = 40366, `NextQuestId` = 0 where `entry` = 40365;

-- Change mulgore mysterious leaf quests (https://database.turtle-wow.org/?quest=40583) into proper quest chain
update `quest_template` set `NextQuestInChain` = 40584, `NextQuestId` = 0 where `entry` = 40583;
update `quest_template` set `NextQuestInChain` = 40585, `NextQuestId` = 0 where `entry` = 40584;
update `quest_template` set `NextQuestInChain` = 40586, `NextQuestId` = 0 where `entry` = 40585;
update `quest_template` set `NextQuestInChain` = 40587, `NextQuestId` = 0 where `entry` = 40586;
update `quest_template` set `NextQuestInChain` = 40588, `NextQuestId` = 0 where `entry` = 40587;


