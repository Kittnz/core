REPLACE INTO `areatrigger_tavern` (`id`, `name`) VALUES (204, 'Stonetalon Mountains - Bael Hardul Inn');
REPLACE INTO `areatrigger_template` (`id`, `map_id`, `x`, `y`, `z`, `radius`) VALUES (204, 1, 928.15, -830.01, 166.1, 20);

-- 60920 (Oaken Braid bands,) (rounded petrified bark - not on database, https://dev.turtle-wow.org/#!/itemcreator/WzAsNCw2LCJSb3VuZGVkIFBldHJpZmllZCBCYXJrIiwiIiwxODQ4OCwyLDAsMSwxMjU4MCwzMTQ1LDE0LC0xLC0xLDM2LDAsMCwwLDAsMCwwLDAsMCwwLDEsMCw0LDYsNyw1LDAsbnVsbCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMCwwLDAsMTYsNzI1LDAsMCwwLDAsMCwwLDAsMCwwLDAsLTEsMCwtMSwwLDAsMCwwLC0xLDAsLTEsMCwwLDAsMCwtMSwwLC0xLDAsMCwwLDAsLTEsMCwtMSwwLDAsMCwwLC0xLDAsLTEsMSwwLDAsMCwwLDAsMiw0LDAsMCwwLDAsMCwwLDAsNywwLDAsMCwwLDEsIk5VTEwiXQ==) , 60921 (Prancing Dryad Dress-Skirt, already correct)

UPDATE `quest_template` SET `RewChoiceItemId1` = 60920 WHERE `entry` = 40677;

replace into item_template values
 ('91765', '4', '6', 'Rounded Petrified Bark', '', '18488', '2', '0', '1', '12580', '3145', '14', '-1', '-1', '36',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '6', '7', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '725', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '4', '0', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);
 
 UPDATE `quest_template` SET `RewChoiceItemId3` = 91765 WHERE `entry` = 40677;