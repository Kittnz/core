update creature_template set script_name = 'rented_mount', npc_flags = 1 where entry in (4779, 4710, 12354, 12355);

update creature_template set name = 'Brown Riding Ram' where entry = 4779;
update creature_template set name = 'Gray Riding Ram' where entry = 4710;
update creature_template set name = 'Brown Riding Kodo' where entry = 12354;
update creature_template set name = 'Gray Riding Kodo' where entry = 12355;

-- Todo: The ram seems to like you.
--       The kodo seemst to like you.