#include "scriptPCH.h"
#include "scarlet_citadel.h"

#ifdef WIN32 
#include <process.h>
#else
#include <unistd.h>
#endif

struct instance_scarlet_citadel : public ScriptedInstance
{
    explicit instance_scarlet_citadel(Map* p_Map) : ScriptedInstance(p_Map)
    {
        Initialize();
    };

    uint32 m_auiEncounter[MAX_ENCOUNTER];
    uint64 m_auiData[MAX_DATA];
    std::string str_InstData;

    void Initialize() override
    {
        memset(&m_auiEncounter, 0, sizeof(m_auiEncounter));
        memset(&m_auiData, 0, sizeof(m_auiData));
    }

    bool IsEncounterInProgress() const override
    {
        for (uint32 i : m_auiEncounter)
        {
            if (i == IN_PROGRESS)
                return true;
        }

        return false;
    }

    void OnObjectCreate(GameObject* p_Go) override
    {
        switch (p_Go->GetEntry())
        {
            case GO_DOOR_VENDOR_LEFT:
            {
                m_auiData[DATA_DOOR_VENDOR_LEFT] = p_Go->GetObjectGuid();

                if (m_auiEncounter[TYPE_DAELUS] == DONE)
                    p_Go->SetGoState(GO_STATE_ACTIVE); // Open it

                break;
            }
            case GO_DOOR_VENDOR_RIGHT:
            {
                m_auiData[DATA_DOOR_VENDOR_RIGHT] = p_Go->GetObjectGuid();

                if (m_auiEncounter[TYPE_DAELUS] == DONE)
                    p_Go->SetGoState(GO_STATE_ACTIVE); // Open it

                break;
            }
            case GO_DOOR_DAELUS:
            {
                m_auiData[DATA_DOOR_DAELUS] = p_Go->GetObjectGuid();

                if (m_auiEncounter[TYPE_DAELUS] == DONE)
                    p_Go->DeleteLater(); // Remove it (Looks better)

                break;
            }
            case GO_DOOR_ARDAEUS_ENTER:
            {
                m_auiData[DATA_DOOR_ARDAEUS_ENTER] = p_Go->GetObjectGuid();

                if (m_auiEncounter[TYPE_ARDAEUS] == DONE)
                    p_Go->SetGoState(GO_STATE_ACTIVE); // Open it

                break;
            }
            case GO_DOOR_ARDAEUS_EXIT:
            {
                m_auiData[DATA_DOOR_ARDAEUS_EXIT] = p_Go->GetObjectGuid();

                if (m_auiEncounter[TYPE_ARDAEUS] == DONE)
                    p_Go->DeleteLater(); // Remove it (Looks better)

                break;
            }
            case GO_DOOR_RIGHT_WING:
            {
                m_auiData[DATA_DOOR_RIGHT_WING] = p_Go->GetObjectGuid();

                if (m_auiEncounter[TYPE_MARIELLA] == DONE)
                    p_Go->DeleteLater(); // Remove it

                break;
            }
            case GO_DOOR_MARIELLA:
            {
                m_auiData[DATA_DOOR_MARIELLA] = p_Go->GetObjectGuid();

                if (m_auiEncounter[TYPE_MARIELLA] == DONE)
                    p_Go->SetGoState(GO_STATE_ACTIVE); // Open it

                break;
            }
            case GO_DOOR_ABBENDIS:
            {
                m_auiData[DATA_DOOR_ABBENDIS] = p_Go->GetObjectGuid();

                if (m_auiEncounter[TYPE_ABBENDIS] == DONE)
                    p_Go->DeleteLater(); // Remove it

                break;
            }
        }
    }

