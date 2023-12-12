-- Remove money reward from quest A Troubling Presence.
update quest_template set reworreqmoney = 0 where entry = 41193;
-- Remove money reward from quest Thalassian Goulash.
update quest_template set reworreqmoney = 0 where entry = 41190;
-- Remove money reward from quest Safety for Refugees.
update quest_template set reworreqmoney = 0 where entry = 41189;
-- Remove money reward from quest A Crown of Flowers.
update quest_template set reworreqmoney = 0 where entry = 41191;
-- Change short objective of quest A Crown of Flowers to "Bring ten flowers to Avenant so he can make a crown of flowers for Jolie."
update quest_template set objectives = 'Bring ten flowers to Avenant so he can make a crown of flowers for Jolie.' where entry = 41191;
-- Gob 2020072 set scale to 0.4
update gameobject_template set size = 0.4 where entry = 2020072;
-- Add quest flag to Tiriel Brightwater.
update creature_template set npc_flags = 135 where entry = 61831;
-- Quest "The Wrath of the Light Fall Upon Thee" should be marked as Elite.
update quest_template set type = 1 where entry = 41200;
