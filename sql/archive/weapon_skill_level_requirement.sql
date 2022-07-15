-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1283

/*

On current Turtle WoW, weapon training requires level 5, but on Vanilla, it only required level one as can be seen here:

https://wowpedia.fandom.com/wiki/Weapon_master?type=revision&diff=22127&oldid=5295

This edit is from Vanilla-time and has not been challenged, and in addition to that, while polearms are clearly mentioned as requiring a certain level in the WoWhead comments of the era, none do for other weapon skills; I think this is sufficient evidence to say those requirements did not exist.

*/

update npc_trainer set reqlevel = 1 where spell in (15994, 15988, 1847, 15983, 15995, 15989, 15986, 15987, 15996, 15997, 15992, 15985, 15984);