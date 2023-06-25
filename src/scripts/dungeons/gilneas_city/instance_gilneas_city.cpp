#include "scriptPCH.h"
#include "instance_gilneas_city.h"
#include <random>

struct instance_gilneas_city : public ScriptedInstance
{
    explicit instance_gilneas_city(Map* p_Map) : ScriptedInstance(p_Map)
    {
        Initialize();
    };

    uint64 m_uiCeliaGUID;
    uint64 m_uiLordMortimerGUID;

    std::vector<Player*> randomPlayers;

    void Initialize()
    {
		randomPlayers.clear();
        m_uiCeliaGUID = 0;
        m_uiLordMortimerGUID = 0;
	}

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

    void OnCreatureCreate(Creature* pCreature)
    {
        switch (pCreature->GetEntry())
        {
            case NPC_CELIA:
			    m_uiCeliaGUID = pCreature->GetGUID();
			    break;
            case NPC_LORD_MORTIMER:
                m_uiLordMortimerGUID = pCreature->GetGUID();
                break;
        }
    }

    uint64 GetData64(uint32 uiType)
    {
        switch (uiType)
        {
            case DATA_CELIA:
                return m_uiCeliaGUID;
            case DATA_LORD_MORTIMER:
                return m_uiLordMortimerGUID;
            default:
                return 0;
        }
    }

    std::vector<Player*> GetRandomPlayers(int8 count)
    {
        Map::PlayerList const& playerList = GetMap()->GetPlayers();
        randomPlayers.clear();
        if (!playerList.isEmpty())
        {
            for (const auto& itr : playerList)
            {
                if (Player* pPlayer = itr.getSource())
                {
                    randomPlayers.push_back(pPlayer);
                }
            }
        }

        auto seed = std::chrono::system_clock::now().time_since_epoch().count();
        std::shuffle(randomPlayers.begin(), randomPlayers.end(), std::default_random_engine(seed));

        if (randomPlayers.size() < count)
        {
            randomPlayers.resize(randomPlayers.size());
        }
        else
        {
            randomPlayers.resize(count);
        }

        return randomPlayers;
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