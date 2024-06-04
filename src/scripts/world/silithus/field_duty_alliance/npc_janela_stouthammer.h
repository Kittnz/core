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

    ObjectGuid m_cachedTriggerGuid;

    [[nodiscard]] trigger_field_duty_alliance* FindTriggerAI();

    static npc_janela_stouthammer* GetStouthammerAI(Creature* creature);

    void StartEvent();

public:
    npc_janela_stouthammer(Creature* pCreature);

    void Aggro(Unit* creature) override;
    void Reset() override;
    void UpdateAI(const uint32 delta) override;

    void EventReset();

    static CreatureAI* GetAI(Creature* pCreature);
    static bool GossipHello(Player* player, Creature* creature);
    static bool GossipSelect(Player* player, Creature* creature, uint32_t sender, uint32_t action);
    static void RegisterScript();
};
