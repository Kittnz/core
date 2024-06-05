#pragma once
#include <AI/AbilityTimer.h>

struct npc_arcanist_nozzlespring : public ScriptedAI
{
    AbilityTimer m_gcdTimer = AbilityTimer(0, 1500, 1500, 0);
    AbilityTimer m_fireballTimer = AbilityTimer(13375, 0, 0, 0);
public:
    npc_arcanist_nozzlespring(Creature* pCreature);

    void Reset() override;

    void UpdateAI(const uint32 delta) override;

    static CreatureAI* GetAI(Creature* pCreature);

    static void RegisterScript();
};
