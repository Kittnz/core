replace into migrations values ('20191230204403');

update creature_template set scale = 0.3 where entry in (15706, 15721);
update creature_template set display_id1 = 15902 where entry = 15524;
update item_template set required_level = 20, required_skill = 0, required_skill_rank = 0 where entry = 21044;