
update `creature_template` set `npc_flags`='1' where `entry`='16547';		

-- Speedy's greetings:

replace into `broadcast_text` (`ID`, `MaleText`) values
('90000', 'Welcome to Turtle WoW Shell Shop, $n.\n\nDonations are a way to help us improve your experience here at Turtle WoW, as well as help pay for general server costs, advertisement campaigns, developers, and overall production.\n\nYou can buy Turtle Tokens via PayPal (info.turtlewow@gmail.com, include your account name). The ratio is 10:1, which means 1 Euro gives you 10 Turtle Tokens.\n\nItem previews are available on our website.');
replace into `npc_text` (`ID`, `BroadcastTextID0`) values ('90000', '90000');

-- Quote inside shop category:

replace into `broadcast_text` (`ID`, `MaleText`) values
('90001', 'When you donate, you help keep us online.\nThanks for your continued support!');
replace into `npc_text` (`ID`, `BroadcastTextID0`) values ('90001', '90001');

-- Every player will have this companion at first login:

delete from `playercreateinfo_item` where `itemid` = 23002; 
insert into `playercreateinfo_item` (`race`, `class`, `itemid`) values ('1', '1', '23002'),('2', '1', '23002'),('3', '1', '23002'),('4', '1', '23002'),('5', '1', '23002'),('6', '1', '23002'),('7', '1', '23002'),('8', '1', '23002'),('1', '2', '23002'),('3', '2', '23002'),('1', '3', '23002'),('2', '3', '23002'),('3', '3', '23002'),('4', '3', '23002'),('6', '3', '23002'),('8', '3', '23002'),('1', '4', '23002'),('2', '4', '23002'),('3', '4', '23002'),('4', '4', '23002'),('5', '4', '23002'),('7', '4', '23002'),('8', '4', '23002'),('1', '5', '23002'),('3', '5', '23002'),('4', '5', '23002'),('5', '5', '23002'),('7', '5', '23002'),('8', '5', '23002'),('2', '7', '23002'),('6', '7', '23002'),('8', '7', '23002'),('1', '8', '23002'),('2', '8', '23002'),('3', '8', '23002'),('4', '8', '23002'),('5', '8', '23002'),('6', '8', '23002'),('7', '8', '23002'),('8', '8', '23002'),('1', '9', '23002'),('2', '9', '23002'),('5', '9', '23002'),('7', '9', '23002'),('4', '11', '23002'),('6', '11', '23002');

-- Assign shop script to Speedy:

update `creature_template` set `script_name`='npc_shop' where `entry`='16547';