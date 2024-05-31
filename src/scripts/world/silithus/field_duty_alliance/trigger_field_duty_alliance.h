#pragma once
#include <AI/AbilityTimer.h>
#include "defines.h"

struct trigger_field_duty_alliance : public ScriptedAI
{
private:
    silithus::event_state::EventState m_eventState = silithus::event_state::WAITING_FOR_START;

    // Throttles updates so we're not constantly scanning for NPCs
    AbilityTimer m_pulseTimer = AbilityTimer(0, 800, 800, 0);

    // How long the quest will remain completable after the event is finished
    AbilityTimer m_eventCompleteTimer = AbilityTimer(0, 180000, 180000, 0);

    [[nodiscard]] Creature* find_hivezora_abomination() const
    {
        const auto abomination = me->FindNearestCreature(silithus::creatures::ENTRY_HIVEZORA_ABOMINATION, 200.0f, true);
        return abomination
            ? abomination
            : me->FindNearestCreature(silithus::creatures::ENTRY_HIVEZORA_ABOMINATION, 200.0f, false);
    }

    [[nodiscard]] Creature* find_captain_blackanvil() const
    {
        return me->FindNearestCreature(silithus::creatures::ENTRY_CAPTAIN_BLACKANVIL, 200.0f);
    }

    [[nodiscard]] Creature* find_arcanist_nozzlespring() const
    {
        return me->FindNearestCreature(silithus::creatures::ENTRY_ARCANIST_NOZZLESPRING, 200.0f);
    }

    [[nodiscard]] Creature* find_janela_stouthammer() const
    {
        return me->FindNearestCreature(silithus::creatures::ENTRY_JANELA_STOUTHAMMER, 200.0f);
    }

    void set_event_state_waiting_for_start()
    {
        m_eventState = silithus::event_state::WAITING_FOR_START;
        m_eventCompleteTimer.reset();
        if (auto const abomination = find_hivezora_abomination())
        {
            abomination->DisappearAndDie();
        }
        if (auto const captain_blackanvil = find_captain_blackanvil())
        {
            if (captain_blackanvil->IsAlive())
            {
                captain_blackanvil->GetMotionMaster()->MovePoint(0, silithus::locations::SPAWN_CAPTAIN_BLACKANVIL);
            }
        }
        if (auto const arcanist_nozzlespring = find_arcanist_nozzlespring())
        {
            if (arcanist_nozzlespring->IsAlive())
            {
                arcanist_nozzlespring->GetMotionMaster()->MovePoint(0, silithus::locations::SPAWN_ARCANIST_NOZZLESPRING);
            }
        }
        if (auto const janela_stouthammer = find_janela_stouthammer())
        {
            if (janela_stouthammer->IsAlive())
            {
                janela_stouthammer->GetMotionMaster()->MovePoint(0, silithus::locations::SPAWN_JANELA_STOUTHAMMER);
            }
        }
    }

    void set_event_state_dialog_in_progress()
    {
        m_eventState = silithus::event_state::DIALOG_IN_PROGRESS;
    }

    void set_event_state_finished()
    {
        m_eventState = silithus::event_state::FINISHED;
    }

    void update_event_state(const uint32_t delta)
    {
    }
public:
    trigger_field_duty_alliance(Creature* pCreature) : ScriptedAI(pCreature)
    {
        trigger_field_duty_alliance::Reset();
    }

    void Reset() override
    {
    }

    silithus::event_state::EventState event_state() const
    {
        return m_eventState;
    }

    void on_event_start()
    {
        set_event_state_dialog_in_progress();
    }

    void UpdateAI(const uint32 delta) override
    {
        m_pulseTimer.update(delta);
        if (!m_pulseTimer.is_ready())
        {
            return;
        }

        m_pulseTimer.reset();

        update_event_state(delta);
    }

    static CreatureAI* GetAI(Creature* pCreature)
    {
        return new trigger_field_duty_alliance(pCreature);
    }

    static void register_script()
    {
        const auto script = new Script();
        script->Name = "trigger_field_duty_alliance";
        script->GetAI = &trigger_field_duty_alliance::GetAI;
        script->RegisterSelf();
    }
};
