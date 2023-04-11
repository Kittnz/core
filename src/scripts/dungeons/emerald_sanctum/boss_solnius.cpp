#include "scriptPCH.h"
#include "emerald_sanctum.h"
#include <random>


struct boss_solniusAI : public ScriptedAI
{
	boss_solniusAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		//m_pInstance = pCreature->GetInstanceData();
		Reset();
	}

	//InstanceData* m_pInstance;
	uint32 m_uiCorrosiveBoltTimer;
	uint32 m_uiEmeraldRotTimer;
	uint32 m_uiAcidBreathTimer;
	uint32 m_uiGimmickTimer;
	std::vector<Player*> randomPlayers;
	bool phaseOne;
	bool phaseTwo;
	bool phaseThree;
	bool phaseFour;

	void Reset() override
	{
		m_uiCorrosiveBoltTimer = 6 * IN_MILLISECONDS;
		m_uiEmeraldRotTimer = 15 * IN_MILLISECONDS;
		m_uiAcidBreathTimer = 25 * IN_MILLISECONDS;
		m_uiGimmickTimer = 20 * IN_MILLISECONDS;
		randomPlayers.clear();
		phaseOne = false;
		phaseTwo = false;
		phaseThree = false;
		phaseFour = false;
	}

	std::vector<Player*> GetRandomPlayers(Map::PlayerList const& playerList, int8 count)
	{
		randomPlayers.clear();
		for (const auto& itr : playerList)
		{
			if (Player* pPlayer = itr.getSource())
			{
				randomPlayers.push_back(pPlayer);
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

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_creature->HealthBelowPct(90) && !phaseTwo)
		{
			phaseOne = false;
			phaseTwo = true;
		}

		if (m_creature->HealthBelowPct(60) && !phaseThree)
		{
			phaseTwo = false;
			phaseThree = true;
		}

		if (m_creature->HealthBelowPct(30) && !phaseFour)
		{
			m_uiEmeraldRotTimer = 30 * IN_MILLISECONDS;
			phaseThree = false;
			phaseFour = true;
		}

		if (phaseOne)
		{
			if (m_uiCorrosiveBoltTimer < uiDiff)
			{
				if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CORROSIVE_BOLT) == CAST_OK)
					m_uiCorrosiveBoltTimer = 6 * IN_MILLISECONDS;
			}
			else
				m_uiCorrosiveBoltTimer -= uiDiff;

			if (m_uiEmeraldRotTimer < uiDiff)
			{
				Map::PlayerList const& playerList = m_creature->GetMap()->GetPlayers();
				if (!playerList.isEmpty())
				{
					for (Player* pPlayer : GetRandomPlayers(playerList, 8))
					{
						DoCastSpellIfCan(pPlayer, SPELL_EMERALD_ROT);
					}
					m_uiEmeraldRotTimer = 15 * IN_MILLISECONDS;
				}
			}
			else
				m_uiEmeraldRotTimer -= uiDiff;
		}

		if (phaseTwo)
		{
			if (m_uiAcidBreathTimer < uiDiff)
			{
				if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_ACID_BREATH) == CAST_OK)
					m_uiAcidBreathTimer = 25 * IN_MILLISECONDS;
			}
			else
				m_uiAcidBreathTimer -= uiDiff;

			if (m_uiGimmickTimer < uiDiff)
			{
				Map::PlayerList const& playerList = m_creature->GetMap()->GetPlayers();
				if (!playerList.isEmpty())
				{
					for (Player* pPlayer : GetRandomPlayers(playerList, 2))
					{
						DoCastSpellIfCan(pPlayer, SPELL_BANE_OF_ERANIKUS);
					}
					for (Player* pPlayer : GetRandomPlayers(playerList, 2))
					{
						DoCastSpellIfCan(pPlayer, SPELL_SANCTUM_MIND_DECAY);
					}
					for (Player* pPlayer : GetRandomPlayers(playerList, 2))
					{
						DoCastSpellIfCan(pPlayer, SPELL_DREAMFEVER);
					}
					for (Player* pPlayer : GetRandomPlayers(playerList, 2))
					{
						DoCastSpellIfCan(pPlayer, SPELL_EMERALD_INSTABILITY);
					}
					m_uiEmeraldRotTimer = 30 * IN_MILLISECONDS;
				}
			}
			else
				m_uiGimmickTimer -= uiDiff;
		}

		if (phaseThree)
		{

		}

		if (phaseFour)
		{
			if (m_uiCorrosiveBoltTimer < uiDiff)
			{
				if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CORROSIVE_BOLT) == CAST_OK)
					m_uiCorrosiveBoltTimer = 6 * IN_MILLISECONDS;
			}
			else
				m_uiCorrosiveBoltTimer -= uiDiff;

			if (m_uiEmeraldRotTimer < uiDiff)
			{
				Map::PlayerList const& playerList = m_creature->GetMap()->GetPlayers();
				if (!playerList.isEmpty())
				{
					for (Player* pPlayer : GetRandomPlayers(playerList, 4))
					{
						DoCastSpellIfCan(pPlayer, SPELL_EMERALD_ROT);
					}
					m_uiEmeraldRotTimer = 30 * IN_MILLISECONDS;
				}
			}
			else
				m_uiEmeraldRotTimer -= uiDiff;
		}

		DoMeleeAttackIfReady();
	}
};

#define GOSSIP_ITEM_START_FIGHT "I have come to put an end to you, and stop this ritual."

bool GossipHello_boss_solnius(Player* pPlayer, Creature* pCreature)
{
	if (ScriptedInstance* pInstance = (ScriptedInstance*)pCreature->GetInstanceData())
	{
		pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM_START_FIGHT, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
	}

	return true;
}

bool GossipSelect_boss_solnius(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
	switch (uiAction)
	{
		case GOSSIP_ACTION_INFO_DEF + 1:
		{

		}
	}

	return true;
}

void AddSC_boss_solnius()
{
	Script* newscript;

	newscript = new Script;
	newscript->Name = "boss_solnius";
	newscript->pGossipHello = &GossipHello_boss_solnius;
	newscript->pGossipSelect = &GossipSelect_boss_solnius;
	newscript->RegisterSelf();
}