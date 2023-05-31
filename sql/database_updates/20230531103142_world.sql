-- Item "Font of Arcana" (entry 61484), needs to have its drop chance increased to 72% and must drop from Azurescale Manaweaver (Entry 60910).
update creature_template set loot_id = 60910 where entry = 60910;
update creature_loot_template set ChanceOrQuestChance = -72 where entry = 60910 and item = 61484;
