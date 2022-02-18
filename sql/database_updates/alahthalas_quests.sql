-- A Diplomatic Mission --
delete from quest_template where entry = 40371;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (80256,40371,2,2040,60,60,512,0,'A Diplomatic Mission','Greetings, $N. While others see our people as only refugees and survivors of a once-great nation, we must show the rest of the Alliance that the Quel\'dorei are here to stay.\n\nWith Alah\'thalas prospering and our people slowly mobilizing into a formidable force, this is a perfect time for us to officially join the Alliance.\n\nOur magisters have prepared a missives that needs to be delivered directly to the leaders of the Alliance, and I think that the honor of delivering such an important message should be yours.','Seek audience with all four Alliance leaders and represent Alah\'thalas interests.','Have you met them yet?','As expected... The Night Elves continue to hold their ancient grudge. Although this is not an ideal situation, we still got positive replies from the majority of the Alliance members.\n\nNow we can focus on earning their trust and forging new allies. I hope we can count on you again should such need arise, and $N, thank you for all you have done.',83016,1,83017,1,83018,1,83019,1,0,0,0,0,0,0,0,0,83015,4,0,0,269,350,0,0,0,0,0,0,0,0,0,65018,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (80245, 40371);
replace into creature_involvedrelation (id, quest) values (80245, 40371);

-- Appealing to the Alliance: Humans --
delete from quest_template where entry = 40372;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (80256,40372,2,2040,60,60,512,0,'Appealing to the Alliance: Humans','Our magisters have prepared a missive that needs to be delivered directly to the Highlord Bolvar Fordargon, and I think that the honor of delivering such an important message should be yours.\n\nOnce you receive Stormwind\'s response, return to me with the news.','Deliver a Sealed Missive to Highlord Bolvar Fordragon.','What is it, $R?','I have no objections. During the Second war, the High Elves were instrumental in defeating the Orcish Horde. And I cannot deny that the refugees have done a lot for the Alliance.\n\nIt would be remiss of me to reject their aid. Even Lady Prestor has taken a personal interest in this topic and has lobbied to send the military abroad to help. With that said, please give my reply to Alah\'thalas.',83015,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,269,150,0,0,0,0,0,0,0,0,0,83016,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (80245, 40372);
replace into creature_involvedrelation (id, quest) values (1748, 40372);

-- Appealing to the Alliance: Dwarves --
delete from quest_template where entry = 40373;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (80256,40373,2,2040,60,60,512,0,'Appealing to the Alliance: Dwarves','This one needs to be delivered to King Magni Bronzebeard himself, and I do not doubt that having you be the one to do it will only improve the outcome.\n\nOnce you receive Ironforge\'s response, return to me with the news.','Deliver a Sealed Missive to the King Magni Bronzebeard.','What is it, $R?','The Senate will need to discuss this matter in detail. But know that I have been supportive of the Quel\'dorei ascension in the Alliance for a while now. Especially after all the refugees have done to help secure Loch Modan.\n\nNot to mention the aid we received from them during the Second War, without their help and that of the Alliance, who knows how the war would have turned out for us. As I see it, now is our turn to return the favor. Deliver my reply, and I wish you safe travels.',83015,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,269,150,0,0,0,0,0,0,0,0,0,83017,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (80245, 40373);
replace into creature_involvedrelation (id, quest) values (2784, 40373);

-- Appealing to the Alliance: Gnomes --
delete from quest_template where entry = 40374;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (80256,40374,2,2040,60,60,512,0,'Appealing to the Alliance: Gnomes','We haven\'t had the pleasure of working too closely with the Gnomes, but they are an invaluable ally and a valued member of the Alliance. That is why I need you to deliver this message to the High Tinker Mekkatorque.\n\nOnce you complete this task, make sure to report back to me with the news.','Deliver a Sealed Missive to the High Tinker Mekkatorque.','What is it, $R?','Hmm, an expected proposal. Even if we ignore the deeds that the High Elves have done in the past, one cannot deny that having another powerful ally on our side could prove beneficial.\n\nYes, you may let our friends at Alah\'Thalas know that they indeed have the support of our brilliant people.',83015,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,269,150,0,0,0,0,0,0,0,0,0,83019,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (80245, 40374);
replace into creature_involvedrelation (id, quest) values (7937, 40374);

-- Appealing to the Alliance: Night Elves --
delete from quest_template where entry = 40375;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (80256,40375,2,2040,60,60,512,0,'Appealing to the Alliance: Night Elves','Lastly, we prepared a unique message just for High Priestess Tyrande Whisperwind. While we expect a negative response, I hope that Tyrande alone can at least see that only by working together can we craft a better future for both our nations.\n\nGood luck, and please return with her reply as soon as you receive it.','Deliver a Sealed Missive to the High Priestess Tyrande Whisperwind.','What is it, $R?','This again?! Must I remind everyone that the Highborne were responsible for the Legions invasion? And again, they betrayed us by unleashing a magical storm on Ashenvale. Not to mention their stubbornness to reject their use of Arcane magic and even having the audacity to spread its use to the Human nations.\n\nWe will have no part in this, so our answer remains clear. The Night Elves won\'t allow history to repeat, and we refuse to let Quel\'dorei join the Alliance. You got your answer, now go. I do not wish to waste my time on this topic again.',83015,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,269,150,0,0,0,0,0,0,0,0,0,83018,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (80245, 40375);
replace into creature_involvedrelation (id, quest) values (7999, 40375);

update quest_template set prevquestid = 40371 where entry = 40049;