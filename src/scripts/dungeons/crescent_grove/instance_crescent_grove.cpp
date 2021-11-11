#include "scriptPCH.h"

template <typename Functor>
void DoAfterTime(Player* player, uint32 p_time, Functor&& function)
{
    player->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), player->m_Events.CalculateTime(p_time));
}

struct instance_crescent_grove : public ScriptedInstance
{
    explicit instance_crescent_grove(Map* p_Map) : ScriptedInstance(p_Map)
    {
        Initialize();
    };

    void OnCreatureEnterCombat(Creature* pCreature) override
    {
        if (pCreature->IsAlive() && !pCreature->IsInCombat())
            pCreature->SetInCombatWithZone();
    }
};

InstanceData* GetInstanceData_instance_crescent_grove(Map* p_Map) { return new instance_crescent_grove(p_Map); }

void AddSC_instance_crescent_grove()
{
   // Script* newscript;
}