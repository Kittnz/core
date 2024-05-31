-- https://turtle-wow.org/bug-report?id=3229 Low-level loot table has been deleted from NPC Rage Talon DRAGON Guard.
delete from creature_loot_template where item = 30015 and entry = 10366;