-- Set correct values for Argent Quartermaster Hasana gossip menu option:
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 3421, condition_id = 478 WHERE menu_id = 3421;
-- Argent Quartermaster Hasana:
UPDATE creature_template SET gossip_menu_id=3421 WHERE entry = 10856;