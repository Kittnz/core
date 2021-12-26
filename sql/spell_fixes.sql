-- Remove wrongly assigned 256 bitmask first.
UPDATE `spell_template` SET `customFlags`=`customFlags`&~256 WHERE `entry` IN
(
    781,   -- Disengage (Rank 1)
    1510,  -- Volley (Rank 1)
    2480,  -- Shoot Bow
    2537,  -- Crusader Strike (Rank 1)
    5254,  -- Polymorph (TEST)
    6226,  -- Drain Mana (Rank 2)
    7918,  -- Shoot Gun
    7919,  -- Shoot Crossbow
    8131,  -- Mana Burn (Rank 2)
    8823,  -- Crusader Strike (Rank 2)
    8824,  -- Crusader Strike (Rank 3)
    10336, -- Crusader Strike (Rank 4)
    10337, -- Crusader Strike (Rank 5)
    10874, -- Mana Burn (Rank 3)
    10875, -- Mana Burn (Rank 4)
    10876, -- Mana Burn (Rank 5)
    11703, -- Drain Mana (Rank 3)
    11704, -- Drain Mana (Rank 4)
    14267, -- Wing Clip (Rank 2)
    14268, -- Wing Clip (Rank 3)
    14272, -- Disengage (Rank 2)
    14273, -- Disengage (Rank 3)
    14274, -- Distracting Shot (Rank 2)
    14275, -- Scorpid Sting (Rank 2)
    14276, -- Scorpid Sting (Rank 3)
    14277, -- Scorpid Sting (Rank 4)
    14279, -- Viper Sting (Rank 2)
    14280, -- Viper Sting (Rank 3)
    14294, -- Volley (Rank 2)
    14295, -- Volley (Rank 3)
    14296, -- Black Arrow (Rank 2)
    15629, -- Distracting Shot (Rank 3)
    15630, -- Distracting Shot (Rank 4)
    15631, -- Distracting Shot (Rank 5)
    15632, -- Distracting Shot (Rank 6)
    18930, -- Conflagrate (Rank 2)
    18931, -- Conflagrate (Rank 3)
    18932, -- Conflagrate (Rank 4)
    22858, -- Retaliation
    25200, -- Shoot Silithus Rifleman Long Range
    26652, -- Copy of Mortal Strike (Rank 1)
    28317, -- Copy of Shoot
    28407, -- Shadow Bolt Volley
    29163, -- Copy of Frostbolt (Rank 1)
    30012  -- Chess Move (DND)
);
-- Add 128 to them 
UPDATE `spell_template` SET `customFlags`=`customFlags` | 128 WHERE `entry` IN
(
    781,   -- Disengage (Rank 1)
    1510,  -- Volley (Rank 1)
    2480,  -- Shoot Bow
    2537,  -- Crusader Strike (Rank 1)
    5254,  -- Polymorph (TEST)
    6226,  -- Drain Mana (Rank 2)
    7918,  -- Shoot Gun
    7919,  -- Shoot Crossbow
    8131,  -- Mana Burn (Rank 2)
    8823,  -- Crusader Strike (Rank 2)
    8824,  -- Crusader Strike (Rank 3)
    10336, -- Crusader Strike (Rank 4)
    10337, -- Crusader Strike (Rank 5)
    10874, -- Mana Burn (Rank 3)
    10875, -- Mana Burn (Rank 4)
    10876, -- Mana Burn (Rank 5)
    11703, -- Drain Mana (Rank 3)
    11704, -- Drain Mana (Rank 4)
    14267, -- Wing Clip (Rank 2)
    14268, -- Wing Clip (Rank 3)
    14272, -- Disengage (Rank 2)
    14273, -- Disengage (Rank 3)
    14274, -- Distracting Shot (Rank 2)
    14275, -- Scorpid Sting (Rank 2)
    14276, -- Scorpid Sting (Rank 3)
    14277, -- Scorpid Sting (Rank 4)
    14279, -- Viper Sting (Rank 2)
    14280, -- Viper Sting (Rank 3)
    14294, -- Volley (Rank 2)
    14295, -- Volley (Rank 3)
    14296, -- Black Arrow (Rank 2)
    15629, -- Distracting Shot (Rank 3)
    15630, -- Distracting Shot (Rank 4)
    15631, -- Distracting Shot (Rank 5)
    15632, -- Distracting Shot (Rank 6)
    18930, -- Conflagrate (Rank 2)
    18931, -- Conflagrate (Rank 3)
    18932, -- Conflagrate (Rank 4)
    22858, -- Retaliation
    25200, -- Shoot Silithus Rifleman Long Range
    26652, -- Copy of Mortal Strike (Rank 1)
    28317, -- Copy of Shoot
    28407, -- Shadow Bolt Volley
    29163, -- Copy of Frostbolt (Rank 1)
    30012  -- Chess Move (DND)
);

-- Hack school instead.
UPDATE spell_template SET school=1 WHERE entry=23513;

-- Arcane Missiles: aggro on hit, not cast.
UPDATE spell_template SET attributesEx3 = 131072 WHERE entry = 5143 OR entry = 5144 OR entry = 5145 OR entry = 8416 OR entry = 8417 OR entry = 10211 OR entry = 10212 OR entry = 25345;  