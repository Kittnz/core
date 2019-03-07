
-- Creature requires 'gossip; flag to interact with players.

UPDATE `creature_template` SET `npc_flags`='1' WHERE `entry`='16547';
		
-- ### Let's store any custom npc_text and broadcast_text entries in 90000-91000 entry range for now.

-- Speedy's greetings:

DELETE FROM `broadcast_text` WHERE `ID` = 90000;
INSERT INTO `broadcast_text` (`ID`, `MaleText`) VALUES 

('90000', 'Welcome to Turtle WoW Shell Shop, $n.\n\nDonations are a way to help us improve your experience here at Turtle WoW, as well as help pay for general server costs, advertisement campaigns, developers, and overall production.\n\nYou can buy Turtle Tokens via PayPal (info.turtlewow@gmail.com, include your account name). The ratio is 10:1, which means 1 Euro gives you 10 Turtle Tokens.\n\nItem previews are available on our website.');

DELETE FROM `npc_text` WHERE `ID` = 90000;
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`) VALUES ('90000', '90000');

-- Quote inside shop category:

DELETE FROM `broadcast_text` WHERE `ID` = 90001;
INSERT INTO `broadcast_text` (`ID`, `MaleText`) VALUES 

('90001', 'When you donate, you help keep us online.\nThanks for your continued support!');

DELETE FROM `npc_text` WHERE `ID` = 90001;
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`) VALUES ('90001', '90001');

-- Every player will have this companion at first login:

DELETE FROM `playercreateinfo_item` WHERE `itemid` = 23002; 
INSERT INTO `playercreateinfo_item` (`race`, `class`, `itemid`) VALUES ('1', '1', '23002'),('2', '1', '23002'),('3', '1', '23002'),('4', '1', '23002'),('5', '1', '23002'),('6', '1', '23002'),('7', '1', '23002'),('8', '1', '23002'),('1', '2', '23002'),('3', '2', '23002'),('1', '3', '23002'),('2', '3', '23002'),('3', '3', '23002'),('4', '3', '23002'),('6', '3', '23002'),('8', '3', '23002'),('1', '4', '23002'),('2', '4', '23002'),('3', '4', '23002'),('4', '4', '23002'),('5', '4', '23002'),('7', '4', '23002'),('8', '4', '23002'),('1', '5', '23002'),('3', '5', '23002'),('4', '5', '23002'),('5', '5', '23002'),('7', '5', '23002'),('8', '5', '23002'),('2', '7', '23002'),('6', '7', '23002'),('8', '7', '23002'),('1', '8', '23002'),('2', '8', '23002'),('3', '8', '23002'),('4', '8', '23002'),('5', '8', '23002'),('6', '8', '23002'),('7', '8', '23002'),('8', '8', '23002'),('1', '9', '23002'),('2', '9', '23002'),('5', '9', '23002'),('7', '9', '23002'),('4', '11', '23002'),('6', '11', '23002');

-- Assign shop script to Speedy:

UPDATE `creature_template` SET `script_name`='npc_shop' WHERE `entry`='16547';