#include "scriptPCH.h"
#include "instance_scarlet_citadel.h"

struct boss_daelusAI : public ScriptedAI
{
    boss_daelusAI(Creature* p_Creature) : ScriptedAI(p_Creature)
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

CreatureAI* GetAI_boss_daelus(Creature* p_Creature)
{
    return new boss_daelusAI(p_Creature);
}

void AddSC_boss_daelus()
{
    Script *p_Newscript;
    p_Newscript = new Script;
    p_Newscript->Name = "boss_daelus";
    p_Newscript->GetAI = &GetAI_boss_daelus;
    p_Newscript->RegisterSelf();
}
