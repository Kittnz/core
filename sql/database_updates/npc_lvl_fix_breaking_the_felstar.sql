-- Breaking the Felstar. NPCs lvl fix.
delete from creature_template where entry in (60425,60426,60427,60429);
REPLACE INTO creature_template VALUES
(60425, 12334, 0, 0, 0, 'Dra\'lox Felstar', '', 0, 25, 25, 4200, 4200, 0, 0, 890, 90, 0, 1, 1.14286, 0, 30, 30, 150, 1, 1, 117, 151, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 32.968, 45.331, 100, 3, 0, 60425, 0, 0, 0, 0, 0, 0, 0, 0, 7164, 8258, 15572, 0, 0, 0, 222, 295, 'EventAI', 0, 1, 0, 0, 3, 4623, 0, 0, 0, 0, 0, 0, 'npc_dralox_felstar'),
(60426, 2011, 0, 0, 0, 'Felstone Guardian', '', 0, 24, 25, 664, 712, 0, 0, 1026, 90, 0, 1, 1.14286, 0, 30, 30, 150, 0, 1, 36, 46, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 35.6224, 48.9808, 100, 3, 0, 6073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 48, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60427, 1185, 0, 0, 0, 'Felstone Guardian', '', 0, 24, 25, 664, 712, 0, 0, 1026, 90, 0, 1, 1.14286, 0, 30, 30, 150, 0, 1, 36, 46, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 35.6224, 48.9808, 100, 3, 0, 6073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 48, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60429, 18220, 18221, 18222, 18223, 'High Elf Ranger', '', 0, 25, 25, 712, 712, 0, 0, 1026, 231, 2, 1, 1.14286, 0, 50, 30, 0, 0, 1, 36, 46, 0, 106, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 35.6224, 48.9808, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 48, 'EventAI', 0, 3, 0, 0, 3, 80216, 0, 0, 0, 0, 525312, 0, '');