-- NPCs "Healing Ward IV" no longer drop loot https://turtle-wow.org/bug-report?id=6746
delete from creature_loot_template where entry = 3844;