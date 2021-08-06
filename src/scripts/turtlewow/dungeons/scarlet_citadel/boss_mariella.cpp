#include "scriptPCH.h"
#include "instance_scarlet_citadel.h"

struct boss_mariellaAI : public ScriptedAI
{
    boss_mariellaAI(Creature* p_Creature) : ScriptedAI(p_Creature)
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

CreatureAI* GetAI_boss_mariella(Creature* p_Creature)
{
    return new boss_mariellaAI(p_Creature);
}

void AddSC_boss_mariella()
{
    Script *p_Newscript;
    p_Newscript = new Script;
    p_Newscript->Name = "boss_mariella";
    p_Newscript->GetAI = &GetAI_boss_mariella;
    p_Newscript->RegisterSelf();
}
