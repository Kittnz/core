#include "scriptPCH.h"
#include "emerald_sanctum.h"
#include <random>


struct boss_solniusAI : public ScriptedAI
{
	boss_solniusAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		m_pInstance = (ScriptedInstance*)m_creature->GetInstanceData();
		Reset();
	}

	ScriptedInstance* m_pInstance;
	uint32 m_uiCorrosiveBoltTimer;
	uint32 m_uiEmeraldRotTimer;
	uint32 m_uiAcidBreathTimer;
	uint32 m_uiGimmickTimer;

	std::vector<Player*> randomPlayers;
	bool phaseOne;
	bool phaseTwo;
	bool phaseThree;
	bool phaseFour;
	bool envPhaseTwo;
	bool envPhaseThree;

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
		envPhaseTwo = false;
		envPhaseThree = false;
		m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE_2);
		m_creature->SetFactionTemplateId(7);
		m_creature->SetDisplayId(m_creature->GetNativeDisplayId());
		m_creature->SetTauntImmunity(false);
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

	void Aggro(Unit* pWho) override
	{
		if (m_creature->GetMapId() != 807)
			return;

		if (instance_emerald_sanctum* pInstance = dynamic_cast<instance_emerald_sanctum*>(m_pInstance))
		{
			for (auto& helperGUID : pInstance->GetTrashGUID())
			{
				if (Creature* pCreature = m_pInstance->GetCreature(helperGUID))
				{
					pCreature->AI()->AttackStart(pWho);
				}
			}
		}
	}

	void JustDied(Unit* pWho)
	{
		m_creature->MonsterYell("I have waited so... long, the Awakening cannot be stopped, not by you... I must awaken the Dragonflight, I am the only one who can put an end to this... I cannot be... stopped...");
		m_creature->PlayDirectSound(SOLNIUS_SAY_SOUND_3);
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
			if (!envPhaseTwo)
			{
				m_creature->SetDisplayId(MODEL_DRAGON);
				m_creature->SetTauntImmunity(true);
				envPhaseTwo = true;
			}

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
					m_uiGimmickTimer = 20 * IN_MILLISECONDS;
				}
			}
			else
				m_uiGimmickTimer -= uiDiff;
		}

		if (phaseThree)
		{
			if (!envPhaseThree)
			{
				m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC);
				m_creature->GetMotionMaster()->MoveTargetedHome();
				m_creature->MonsterYell("The dream beckons us all, you shall remain here forever...");
				m_creature->PlayDirectSound(SOLNIUS_SAY_SOUND_2);
				envPhaseThree = true;
			}
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

CreatureAI* GetAI_boss_solnius(Creature* pCreature)
{
	return new boss_solniusAI(pCreature);
}

#define GOSSIP_ITEM_START_FIGHT "I have come to put an end to you, and stop this ritual."

bool GossipHello_boss_solnius(Player* pPlayer, Creature* pCreature)
{
	if (ScriptedInstance* pInstance = (ScriptedInstance*)pCreature->GetInstanceData())
	{
		pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM_START_FIGHT, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
		
		// Random text for now
		pPlayer->SEND_GOSSIP_MENU(7134, pCreature->GetObjectGuid());
	}

	return true;
}

bool GossipSelect_boss_solnius(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
	switch (uiAction)
	{
		case GOSSIP_ACTION_INFO_DEF + 1:
		{
			if (ScriptedInstance* pInstance = (ScriptedInstance*)pCreature->GetInstanceData())
				if (Creature* boss_solnius = pInstance->GetCreature(pInstance->GetData64(DATA_SOLNIUS)))
				{
					boss_solnius->MonsterYell("You think you can interfere with my eternal duty? The awakening has been fortold long before your kind has existed mortals, you shall regret setting foot on our hallowed ground!");
					boss_solnius->PlayDirectSound(SOLNIUS_SAY_SOUND_1);
					boss_solnius->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE_2);
					boss_solnius->SetFactionTemplateId(14);
					pPlayer->CLOSE_GOSSIP_MENU();
				}
		}
	}

	return true;
}

void AddSC_boss_solnius()
{
	Script* newscript;

	newscript = new Script;
	newscript->Name = "boss_solnius";
	newscript->GetAI = &GetAI_boss_solnius;
	newscript->pGossipHello = &GossipHello_boss_solnius;
	newscript->pGossipSelect = &GossipSelect_boss_solnius;
	newscript->RegisterSelf();
}