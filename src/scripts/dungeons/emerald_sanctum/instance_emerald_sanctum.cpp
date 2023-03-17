#include "scriptPCH.h"

enum
{
	SPELL_DREAMESTATE = 56500,
	SPELL_REFLECTION = 27564,
	SPELL_ACID_BREATH = 24839,
	SPELL_POISON_BOLT_VOLLEY = 24099,
	SPELL_EMERALD_SUPRESSION = 56501,
	SPELL_EMERALD_AURA = 56502,
	SPELL_ACID_SPIT = 26050,
	SPELL_WYRMKINS_VENOM = 56503,
	SPELL_CLEAVE = 19983,
	SPELL_SCALEBANE_INTIMIDATION = 56504,
	SPELL_HOWL_OF_ERRENIUS = 56506,
	SPELL_CURSE_OF_ERENNIUS = 56505
};

struct instance_emerald_sanctum : public ScriptedInstance
{
	explicit instance_emerald_sanctum(Map* p_Map) : ScriptedInstance(p_Map) {}
};

InstanceData* GetInstanceData_instance_emerald_sanctum(Map* p_Map)
{
	return new instance_emerald_sanctum(p_Map);
}

struct sanctum_dreamerAI : public ScriptedAI
{
	sanctum_dreamerAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_uiDreamstateTimer;

	void Reset() override
	{
		m_uiDreamstateTimer = 10 * IN_MILLISECONDS;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_uiDreamstateTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, SPELL_DREAMESTATE) == CAST_OK)
					m_uiDreamstateTimer = 10 * IN_MILLISECONDS;
			}
		}
		else
			m_uiDreamstateTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_sanctum_dreamer(Creature* pCreature)
{
	return new sanctum_dreamerAI(pCreature);
}

struct sanctum_dragonkinAI : public ScriptedAI
{
	sanctum_dragonkinAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_uiReflectionTimer;

	void Reset() override
	{
		m_uiReflectionTimer = 10 * IN_MILLISECONDS;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_uiReflectionTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, SPELL_REFLECTION) == CAST_OK)
				m_uiReflectionTimer = 10 * IN_MILLISECONDS;
		}
		else
			m_uiReflectionTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_sanctum_dragonkin(Creature* pCreature)
{
	return new sanctum_dragonkinAI(pCreature);
}

struct sanctum_wyrmAI : public ScriptedAI
{
	sanctum_wyrmAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_uiAcidBreathTimer;
	uint32 m_uiPoisonBoltVolleyTimer;

	void Reset() override
	{
		m_uiAcidBreathTimer = 20 * IN_MILLISECONDS;
		m_uiPoisonBoltVolleyTimer = 15 * IN_MILLISECONDS;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_uiAcidBreathTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_ACID_BREATH) == CAST_OK)
				m_uiAcidBreathTimer = 20 * IN_MILLISECONDS;
		}
		else
			m_uiAcidBreathTimer -= uiDiff;

		if (m_uiPoisonBoltVolleyTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_POISON_BOLT_VOLLEY) == CAST_OK)
				m_uiPoisonBoltVolleyTimer = 15 * IN_MILLISECONDS;
		}
		else
			m_uiPoisonBoltVolleyTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_sanctum_wyrm(Creature* pCreature)
{
	return new sanctum_wyrmAI(pCreature);
}

struct sanctum_supressorAI : public ScriptedAI
{
	sanctum_supressorAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_uiEmeraldSupressionTimer;

	void Reset() override
	{
		m_uiEmeraldSupressionTimer = 15 * IN_MILLISECONDS;
		
		if (!m_creature->HasAura(SPELL_EMERALD_AURA))
			m_creature->AddAura(SPELL_EMERALD_AURA);

	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_uiEmeraldSupressionTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, SPELL_EMERALD_SUPRESSION) == CAST_OK)
					m_uiEmeraldSupressionTimer = 15 * IN_MILLISECONDS;
			}
		}
		else
			m_uiEmeraldSupressionTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_sanctum_supressor(Creature* pCreature)
{
	return new sanctum_supressorAI(pCreature);
}

struct sanctum_wyrmkinAI : public ScriptedAI
{
	sanctum_wyrmkinAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_uiAcidSpitTimer;
	uint32 m_uiWyrmkinsVenomTimer;

