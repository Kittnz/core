-- Make all fleeing creatures to towards nearest ally. Requested by Sinrek.
UPDATE `creature_ai_scripts` SET `datalong`=1 WHERE `command`=47 && `datalong`=0;

