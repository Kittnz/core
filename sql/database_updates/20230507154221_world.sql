-- Link Greymane Set to the invidual pieces
update item_template set set_id = 622 where entry = 61313; -- Greymane Helmet
update item_template set set_id = 622 where entry = 61324; -- Greymane Shoulders
update item_template set set_id = 622 where entry = 61376; -- Greymane Gauntlets
update item_template set set_id = 622 where entry = 61378; -- Greymane Legplates
update item_template set set_id = 622 where entry = 61377; -- Greymane Sabatons
update item_template set set_id = 622 where entry = 61379; -- Greymane Vambraces

-- Added repair flag to NPC Argon Halmantle:
UPDATE `creature_template` SET `npc_flags` = 16388 WHERE `entry` = 91982;

-- Removed duplicate Kul TIras subname for Kul Tiras NPCs:
UPDATE `creature_template` SET `subname` = '' WHERE `subname` = 'Kul Tiras';
