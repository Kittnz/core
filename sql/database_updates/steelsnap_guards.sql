-- Steelsnap's (guid 21698) guards (guids 21660,21661) should be in formation rather than set up with identical waypoints. This corrects pathing problems:
update creature set movement_type = 0 where guid in (21661, 21660);
delete from creature_linking where guid in (21698,21660,21661);
insert into creature_linking (guid, master_guid, flag) values
(21660,21698,515),
(21661,21698,515);	