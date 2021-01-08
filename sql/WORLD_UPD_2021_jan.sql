update creature_template set gold_min = 24055, gold_max = 31418 where entry = 15544;
delete from spell_effect_mod where Id = 26093;
update areatrigger_teleport set required_level = 60 where id in (4008, 4010);
delete from gameobject where guid = 4007494;
update item_template set required_reputation_faction = 0, required_reputation_rank = 0 where entry = 22999;

update item_template set sheath = 0 where entry = 80503;
update item_template set required_level = 23 where entry = 80722;
update item_template set required_level = 30 where entry = 80730;
update item_template set inventory_type = 26 where entry = 80546;
update item_template set display_id = 19260, inventory_type = 22 where entry = 80635;

update quest_template set requiredraces = 178 + 256 where entry in (1859, 1963, 1858);
update quest_template set requiredraces = 68 + 512 where entry in (6064, 6084, 6085, 6086);
update quest_template set requiredraces = 4 + 512 where entry in (6074, 6075, 6076);

update quest_template set requiredraces = 1 + 512 where entry = 1641;
update quest_template set requiredraces = 77 + 512 where entry in (1793, 1642, 7638, 1661);

update quest_template set details = 'Greetings, mon!\n\nI got an offer for you. Some of my brothers and I are setting up a new settlement in Kalimdor.\n\nIt will be far away from home, but the threat of the undead and the Alliance can’t be ignored.\n\nHowever, we are running into some difficulties doing that. If you can spare the time, we need your help. Talk to Deino in Orgrimmar. She is the mage trainer in the Valley of Spirits.\n\nYou be getting a nice reward for your time, too!' where entry = 80300;

-- Restore Engie's quest text:

update quest_template set details = 'Hey, $r, down here! If you have some spare time, I could really use your help. You see, there\'s this kodo in Un\'goro Crater. His name is Dodogo. I\'ve heard that he gives you a gift if you feed him bloodpetals. It sounds like this gift would have a nice surprise in it, and I love surprises! Anyways, these sprouts are found all over the crater, and I’d really love to get my hands on some. Bring me 30 bloodpetals and I\'ll pay you. I\'ll even give you something I cooked from one of my original recipes!' where entry = 60010;
update quest_template set objectives = 'You\'re pretty sure Reas wants you to bring 30 bloodpetal sprouts to her in Gadgetzan.' where entry = 60010;
update quest_template set offerrewardtext = 'Hey, there we are! Thanks! As promised, some money, and some pizza bottles!\n\nOh, I didn\'t mention those?' where entry = 60010;
update quest_template set requestitemxtext = 'Didja get the flowers?\n\nI sure hope Dodogo gives me the recipe for the elixir soon. Almost out of money...' where entry = 60010;