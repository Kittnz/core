/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#pragma once


enum BlackMorassUnit : uint32
{
    NPC_CHROMIE = 0000,
    NPC_CHRONORMU = 50117,
    NPC_GERASTRASZ = 0002,
    NPC_ANTNORMI = 65125
};

enum BlackMorassEncounter : uint32
{
    TYPE_CHROMIE,
    TYPE_CHRONORMU,
    TYPE_GERASTRASZ,

    MAX_ENCOUNTER
};

enum BlackMorassData : uint32
{
    DATA_CHROMIE_GUID,
    DATA_CHRONORMU_GUID,
    DATA_GERASTRASZ_GUID,

    MAX_DATA
};

struct LocationXYZO
{
    float m_fX{}, m_fY{}, m_fZ{}, m_fO{};
};

template <typename Functor>
void DoAfterTime(Creature* pCreature, const uint32& uiTime, Functor&& function)
{
    pCreature->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), pCreature->m_Events.CalculateTime(uiTime));
}

template <typename Functor>
void DoAfterTime(Player* pPlayer, const uint32& uiTime, Functor&& function)
{
    pPlayer->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), pPlayer->m_Events.CalculateTime(uiTime));
}

class instance_black_morass : public ScriptedInstance
{
public:
    explicit instance_black_morass(Map* pMap);
    ~instance_black_morass() override {}

    void Initialize() override;

    bool IsEncounterInProgress() const override;

    void OnObjectCreate(GameObject* pGo) override;
    void OnCreatureCreate(Creature* pCreature) override;

    void SetData(const uint32 uiType, const uint32 uiData) override;
    uint32 GetData(const uint32 uiType) override;

    char const* Save() override { return str_InstData.c_str(); }
    void Load(char const* chrIn) override;

private:
    uint32 m_auiEncounter[BlackMorassEncounter::MAX_ENCOUNTER]{};
    uint64 m_auiData[BlackMorassData::MAX_DATA]{};
    std::string str_InstData{};
};
