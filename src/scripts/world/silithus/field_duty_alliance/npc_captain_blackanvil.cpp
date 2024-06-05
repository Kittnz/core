#include "npc_captain_blackanvil.h"

trigger_field_duty_alliance* npc_captain_blackanvil::FindTriggerAI() const
{
    const auto trigger = m_creature->FindNearestCreature(Silithus::Creatures::ENTRY_TRIGGER_FIELD_DUTY_ALLIANCE, 200.f);
    if (!trigger)
    {
        return nullptr;
    }
    return dynamic_cast<trigger_field_duty_alliance*>(trigger->AI());
}

npc_captain_blackanvil* npc_captain_blackanvil::GetBlackanvilAI(Creature* creature)
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

npc_captain_blackanvil::npc_captain_blackanvil(Creature* pCreature): ScriptedAI(pCreature)
{
    npc_captain_blackanvil::Reset();
}

void npc_captain_blackanvil::Reset()
{
}

void npc_captain_blackanvil::UpdateAI(const uint32 delta)
{
    m_pulseTimer.Update(delta);
    if (!m_pulseTimer.IsReady())
    {
        return;
    }
    m_pulseTimer.Reset();

    const auto trigger = FindTriggerAI();
    if (!trigger)
    {
        return;
    }
}

CreatureAI* npc_captain_blackanvil::GetAI(Creature* pCreature)
{
    return new npc_captain_blackanvil(pCreature);
}

bool npc_captain_blackanvil::GossipHello(Player* player, Creature* creature)
{
    const auto blackanvil = GetBlackanvilAI(creature);
    if (!blackanvil)
    {
        return false;
    }

    if (creature->IsQuestGiver())
    {
        player->PrepareQuestMenu(creature->GetGUID());
        player->PlayerTalkClass->SendGossipMenu(GOSSIP_TEXT_NOT_IMPRESSED_EVENT_COMPLETE, creature->GetGUID());
        return true;
    }
    player->PlayerTalkClass->SendGossipMenu(Player::GetGossipTextId(creature), creature->GetGUID());
    return true;
}

bool npc_captain_blackanvil::GossipSelect(Player* player, Creature* creature, uint32_t sender, uint32_t action)
{
    return false;
}

void npc_captain_blackanvil::RegisterScript()
{
    const auto script = new Script();
    script->Name = "npc_captain_blackanvil";
    script->GetAI = &npc_captain_blackanvil::GetAI;
    script->pGossipHello = &npc_captain_blackanvil::GossipHello;
    script->pGossipSelect = &npc_captain_blackanvil::GossipSelect;
    script->RegisterSelf();
}
