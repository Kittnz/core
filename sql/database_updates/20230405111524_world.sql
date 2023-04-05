-- NPC Bloodclaw Worgen (Entry 61251), Bloodclaw Alpha (61252), and Bloodclaw Rager (61253) all look like wisps and need their display ID corrected to 61191
update creature_template set display_id1 = 18174 where entry in (61251,61252,61253);
-- NPC Brother Elias (61387) change display ID to 18677
update creature_template set display_id1 = 18677 where entry = 61387;
-- NPC Odon Shademoore (61380) change display ID to 221
update creature_template set display_id1 = 221 where entry = 61380;
-- npc 61374, npc 61375 error incorrect syntax
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(18174, 0, 0, 0, 0),
(18728, 0, 0, 0, 0),
(19137, 0, 0, 0, 0);
-- NPC Frell Rosewick, change scale to 1
update creature_template set scale = 0 where entry = 61381;
-- Make 2h sword weapon, grey quality with display ID 60981 with the name 'Blackwald Sword - Monster'
REPLACE INTO item_template VALUES
(61242, 2, 8, 'Monster - Sword2H, Blackwald Sword', '', 60981, 1, 0, 1, 21, 4, 17, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);
-- Add Greeting to npc 61259.
delete from broadcast_text where entry = 61259;
REPLACE INTO broadcast_text VALUES
(61259, 'Gilneas has seen dark days, but with newfound allies such as yourself, there remains hope yet. I feared the Alliance would have abandoned us, yet here we stand.$B$BI will bend no knee to these Alteraci scum. We will prevail.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Add Greeting to npc 61257.
delete from broadcast_text where entry = 61257;
REPLACE INTO broadcast_text VALUES
(61257, 'It shall always be a Greymane who sits atop the Gilnean throne. It is by the will of my Lord that this will come to pass once again.$B$BI admit, I have little trust in outsiders, but I realize such attitudes have doomed us to these times we live in.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Add Greeting to npc 61260.
delete from broadcast_text where entry = 61260;
REPLACE INTO broadcast_text VALUES
(61260, 'The Kirin Tor called Arugal a charlatan using cheap parlor tricks to pass for a mage. If only they could have understood his genius and mine.$B$BThe so-called Worgen curse is a blessing: With Arugal\'s research, we can achieve immortality, never again to fear sickness or frailty, empowered as we are with strength beyond human comprehension.$B$BWe have yet to test the curse on races other than humans and dwarves, but we are not so depraved as to force it upon those unwilling.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);