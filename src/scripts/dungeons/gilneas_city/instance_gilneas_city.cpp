#include "scriptPCH.h"

enum boss_entries
{
    matthias_holtz = 61419,
    judge_sutherland = 61421,
    dustivan_blackowl = 61422,
    magnus_greystone = 61423,
    genn_greymane = 61418,
};

struct instance_gilneas_city : public ScriptedInstance
{
    explicit instance_gilneas_city(Map* p_Map) : ScriptedInstance(p_Map)
    {
        Initialize();
    };

    void OnCreatureEnterCombat(Creature* pCreature) override
    {
        if (pCreature->IsAlive() && !pCreature->IsInCombat())
            pCreature->SetInCombatWithZone();

        switch (pCreature->GetEntry())
        {
        case matthias_holtz:
            pCreature->PlayDirectSound(60384);
            pCreature->MonsterYell("This district is currently on lockdown...");
            break;
        case judge_sutherland:
            pCreature->PlayDirectSound(60382);
            pCreature->MonsterYell("Order, must be maintained!");
            break;
        case dustivan_blackowl:
            pCreature->PlayDirectSound(60391);
            pCreature->MonsterYell("I hunt from the shadows, these streets have been cleared by my hand!");
            break;
        case magnus_greystone:
            pCreature->PlayDirectSound(60386);
            pCreature->MonsterYell("I have served as Marshal throughout all of the orcish incursions, you will not put an end to Gilneas.");
            break;
        case genn_greymane:
            pCreature->PlayDirectSound(60388);
            pCreature->MonsterYell("My family has held power in Gilneas for countless generations. You will not change fate.");
            break;
        }
    }

    void OnCreatureDeath(Creature* pCreature) override
    {
        switch (pCreature->GetEntry())
        {
        case matthias_holtz:
            pCreature->PlayDirectSound(60385);
            pCreature->MonsterYell("Foolish Interloper, you do not belong here...");
            break;
        case judge_sutherland:
            pCreature->PlayDirectSound(60383);
            pCreature->MonsterYell("I will not let Gilneas fall to madness, not while I...");
            break;
        case dustivan_blackowl:
            pCreature->PlayDirectSound(60392);
            pCreature->MonsterYell("This was not meant to be...");
            break;
        case magnus_greystone:
            pCreature->PlayDirectSound(60387);
            pCreature->MonsterYell("The brave defenders... Of this city will not let you put it to ruin, outsider!");
            break;
        case genn_greymane:
            pCreature->PlayDirectSound(60390);
            pCreature->MonsterYell("It... It was pointless after all, this cannot be the way I fall...");
            break;
        }
    }
};

InstanceData* GetInstanceData_instance_gilneas_city(Map* p_Map) { return new instance_gilneas_city(p_Map); }

void AddSC_instance_gilneas_city()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "instance_gilneas_city";
    newscript->GetInstanceData = &GetInstanceData_instance_gilneas_city;
    newscript->RegisterSelf();
}