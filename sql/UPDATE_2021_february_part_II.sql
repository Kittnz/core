-- Steamwheedle Beach Experience teleportation stone, limited edition.
replace into item_template values
 ('81140', '0', '4', '0', 'Steamwheedle Limited Edition Wormhole', 'Takes you to the Steamwheedle Beach Experience. Notice: Upon use, the user consents that The Steamwheedle Cartel is not responsible for device malfunctions.', '31199', '1', '0', '1', '0', '0', '12', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '31726', '0', '0', '0', '-1', '10', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', 'item_cenarion_hold_teleport');
 
 UPDATE `item_template` SET `duration`='604800' WHERE (`entry`='81140') AND (`patch`='0');