    void OnCreatureCreate(Creature* p_Creature) override
    {
        switch (p_Creature->GetEntry())
        {
            case NPC_DAELUS:
            {
                m_auiData[DATA_DAELUS_GUID] = p_Creature->GetObjectGuid();
                break;
            }
            case NPC_ARDAEUS:
            {
                m_auiData[DATA_ARDAEUS_GUID] = p_Creature->GetObjectGuid();
                break;
            }
            case NPC_MARIELLA:
            {
                m_auiData[DATA_MARIELLA_GUID] = p_Creature->GetObjectGuid();
                break;
            }
            case NPC_ABBENDIS:
            {
                m_auiData[DATA_ABBENDIS_GUID] = p_Creature->GetObjectGuid();
                break;
            }
            case NPC_FIRST_WING_TRASH_TRIGGER:
            {
                m_auiData[DATA_FIRST_AREARIGGER_GUID] = p_Creature->GetObjectGuid();
                break;
            }
        }
    }

    uint64 GetData64(uint32 ui_Data) override
    {
        if (ui_Data < MAX_DATA)
            return m_auiData[ui_Data];

        return 0;
    }

    void SetData(uint32 ui_Type, uint32 ui_Data) override
    {
        switch (ui_Type)
        {
            case TYPE_DAELUS:
            {
                m_auiEncounter[TYPE_DAELUS] = ui_Data;
                if (ui_Data == DONE)
                {
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_VENDOR_RIGHT]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_VENDOR_RIGHT]); // Open it
                    }

                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_DAELUS]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            p_Go->DeleteLater(); // Remove it (Looks better)
                    }
                }

                break;
            }
            case TYPE_ARDAEUS:
            {
                m_auiEncounter[TYPE_ARDAEUS] = ui_Data;
                if (ui_Data == IN_PROGRESS)
                {
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_ARDAEUS_ENTER]))
                    {
                        if (p_Go->GetGoState() == GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_ARDAEUS_ENTER]); // Close it
                    }
                }
                else if (ui_Data == DONE)
                {
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_ARDAEUS_EXIT]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            p_Go->DeleteLater(); // Remove it (Looks better)
                    }

                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_ARDAEUS_ENTER]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_ARDAEUS_ENTER]); // Open it
                    }

                    if (Creature *p_Creature = instance->GetCreature(m_auiData[DATA_FIRST_AREARIGGER_GUID]))
                    {
                        p_Creature->ForcedDespawn(); // Despawn first wing trash arearigger to prevent respawn of trash after killing 2nd boss
                    }
                }
                else if (ui_Data == FAIL)
                {
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_ARDAEUS_ENTER]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_ARDAEUS_ENTER]); // Open it
                    }
                }

                break;
            }
            case TYPE_MARIELLA:
            {
                m_auiEncounter[TYPE_MARIELLA] = ui_Data;
                if (ui_Data == IN_PROGRESS)
                {
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_MARIELLA]))
                    {
                        if (p_Go->GetGoState() == GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_MARIELLA]); // Close it
                    }
                }
                else if (ui_Data == DONE)
                {
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_MARIELLA]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_MARIELLA]); // Open it
                    }
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_RIGHT_WING]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            p_Go->DeleteLater(); // Remove it
                    }
                }
                else if (ui_Data == FAIL)
                {
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_MARIELLA]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_MARIELLA]); // Open it
                    }
                }

                break;
            }
            case TYPE_ABBENDIS:
            {
                m_auiEncounter[TYPE_ABBENDIS] = ui_Data;
                if (ui_Data == IN_PROGRESS)
                {
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_ABBENDIS]))
                    {
                        if (p_Go->GetGoState() == GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_ABBENDIS]); // Close it
                    }
                }
                else if (ui_Data == DONE)
                {
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_ABBENDIS]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            p_Go->DeleteLater(); // Remove it
                    }

                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_VENDOR_LEFT])) // Open second vendor door after killing last boss
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_VENDOR_LEFT]); // Open it
                    }
                }
                else if (ui_Data == FAIL)
                {
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_ABBENDIS]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_ABBENDIS]); // Open it
                    }
                }

                break;
            }
        }

        if (ui_Data == DONE)
        {
            OUT_SAVE_INST_DATA;

            std::ostringstream saveStream;
            saveStream << m_auiEncounter[0] << " " << m_auiEncounter[1] << " " << m_auiEncounter[2] << " " << m_auiEncounter[3];

            str_InstData = saveStream.str();

            SaveToDB();
            OUT_SAVE_INST_DATA_COMPLETE;
        }
    }

    char const* Save() override
    {
        return str_InstData.c_str();
    }

    uint32 GetData(uint32 ui_Type) override
    {
        if (ui_Type < MAX_ENCOUNTER)
            return (m_auiEncounter[ui_Type]);

        return 0;
    }

    void Load(char const* chr_In) override
    {
        if (!chr_In)
        {
            OUT_LOAD_INST_DATA_FAIL;
            return;
        }

        OUT_LOAD_INST_DATA(chr_In);

        std::istringstream loadStream(chr_In);

        loadStream >> m_auiEncounter[0] >> m_auiEncounter[1] >> m_auiEncounter[2] >> m_auiEncounter[3];

        for (uint8 i = 0; i < MAX_ENCOUNTER; ++i)
            if (m_auiEncounter[i] == IN_PROGRESS)
                m_auiEncounter[i] = NOT_STARTED;

        OUT_LOAD_INST_DATA_COMPLETE;
    }
};

