-- Skinning tables for Blackstone:
update creature_template set skinning_loot_id = 3126 where entry in (61660,61661,61662); -- NPC Stonetail Scorpid, Stonetail Lasher, Blackvenom Scorpid make skinnable, copy skinning loot from npc 3126.
update creature_template set skinning_loot_id = 525 where entry in (61658,61659); -- NPC Ashpaw Hyena, Ashpaw Hunter make skinnable, copy skinning loot from npc 525.
