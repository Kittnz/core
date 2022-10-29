/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#pragma once


enum BlackMorassUnit : std::uint32_t
{
    NPC_CHROMIE = 0000,
    NPC_CHRONORMU = 50117,
    NPC_GERASTRASZ = 0002,
    NPC_ANTNORMI = 65125
};

enum BlackMorassEncounter : std::uint32_t
{
    TYPE_CHROMIE = 0,
    TYPE_CHRONORMU,
    TYPE_GERASTRASZ,

    MAX_ENCOUNTER
};

enum BlackMorassData : std::uint32_t
{
    DATA_CHROMIE_GUID = 0,
    DATA_CHRONORMU_GUID,
    DATA_GERASTRASZ_GUID,

    MAX_DATA
};

struct LocationXYZO
{
    float m_fX{}, m_fY{}, m_fZ{}, m_fO{};
};

template <typename Functor>
void DoAfterTime(Creature* pCreature, const std::uint32_t& uiTime, Functor&& function)
{
    pCreature->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), pCreature->m_Events.CalculateTime(uiTime));
}

template <typename Functor>
void DoAfterTime(Player* pPlayer, const std::uint32_t& uiTime, Functor&& function)
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

    void OnPlayerEnter(Player* pPlayer) override;
    void OnPlayerLeave(Player* pPlayer, const bool bJustDestroy) override;

    void SetData(uint32 uiType, uint32 uiData) override;
    uint32 GetData(const std::uint32_t uiType) override;

    char const* Save() override { return str_InstData.c_str(); }
    void Load(char const* chrIn) override;

    void CloseRift(const std::uint8_t count) { m_uiRiftsClosed += count; }

private:
    std::uint8_t m_uiRiftsClosed;

    std::uint32_t m_auiEncounter[BlackMorassEncounter::MAX_ENCOUNTER]{};

    std::uint64_t m_auiData[BlackMorassData::MAX_DATA]{};

    std::string str_InstData{};
};
