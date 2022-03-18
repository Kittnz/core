-- Albino Snapjaw
replace into creature_loot_template values (3461, 18963, 2, 6, 1, 1, 0);  -- Oasis Snapjaw
replace into creature_loot_template values (13599, 18963, 2, 6, 1, 1, 0); -- Mudrock Snapjaw
replace into creature_loot_template values (4400, 18963, 2, 6, 1, 1, 0);  -- Aku'mai Snapjaw
replace into creature_loot_template values (4825, 18963, 2, 6, 1, 1, 0);  -- Stolid Snapjaw
replace into creature_loot_template values (2408, 18963, 2, 6, 1, 1, 0);  -- Snapjaw
-- Hawksbill Snapjaw
replace into creature_loot_template values (3461, 18965, 2, 6, 1, 1, 0);  -- Oasis Snapjaw
replace into creature_loot_template values (13599, 18965, 2, 6, 1, 1, 0); -- Mudrock Snapjaw
replace into creature_loot_template values (4400, 18965, 2, 6, 1, 1, 0);  -- Aku'mai Snapjaw
replace into creature_loot_template values (4825, 18965, 2, 6, 1, 1, 0);  -- Stolid Snapjaw
replace into creature_loot_template values (2408, 18965, 2, 6, 1, 1, 0);  -- Snapjaw
-- Leatherback Snapjaw
replace into creature_loot_template values (3461, 18966, 2, 6, 1, 1, 0);  -- Oasis Snapjaw
replace into creature_loot_template values (13599, 18966, 2, 6, 1, 1, 0); -- Mudrock Snapjaw
replace into creature_loot_template values (4400, 18966, 2, 6, 1, 1, 0);  -- Aku'mai Snapjaw
replace into creature_loot_template values (4825, 18966, 2, 6, 1, 1, 0);  -- Stolid Snapjaw
replace into creature_loot_template values (2408, 18966, 2, 6, 1, 1, 0);  -- Snapjaw
-- Loggerhead Snapjaw
replace into creature_loot_template values (3461, 18964, 2, 6, 1, 1, 0);  -- Oasis Snapjaw
replace into creature_loot_template values (13599, 18964, 2, 6, 1, 1, 0); -- Mudrock Snapjaw
replace into creature_loot_template values (4400, 18964, 2, 6, 1, 1, 0);  -- Aku'mai Snapjaw
replace into creature_loot_template values (4825, 18964, 2, 6, 1, 1, 0);  -- Stolid Snapjaw
replace into creature_loot_template values (2408, 18964, 2, 6, 1, 1, 0);  -- Snapjaw
-- Loggerhead Snapjaw
replace into creature_loot_template values (3461, 18967, 2, 6, 1, 1, 0);  -- Oasis Snapjaw
replace into creature_loot_template values (13599, 18967, 2, 6, 1, 1, 0); -- Mudrock Snapjaw
replace into creature_loot_template values (4400, 18967, 2, 6, 1, 1, 0);  -- Aku'mai Snapjaw
replace into creature_loot_template values (4825, 18967, 2, 6, 1, 1, 0);  -- Stolid Snapjaw
replace into creature_loot_template values (2408, 18967, 2, 6, 1, 1, 0);  -- Snapjaw
-- Water Snake
update item_template set name = 'Green Water Snake', description = 'Brought to Sparkwater Port aboard merchant ships, these short-lived reptiles are considered pests by the port\'s residents.', buy_price = 6000, sell_price = 1500, required_reputation_faction = 1001, required_reputation_rank = 4 where entry = 50068;
replace into npc_vendor (entry, item) values (80961, 50068); -- Vanessa Clang <Durotar Labor Union Quartermaster>
-- Scarlet Snake
replace into creature_loot_template values (3807, 50069, 2, 6, 1, 1, 0); -- Forsaken Assassin
replace into creature_loot_template values (2246, 50069, 2, 6, 1, 1, 0); -- Syndicate Assassin
replace into creature_loot_template values (5623, 50069, 2, 6, 1, 1, 0); -- Wastewander Assassin