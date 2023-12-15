-- fix text for new enchant
update spell_template SET Description = 'Permanently enchant a two-handed melee weapon to grant +2 Intellect.' WHERE entry = 45071; 
-- make aspect of seradane proc cooler
update spell_template SET spellVisual1 = 3860, spellIconId = 263, name = "Wrath Volley", effectBasePoints1 = 129, description = 'Unleashes a wave of energy that blasts up to 3 targets for $s1 Nature damage.' WHERE entry = 45076; -- chain lightning

-- Fix new mob's respawn timers.

UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `guid` > 2578957 AND `spawntimesecsmin` = 120;