InstanceData* GetInstanceData_instance_scarlet_citadel(Map* p_Map)
{
    return new instance_scarlet_citadel(p_Map);
}

// Trash NPCs

struct Location
{
    float m_fX, m_fY, m_fZ, m_fO;
};

static const Location vf_SpawnPoint[] =
{
    { 151.75450f, -62.649109f, 18.007f, 1.59041f }
};

static const Location vf_LastWaypoint[] =
{
    { 148.78366f, -18.592115f, 18.007f, 1.59041f }, // 0
    { 151.75268f, -18.500916f, 18.007f, 1.59041f }, // 1
    { 154.81858f, -18.524998f, 18.007f, 1.59041f }, // 2
    { 154.67590f, -21.368568f, 18.007f, 1.59041f }, // 3
    { 151.72247f, -21.426525f, 18.007f, 1.59041f }, // 4
    { 148.88095f, -21.477419f, 18.007f, 1.59041f }, // 5
    { 148.83274f, -24.543039f, 18.007f, 1.59041f }, // 6
    { 151.78595f, -24.474773f, 18.007f, 1.59041f }, // 7
    { 154.73963f, -24.433607f, 18.007f, 1.59041f }, // 8
    { 154.69479f, -27.267065f, 18.007f, 1.59041f }, // 9
    { 151.73402f, -27.244328f, 18.007f, 1.59041f }, // 10
    { 148.78012f, -27.267494f, 18.007f, 1.59041f }, // 11
    { 148.85170f, -30.331608f, 18.007f, 1.59041f }, // 12
    { 151.79849f, -30.296930f, 18.007f, 1.59041f }, // 13
    { 154.75230f, -30.262171f, 18.007f, 1.59041f }, // 14
    { 154.73669f, -33.214294f, 18.007f, 1.59041f }, // 15
    { 151.79025f, -33.271278f, 18.007f, 1.59041f }, // 16
    { 148.95544f, -33.304626f, 18.007f, 1.59041f }, // 17
    { 148.87420f, -36.257507f, 18.007f, 1.59041f }, // 18
    { 151.82739f, -36.187962f, 18.007f, 1.59041f }, // 19
    { 154.66903f, -36.142517f, 18.007f, 1.59041f }, // 20
    { 154.70416f, -39.089146f, 18.007f, 1.59041f }, // 21
    { 151.85516f, -39.089092f, 18.007f, 1.59041f }, // 22
    { 148.78916f, -39.089035f, 18.007f, 1.59041f }, // 23
    { 148.80809f, -42.136555f, 18.007f, 1.59041f }, // 24
    { 151.86688f, -42.100590f, 18.007f, 1.59041f }, // 25
    { 154.82078f, -42.077461f, 18.007f, 1.59041f }, // 26
    { 154.77267f, -45.024055f, 18.007f, 1.59041f }, // 27
    { 151.72085f, -44.997993f, 18.007f, 1.59041f }, // 28
    { 148.88606f, -44.964539f, 18.007f, 1.59041f }, // 29
    { 148.89892f, -47.924526f, 18.007f, 1.59041f }, // 30
    { 151.74072f, -47.891113f, 18.007f, 1.59041f }, // 31
    { 154.70851f, -47.859352f, 18.007f, 1.59041f }, // 32
    { 154.68435f, -50.925259f, 18.007f, 1.59041f }, // 33
    { 151.73756f, -50.959892f, 18.007f, 1.59041f }, // 34
    { 148.89576f, -50.993290f, 18.007f, 1.59041f }, // 35
    { 148.76803f, -53.945572f, 18.007f, 1.59041f }, // 36
    { 151.82702f, -53.945675f, 18.007f, 1.59041f }, // 37
    { 154.78801f, -53.945774f, 18.007f, 1.59041f }  // 38
};

