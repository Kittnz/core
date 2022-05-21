
#include "scriptPCH.h"

class boss_hargesh_doomcallerAI : public ScriptedAI
{
public:
    explicit boss_hargesh_doomcallerAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        boss_hargesh_doomcallerAI::Reset();
    }

private:


public:
    void Reset() override
    {

    }

    void UpdateAI(const uint32 uiDiff) override
    {

    }
};

CreatureAI* GetAI_boss_hargesh_doomcaller(Creature* pCreature)
{
    return new boss_hargesh_doomcallerAI(pCreature);
}

void AddSC_boss_hargesh_doomcaller()
{
    Script* pNewscript;

    pNewscript = new Script;
    pNewscript->Name = "boss_hargesh_doomcaller";
    pNewscript->GetAI = &GetAI_boss_hargesh_doomcaller;
    pNewscript->RegisterSelf();
}
