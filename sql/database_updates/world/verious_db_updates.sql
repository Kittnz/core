replace into item_template values
 ('80099', '0', '4', '2', 'Chieftain\'s Ceremonial Mantle', '', '60884', '3', '0', '1', '196413', '51201', '3', '-1', '-1', '63',
 '60', '0', '0', '0', '0', '0', '81', '7', '0', '1', '0', '4', '6', '5', '9',
 '6', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '193', '0', '0', '0',
 '0', '0', '0', '18029', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '55', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

delete from npc_vendor where entry = 80948 and item = 80099;
replace into npc_vendor values (80948, 80099, 0, 0, 0, 0);