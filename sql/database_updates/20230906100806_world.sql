-- Quest 'A Royal Heist' from Luke Agamand in Blackthorn's Camp in Gilneas is not marked as Dungeon Quest besides being one.
update quest_template set type = 81 where entry = 41113;
-- Weird spaces at the start of paragraphs (second in the first quest and in the last two paragraphs in the second).
update quest_template set Objectives = 'Ah, so you have found it after all.$B$BThe ravages of time have taken their toll upon the scepter, diminishing its former might. Yet, even in its weakened state, its aura pulsates with an undeniable darkness, a lingering remnant of forbidden magic.' where entry = 40994;
update quest_template set details = 'Regrettably, the crystal that once adorned the apex of the scepter has been lost to the ravages of time. Its whereabouts remain unknown, and locating it may prove to be an insurmountable challenge. However, despair not, for I have devised an alternative solution.$B$BDuring the Alterac Succession Crisis, a figure known as Lord Prestor frequented Gilneas City and established a close bond with the king himself. As a gift, he bestowed upon Genn a potent artifact known as the Shard of Midnight.$B$B Legends abound regarding its corrupting influence, and it is said that the Shard has been securely sealed within the Greymane Tower.$B$BYour task is clear: locate the Shard of Midnight and restore it to its rightful place within the Scepter. Only then shall its power be fully rekindled.' where entry = 40996;
-- Fix desc (by Dragunovi).
update spell_template SET description = 'Your Water Shield ability grants an additional 8 mana per 5 sec. while active.' WHERE entry = 47357; -- Calming River