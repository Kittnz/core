-- Make guard response emotes targeted.
UPDATE `creature_ai_scripts` SET `dataint`=1 WHERE `command`=1 && `id` IN (6801, 6802, 6803, 6804, 6805, 46602, 46604, 46605, 46606, 46607, 46608, 46609, 46610, 46611, 46612, 46613, 46614, 72701, 132802, 132803, 132804, 132805, 132806, 132807, 142301, 175601, 175602, 175603, 175604, 175605, 197601, 240501, 262101, 308401, 329601, 329602, 329603, 362602, 362603, 362604, 362605, 362606, 362607, 426201, 559501, 559502, 559503, 559504, 559505, 595301, 595302, 595303, 723303, 798001, 1299601, 1383901, 1383902, 1383903, 1383904, 1383905, 1430401, 1430402, 1430403, 1511301, 1511302, 1511303, 1511304, 1511305, 1511306, 1511307, 1511308, 1511309, 1511310, 1511311, 1511312, 1511313, 1511314, 1511501, 1511502, 1511503, 1511504, 1511505, 1511506, 1511507, 1511508, 1511509, 1511510, 1511511, 1511512, 1511513, 1511514, 1569401, 1569402, 1571901, 1571902, 1572301, 1572302, 1590501, 1590502, 1590601, 1590602, 1590701, 1590702, 1590801, 1590802);
