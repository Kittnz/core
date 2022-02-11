/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#pragma once

enum ScarletCitadelUnit
{
    // Gameobjects
    GO_DOOR_VENDOR_LEFT = 5000004,
    GO_DOOR_VENDOR_RIGHT = 5000005,
    GO_DOOR_DAELUS = 5000006,
    GO_DOOR_ARDAEUS_ENTER = 5000008,
    GO_DOOR_ARDAEUS_EXIT = 5000009,
    GO_DOOR_RIGHT_WING = 5000001,
    GO_DOOR_MARIELLA = 5000010,
    GO_DOOR_ABBENDIS = 5000002,

    // Bosses
    NPC_DAELUS = 2000000,
    NPC_ARDAEUS = 2000001,
    NPC_MARIELLA = 2000002,
    NPC_ABBENDIS = 2000003,

    // Trash
    NPC_FIRST_WING_TRASH_TRIGGER = 2000013,
    NPC_FIRST_WING_TRASH = 2000004
};

enum ScarletCitadelEncounter
{
    TYPE_DAELUS,
    TYPE_ARDAEUS,
    TYPE_MARIELLA,
    TYPE_ABBENDIS,

    MAX_ENCOUNTER
};

enum ScarletCitadelData
{
    DATA_DOOR_VENDOR_LEFT,
    DATA_DOOR_VENDOR_RIGHT,
    DATA_DOOR_DAELUS,
    DATA_DOOR_ARDAEUS_ENTER,
    DATA_DOOR_ARDAEUS_EXIT,
    DATA_DOOR_RIGHT_WING,
    DATA_DOOR_MARIELLA,
    DATA_DOOR_ABBENDIS,

    DATA_DAELUS_GUID,
    DATA_ARDAEUS_GUID,
    DATA_MARIELLA_GUID,
    DATA_ABBENDIS_GUID,
    DATA_FIRST_AREARIGGER_GUID,

    MAX_DATA
};
