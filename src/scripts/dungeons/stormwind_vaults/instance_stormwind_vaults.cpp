#include "scriptPCH.h"

using namespace std;

template <typename Functor>
void DoAfterTime(Player* player, uint32 p_time, Functor&& function)
{
    player->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), player->m_Events.CalculateTime(p_time));
}

enum mob_entries
{
    maddened_guard = 60597
};

const string dialog_lines[4] = { 
    "Do you hear them?! In the walls... They're always watching!",
    "What even are you?! The watchers sent you, you're going to rip us apart!",
    "There is no leaving, not for any of us, they block our escape...",
    "I don't want to join them, they whisper me to join them, they show me images of my body torn into pieces..."    
};

struct instance_stormwind_vault : public ScriptedInstance
{
    explicit instance_stormwind_vault(Map* p_Map) : ScriptedInstance(p_Map)
    {
        Initialize();
    };

    void OnCreatureEnterCombat(Creature* pCreature) override
    {
        if (pCreature->IsAlive() && !pCreature->IsInCombat())
            pCreature->SetInCombatWithZone();

        switch (pCreature->GetEntry())
        {
        case maddened_guard:
            int32 line = urand(0, 3);
            pCreature->PMonsterSay("%s", dialog_lines[line].c_str());
            break;
        }
    }

    void OnCreatureDeath(Creature* pCreature) override
    {
    }
};

InstanceData* GetInstanceData_instance_stormwind_vault(Map* p_Map) { return new instance_stormwind_vault(p_Map); }

void AddSC_instance_stormwind_vaults()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "instance_stormwind_vault";
    newscript->GetInstanceData = &GetInstanceData_instance_stormwind_vault;
    newscript->RegisterSelf();
}
