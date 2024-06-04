#pragma once
#include <AI/AbilityTimer.h>
#include "defines.h"
#include "trigger_field_duty_alliance.h"

struct npc_captain_blackanvil : public ScriptedAI
{
private:
    AbilityTimer m_pulseTimer = AbilityTimer(0, 800, 800, 0);
    [[nodiscard]] trigger_field_duty_alliance* find_trigger_ai() const
    {
        const auto trigger = m_creature->FindNearestCreature(Silithus::Creatures::ENTRY_TRIGGER_FIELD_DUTY_ALLIANCE, 200.f);
        if (!trigger)
        {
            return nullptr;
        }
        return dynamic_cast<trigger_field_duty_alliance*>(trigger->AI());
    }

    static npc_captain_blackanvil* get_blackanvil_ai(Creature* creature)
    {
        if (!creature)
        {
            return nullptr;
        }

        if (creature->GetEntry() != Silithus::Creatures::ENTRY_CAPTAIN_BLACKANVIL)
        {
            return nullptr;
        }

        return dynamic_cast<npc_captain_blackanvil*>(creature->AI());
    }
public:
    npc_captain_blackanvil(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_captain_blackanvil::Reset();
    }

    void Reset() override
    {
    }

    void UpdateAI(const uint32 delta) override
    {
        m_pulseTimer.Update(delta);
        if (!m_pulseTimer.IsReady())
        {
            return;
        }
        m_pulseTimer.Reset();

        const auto trigger = find_trigger_ai();
        if (!trigger)
        {
            return;
        }

        const auto event_state = trigger->EventState();
        if (event_state == Silithus::EventState::FINISHED)
        {
            m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER);
        }
        else
        {
            m_creature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER);
        }
    }

    static CreatureAI* GetAI(Creature* pCreature)
    {
        return new npc_captain_blackanvil(pCreature);
    }

    static bool GossipHello(Player* player, Creature* creature)
    {
        const auto blackanvil = get_blackanvil_ai(creature);
        if (!blackanvil)
        {
            return false;
        }
        const auto trigger = blackanvil->find_trigger_ai();
        if (!trigger)
        {
            return false;
        }
        player->PlayerTalkClass->SendGossipMenu(Player::GetGossipTextId(creature), creature->GetGUID());
        return true;
    }

    static bool GossipSelect(Player* player, Creature* creature, uint32_t sender, uint32_t action)
    {
        return false;
    }

    static void RegisterScript()
    {
        const auto script = new Script();
        script->Name = "npc_captain_blackanvil";
        script->GetAI = &npc_captain_blackanvil::GetAI;
        script->pGossipHello = &npc_captain_blackanvil::GossipHello;
        script->pGossipSelect = &npc_captain_blackanvil::GossipSelect;
        script->RegisterSelf();
    }
};
