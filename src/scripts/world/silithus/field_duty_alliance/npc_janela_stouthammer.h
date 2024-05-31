#pragma once
#include <AI/AbilityTimer.h>
#include "defines.h"
#include "trigger_field_duty_alliance.h"

struct npc_janela_stouthammer : public ScriptedAI
{
private:
    constexpr static int GossipActionReportingForFieldDuty = GOSSIP_ACTION_INFO_DEF + 1;
    constexpr static int GossipActionStartEvent = GossipActionReportingForFieldDuty + 1;

    constexpr static uint32_t GossipTextReportingForFieldDuty = 2593001;
    constexpr static uint32_t GossipTextWereExpectingAnAttack = 2593002;
    constexpr static uint32_t GossipTextImReadyStartEvent = 2593003;
    AbilityTimer m_pulseTimer = AbilityTimer(0, 800, 800, 0);
    [[nodiscard]] trigger_field_duty_alliance* find_trigger_ai() const
    {
        const auto trigger = m_creature->FindNearestCreature(silithus::creatures::ENTRY_TRIGGER_FIELD_DUTY_ALLIANCE, 200.f);
        if (!trigger)
        {
            return nullptr;
        }
        return dynamic_cast<trigger_field_duty_alliance*>(trigger->AI());
    }

    static npc_janela_stouthammer* get_stouthammer_ai(Creature* creature)
    {
        if (!creature)
        {
            return nullptr;
        }

        if (creature->GetEntry() != silithus::creatures::ENTRY_JANELA_STOUTHAMMER)
        {
            return nullptr;
        }

        return dynamic_cast<npc_janela_stouthammer*>(creature->AI());
    }
public:
    npc_janela_stouthammer(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_janela_stouthammer::Reset();
    }

    void Reset() override
    {
    }

    void UpdateAI(const uint32 delta) override
    {
        m_pulseTimer.update(delta);
        if (!m_pulseTimer.is_ready())
        {
            return;
        }
        m_pulseTimer.reset();

        const auto trigger = find_trigger_ai();
        if (!trigger)
        {
            return;
        }

        const auto event_state = trigger->event_state();
    }

    static CreatureAI* GetAI(Creature* pCreature)
    {
        return new npc_janela_stouthammer(pCreature);
    }

    static bool GossipHello(Player* player, Creature* creature)
    {
        const auto stouthammer = get_stouthammer_ai(creature);
        if (!stouthammer)
        {
            return false;
        }
        const auto trigger = stouthammer->find_trigger_ai();
        if (!trigger)
        {
            return false;
        }

        if (player->GetQuestStatus(silithus::quests::QUEST_FIELD_DUTY))
        {
            player->PlayerTalkClass->GetGossipMenu().AddMenuItem(GOSSIP_ICON_CHAT, GossipTextReportingForFieldDuty, GOSSIP_SENDER_MAIN, GossipActionReportingForFieldDuty);
            player->PlayerTalkClass->SendGossipMenu(Player::GetGossipTextId(creature), creature->GetGUID());
            return true;
        }
        player->PlayerTalkClass->SendGossipMenu(Player::GetGossipTextId(creature), creature->GetGUID());
        return true;
    }

    static bool GossipSelect(Player* player, Creature* creature, uint32_t sender, uint32_t action)
    {
        if (action == GossipActionReportingForFieldDuty)
        {
            player->PlayerTalkClass->GetGossipMenu().AddMenuItem(GOSSIP_ICON_BATTLE, GossipTextImReadyStartEvent, GOSSIP_SENDER_MAIN, GossipActionStartEvent);
            player->PlayerTalkClass->SendGossipMenu(GossipTextWereExpectingAnAttack, creature->GetGUID());
            return true;
        }

        if (action == GossipActionStartEvent)
        {
            creature->MonsterSay("oh no the bugs are coming help us pls");
            player->PlayerTalkClass->CloseGossip();
            return true;
        }
        return false;
    }

    static void register_script()
    {
        const auto script = new Script();
        script->Name = "npc_janela_stouthammer";
        script->GetAI = &npc_janela_stouthammer::GetAI;
        script->pGossipHello = &npc_janela_stouthammer::GossipHello;
        script->pGossipSelect = &npc_janela_stouthammer::GossipSelect;
        script->RegisterSelf();
    }
};
