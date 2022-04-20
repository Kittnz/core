delete from creature_involvedrelation where quest = 40366;
replace into creature_involvedrelation values (60652, 40366);
update creature_template set script_name = '' where entry = 60652;

update quest_template set 

objectivetext1 = null, reqcreatureorgoid1 = 0, 
objectives = 'Deliver the Blessed Prairie Pelts to Waya Tallgrain.',
offerrewardtext = 'These pelts... The Dryad gave them to us as an offering?\n\nTheir quality is astounding. With pelts such as these, the newborn are sure to be protected from the cold nights and harsh winters!\n\nI will let all the families know who is to thank for these pelts. If this noble Dryad wishes to earn our friendship with more deeds like these, we will not deny her. We understand she is not a Centaur, she is one with nature, and if she continues to assist us in such a way, even the most stubborn Tauren will see this as well.\n\nThank her for the offering! Let her know that she is welcome in Bloodhoof Village.',
requestitemstext = 'How can I help you, $r?',
reqitemid1 = 60513, reqitemcount1 = 8, srcitemid = 60513, srcitemcount = 8 
where entry = 40366;
