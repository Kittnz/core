-- Misc. fixes:

update quest_template set title = 'They Call Him Morgan the Storm' where entry = 60152;
update quest_template set description = '$N, I hear you are on your way to slay the scoundrels they call leaders of the worst crew of pirates, the Bloodsail Buccaneers.\n\nYou see these fools took a new member and they in their deluded mind think he will aid them greatly.\n\n<Baron Revilgaz scoffs.>\n\nI have a man on the inside, his name is Morgan Storm, look for a fellow that won’t shank you on sight.' where entry = 60152;
update quest_template set objective = 'Find Morgan the Storm' where entry = 60152;
update creature_template set name = 'Morgan the Storm' where entry = 51607;