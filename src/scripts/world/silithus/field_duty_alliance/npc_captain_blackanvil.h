#pragma once
#include <AI/AbilityTimer.h>
#include "defines.h"
#include "trigger_field_duty_alliance.h"

struct npc_captain_blackanvil : public ScriptedAI
{
private:
    AbilityTimer m_pulseTimer = AbilityTimer(0, 800, 800, 0);
    constexpr static uint32_t GOSSIP_TEXT_NOT_IMPRESSED_EVENT_COMPLETE = 2593004;

    [[nodiscard]] trigger_field_duty_alliance* FindTriggerAI() const;
    static npc_captain_blackanvil* GetBlackanvilAI(Creature* creature);
public:
    explicit npc_captain_blackanvil(Creature* pCreature);

    void Reset() override;
    void UpdateAI(const uint32 delta) override;
    static bool GossipHello(Player* player, Creature* creature);
    static bool GossipSelect(Player* player, Creature* creature, uint32_t sender, uint32_t action);

    static CreatureAI* GetAI(Creature* pCreature);
    static void RegisterScript();
};
