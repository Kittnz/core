
-- Move random emotes to datalong fields.
UPDATE `creature_movement_scripts` SET `dataint2`=`datalong` WHERE `id`=1614602 && `delay`=1 && `command`=1;
UPDATE `creature_movement_scripts` SET `dataint2`=`datalong` WHERE `id`=1614602 && `delay`=3 && `command`=1;
UPDATE `creature_movement_scripts` SET `dataint2`=`datalong` WHERE `id`=1614602 && `delay`=20 && `command`=1;
UPDATE `creature_movement_scripts` SET `dataint2`=`datalong` WHERE `id`=1614603 && `delay`=3 && `command`=1;
UPDATE `creature_movement_scripts` SET `dataint2`=`datalong` WHERE `id`=1614603 && `delay`=10 && `command`=1;
UPDATE `creature_movement_scripts` SET `dataint2`=`datalong` WHERE `id`=1614603 && `delay`=20 && `command`=1;
UPDATE `creature_movement_scripts` SET `dataint2`=`datalong` WHERE `id`=1614604 && `delay`=2 && `command`=1;
UPDATE `creature_movement_scripts` SET `dataint2`=`datalong` WHERE `id`=1614604 && `delay`=16 && `command`=1;
UPDATE `creature_movement_scripts` SET `dataint2`=`datalong` WHERE `id`=1614604 && `delay`=18 && `command`=1;
UPDATE `creature_movement_scripts` SET `datalong`=`dataint`, `datalong2`=`dataint2`, `datalong3`=`dataint3`, `datalong4`=`dataint4` WHERE `command`=1 && `dataint`!=0;
UPDATE `creature_movement_scripts` SET `dataint`=0, `dataint2`=0, `dataint3`=0, `dataint4`=0 WHERE `command`=1 && `dataint`!=0;
UPDATE `creature_ai_scripts` SET `datalong2`=`dataint`, `datalong3`=`dataint2` WHERE `command`=1 && `dataint`!=0;
UPDATE `creature_ai_scripts` SET `dataint`=0, `dataint2`=0, `dataint3`=0, `dataint4`=0 WHERE `command`=1 && `dataint`!=0;
