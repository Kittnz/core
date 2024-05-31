#pragma once

namespace silithus
{
    namespace creatures
    {
        constexpr uint32_t ENTRY_ARCANIST_NOZZLESPRING = 15444;
        constexpr uint32_t ENTRY_CAPTAIN_BLACKANVIL = 15440;
        constexpr uint32_t ENTRY_HIVEZORA_ABOMINATION = 15449;
        constexpr uint32_t ENTRY_JANELA_STOUTHAMMER = 15443;
        constexpr uint32_t ENTRY_TRIGGER_FIELD_DUTY_ALLIANCE = 2509000;
    }
    namespace factions
    {
        constexpr uint32_t FACTION_ABOMINATION_FRIENDLY = 35;
        constexpr uint32_t FACTION_ABOMINATION_HOSTILE = 14;
    }
    namespace locations
    {
        const Movement::Location SPAWN_ARCANIST_NOZZLESPRING = { -7166.91f, 1404.12f, 2.9306f, 3.28122f };
        const Movement::Location SPAWN_CAPTAIN_BLACKANVIL = { -7165.353516f, 1381.246460f, 2.919770f, 4.331480f };
        const Movement::Location SPAWN_JANELA_STOUTHAMMER = { -7178.58f,1392.09f, 2.8017f, 2.25148f };
    }
    namespace quests
    {
        const uint32_t QUEST_FIELD_DUTY = 8507;
    }
    namespace event_state
    {
        enum EventState
        {
            WAITING_FOR_START,
            DIALOG_IN_PROGRESS,
            FIGHT_IN_PROGRESS,
            FINISHED,
        };
    }
}
