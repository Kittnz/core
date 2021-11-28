update item_template set quality = 1 where entry = 51217;

delete from item_loot_template where item = 51217 and entry = 50052;
delete from item_loot_template where item = 51217 and entry = 50050;
delete from item_loot_template where item = 51217 and entry = 50055;
delete from item_loot_template where item = 51217 and entry = 50053;
delete from item_loot_template where item = 51217 and entry = 50051;
delete from item_loot_template where item = 51217 and entry = 50054;

update quest_template set specialflags = 1 where entry = 60030;
update quest_template set specialflags = 1 where entry = 60031;
update quest_template set specialflags = 1 where entry = 60032;
update quest_template set specialflags = 1 where entry = 60033;
update quest_template set specialflags = 1 where entry = 60034;
update quest_template set specialflags = 1 where entry = 60035;
update quest_template set specialflags = 1 where entry = 60036;