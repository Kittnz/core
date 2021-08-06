#include "scriptPCH.h"
#include "instance_scarlet_citadel.h"

struct boss_ardaeusAI : public ScriptedAI
{
    boss_ardaeusAI(Creature* p_Creature) : ScriptedAI(p_Creature)
    {
        Reset();
    }

    void Reset() override
    {

    }

    void UpdateAI(const uint32 ui_Diff) override
    {

    }
};

CreatureAI* GetAI_boss_ardaeus(Creature* p_Creature)
{
    return new boss_ardaeusAI(p_Creature);
}

void AddSC_boss_ardaeus()
{
    Script *p_Newscript;
    p_Newscript = new Script;
    p_Newscript->Name = "boss_ardaeus";
    p_Newscript->GetAI = &GetAI_boss_ardaeus;
    p_Newscript->RegisterSelf();
}
