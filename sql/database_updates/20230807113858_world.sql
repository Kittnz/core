-- Some text edits:
-- Creature 61279 - Lance Everton - "wolfs" to "wolves"
update broadcast_text set male_text = 'My father is a skilled hunter, he is able to kill giant wolf and then make them into food!' where entry = 61279;
-- Creature 61278 - Narwick Everton - "fathers" to "father's"
update broadcast_text set male_text = 'My job and my father\'s before me has been to hunt the local game of the region. It is honest work, but at times quite dangerous.' where entry = 61278;
-- Creature 61270 - Magistrate Carson - "excapes" to "escapes"
update broadcast_text set male_text = 'I must admit, it feels weird to not be within Gilneas City, especially with so much chaos. I once held the council of the king, and now look at me, groveling in Ravenshire of all places.$B$B<A sigh escapes the Magistrate.>$B$BPerhaps this will all be worth it in the end, once this conflict is over and the land begins to heal.' where entry = 61270;
-- Creature 61259 - Lord Darius Ravenwood - "it's" to "its"
update broadcast_text set male_text = 'Hidden beneath the veil, a great shadow lurks within the dream, already much of my kind have been disturbed by the presence.$B$BYou may not know this, but the awakening has begun.$B$BAn ancient ritual of my kin intended to draw us from the dream, I have resisted its temptations already, but not all are willed so strong.' where entry = 61326;
-- Quest 41112 - Ravencroft's Ambition - "its" to "his", Ur was a person and Ethan references his book
update quest_template set details = 'I\'ve been so consumed by this wretched research for far too long. Moranna isn\'t making it any easier on me either. I know that we must somehow uncover the secrets of Ur without his book, but how - how in the blazes can we even go about doing that?$B$BLast I heard, the Forsaken of the Horde claimed the book from the Silverlaine Keep - I fear it may be lost to us forevermore. However, I still have hopes. There was a girl in Shademore Inn who claimed to have escaped Gilneas City by leaping over its walls. My doubts aside, she actually sold me some useful information. It might well be that the library in Gilneas City holds a copy of the Book of Ur.$B$BI would greatly appreciate it if you could retrieve it for me.' where entry = 41112;
-- Quest 40967 - Ravenwood Keep - remove comma in the sentence "It seemed that the Harlows, had delved into dark magicks to bolster their armies.", it shouldn't be there
update quest_template set details = 'In the wake of the rebellion\'s inception, my home, Ravenwood Keep, became the target of an assault by the forces under the command of the Harlows. Our defenders fought with unwavering valor, but we found ourselves outmatched. It seemed that the Harlows had delved into dark magicks to bolster their armies.$B$BThough some of our forces managed to escape the onslaught, the majority fell victim to the blades of our adversaries. Even my loyal servants were not spared from the carnage. Among the casualties were two of my dearest friends, Gately and Mathias.$B$BNow, as the dust settles, a haunting presence looms within the very walls that once provided solace and protection. The restless spirits of Gately and Mathias wander aimlessly, their once noble hearts consumed by bitterness. No longer able to distinguish friend from foe, they wreak havoc upon any who dare to cross their path.$B$BLay these tormented souls to rest, so that they may find peace in the embrace of the eternal slumber.' where entry = 40967;
-- Quest 40926 - Securing Gilneas I - "fair" to "far"
update quest_template set details = 'The land is tainted with the foul mark of worgen that tread through our lands unopposed. The royalists have seen fit to punish the people by letting their kind spread like a disease.$B$BEven now the worgen reach as far south as the Overgrown Acre just to the northwest of here. If they will not put an end to this threat, then we must. Find the Bloodclaw tribe that stalks within Gilneas, hunt them, and recover twelve of their pelts.' where entry = 40926;
-- Quest 40853 - The Staff of Shinban - insert a comma after "Oh" in the sentence "Oh don't look at me like that, you know I'm right." 
update quest_template set details = 'Truthfully, $N, I don\'t really care how many dumb ogres are killed by gold-a-dozen mercenaries. Whether it\'s you or some other that brings me a bag of heads, it makes no difference.$B$BOh, don\'t look at me like that, you know I\'m right. Anyway, if you want something meaningful to do, listen: our scouts overheard that two ogres are vying for power amongst the Brol\'ok. One of which calls himself Shinban Four-Eyes. A two headed ogre with three actual eyes, claims the fourth is a hidden one that gives him the vision required to lead!$B$BI would be worried about that, $N. Either he is telling the truth and is a caster powerful enough to have magical sight, or he is smart enough to understand metaphors. Both are worrying. Regardless, he is your primary target.' where entry = 40853;
-- Link NPC GUID 2578322 and 2578321 to pull together when one is attacked.
INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES 
(2578322, 2578321, 0, 0, 2),
(2578321, 2578322, 0, 0, 2);