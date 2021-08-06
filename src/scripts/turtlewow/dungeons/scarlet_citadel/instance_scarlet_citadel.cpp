#include "scriptPCH.h"
#include "instance_scarlet_citadel.h"

struct instance_scarlet_citadel : public ScriptedInstance
{
    instance_scarlet_citadel(Map* p_Map) : ScriptedInstance(p_Map)
    {
        Initialize();
    };

    void Initialize() override
    {

    }
};

InstanceData* GetInstanceData_instance_scarlet_citadel(Map* p_Map)
{
    return new instance_scarlet_citadel(p_Map);
}

void AddSC_instance_scarlet_citadel()
{
    Script *p_Newscript;
    p_Newscript = new Script;
    p_Newscript->Name = "instance_scarlet_citadel";
    p_Newscript->GetInstanceData = &GetInstanceData_instance_scarlet_citadel;
    p_Newscript->RegisterSelf();
}