struct npc_areatriggerAI : public ScriptedAI
{
    npc_areatriggerAI(Creature* p_Creature) : ScriptedAI(p_Creature)
    {
        //m_pInstance = static_cast<ScriptedInstance*>(p_Creature->GetInstanceData());
        Reset();
    }

    //ScriptedInstance* m_pInstance;
    
    bool b_IsTrashSpawned = false;

    uint16 ui_CheckPulse = 500;
    uint8 ui_TrashMob = 38 + 1;
    uint8 ui_ITR = 0;

    void Reset() override
    {
        b_IsTrashSpawned = false;
        ui_CheckPulse = 500;
    }

    void SummonAdds()
    {
        b_IsTrashSpawned = true;

        for ( ; ui_ITR < ui_TrashMob ; ui_ITR++)
            m_creature->SummonCreature(NPC_FIRST_WING_TRASH, vf_SpawnPoint[0].m_fX, vf_SpawnPoint[0].m_fY, vf_SpawnPoint[0].m_fZ, vf_SpawnPoint[0].m_fO, TEMPSUMMON_DEAD_DESPAWN, 30000);
    }

    void JustSummoned(Creature* p_Summoned) override
    {
        if (p_Summoned->GetEntry() == NPC_FIRST_WING_TRASH)
        {
            p_Summoned->MonsterMoveWithSpeed(vf_LastWaypoint[ui_ITR].m_fX, vf_LastWaypoint[ui_ITR].m_fY, vf_LastWaypoint[ui_ITR].m_fZ, vf_LastWaypoint[ui_ITR].m_fO, 5, uint32(MOVE_PATHFINDING | MOVE_FORCE_DESTINATION));
        }
    }

    void UpdateAI(uint32 const ui_Diff) override
    {
        if (ui_CheckPulse < ui_Diff && !b_IsTrashSpawned)
        {
            Map::PlayerList const &liste = m_creature->GetMap()->GetPlayers();
            for (const auto& i : liste)
            {
                if (i.getSource()->IsInRange3d(151.724518f, 2.139748f, 18.007f, 0.0f, 7.0f))
                    SummonAdds();
            }

            ui_CheckPulse = 500;
        }
        else
            ui_CheckPulse -= ui_Diff;
    }
};

CreatureAI* GetAI_npc_areatrigger(Creature* p_Creature)
{
    return new npc_areatriggerAI(p_Creature);
}

void AddSC_instance_scarlet_citadel()
{
    Script *p_Newscript;
    p_Newscript = new Script;
    p_Newscript->Name = "instance_scarlet_citadel";
    p_Newscript->GetInstanceData = &GetInstanceData_instance_scarlet_citadel;
    p_Newscript->RegisterSelf();

    p_Newscript = new Script;
    p_Newscript->Name = "npc_areatrigger";
    p_Newscript->GetAI = &GetAI_npc_areatrigger;
    p_Newscript->RegisterSelf();
}
