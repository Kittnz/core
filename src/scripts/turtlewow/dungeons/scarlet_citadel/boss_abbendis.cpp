#include "scriptPCH.h"
#include "instance_scarlet_citadel.h"

struct boss_abbendisAI : public ScriptedAI
{
    boss_abbendisAI(Creature* p_Creature) : ScriptedAI(p_Creature)
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

CreatureAI* GetAI_boss_abbendis(Creature* p_Creature)
{
    return new boss_abbendisAI(p_Creature);
}

void AddSC_boss_abbendis()
{
    Script *p_Newscript;
    p_Newscript = new Script;
    p_Newscript->Name = "boss_abbendis";
    p_Newscript->GetAI = &GetAI_boss_abbendis;
    p_Newscript->RegisterSelf();
}
