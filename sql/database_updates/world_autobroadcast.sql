delete from mangos_string where entry between 50000 and 50006;
delete from autobroadcast where string_id between 50000 and 50006;

replace into mangos_string (entry, content_default) values

('50000', '请点击以下链接加入我们的KOOK社区：https://kook.top/jzgWqY');

replace into autobroadcast (string_Id) values (50000);