
#include "scriptPCH.h"
#include "scarlet_citadel.h"


struct instance_scarlet_citadel : public ScriptedInstance
{
    explicit instance_scarlet_citadel(Map* p_Map) : ScriptedInstance(p_Map)
    {
        Initialize();
    };

    uint32 m_auiEncounter[ScarletCitadelEncounter::MAX_ENCOUNTER];
    uint64 m_auiData[ScarletCitadelData::MAX_DATA];
    std::string str_InstData;

    void Initialize() override
    {
        memset(&m_auiEncounter, 0, sizeof(m_auiEncounter));
        memset(&m_auiData, 0, sizeof(m_auiData));
    }

    bool IsEncounterInProgress() const override
    {
        for (const auto& i : m_auiEncounter)
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
        case ScarletCitadelUnit::GO_DOOR_VENDOR_LEFT:
            {
                m_auiData[ScarletCitadelData::DATA_DOOR_VENDOR_LEFT] = p_Go->GetObjectGuid();

                if (m_auiEncounter[ScarletCitadelEncounter::TYPE_DAELUS] == DONE)
                    p_Go->SetGoState(GO_STATE_ACTIVE); // Open it

                break;
            }
            case ScarletCitadelUnit::GO_DOOR_VENDOR_RIGHT:
            {
                m_auiData[ScarletCitadelData::DATA_DOOR_VENDOR_RIGHT] = p_Go->GetObjectGuid();

                if (m_auiEncounter[ScarletCitadelEncounter::TYPE_DAELUS] == DONE)
                    p_Go->SetGoState(GO_STATE_ACTIVE); // Open it

                break;
            }
            case ScarletCitadelUnit::GO_DOOR_DAELUS:
            {
                m_auiData[ScarletCitadelData::DATA_DOOR_DAELUS] = p_Go->GetObjectGuid();

                if (m_auiEncounter[ScarletCitadelEncounter::TYPE_DAELUS] == DONE)
                    p_Go->DeleteLater(); // Remove it (Looks better)

                break;
            }
            case ScarletCitadelUnit::GO_DOOR_ARDAEUS_ENTER:
            {
                m_auiData[ScarletCitadelData::DATA_DOOR_ARDAEUS_ENTER] = p_Go->GetObjectGuid();

                if (m_auiEncounter[ScarletCitadelEncounter::TYPE_ARDAEUS] == DONE)
                    p_Go->SetGoState(GO_STATE_ACTIVE); // Open it

                break;
            }
            case ScarletCitadelUnit::GO_DOOR_ARDAEUS_EXIT:
            {
                m_auiData[ScarletCitadelData::DATA_DOOR_ARDAEUS_EXIT] = p_Go->GetObjectGuid();

                if (m_auiEncounter[ScarletCitadelEncounter::TYPE_ARDAEUS] == DONE)
                    p_Go->DeleteLater(); // Remove it (Looks better)

                break;
            }
            case ScarletCitadelUnit::GO_DOOR_RIGHT_WING:
            {
                m_auiData[ScarletCitadelData::DATA_DOOR_RIGHT_WING] = p_Go->GetObjectGuid();

                if (m_auiEncounter[ScarletCitadelEncounter::TYPE_MARIELLA] == DONE)
                    p_Go->DeleteLater(); // Remove it

                break;
            }
            case ScarletCitadelUnit::GO_DOOR_MARIELLA:
            {
                m_auiData[ScarletCitadelData::DATA_DOOR_MARIELLA] = p_Go->GetObjectGuid();

                if (m_auiEncounter[ScarletCitadelEncounter::TYPE_MARIELLA] == DONE)
                    p_Go->SetGoState(GO_STATE_ACTIVE); // Open it

                break;
            }
            case ScarletCitadelUnit::GO_DOOR_ABBENDIS:
            {
                m_auiData[ScarletCitadelData::DATA_DOOR_ABBENDIS] = p_Go->GetObjectGuid();

                if (m_auiEncounter[ScarletCitadelEncounter::TYPE_ABBENDIS] == DONE)
                    p_Go->DeleteLater(); // Remove it

                break;
            }
        }
    }

    void OnCreatureCreate(Creature* p_Creature) override
    {
        switch (p_Creature->GetEntry())
        {
            case ScarletCitadelUnit::NPC_DAELUS:
            {
                m_auiData[ScarletCitadelData::DATA_DAELUS_GUID] = p_Creature->GetObjectGuid();
                break;
            }
            case ScarletCitadelUnit::NPC_ARDAEUS:
            {
                m_auiData[ScarletCitadelData::DATA_ARDAEUS_GUID] = p_Creature->GetObjectGuid();
                break;
            }
            case ScarletCitadelUnit::NPC_MARIELLA:
            {
                m_auiData[ScarletCitadelData::DATA_MARIELLA_GUID] = p_Creature->GetObjectGuid();
                break;
            }
            case ScarletCitadelUnit::NPC_ABBENDIS:
            {
                m_auiData[ScarletCitadelData::DATA_ABBENDIS_GUID] = p_Creature->GetObjectGuid();
                break;
            }
            case ScarletCitadelUnit::NPC_FIRST_WING_TRASH_TRIGGER:
            {
                m_auiData[ScarletCitadelData::DATA_FIRST_AREARIGGER_GUID] = p_Creature->GetObjectGuid();
                break;
            }
        }
    }

    void SetData(const uint32 ui_Type, const uint32 ui_Data) override
    {
        switch (ui_Type)
        {
            case ScarletCitadelEncounter::TYPE_DAELUS:
            {
                m_auiEncounter[ScarletCitadelEncounter::TYPE_DAELUS] = ui_Data;
                if (ui_Data == DONE)
                {
                    if (GameObject* p_Go{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_VENDOR_RIGHT]) })
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_VENDOR_RIGHT]); // Open it
                    }

                    if (GameObject* p_Go{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_DAELUS]) })
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            p_Go->DeleteLater(); // Remove it (Looks better)
                    }
                }

                break;
            }
            case ScarletCitadelEncounter::TYPE_ARDAEUS:
            {
                m_auiEncounter[ScarletCitadelEncounter::TYPE_ARDAEUS] = ui_Data;
                if (ui_Data == IN_PROGRESS)
                {
                    if (GameObject* p_Go{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_ARDAEUS_ENTER]) })
                    {
                        if (p_Go->GetGoState() == GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_ARDAEUS_ENTER]); // Close it
                    }
                }
                else if (ui_Data == DONE)
                {
                    if (GameObject* p_Go{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_ARDAEUS_EXIT]) })
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            p_Go->DeleteLater(); // Remove it (Looks better)
                    }

                    if (GameObject* p_Go{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_ARDAEUS_ENTER]) })
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_ARDAEUS_ENTER]); // Open it
                    }

                    if (Creature* p_Creature{ instance->GetCreature(m_auiData[ScarletCitadelData::DATA_FIRST_AREARIGGER_GUID]) })
                    {
                        p_Creature->ForcedDespawn(); // Despawn first wing trash arearigger to prevent respawn of trash after killing 2nd boss
                    }
                }
                else if (ui_Data == FAIL)
                {
                    if (GameObject* p_Go{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_ARDAEUS_ENTER]) })
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_ARDAEUS_ENTER]); // Open it
                    }
                }

                break;
            }
            case ScarletCitadelEncounter::TYPE_MARIELLA:
            {
                m_auiEncounter[ScarletCitadelEncounter::TYPE_MARIELLA] = ui_Data;
                if (ui_Data == IN_PROGRESS)
                {
                    if (GameObject* p_Go{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_MARIELLA]) })
                    {
                        if (p_Go->GetGoState() == GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_MARIELLA]); // Close it
                    }
                }
                else if (ui_Data == DONE)
                {
                    if (GameObject* p_Go{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_MARIELLA]) })
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_MARIELLA]); // Open it
                    }
                    if (GameObject* p_Go{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_RIGHT_WING]) })
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            p_Go->DeleteLater(); // Remove it
                    }
                }
                else if (ui_Data == FAIL)
                {
                    if (GameObject* p_Go{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_MARIELLA]) })
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_MARIELLA]); // Open it
                    }
                }

                break;
            }
            case ScarletCitadelEncounter::TYPE_ABBENDIS:
            {
                m_auiEncounter[ScarletCitadelEncounter::TYPE_ABBENDIS] = ui_Data;
                if (ui_Data == IN_PROGRESS)
                {
                    if (GameObject* p_Go{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_ABBENDIS]) })
                    {
                        if (p_Go->GetGoState() == GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_ABBENDIS]); // Close it
                    }
                }
                else if (ui_Data == DONE)
                {
                    if (GameObject* p_Go{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_ABBENDIS]) })
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            p_Go->DeleteLater(); // Remove it
                    }

                    if (GameObject* p_Go{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_VENDOR_LEFT]) }) // Open second vendor door after killing last boss
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_VENDOR_LEFT]); // Open it
                    }
                }
                else if (ui_Data == FAIL)
                {
                    if (GameObject* p_Go{ instance->GetGameObject(m_auiData[ScarletCitadelData::DATA_DOOR_ABBENDIS]) })
                    {
                        if (p_Go->GetGoState() != GO_STATE_ACTIVE)
                            DoUseDoorOrButton(m_auiData[ScarletCitadelData::DATA_DOOR_ABBENDIS]); // Open it
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

    uint32 GetData(const uint32 ui_Type) override
    {
        if (ui_Type < ScarletCitadelEncounter::MAX_ENCOUNTER)
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

        for (uint8 i{ 0 }; i < MAX_ENCOUNTER; ++i)
        {
            if (m_auiEncounter[i] == IN_PROGRESS)
            {
                m_auiEncounter[i] = NOT_STARTED;
            }
        }

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
