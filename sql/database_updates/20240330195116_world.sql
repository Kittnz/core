-- NPCs "Healing Ward IV" no longer drop loot https://turtle-wow.org/bug-report?id=6746
delete from creature_loot_template where entry = 3844;
-- NPC "Tamaala Bloodhoof" no longer appears as a male tauren. -- https://turtle-wow.org/bug-report?id=6776
update creature_template set display_id1 = 2121 where entry = 65137;