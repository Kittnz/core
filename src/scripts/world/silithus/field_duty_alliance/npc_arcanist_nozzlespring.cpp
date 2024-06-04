#include "npc_arcanist_nozzlespring.h"

npc_arcanist_nozzlespring::npc_arcanist_nozzlespring(Creature* pCreature): ScriptedAI(pCreature)
{
    npc_arcanist_nozzlespring::Reset();
}

void npc_arcanist_nozzlespring::Reset()
{
}

void npc_arcanist_nozzlespring::UpdateAI(const uint32 delta)
{
}

CreatureAI* npc_arcanist_nozzlespring::GetAI(Creature* pCreature)
{
    return new npc_arcanist_nozzlespring(pCreature);
}

void npc_arcanist_nozzlespring::RegisterScript()
{
    const auto script = new Script();
    script->Name = "npc_arcanist_nozzlespring";
    script->GetAI = &npc_arcanist_nozzlespring::GetAI;
    script->RegisterSelf();
}
