#pragma once

struct npc_arcanist_nozzlespring : public ScriptedAI
{
public:
    npc_arcanist_nozzlespring(Creature* pCreature);

    void Reset() override;

    void UpdateAI(const uint32 delta) override;

    static CreatureAI* GetAI(Creature* pCreature);

    static void RegisterScript();
};
