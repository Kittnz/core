update quest_template set 

details = 'Ah, there you are, $N.\n\nYou have proven to be of some use in the past. I have observed that you have an uncanny knack for running errands.\n\nMy ancestors were exiled from Kalimdor seven thousand years ago, but you\'re mistaken if you think they created Quel\'thalas right away.\n\nThey landed in what is today known as the Tirisfal Glades. According to records left behind in Alah\'thalas, the first settlement was known as Ishnu\'danil. Naturally, this is something we consider worthy of exploring further, which is why I have sent my subordinate Thas\'alah to investigate this ancient location.\n\nHowever, I have not heard a word from him since, and to make matters worse, the records we found mention a curse of some kind that affected the minds of our ancestors who lived there.\n\nI need you to go there and find out what became of Thas\'alah.',
offerrewardtext = 'Arcanist Anu\'delen sent you?\n\nFinally, some goods news, this damned expedition has just been one disaster after another. We made progress at first but not long after, everything went downhill.\n\nOur equipment broke, people started hearing voices, and some are even claiming that this place is haunted.',
requestitemstext = 'Who are you, $r?'	 

where entry = 80289;

update quest_template set 

details = 'With all that has been going around here, I could use help from an adventurer like you.\n\nYou see, our people used magic to shape the land and create buildings like this, but this one appears to have been only partially complete and abandoned.\n\nI tried venturing inside myself but was immediately filled with dread and horror. It felt like it was consuming me, so I fled outside. But you, on the other hand, seem like someone who is not easily frightened.\n\nBefore I... left. I noticed a Stone Tablet etched into the cliff. Perhaps it can provide some clue as to what might\'ve happened here.\n\nCould you be so kind as to retrieve it for me?',
objectives = 'Obtain the tablet within the unfinished building.',
offerrewardtext = 'So it was haunted, after all? It\'s a shame we could not talk to the spirit, but I guess it\'s for the best.\n\nAnyways, let\'s see that tablet. Ah, it\'s written in Thalassian, that makes things a bit easier. It details the establishment of Ishnu\'danil as the new home of the Highborne and Alah\'aran. But look at this part.\n\nIt\'s a verse about a well, to be precise, a well of power. And what is this? Look here at the bottom.\n\nThere\'s a message inscribed here, but this does not match the writing style from before. It states: <Avoid the Shalla\'aran. Avoid the Ishnu\'danil. There is only darkness here.>\n\nIshnu\'danil translates to Fortune\'s Peak, but Shall\'aran means the Shadow Well.\n\nIf something that powerful lies somewhere around here, we must investigate further.',
requestitemstext = 'Did you get it?'	 

where entry = 80290;

update quest_template set 

details = 'My stubborn assistant, Thalo, claimed that the place was safe and had already gone further down.\n\nIf this Shadow Well is as powerful and dangerous as this text claims, you might want to find allies to help you with the further investigation. We must find out more and keep an eye out for Thalo.\n\nIt is unlikely, but he might still be alive.',
offerrewardtext = 'If you didn\'t find Thalo, it must mean that the skeleton was his... What a  shame.\n\nAnd what is this about slimes emerging from the waters of the well? Damnit, I was hoping for some good news, but this only indicates that something deep beneath the Tirisfal Glades was able to corrupt the well and spawn those creatures.\n\nIt would be best if you informed the Arcanist about our findings here and the potential danger it brings.\n\nI don\'t want to leave this place unattended even for a moment, and there must be more I can learn about these ruins.',
requestitemstext = 'You\'ve returned? And you appear to be in a good state of mind.'	 

where entry = 80291;

update quest_template set 

details = 'Don\'t worry about me. I have survived worse than this, and my guards will keep watch.\n\nWe must study this place further and find out more. There is still a lot to do.\n\nNow go, bring this information to Arcanist and let me continue my work.',
offerrewardtext = 'Most of his expedition is dead, and he decided to remain there?\n\nHas he lost his mind!? A haunted place with talks of dark whispers and monsters coming out of the corrupted well is certainly not what I was hoping for us to find there.\n\nNevertheless, the information you brought may prove valuable to us at some point. This is a lot to take in, and it\'s a damn shame that such a powerful well ended up being corrupted.\n\nAnd this is where your work ends, and mine begins.\n\nOh, and I almost forgot, here is little something for your valiant efforts.',
requestitemstext = 'Took you long enough, $N. You\'re alone.\n\nWhere is Scryer Thas\'alah?'	 

where entry = 80292;

update creature_template set name = 'Dark Ooze' where entry = 70891;
delete from creature_template where entry = 50056;