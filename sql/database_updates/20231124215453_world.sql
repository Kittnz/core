-- Fix war effort event.
UPDATE `game_event` SET `disabled`=0 WHERE `entry`=84;
UPDATE `game_event` SET `hardcoded`=1 WHERE `entry`=86;

