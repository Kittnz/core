-- Quest 40949, short description changed.
update quest_template set objectives = 'Slay Guard Captain Marson and gather the Rust-Covered Key to free Liam Greymane.' where entry = 40949;
-- Quest A Crossroads Deal (40954), main description changed.
update quest_template set details = 'Perhaps the Prince will feel he has gained more than he bargained for. I have seen a fire in his eyes, one that you should remind him of.$B$BIn dire times, you must not be half-hearted about your actions. There is no greater evil than that which hurts those you care for.$B$BReport back to your Prince, and assure him that my loyalty is towards the common folk of the land.' where entry = 40954;
-- Quest Vilest of Men (40953), main description changed.
update quest_template set details = 'It\'s clear to me that Prince Greymane seeks aid from my research group. I am afraid he must\'ve misunderstood us, however, as we do not intend to reach immortality. Rather, we seek power and healthiness beyond what the human body is capable of. I assume you\'ve already figured out our little secret. If not, let me put this as bluntly as possible: we have accepted the worgen curse.$B$BWe are more than willing to aid Liam in reclaiming his city and his lands; our alchemical knowledge, our teeth, and our latent power are all at his disposal.$B$BWe have yet to have full control of our abilities, but I think I have discovered a way to aid in that regard. Travel northwest to the Dryrock Valley and kill as many of the traitorous ones as possible. Drain their blood and bring it back to me. It will play an important part in our research.' where entry = 40953;
-- NPC Liam Greymane (61458), greeting changed.
update broadcast_text set male_text = 'You have given me back my freedom and, with it, the hope necessary to push on. I am no fool, nor are the men who remain loyal to our cause. Though the day may come that I must secure our future, rest assured that I will do so.' where entry = 61458;
-- NPC Liam Greymane (61457), greeting changed.
update broadcast_text set male_text = 'It is not the absence of liberty that holds me, stranger, but the heavy burden of my guilt. The decay of these lands at the hands of heretics has left a blight on my spirit. I have lost my parents, my title, and my freedom. Despite the darkness I bear, I still find hope in my sister, in my countrymen, and now in you.' where entry = 61457;
-- NPC Marshal Redpath (Entry 2263) add gossip flags, add gossip text : "What brings you around to Southshore?"
set @gossip_menu_id = 41491; set @magic_number = 2263;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What brings you around to Southshore?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set npc_flags = 3, gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- NPC Snarlclaw (entry 61405), change display ID to 1947
update creature_template set display_id1 = 1947 where entry = 61405;
