-- The following npcs need their scale set to 1. 61398, 61397, 61396, 61395, 61394, 61393, 61391, 61390, 61389, 61388, 61366, 61365, 61364, 61363.
update  creature_template set scale = 0 where entry in (61398, 61397, 61396, 61395, 61394, 61393, 61391, 61390, 61389, 61388, 61366, 61365, 61364, 61363);
-- Set mana of npc Nighthowl Shadowcaster (entry 61238) to 1299.
update creature_template set mana_min = 1299, mana_max = 1299, unit_class = 2 where entry = 61238;
-- The following npcs have the error 'incorrect syntax' 61366, 61365, 61364, 61363, 61356, 61357, 61358, 61359, 61367.
REPLACE INTO creature_display_info_addon (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20283, 0, 0, 0, 0),
(20263, 0, 0, 0, 0),
(20277, 0, 0, 0, 0),
(20275, 0, 0, 0, 0),
(20287, 0, 0, 0, 0),
(20288, 0, 0, 0, 0),
(20289, 0, 0, 0, 0),
(20290, 0, 0, 0, 0),
(20291, 0, 0, 0, 0),
(20292, 0, 0, 0, 0),
(20293, 0, 0, 0, 0),
(20294, 0, 0, 0, 0),
(20295, 0, 0, 0, 0),
(20296, 0, 0, 0, 0);
-- Create gameobject titled 'Joshua the Redeemer' which uses the same display ID as the gobject 'Grim Batol Memorial' (entry 1772030) it should be readable with the following text (stone background).
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2011052, 9, 218, 'Joshua the Redeemer', 0, 0, 1, 50630, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(50630, 'Hierophant Joshua the Redeemer was the holiest man that ever walked the land of Gilneas: Through his blessed sermons he brought salvation to our country, illuminating our souls in the grace of the Holy Light. May our elder brother rest in sacred peace, and when the darkest of days fall upon our city, may his hallowed memory bring solace to our troubled hearts.', 0);
-- Npc Elaroth Ranworth (entry 61258), change gossip text to:
update broadcast_text set male_text = 'Welcome to my lighthouse.$B$BI should warn you, I may not have the most welcoming accommodations. I simply keep the fire burning to guide ships from hitting the shoal.$B$BWhat brings you here, anyway?' WHERE entry = 61258;
