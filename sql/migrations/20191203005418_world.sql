replace into migrations values ('20191203005418');

replace into page_text (entry, text) values
(1000063, 'The spectators want to see real battles! Don\'t rig them!');

update gameobject_template set name='WINTRADING IS FORBIDDEN', data0 = 1000063, data2 = 1 where entry = 1000063;