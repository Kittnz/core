-- Fox name for GO Tree of Lashes:
delete from gameobject_template where entry = 2010796;
REPLACE INTO gameobject_template VALUES (2010796, 9, 25251, 'Tree of Lashes', 0, 0, 1, 50526, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '');
REPLACE INTO page_text VALUES (50526, 'The Tree of Lashes is covered in countless wounds of varied age. Some still drip with sap, while others are faint, ghostly scars. One name is torn into the tree\'s flesh, and bleeds still: "Ariele."', 0);
-- When pulling one scarab it pull the other one around him (8 yards):
REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES (7269, 209, 7269, 3, 8);
