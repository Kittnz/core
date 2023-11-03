-- Restore original guids for Deliana and Mokvar.
UPDATE `creature` SET `guid`=6491 WHERE `guid`=2530189;
UPDATE `creature` SET `guid`=2026 WHERE `guid`=2530187;

-- Restrict these events to Phase 3.
-- 1.10 Patch : Recipes
-- 1.10 Patch : t0.5 Quest Chain
UPDATE `game_event` SET `required_phase`=2 WHERE `entry` IN (158, 160);
UPDATE `game_event` SET `start_time`='2023-03-30 04:00:00' WHERE `entry`=160;

-- 1.6 Patch: BWL Attunement (Phase 2)
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `hardcoded`, `disabled`, `required_phase`) VALUES (163, '2023-03-30 04:00:00', '2030-03-30 03:00:00', 1, 2, 0, '1.6 Patch: BWL Attunement', 0, 0, 1);

-- 18987: Game Event 163 Is Active
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (18987, 12, 163, 0, 0, 0, 0);
UPDATE `creature_loot_template` SET `condition_id`=18987 WHERE `item`=18987;

-- 1.9 Patch: Quests (Phase 3)
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `hardcoded`, `disabled`, `required_phase`) VALUES (164, '2023-03-30 04:00:00', '2030-03-30 03:00:00', 1, 2, 0, '1.9 Patch: Quests', 0, 0, 2);
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8286, 164); -- What Tomorrow Brings
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8288, 164); -- Only One May Rise
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8301, 164); -- The Path of the Righteous
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8302, 164); -- The Hand of the Righteous
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8303, 164); -- Anachronos
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8305, 164); -- Long Forgotten Memories
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8492, 164); -- The Alliance Needs Copper Bars!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8493, 164); -- The Alliance Needs More Copper Bars!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8494, 164); -- The Alliance Needs Iron Bars!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8495, 164); -- The Alliance Needs More Iron Bars!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8496, 164); -- Bandages for the Field
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8497, 164); -- Desert Survival Kits
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8498, 164); -- Twilight Battle Orders
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8499, 164); -- The Alliance Needs Thorium Bars!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8500, 164); -- The Alliance Needs More Thorium Bars!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8501, 164); -- Target: Hive\'Ashi Stingers
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8502, 164); -- Target: Hive\'Ashi Workers
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8503, 164); -- The Alliance Needs Stranglekelp!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8504, 164); -- The Alliance Needs More Stranglekelp!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8505, 164); -- The Alliance Needs Purple Lotus!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8506, 164); -- The Alliance Needs More Purple Lotus!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8508, 164); -- Field Duty Papers
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8509, 164); -- The Alliance Needs Arthas\' Tears!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8510, 164); -- The Alliance Needs More Arthas\' Tears!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8511, 164); -- The Alliance Needs Light Leather!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8512, 164); -- The Alliance Needs More Light Leather!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8513, 164); -- The Alliance Needs Medium Leather!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8514, 164); -- The Alliance Needs More Medium Leather!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8515, 164); -- The Alliance Needs Thick Leather!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8516, 164); -- The Alliance Needs More Thick Leather!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8517, 164); -- The Alliance Needs Linen Bandages!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8518, 164); -- The Alliance Needs More Linen Bandages!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8519, 164); -- A Pawn on the Eternal Board
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8520, 164); -- The Alliance Needs Silk Bandages!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8521, 164); -- The Alliance Needs More Silk Bandages!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8522, 164); -- The Alliance Needs Runecloth Bandages!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8523, 164); -- The Alliance Needs More Runecloth Bandages!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8524, 164); -- The Alliance Needs Rainbow Fin Albacore!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8525, 164); -- The Alliance Needs More Rainbow Fin Albacore!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8526, 164); -- The Alliance Needs Roast Raptor!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8527, 164); -- The Alliance Needs More Roast Raptor!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8528, 164); -- The Alliance Needs Spotted Yellowtail!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8529, 164); -- The Alliance Needs More Spotted Yellowtail!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8530, 164); -- The Alliance Needs Singed Corestones!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8532, 164); -- The Horde Needs Copper Bars!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8533, 164); -- The Horde Needs More Copper Bars!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8534, 164); -- Hive\'Zora Scout Report
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8535, 164); -- Hoary Templar
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8536, 164); -- Earthen Templar
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8537, 164); -- Crimson Templar
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8538, 164); -- The Four Dukes
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8539, 164); -- Target: Hive\'Zora Hive Sisters
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8540, 164); -- Boots for the Guard
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8541, 164); -- Grinding Stones for the Guard
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8542, 164); -- The Horde Needs Tin Bars!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8543, 164); -- The Horde Needs More Tin Bars!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8544, 164); -- Conqueror\'s Spaulders
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8545, 164); -- The Horde Needs Mithril Bars!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8546, 164); -- The Horde Needs More Mithril Bars!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8548, 164); -- Volunteer\'s Battlegear
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8549, 164); -- The Horde Needs Peacebloom!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8550, 164); -- The Horde Needs More Peacebloom!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8555, 164); -- The Charge of the Dragonflights
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8559, 164); -- Conqueror\'s Greaves
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8560, 164); -- Conqueror\'s Legguards
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8561, 164); -- Conqueror\'s Crown
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8562, 164); -- Conqueror\'s Breastplate
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8572, 164); -- Veteran\'s Battlegear
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8573, 164); -- Champion\'s Battlegear
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8574, 164); -- Stalwart\'s Battlegear
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8575, 164); -- Azuregos\'s Magical Ledger
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8576, 164); -- Translating the Ledger
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8577, 164); -- Stewvul, Ex-B.F.F.
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8578, 164); -- Scrying Goggles? No Problem!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8579, 164); -- Mortal Champions
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8580, 164); -- The Horde Needs Firebloom!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8581, 164); -- The Horde Needs More Firebloom!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8582, 164); -- The Horde Needs Purple Lotus!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8583, 164); -- The Horde Needs More Purple Lotus!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8584, 164); -- Never Ask Me About My Business
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8585, 164); -- The Isle of Dread!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8586, 164); -- Dirge\'s Kickin\' Chimaerok Chops
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8587, 164); -- Return to Narain
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8588, 164); -- The Horde Needs Heavy Leather!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8589, 164); -- The Horde Needs More Heavy Leather!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8590, 164); -- The Horde Needs Thick Leather!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8591, 164); -- The Horde Needs More Thick Leather!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8592, 164); -- Tiara of the Oracle
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8593, 164); -- Trousers of the Oracle
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8594, 164); -- Mantle of the Oracle
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8595, 164); -- Mortal Champions
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8596, 164); -- Footwraps of the Oracle
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8597, 164); -- Draconic for Dummies
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8598, 164); -- rAnS0m
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8599, 164); -- Love Song for Narain
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8600, 164); -- The Horde Needs Rugged Leather!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8601, 164); -- The Horde Needs More Rugged Leather!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8602, 164); -- Stormcaller\'s Pauldrons
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8603, 164); -- Vestments of the Oracle
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8604, 164); -- The Horde Needs Wool Bandages!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8605, 164); -- The Horde Needs More Wool Bandages!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8606, 164); -- Decoy!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8607, 164); -- The Horde Needs Mageweave Bandages!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8608, 164); -- The Horde Needs More Mageweave Bandages!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8609, 164); -- The Horde Needs Runecloth Bandages!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8610, 164); -- The Horde Needs More Runecloth Bandages!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8611, 164); -- The Horde Needs Lean Wolf Steaks!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8612, 164); -- The Horde Needs More Lean Wolf Steaks!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8613, 164); -- The Horde Needs Spotted Yellowtail!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8614, 164); -- The Horde Needs More Spotted Yellowtail!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8615, 164); -- The Horde Needs Baked Salmon!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8616, 164); -- The Horde Needs More Baked Salmon!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8617, 164); -- The Horde Needs Singed Corestones!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8620, 164); -- The Only Prescription
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8621, 164); -- Stormcaller\'s Footguards
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8622, 164); -- Stormcaller\'s Hauberk
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8623, 164); -- Stormcaller\'s Diadem
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8624, 164); -- Stormcaller\'s Leggings
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8625, 164); -- Enigma Shoulderpads
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8626, 164); -- Striker\'s Footguards
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8627, 164); -- Avenger\'s Breastplate
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8628, 164); -- Avenger\'s Crown
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8629, 164); -- Avenger\'s Legguards
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8630, 164); -- Avenger\'s Pauldrons
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8631, 164); -- Enigma Leggings
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8632, 164); -- Enigma Circlet
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8633, 164); -- Enigma Robes
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8634, 164); -- Enigma Boots
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8637, 164); -- Deathdealer\'s Boots
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8638, 164); -- Deathdealer\'s Vest
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8639, 164); -- Deathdealer\'s Helm
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8640, 164); -- Deathdealer\'s Leggings
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8641, 164); -- Deathdealer\'s Spaulders
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8655, 164); -- Avenger\'s Greaves
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8656, 164); -- Striker\'s Hauberk
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8657, 164); -- Striker\'s Diadem
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8658, 164); -- Striker\'s Leggings
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8659, 164); -- Striker\'s Pauldrons
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8660, 164); -- Doomcaller\'s Footwraps
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8661, 164); -- Doomcaller\'s Robes
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8662, 164); -- Doomcaller\'s Circlet
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8663, 164); -- Doomcaller\'s Trousers
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8664, 164); -- Doomcaller\'s Mantle
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8665, 164); -- Genesis Boots
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8666, 164); -- Genesis Vest
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8667, 164); -- Genesis Helm
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8668, 164); -- Genesis Trousers
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8669, 164); -- Genesis Shoulderpads
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8687, 164); -- Target: Hive\'Zora Tunnelers
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8728, 164); -- The Good News and The Bad News
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8729, 164); -- The Wrath of Neptulon
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8730, 164); -- Nefarius\'s Corruption
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8732, 164); -- Field Duty Papers
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8733, 164); -- Eranikus, Tyrant of the Dream
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8734, 164); -- Tyrande and Remulos
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8735, 164); -- The Nightmare\'s Corruption
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8736, 164); -- The Nightmare Manifests
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8737, 164); -- Azure Templar
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8738, 164); -- Hive\'Regal Scout Report
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8739, 164); -- Hive\'Ashi Scout Report
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8740, 164); -- Twilight Marauders
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8741, 164); -- The Champion Returns
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8742, 164); -- The Might of Kalimdor
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8745, 164); -- Treasure of the Timeless One
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8747, 164); -- The Path of the Protector
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8748, 164); -- The Path of the Protector
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8749, 164); -- The Path of the Protector
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8750, 164); -- The Path of the Protector
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8751, 164); -- The Protector of Kalimdor
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8752, 164); -- The Path of the Conqueror
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8753, 164); -- The Path of the Conqueror
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8754, 164); -- The Path of the Conqueror
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8755, 164); -- The Path of the Conqueror
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8756, 164); -- The Qiraji Conqueror
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8757, 164); -- The Path of the Invoker
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8758, 164); -- The Path of the Invoker
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8759, 164); -- The Path of the Invoker
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8760, 164); -- The Path of the Invoker
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8761, 164); -- The Grand Invoker
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8764, 164); -- The Changing of Paths - Protector No More
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8765, 164); -- The Changing of Paths - Invoker No More
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8766, 164); -- The Changing of Paths - Conqueror No More
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8770, 164); -- Target: Hive\'Ashi Defenders
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8771, 164); -- Target: Hive\'Ashi Sandstalkers
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8772, 164); -- Target: Hive\'Zora Waywatchers
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8773, 164); -- Target: Hive\'Zora Reavers
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8774, 164); -- Target: Hive\'Regal Ambushers
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8775, 164); -- Target: Hive\'Regal Spitfires
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8776, 164); -- Target: Hive\'Regal Slavemakers
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8777, 164); -- Target: Hive\'Regal Burrowers
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8778, 164); -- The Ironforge Brigade Needs Explosives!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8779, 164); -- Scrying Materials
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8780, 164); -- Armor Kits for the Field
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8781, 164); -- Arms for the Field
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8782, 164); -- Uniform Supplies
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8783, 164); -- Extraordinary Materials
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8784, 164); -- Secrets of the Qiraji
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8785, 164); -- The Orgrimmar Legion Needs Mojo!
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8786, 164); -- Arms for the Field
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8787, 164); -- Armor Kits for the Field
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8789, 164); -- Imperial Qiraji Armaments
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8790, 164); -- Imperial Qiraji Regalia
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8791, 164); -- The Fall of Ossirian
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8801, 164); -- C\'Thun\'s Legacy
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8802, 164); -- The Savior of Kalimdor
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8804, 164); -- Desert Survival Kits
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8805, 164); -- Boots for the Guard
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8806, 164); -- Grinding Stones for the Guard
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8807, 164); -- Scrying Materials
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8808, 164); -- Uniform Supplies
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8809, 164); -- Extraordinary Materials
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8810, 164); -- Bandages for the Field
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8811, 164); -- One Commendation Signet
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8812, 164); -- One Commendation Signet
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8813, 164); -- One Commendation Signet
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8814, 164); -- One Commendation Signet
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8815, 164); -- One Commendation Signet
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8816, 164); -- One Commendation Signet
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8817, 164); -- One Commendation Signet
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8818, 164); -- One Commendation Signet
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8819, 164); -- Ten Commendation Signets
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8820, 164); -- Ten Commendation Signets
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8821, 164); -- Ten Commendation Signets
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8822, 164); -- Ten Commendation Signets
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8823, 164); -- Ten Commendation Signets
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8824, 164); -- Ten Commendation Signets
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8825, 164); -- Ten Commendation Signets
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8826, 164); -- Ten Commendation Signets
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8829, 164); -- The Ultimate Deception
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8830, 164); -- One Commendation Signet
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8831, 164); -- Ten Commendation Signets
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8832, 164); -- One Commendation Signet
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8833, 164); -- Ten Commendation Signets
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8834, 164); -- One Commendation Signet
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8835, 164); -- Ten Commendation Signets
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8836, 164); -- One Commendation Signet
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8837, 164); -- Ten Commendation Signets
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8838, 164); -- One Commendation Signet
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8839, 164); -- Ten Commendation Signets
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8840, 164); -- One Commendation Signet
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8841, 164); -- Ten Commendation Signets
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8842, 164); -- One Commendation Signet
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8843, 164); -- Ten Commendation Signets
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8844, 164); -- One Commendation Signet
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8845, 164); -- Ten Commendation Signets
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8846, 164); -- Five Signets for War Supplies
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8847, 164); -- Ten Signets for War Supplies
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8848, 164); -- Fifteen Signets for War Supplies
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8849, 164); -- Twenty Signets for War Supplies
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8850, 164); -- Thirty Signets for War Supplies
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8851, 164); -- Five Signets for War Supplies
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8852, 164); -- Ten Signets for War Supplies
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8853, 164); -- Fifteen Signets for War Supplies
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8854, 164); -- Twenty Signets for War Supplies
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8855, 164); -- Thirty Signets for War Supplies
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8856, 164); -- Desert Survival Kits
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8857, 164); -- Secrets of the Colossus - Ashi
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8858, 164); -- Secrets of the Colossus - Regal
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8859, 164); -- Secrets of the Colossus - Zora
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8869, 164); -- Sweet Serenity
