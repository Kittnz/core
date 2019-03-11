
-- ### Custom creature_template entries must remain in 50000-51000 entry range.

-- Battlemasters: Tagnar Woundmaker and Kelir Thickbeard
-- TODO: Set correct `faction`.

delete from `creature_template` where entry in (50000, 50001);

insert into `creature_template` (`entry`, `display_id1`, `name`, `subname`, `level_min`, `level_max`, `health_min`, `health_max`, `faction`, `npc_flags`, `script_name`) values
('50000', '15032', 'Tagnar Woundmaker', 'War Recruiter', '60', '60', '7845', '7845', '35', '1', 'npc_battlemaster');

insert into `creature_template` (`entry`, `display_id1`, `name`, `subname`, `level_min`, `level_max`, `health_min`, `health_max`, `faction`, `npc_flags`, `script_name`) values
('50001', '15389', 'Kelir Thickbeard', 'War Recruiter', '60', '60', '7845', '7845', '35', '1', 'npc_battlemaster');

