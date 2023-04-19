-- https://database.turtle-wow.org/?quest=80396 Quest edit for Tamamo.
UPDATE quest_template SET
Details = 'I am Kheyna Spinpistol. Mechanist, medic and killer of evil.$B$BI am currently tracking a dangerous foe who threatens the lives of an untold number of innocents. I might ask for your help in dealing with this later…$B$BFor now, I have a task for you, and a generous reward if you do it well! The nearby Kolkar tribe is preparing for a raid on the Crossroads. I know this because I''ve used one of my tools, and you could say I "sneaked" into their tent and heard their Khan ordering it. This can be avoided, however. You''ll save many lives if you go down there and put an end to them all.$B$BThey''re all around the Oasis to the west. Once you''re done, come back to me. If I am not here, simply touch the crystal again and I will know someone is waiting for me. Now get out there and KILL them all!',
OfferRewardText = 'Wonderful. I wonder what it felt like to have their blood splatter all over you, or what came into your mind as you heard them scream in pain and fall like the vermin they are.$B$BI wish I could have been there to see it for myself, heh.$B$BNonetheless, know that thanks to your violent deeds many lives were saved. Now, of course I''ll be sure to reward you… Hmm, let''s see… Yes, this will be something you can either use or sell for compensation.$B$BI''ll make sure to tell others of your deeds. Hopefully we''ll meet again, $N.'
WHERE entry = 80396;
-- Remove Eitrigg alpha quest for Orc/Troll starter zone quests, and enable the release quest which deprecated it to be done by all Horde races.
DELETE FROM creature_questrelation WHERE quest = 787;
DELETE FROM creature_involvedrelation WHERE quest = 787;
UPDATE quest_template SET RequiredRaces = 434 WHERE entry = 4641;
-- https://database.turtle-wow.org/?item=61097 Please update with the following name:
UPDATE item_template SET Name = 'The Deeds of Sir Danuvis' WHERE entry = 61097;
-- https://database.turtle-wow.org/?item=60917 Please update with the following name:
UPDATE item_template SET Name = 'Ring of Durotar' WHERE entry = 60917;
-- https://database.turtle-wow.org/?item=60912 Please update with the following name:
UPDATE item_template SET Name = 'Warbringer''s Commendation' WHERE entry = 60912;
-- Deekin changes for https://database.turtle-wow.org/?item=51767.
UPDATE item_template SET Dmg_Min1 = 39, Dmg_Max1 = 72, Delay = 1900 WHERE entry = 51767;