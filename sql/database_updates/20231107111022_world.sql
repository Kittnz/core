-- Skinning tables for Blackstone:
update creature_template set skinning_loot_id = 3126 where entry in (61660,61661,61662); -- NPC Stonetail Scorpid, Stonetail Lasher, Blackvenom Scorpid make skinnable, copy skinning loot from npc 3126.
update creature_template set skinning_loot_id = 525 where entry in (61658,61659); -- NPC Ashpaw Hyena, Ashpaw Hunter make skinnable, copy skinning loot from npc 525.
-- NPC Doran Steelwing, add gossip and quest flags, change gossip text.
replace into gossip_menu (entry, text_id, condition_id) VALUES (41568, 30140, '0'); 
replace into broadcast_text (entry, Male_Text) values (30140, 'Many of us Wildhammer do not kno\' much about our past, be it the united clans under High Kind Modimus or the fall of our great Grim Batol. It\'s the task of lorekeepers like myself to remind the fledglings of their roots before they take flight.');
replace into npc_text (ID, BroadcastTextID0) values (30140, 30140);
update creature_template set gossip_menu_id = 41568, npc_flags = 3 where entry = 7778;
-- Change details of the quest with entryID: 40937.
UPDATE quest_template SET
Details = 'Night in and night out, we have been subjected to raids from the hostile Nighthowl. They are a ferocious and merciless foe that has tested our defences.$B$BWe ask for your aid in dealing with this threat before they overwhelm us. The Nighthowl can be found lingering all over northern Gilneas, from Oldrock Pass to the Northgate Tower.$B$BSlay them, and bring me eleven of the shackles they wear around their wrists.'
WHERE entry = 40937;
-- Change details of the quest with entryID: 40939.
UPDATE quest_template SET
Details = 'Many of the refugees here in the camp and at the Greymane Wall are starving. The threat of the worgen has been enough to deter most from foraging or hunting. I request you to aid in our situation and perhaps I can get a decent meal for everyone.$B$BThe Duskpelt wolves are hostile, but should supplement our current rations well. You can find Duskpelt wolves all around Gilneas. Bring me six chunks of their meat and it should last us for a time.'
WHERE entry = 40939;
-- Change details of the quest with entryID: 40994.
UPDATE quest_template SET
Details = 'I have beheld the truth, a glimpse into the First Battle of Stillward as if I had been there myself. The ancient tomes, with their accounts of Garalon Greymane''s tactical prowess, now revealed as a tapestry of deception. He wielded an ominous power, a force derived from entities that even my mind struggles to comprehend. Clutched in his hand was a scepter, a conduit through which he commanded the very essence of darkness. Its sheer potency was nothing short of terror-inducing.$B$BWe cannot allow this power to fall into the clutches of our enemies. If they were to uncover the truth, it could spell doom for our cause. Listen closely. In the depths of my vision, I recognized the scepter''s likeness. It once resided within the halls of Ravenwood Keep.$B$BAlas, the keep now lies in ruins, razed by the onslaught of Greymane''s forces. We can only pray that the scepter remains unclaimed by their hands.$B$BVenture forth to the Ravenwood Keep. Seek out a scepter forged from dark obsidian and bring it to me.'
WHERE entry = 40994;
-- Change Objectives of the quest with entryID: 40571.
UPDATE quest_template SET
Objectives = 'Find a way to summon the demon, slay it, and bring its heart to Bert Mano.'
WHERE entry = 40571;
-- Change Details of the quest with entryID: 40891.
UPDATE quest_template SET
Details = 'The Barkskin Tribe was ruled by two elders. Myself, and Elder Growlheart, a rather seasoned and old warrior who rose to prominence from his aggressive nature and impactful speeches.$B$BI do not blame the corruption of the Barkskin Tribe on any of its warriors, gardeners, or ursa. I blame it solely on Elder Growlheart. During his reign, he grew more and more hostile, leading to a culling of many I would have called dearest friends.$B$BElder Growlheart must be killed if there is even a minor chance the Barkskin tribe can be recovered.You will notice him by his discolored fur. He acquired this look from his addiction to a tainted sap him and his most loyal consume.$B$BYou can find Barkskin village to the southwest, near the bottom of the Hyjal itself.'
WHERE entry = 40891;
-- Change Details of the quest with entryID: 40945.
UPDATE quest_template SET
Details = 'I once served as a knight of Gilneas. During my service I saw many things that wavered my loyalties. But it was not until the death of my wife that I forever saw the truth.$B$BThe loyalists allowed the incursion of the worgen to punish the innocents outside the city. My wife met her end to a creature named Snarlclaw, and I was forbidden from carrying out my revenge. Now I remain here, to drink away my sorrows.$B$BSlay the beast Snarlclaw, and do what those royalists could never stomach. You will find this beast to the northeast, hiding amongst the caves with the Bloodclaw worgen.'
WHERE entry = 40945;
-- Change Details and Objectives of the quest with entryID: 40753.
UPDATE quest_template SET
Objectives = 'Gather a Gargantuan Tel''Abim Banana, an Icecap, and Soothing Spices for Chef Danonzo Laxjolt at Tel Co. Basecamp in Tel''Abim.',
Details = 'My mind is flooding with ideas, so much to choose from, so much to do! I got it why don''t we create a wonderous stew, the Gargantuan Banana itself is surely capable of producing a wonderous cream.$B$BA creamy broth served hot with fresh chunks of grilled banana overtop, now doesn''t that sound magical!$B$BAll I need is a Gargantuan Tel''Abim Banana, an Icecap and Soothing Spices, bring them to me, and we can get cooking kid.'
WHERE entry = 40753;
-- Change Details and Objectives of the quest with entryID: 40754.
UPDATE quest_template SET
Objectives = 'Gather a Gargantuan Tel''Abim Banana, a Golden Sansam, and Soothing Spices for Chef Danonzo Laxjolt at Tel Co. Basecamp in Tel''Abim.',
Details = 'Oh how the other goblins of Kezan will bask in the awe of my genius once they discover all of the recipes in my mind. My idea of a cold Banana cake filled with banana cream is the next on my mind, that sure does sound delicious, does it not?$B$BCooked at a high heat with a seperate filling added later and cooled after completion will add quite the punch of flavors, its just missing one thing... I got it!$B$BGather me the following ingredients, and I can get to work, A Gargantuan Tel''Abim Banana, a Golden Sansam, and Soothing Spices, once you acquire them, I can get started.'
WHERE entry = 40754;
-- Change Objectives of the quest with entryID: 40752.
UPDATE quest_template SET
Objectives = 'Gather a Gargantuan Tel''Abim Banana, a Heart of the Wild, and Soothing Spices for Chef Danonzo Laxjolt at Tel Co. Basecamp in Tel''Abim.'
WHERE entry = 40752;
-- Change Details of the quest with entryID: 40669.
UPDATE quest_template SET
Details = 'So, Thrall sent you huh?$B$BInteresting, I was sent here to replace another, but I never expected to be contacted. The last two before me were never spoken to in regard to anything.$B$BI work for an organization that has deep ties with Stormwind and has its eyes all over the world, so to say.$B$BI will share the information I hold, but I need a favor from you and your kin beforehand. I am here for another purpose, one I need completed in short time, but do not fret, it is within the region.$B$BIn the Barrens can be found a very specific type of raptor, Sunscale. Some of our agents have been looking to gather vials of their blood. Three in total for archival purposes.$B$BGather me those vials, and the information is yours.'
WHERE entry = 40669;
-- Change Objectives of the quest with entryID: 2992.
UPDATE quest_template SET
Objectives = 'Wait until Grimshade performs the ritual of divination.'
WHERE entry = 2992;
