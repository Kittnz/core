#include "scriptPCH.h"
#include "scarlet_citadel.h"

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
                    p_Go->SetGoState(GO_STATE_ACTIVE);

                break;
            }
            case GO_DOOR_VENDOR_RIGHT:
            {
                m_auiData[DATA_DOOR_VENDOR_RIGHT] = p_Go->GetObjectGuid();
                if (m_auiEncounter[TYPE_DAELUS] == DONE)
                    p_Go->SetGoState(GO_STATE_ACTIVE);

                break;
            }
            case GO_DOOR_DAELUS:
            {
                m_auiData[DATA_DOOR_DAELUS] = p_Go->GetObjectGuid();
                if (m_auiEncounter[TYPE_DAELUS] == DONE)
                    p_Go->SetGoState(GO_STATE_ACTIVE);

                break;
            }
            case GO_DOOR_ARDAEUS_ENTER:
            {
                m_auiData[DATA_DOOR_ARDAEUS_ENTER] = p_Go->GetObjectGuid();
                break;
            }
            case GO_DOOR_ARDAEUS_EXIT:
            {
                m_auiData[DATA_DOOR_ARDAEUS_EXIT] = p_Go->GetObjectGuid();
                if (m_auiEncounter[TYPE_ARDAEUS] == DONE)
                    p_Go->SetGoState(GO_STATE_ACTIVE);

                break;
            }
            case GO_DOOR_RIGHT_WING:
            {
                m_auiData[DATA_DOOR_RIGHT_WING] = p_Go->GetObjectGuid();
                if (m_auiEncounter[TYPE_MARIELLA] == DONE)
                    p_Go->SetGoState(GO_STATE_ACTIVE);

                break;
            }
            case GO_DOOR_MARIELLA:
            {
                m_auiData[DATA_DOOR_MARIELLA] = p_Go->GetObjectGuid();
                break;
            }
            case GO_DOOR_ABBENDIS:
            {
                m_auiData[DATA_DOOR_ABBENDIS] = p_Go->GetObjectGuid();
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
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_VENDOR_LEFT]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_VENDOR_LEFT]);
                    }
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_VENDOR_RIGHT]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_VENDOR_RIGHT]);
                    }
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_DAELUS]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_DAELUS]);
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
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_ARDAEUS_ENTER]);
                    }
                }
                else if (ui_Data == DONE)
                {
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_ARDAEUS_EXIT]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_ARDAEUS_EXIT]);
                    }
                }
                else if (ui_Data == FAIL)
                {
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_ARDAEUS_ENTER]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_ARDAEUS_ENTER]);
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
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_MARIELLA]);
                    }
                }
                else if (ui_Data == DONE)
                {
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_MARIELLA]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_MARIELLA]);
                    }
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_RIGHT_WING]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_RIGHT_WING]);
                    }
                }
                else if (ui_Data == FAIL)
                {
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_MARIELLA]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_MARIELLA]);
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
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_ABBENDIS]);
                    }
                }
                else if (ui_Data == DONE)
                {
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_ABBENDIS]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_ABBENDIS]);
                    }
                }
                else if (ui_Data == FAIL)
                {
                    if (GameObject* p_Go = instance->GetGameObject(m_auiData[DATA_DOOR_ABBENDIS]))
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[DATA_DOOR_ABBENDIS]);
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

void AddSC_instance_scarlet_citadel()
{
    Script *p_Newscript;
    p_Newscript = new Script;
    p_Newscript->Name = "instance_scarlet_citadel";
    p_Newscript->GetInstanceData = &GetInstanceData_instance_scarlet_citadel;
    p_Newscript->RegisterSelf();
}
