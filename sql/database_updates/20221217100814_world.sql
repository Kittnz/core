UPDATE spell_template SET spellIconId = 1794 WHERE entry = 25675;

set @gossip_menu_id = 41316; set @magic_number = 61173;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Lok\'tar! Merry Winter Veil to you little $Gboy:girl;!\n\nThere is free food and lots of merriment courtesy of Smokywood Pastures!\n\nMake sure you have a splendid time... And no you may not sit on my lap.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Make NPC GUID 2573900 play emote 415
REPLACE INTO `creature_addon` (`guid`, `display_id`, `mount_display_id`, `equipment_id`, `stand_state`, `sheath_state`, `emote_state`, `auras`) VALUES (2573900, 0, 0, 0, 0, 0, 415, NULL);

UPDATE `quest_template` SET `RequestItemsText` = 'Yeah, you get those scales yet kid?' WHERE `entry` = 40768;

UPDATE `quest_template` SET `OfferRewardText` = 'Not bad, good work out there, making the jungle just a little bit easier to handle is always noble work for us here.\n\n Here, as thanks.' WHERE `entry` = 40768;

UPDATE `quest_template` SET `Objectives` = 'Gather 20 Wavecrest Scales for Zalwiz Hardlug at Bixxle\'s Storehouse in Tel\'Abim.' WHERE `entry` = 40768;