	void Reset() override
	{
		m_uiAcidSpitTimer = 7 * IN_MILLISECONDS;
		m_uiWyrmkinsVenomTimer = 25 * IN_MILLISECONDS;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_uiAcidSpitTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_ACID_SPIT) == CAST_OK)
				m_uiAcidSpitTimer = 7 * IN_MILLISECONDS;
		}
		else
			m_uiAcidSpitTimer -= uiDiff;

		if (m_uiWyrmkinsVenomTimer < uiDiff)
		{
			Map::PlayerList const& playerList = m_creature->GetMap()->GetPlayers();
			if (!playerList.isEmpty())
			{
				for (const auto& itr : playerList)
				{
					if (Player* pPlayer = itr.getSource())
					{
						if (pPlayer->GetDistance3dToCenter(m_creature) < 5.0f)
						{
							if (DoCastSpellIfCan(pPlayer, SPELL_WYRMKINS_VENOM) == CAST_OK)
								m_uiWyrmkinsVenomTimer = 25 * IN_MILLISECONDS;
						}
					}
				}
			}
		}
		else
			m_uiWyrmkinsVenomTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_sanctum_wyrmkin(Creature* pCreature)
{
	return new sanctum_wyrmkinAI(pCreature);
}

struct sanctum_scalebaneAI : public ScriptedAI
{
	sanctum_scalebaneAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_uiCleaveTimer;
	uint32 m_uiScalebaneIntimidationTimer;

	void Reset() override
	{
		m_uiCleaveTimer = 6 * IN_MILLISECONDS;
		m_uiScalebaneIntimidationTimer = 25 * IN_MILLISECONDS;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_uiCleaveTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CLEAVE) == CAST_OK)
				m_uiCleaveTimer = 6 * IN_MILLISECONDS;
		}
		else
			m_uiCleaveTimer -= uiDiff;

		if (m_uiScalebaneIntimidationTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SCALEBANE_INTIMIDATION) == CAST_OK)
				m_uiScalebaneIntimidationTimer = 25 * IN_MILLISECONDS;
		}
		else
			m_uiScalebaneIntimidationTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_sanctum_scalebane(Creature* pCreature)
{
	return new sanctum_scalebaneAI(pCreature);
}

struct erenniusAI : public ScriptedAI
{
	erenniusAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_uiPoisonBoltVolleyTimer;
	uint32 m_uiHowlOfErreniusTimer;
	bool m_uiCastedCurseOfErennius;

	void Reset() override
	{
		m_uiPoisonBoltVolleyTimer = 12 * IN_MILLISECONDS;
		m_uiHowlOfErreniusTimer = 30 * IN_MILLISECONDS;
		m_uiCastedCurseOfErennius = false;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_uiPoisonBoltVolleyTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_POISON_BOLT_VOLLEY) == CAST_OK)
				m_uiPoisonBoltVolleyTimer = 12 * IN_MILLISECONDS;
		}
		else
			m_uiPoisonBoltVolleyTimer -= uiDiff;

		if (m_uiHowlOfErreniusTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HOWL_OF_ERRENIUS) == CAST_OK)
				m_uiHowlOfErreniusTimer = 30 * IN_MILLISECONDS;
		}
		else
			m_uiHowlOfErreniusTimer -= uiDiff;

		if (m_creature->HealthBelowPct(50) && !m_uiCastedCurseOfErennius)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CURSE_OF_ERENNIUS) == CAST_OK)
				m_uiCastedCurseOfErennius = true;
		}

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_erennius(Creature* pCreature)
{
	return new erenniusAI(pCreature);
}

void AddSC_instance_emerald_sanctum()
{
	Script* newscript;

	newscript = new Script;
	newscript->Name = "instance_emerald_sanctum";
	newscript->GetInstanceData = &GetInstanceData_instance_emerald_sanctum;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "sanctum_dreamer";
	newscript->GetAI = &GetAI_sanctum_dreamer;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "sanctum_dragonkin";
	newscript->GetAI = &GetAI_sanctum_dragonkin;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "sanctum_wyrm";
	newscript->GetAI = &GetAI_sanctum_wyrm;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "sanctum_supressor";
	newscript->GetAI = &GetAI_sanctum_supressor;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "sanctum_wyrmkin";
	newscript->GetAI = &GetAI_sanctum_wyrmkin;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "sanctum_scalebane";
	newscript->GetAI = &GetAI_sanctum_scalebane;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "erennius";
	newscript->GetAI = &GetAI_erennius;
	newscript->RegisterSelf();
}