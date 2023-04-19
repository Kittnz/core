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
-- https://database.turtle-wow.org/?quest=40665 Please update with the following text:
UPDATE quest_template SET
Objectives = 'Slay 7 Expedition Scouts and 7 Expedition Commandos for Warbringer Dar''nakk in Razor Hill in Durotar.'
WHERE entry = 40665;
-- https://database.turtle-wow.org/?quest=40666 Please update with the following text:
UPDATE quest_template SET
Objectives = 'Gather 6 Bundles of Expedition Supplies for Warbringer Dar''nakk in Razor Hill in Durotar.'
WHERE entry = 40666;
-- https://database.turtle-wow.org/?quest=40667 Please update with the following text:
UPDATE quest_template SET
Details = 'You have made glorious battle upon our enemies, $N.$B$BThe Horde honors those who bear our banner so proudly. For your might, I bestow upon you this commendation. Wear it well, for your next task will take you to our great Orgrimmar.$B$BIn the Valley of Wisdom, our Warchief waits for tidings of the ongoing Kul Tiran conflict. Tell him all you have done and all you have learned.',
Objectives = 'Speak with Thrall in Orgrimmar about the Kul Tiran threat.',
RequestItemsText = 'Lok-regar no''gal, $r. I bid you welcome.',
OfferRewardText = 'I see you carry Dar''nakk''s commendation. I''ve never known him to grant such accolades freely.$B$BYou did well in defending our coasts, and for that the Horde owes you its gratitude.'
WHERE entry = 40667;
-- https://database.turtle-wow.org/?quest=40671 Please update with the following text:
UPDATE quest_template SET
Title = 'A War Worth Fighting',
Details = 'There are few things I loathe more than needless war, $N. It might be an irony to you, for the title I bear, but I saw what horrors wake in men and women when ashes and bloodshed are all that is left of their lives.$B$BI led my people to Kalimdor because I wished to give our children a better world to grow into. I believe that world is still within reach: Woe betide anyone that would threaten it!$B$BI have sent envoys to treat peace with Alverold, to make him see sense. Return to Dar''nakk, and if Alverold refuses... it can only be victory or death.',
Objectives = 'Report back to Warbringer Dar''nakk in Razor Hill.',
RequestItemsText = 'You return, and not a moment too soon.',
OfferRewardText = 'I advised the Warchief against the sending of envoys. It was no use with a man like Alverold.$B$BOur men were cowardly assailed under the flag of peace. Those treacherous Kul Tirans tied them to stakes, soaked them in tar and burned them living on the shore.$B$BNow we hold nothing back, now we put an end to them!'
WHERE entry = 40671;
-- https://database.turtle-wow.org/?quest=40672 Please update with the following text:
UPDATE quest_template SET
Details = 'There is an island south of the Echo Isles the pinkskins have come to call Anchor''s Edge.$B$BThe time for planning and talking is over.$B$BTravel to Anchor''s Edge with as many comrades as you can find and kill every Kul Tiran armed with either blade or spell. Take the rest prisoner. That is my command!$B$BGO FORTH FOR THE HORDE, FOR BLOOD AND THUNDER!',
Objectives = 'Slay 8 Expedition Sailors, 6 Expedition Clerics, and 10 Expedition Soldiers for Warbringer Dar''nakk in Razor Hill.',
OfferRewardText = 'If my duties did not keep me here, I would have gladly joined you in the thrill of battle.$B$BYou have delivered the Warchief''s reckoning to our enemies. For that, the whole Horde shall sing your praise.'
WHERE entry = 40672;