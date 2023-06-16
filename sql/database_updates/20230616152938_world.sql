REPLACE INTO `gameobject` VALUES ( 5015548, 2020028, 0, -11197.9, -2237.71, 22.7019, 1.4958, 0, 0, 0.680102, 0.733117, 300, 300, 100, 1, 0, 0);
-- Quest GO ^

UPDATE `quest_template` SET `Type` = 62 WHERE `entry` in (40914, 40915, 40916, 40917, 40918, 40919, 40920, 40921, 40922, 40923); 
UPDATE `quest_template` SET `specialflags` = 128 WHERE `entry` in (40914, 40915, 40916, 40917, 40918, 40919, 40920, 40921, 40922, 40923); 

UPDATE `quest_template` SET `Objectives` = 'Get the 52nd Package and bring it to the Mysterious Mailbox.', `Details` = 'Who told you about that? Hmm? No answer?$B$BFine. The 52nd Package was lost, anyway. Missing straight outta the vault itself, like it just spirited itself away.$B$BI paid a guy to track it down, and he ended up at that centaur tomb in Desolace, Maradon or something? Your guess is as good as mine as to how it got there.$B$B I guess if you want it, you better go get it.' WHERE `entry` = 40916;

UPDATE `quest_template` SET `Title` = 'An Eye For a Mystery' WHERE `entry` = 40917;
