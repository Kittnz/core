#include "npc_janela_stouthammer.h"

trigger_field_duty_alliance* npc_janela_stouthammer::FindTriggerAI()
{
    Creature* trigger = nullptr;
    if (!m_cachedTriggerGuid.IsEmpty())
    {
        trigger = m_creature->GetMap()->GetCreature(m_cachedTriggerGuid);
    }

    if (!trigger)
    {
        trigger = m_creature->FindNearestCreature(Silithus::Creatures::ENTRY_TRIGGER_FIELD_DUTY_ALLIANCE, 200.f);
    }

    if (trigger)
    {
        m_cachedTriggerGuid = trigger->GetGUID();
        return dynamic_cast<trigger_field_duty_alliance*>(trigger->AI());
    }

    return nullptr;
}

npc_janela_stouthammer* npc_janela_stouthammer::GetStouthammerAI(Creature* creature)
{
    if (!creature)
    {
        return nullptr;
    }

    if (creature->GetEntry() != Silithus::Creatures::ENTRY_JANELA_STOUTHAMMER)
    {
        return nullptr;
    }

    return dynamic_cast<npc_janela_stouthammer*>(creature->AI());
}

void npc_janela_stouthammer::StartEvent()
{
    const auto trigger = FindTriggerAI();
    if (!trigger)
    {
        return;
    }

    trigger->StartEvent();
}

npc_janela_stouthammer::npc_janela_stouthammer(Creature* pCreature) : ScriptedAI(pCreature)
{
    npc_janela_stouthammer::Reset();
}

void npc_janela_stouthammer::Aggro(Unit* creature)
{
    ScriptedAI::Aggro(creature);
}

void npc_janela_stouthammer::Reset()
{
}

void npc_janela_stouthammer::UpdateAI(const uint32 delta)
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

    const auto event_state = trigger->EventState();
}

void npc_janela_stouthammer::EventReset()
{
    if (!m_creature->IsAlive())
    {
        return;
    }

    m_creature->GetMotionMaster()->MovePoint(0, Silithus::Locations::SPAWN_JANELA_STOUTHAMMER, MOVE_RUN_MODE, 0, Silithus::Locations::SPAWN_JANELA_STOUTHAMMER.orientation);
    m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
    m_creature->CombatStop(true);
    m_creature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_FLAG_SPAWNING);
}

CreatureAI* npc_janela_stouthammer::GetAI(Creature* pCreature)
{
    return new npc_janela_stouthammer(pCreature);
}

bool npc_janela_stouthammer::GossipHello(Player* player, Creature* creature)
{
    const auto stouthammer = GetStouthammerAI(creature);
    if (!stouthammer)
    {
        return false;
    }
    const auto trigger = stouthammer->FindTriggerAI();
    if (!trigger)
    {
        return false;
    }

    if (trigger->EventState() == Silithus::EventState::FINISHED)
    {
        player->PlayerTalkClass->SendGossipMenu(GOSSIP_TEXT_THANKS_FOR_ASSIST, creature->GetGUID());
        return true;
    }

    if (player->GetQuestStatus(Silithus::Quests::QUEST_FIELD_DUTY))
    {
        player->PlayerTalkClass->GetGossipMenu().AddMenuItem(GOSSIP_ICON_CHAT, GOSSIP_TEXT_REPORTING_FOR_FIELD_DUTY, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_REPORTING_FOR_FIELD_DUTY);
        player->PlayerTalkClass->SendGossipMenu(Player::GetGossipTextId(creature), creature->GetGUID());
        return true;
    }

    player->PlayerTalkClass->SendGossipMenu(Player::GetGossipTextId(creature), creature->GetGUID());
    return true;
}

bool npc_janela_stouthammer::GossipSelect(Player* player, Creature* creature, uint32_t sender, uint32_t action)
{
    const auto stouthammer = GetStouthammerAI(creature);
    if (!stouthammer)
    {
        return false;
    }
    const auto trigger = stouthammer->FindTriggerAI();
    if (!trigger)
    {
        return false;
    }

    if (action == GOSSIP_ACTION_REPORTING_FOR_FIELD_DUTY)
    {
        player->PlayerTalkClass->GetGossipMenu().AddMenuItem(GOSSIP_ICON_BATTLE, GOSSIP_TEXT_IM_READY_START_EVENT, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_START_EVENT);
        player->PlayerTalkClass->SendGossipMenu(GOSSIP_TEXT_WERE_EXPECTING_AN_ATTACK, creature->GetGUID());
        return true;
    }

    if (action == GOSSIP_ACTION_START_EVENT)
    {
        trigger->StartEvent();
        player->PlayerTalkClass->CloseGossip();
        return true;
    }
    return false;
}

void npc_janela_stouthammer::RegisterScript()
{
    const auto script = new Script();
    script->Name = "npc_janela_stouthammer";
    script->GetAI = &npc_janela_stouthammer::GetAI;
    script->pGossipHello = &npc_janela_stouthammer::GossipHello;
    script->pGossipSelect = &npc_janela_stouthammer::GossipSelect;
    script->RegisterSelf();
}
