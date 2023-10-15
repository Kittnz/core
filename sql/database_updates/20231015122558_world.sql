-- Quest ID 539 (Battle of Hillsbrad) change 'Azureload Mine' to 'Azurelode Mine' in the quest description.
update quest_template set details = 'The Hillsbrad Town Registry indicates that the Azurelode Mine is under Alliance control. Furthermore, the mine is a prime source of iron ore for the Alliance armories.$b$bEven though we\'ve struck a decisive blow to the town of Hillsbrad, the Alliance still supports and protects the Azurelode Mine fervently.$b$bThe mine lies due south of Hillsbrad. Go there and slay the foreman, a human by the name of Bonds. Kill his miners as well. That should send a clear message to the Alliance.' where entry = 539;
-- Quest ID 40017 (Preparing for War) change 'Collect 10 Arathi Raptor Hides from Raptor's in Arathi' to 'Collect 10 Arathi Raptor Hides from raptors in Arathi Highlands.
update quest_template set Objectives = 'Collect 10 Arathi Raptor Hides from raptors in Arathi Highlands.' where entry = 40017;
-- Quest IDs 40531, 40534, 40533, 40532, 40530 (The Way Of The Spiritwolf #) change the quest name for all quests in the chain to 'The Way of the Spiritwolf' (or maybe 'The Way of the Spirit Wolf'). Many quests that use the, of, for etc. in the middle of the quest name use lowercase, this custom quest chain name looks off.
update quest_template set title = 'The Way of the Spiritwolf I' where entry = 40530;
update quest_template set title = 'The Way of the Spiritwolf II' where entry = 40531;
update quest_template set title = 'The Way of the Spiritwolf III' where entry = 40532;
update quest_template set title = 'The Way of the Spiritwolf IV' where entry = 40533;
update quest_template set title = 'The Way of the Spiritwolf V' where entry = 40534;
-- Quest ID  40530 (The Way Of The Spiritwolf I) change 'I have been awaiting your arrival now for some time' to 'I have been awaiting your arrival for some time now', add missing 'of' after 'tales' in the second sentence.
update quest_template set details = 'I have been awaiting your arrival for some time now. I have heard tales of your deeds from the very spirits themselves, and it is time to prove your worth as an Orc.$B$BIt is time for your next challenge, and to prove your worth to the very spirits themselves. If you think you are worthy for such a task, seek out Margok Hatewind at Camp Mojache, he will be your guide.' where entry = 40530;
-- Quest ID 40531 (The Way Of The Spiritwolf II) change 'the orc shaman's capable enough to prove their worth' to 'orc shamans capable enough to prove their worth.'
update quest_template set details = 'You have begun to find potency within your use of the elements, though now comes a different matter entirely. Within Feralas is an Ancient Wolf Spirit, one of whom can bestow great power upon orc shamans capable enough to prove their worth.$B$BIf you wish to prove yourself you must first gather a Pristine Wolf Tooth from the Longtooth wolves in the region. Be patient, it may be hard to come across. When you have found one, bring it to me, and you can continue on this journey.' where entry = 40531;
-- Quest ID 40533 (The Way Of The Spiritwolf IV) change 'Ancient Spirit Wolf' to 'Ancient Wolf Spirit', change 'journies' to 'journeys'.
update quest_template set Objectives = 'Listen to the Tale of the Ancient Wolf Spirit.', ObjectiveText1 = 'Listen to the Tale of the Ancient Wolf Spirit' where entry = 40533;
-- Quest ID 40534 (The Way Of The Spiritwolf V) change 'Ancient Spirit Wolf' to 'Ancient Wolf Spirit', remove period after quest objective (refer to the image), update quest description: change 'afterall' to 'after all', change 'embody the my spirit' to 'embody my spirit'.
update quest_template set Objectives = 'Prove your strength to the Ancient Wolf Spirit.', ObjectiveText1 = 'Prove your strength to the Ancient Wolf Spirit', details = 'You listen, and listen well, perhaps you are worthy after all. I have one final challenge for you, one to prove that you are truly worthy of my power. I challenge you to combat, show me your abilities, and show me your strength.$B$BIf you truly have the strength to defeat me, and can take my advice in heed, you will truly embody my spirit, and I will grant you my gift.$B$BIf you think you are worthy enough to challenge me, speak with me once more. Make sure you are ready, for I will not hold back.' where entry = 40534;
-- Spell ID 45045 (Armored Brewfest Kodo) change 'Afestive mount' to 'A festive mount'.
update spell_template set description = 'A festive mount, celebrating the joyous spirit of Brewfest.' where entry = 45045;
