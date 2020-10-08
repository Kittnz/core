update quest_template set prevquestid = 0 where entry = 60116;

-- scripts for ony/nef turnins to npc, commented out cause i'm not sure they have the same entry, torta please check
update creature_template set script_name = 'npc_overlord_runthak' where entry = 14392;
update creature_template set script_name = 'npc_major_mattingly' where entry = 14394;
update creature_template set script_name = 'npc_field_marshal_afrasiabi' where entry = 14721;
update creature_template set script_name = 'npc_overlord_saurfang' where entry = 14720;

-- Misc.

update quest_template set 
details = 'Hey, $R, down here!\n\nIf you got any spare time I could really use a favor. You see, I hear that there\'s this big creature in northern Un’Goro Crater. I think the Horde calls it a kodo.\n\nIt seems that this creature likes to eat a lot of bloodpetals. It might even be its favorite food, who knows!\n\nAnyway, these sprouts are found all around the crater, and I’d really love to get my hands on some. Apparently there''s also a kodo named Dodogo who gives you a package if you feed it.\n\nIt sounds like this package has a nice surprise in it, and I love surprises!\n\nBring me 30 of these sprouts and I will pay you. I will also give you something I cooked, right here in Gadgetzan. It’s a new original recipe!',
requestitemstext = 'Have you collected the sprouts yet?\n\nHopefully I get that recipe I’ve been searching for!',
objectives = 'Reas wants you to bring 30 Bloodpetal Sprouts.',
offerrewardtext = 'Ah yes! \n\nThank you very much my friend, you made my day. Here, I’ll also make yours!\n\nThis is for you, a few coins and my original recipe: The Pizza Bottle. Trust me you won’t find anything like this ever again! What\'s a pizza you say? It\'s a local delicacy. Quite delicious!\n\nGoodbye $R, and remember to stay safe inside during sandstorms!\n\nMent to be a text update for the quest with the same name which is already in game.' where entry = 60010;