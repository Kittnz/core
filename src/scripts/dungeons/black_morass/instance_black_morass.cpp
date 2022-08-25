/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "black_morass.h"


instance_black_morass::instance_black_morass(Map* pMap) : ScriptedInstance(pMap)
{
    instance_black_morass::Initialize();
}

void instance_black_morass::Initialize()
{
    memset(&m_auiEncounter, 0, sizeof(m_auiEncounter));
    memset(&m_auiData, 0, sizeof(m_auiData));
}

bool instance_black_morass::IsEncounterInProgress() const
{
    for (uint32 i : m_auiEncounter)
    {
        if (i == IN_PROGRESS)
            return true;
    }

    return false;
}

void instance_black_morass::OnObjectCreate(GameObject* pGo)
{
    switch (pGo->GetEntry())
    {

    }
}

void instance_black_morass::OnCreatureCreate(Creature* pCreature)
{
    switch (pCreature->GetEntry())
    {
        case BlackMorassUnit::NPC_CHROMIE:
        {
            m_auiData[BlackMorassData::DATA_CHROMIE_GUID] = pCreature->GetObjectGuid();
            m_mNpcEntryGuidStore[pCreature->GetEntry()] = pCreature->GetObjectGuid();
            break;
        }
        case BlackMorassUnit::NPC_CHRONORMU:
        {
            m_auiData[BlackMorassData::DATA_CHRONORMU_GUID] = pCreature->GetObjectGuid();
            m_mNpcEntryGuidStore[pCreature->GetEntry()] = pCreature->GetObjectGuid();
            break;
        }
        case BlackMorassUnit::NPC_GERASTRASZ:
        {
            m_auiData[BlackMorassData::DATA_GERASTRASZ_GUID] = pCreature->GetObjectGuid();
            m_mNpcEntryGuidStore[pCreature->GetEntry()] = pCreature->GetObjectGuid();
            break;
        }
    }
}

void instance_black_morass::SetData(const uint32 uiType, const uint32 uiData)
{
    switch (uiType)
    {
        case BlackMorassEncounter::TYPE_CHROMIE:
        {
            m_auiEncounter[BlackMorassEncounter::TYPE_CHROMIE] = uiData;

            if (uiData == DONE)
            {
                // 
            }

            break;
        }
        case BlackMorassEncounter::TYPE_CHRONORMU:
        {
            m_auiEncounter[BlackMorassEncounter::TYPE_CHRONORMU] = uiData;

            if (uiData == DONE)
            {
                // 
            }

            break;
        }
        case BlackMorassEncounter::TYPE_GERASTRASZ:
        {
            m_auiEncounter[BlackMorassEncounter::TYPE_GERASTRASZ] = uiData;

            if (uiData == DONE)
            {
                // 
            }

            break;
        }
    }

    if (uiData == DONE)
    {
        OUT_SAVE_INST_DATA;

        std::ostringstream saveStream{};
        saveStream
            << m_auiEncounter[0] << " " // TYPE_CHROMIE
            << m_auiEncounter[1] << " " // TYPE_CHRONORMU
            << m_auiEncounter[2];       // TYPE_GERASTRASZ

        str_InstData = saveStream.str();

        SaveToDB();

        OUT_SAVE_INST_DATA_COMPLETE;
    }
}

uint32 instance_black_morass::GetData(const uint32 uiType)
{
    if (uiType < BlackMorassEncounter::MAX_ENCOUNTER)
    {
        return (m_auiEncounter[uiType]);
    }

    return 0;
}

void instance_black_morass::Load(char const* chrIn)
{
    if (!chrIn)
    {
        OUT_LOAD_INST_DATA_FAIL;
        return;
    }

    OUT_LOAD_INST_DATA(chrIn);

    std::istringstream loadStream(chrIn);

    loadStream >>
        m_auiEncounter[0] >> // TYPE_CHROMIE
        m_auiEncounter[1] >> // TYPE_CHRONORMU
        m_auiEncounter[2];   // TYPE_GERASTRASZ

    for (uint8 i{ 0 }; i < MAX_ENCOUNTER; ++i)
    {
        if (m_auiEncounter[i] == IN_PROGRESS)
        {
            m_auiEncounter[i] = NOT_STARTED;
        }
    }

    OUT_LOAD_INST_DATA_COMPLETE;
}

InstanceData* GetInstanceData_instance_black_morass(Map* pMap)
{
    return new instance_black_morass(pMap);
}


void AddSC_instance_black_morass()
{
    Script* pNewscript{};

    pNewscript = new Script;
    pNewscript->Name = "instance_black_morass";
    pNewscript->GetInstanceData = &GetInstanceData_instance_black_morass;
    pNewscript->RegisterSelf();
}

