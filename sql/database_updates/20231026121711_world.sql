-- Quest Name: Find Melanastrazsa
-- Issue: "Demons still remain in the Hyjal to this day."
-- Proposed fix:  "Demons still remain in Hyjal to this day."

UPDATE `quest_template` SET `Details` = 'If Fel is in the soil, then it means the demons are up to something. Travel up the road until you arrive near a scorched land. It was one of the sites of the battle of Mount Hyjal.$B$B The evil ugly demonlord Archimonde himself arrived and destroyed everything that was once there! Demons still remain in Hyjal to this day.$B$B When I made my way here I ran into a young pretty red Dragon that was investigating the demons. Seek her out!' WHERE `entry` = 41106;