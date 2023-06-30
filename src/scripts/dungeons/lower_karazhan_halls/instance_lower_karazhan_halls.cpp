#include "scriptPCH.h"
#include "lower_karazhan_halls.h"

instance_lower_karazhan_halls::instance_lower_karazhan_halls(Map* p_Map) : ScriptedInstance(p_Map)
{
	instance_lower_karazhan_halls::Initialize();
}

void instance_lower_karazhan_halls::Initialize()
{
}

void instance_lower_karazhan_halls::OnCreatureCreate(Creature* pCreature)
{
}

void instance_lower_karazhan_halls::OnCreatureDeath(Creature* pCreature)
{
}

uint64 instance_lower_karazhan_halls::GetData64(uint32 uiType)
{
	return 0;
}

InstanceData* GetInstanceData_instance_lower_karazhan_halls(Map* p_Map)
{
	return new instance_lower_karazhan_halls(p_Map);
}

struct shadowbane_gluttonAI : public ScriptedAI
{
	shadowbane_gluttonAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_SlaveringBiteTimer;
	uint32 m_DevouringHungerTimer;

	void Reset() override
	{
		m_SlaveringBiteTimer = urand(12 * IN_MILLISECONDS, 15 * IN_MILLISECONDS);
		m_DevouringHungerTimer = urand(15 * IN_MILLISECONDS, 25 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_SlaveringBiteTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER | SELECT_FLAG_IN_MELEE_RANGE))
			{
				if (DoCastSpellIfCan(pTarget, 57076) == CAST_OK)
					m_SlaveringBiteTimer = urand(12 * IN_MILLISECONDS, 15 * IN_MILLISECONDS);
			}
		}
		else
			m_SlaveringBiteTimer -= uiDiff;

		if (m_DevouringHungerTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature->GetVictim(), 57077) == CAST_OK)
				m_DevouringHungerTimer = urand(15 * IN_MILLISECONDS, 25 * IN_MILLISECONDS);
		}
		else
			m_DevouringHungerTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_shadowbane_glutton(Creature* pCreature)
{
	return new shadowbane_gluttonAI(pCreature);
}

struct phantom_cookAI : public ScriptedAI
{
	phantom_cookAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_FireBlastTimer;

	void Reset() override
	{
		m_FireBlastTimer = urand(15 * IN_MILLISECONDS, 30 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_FireBlastTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 20623) == CAST_OK)
					m_FireBlastTimer = urand(15 * IN_MILLISECONDS, 30 * IN_MILLISECONDS);
			}
		}
		else
			m_FireBlastTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_phantom_cook(Creature* pCreature)
{
	return new phantom_cookAI(pCreature);
}

struct shadowbane_alphaAI : public ScriptedAI
{
	shadowbane_alphaAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_ShadowbaneRoarTimer;

	void Reset() override
	{
		m_ShadowbaneRoarTimer = urand(14 * IN_MILLISECONDS, 20 * IN_MILLISECONDS);

		if (!m_creature->HasAura(57078))
			m_creature->CastSpell(m_creature, 57078, true);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_ShadowbaneRoarTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 57079) == CAST_OK)
				m_ShadowbaneRoarTimer = urand(14 * IN_MILLISECONDS, 20 * IN_MILLISECONDS);
		}
		else
			m_ShadowbaneRoarTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_shadowbane_alpha(Creature* pCreature)
{
	return new shadowbane_alphaAI(pCreature);
}

struct shadowbane_darkcasterAI : public ScriptedAI
{
	shadowbane_darkcasterAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_DarkboltTimer;

	void Reset() override
	{
		m_DarkboltTimer = 8 * IN_MILLISECONDS;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_DarkboltTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 57080) == CAST_OK)
					m_DarkboltTimer = 8 * IN_MILLISECONDS;
			}
		}
		else
			m_DarkboltTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_shadowbane_darkcaster(Creature* pCreature)
{
	return new shadowbane_darkcasterAI(pCreature);
}

struct shadowbane_ragefangAI : public ScriptedAI
{
	shadowbane_ragefangAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	bool frenzy;
	uint32 m_ClawFurryTimer;

	void Reset() override
	{
		frenzy = false;
		m_ClawFurryTimer = urand(11 * IN_MILLISECONDS, 14 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_creature->GetHealthPercent() <= 30.0f && !frenzy)
		{
			frenzy = true;
			DoCastSpellIfCan(m_creature, 57082);
		}

		if (m_ClawFurryTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 57081) == CAST_OK)
				m_ClawFurryTimer = urand(11 * IN_MILLISECONDS, 14 * IN_MILLISECONDS);
		}
		else
			m_ClawFurryTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_shadowbane_ragefang(Creature* pCreature)
{
	return new shadowbane_ragefangAI(pCreature);
}

struct haunted_blacksmithAI : public ScriptedAI
{
	haunted_blacksmithAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_SpectralArmorTimer;

	void Reset() override
	{
		m_SpectralArmorTimer = urand(6 * IN_MILLISECONDS, 9 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_SpectralArmorTimer < uiDiff)
		{
			if (Unit* pFriendlyTarget = m_creature->SelectRandomFriendlyTarget(nullptr, 20.0f, true))
			{
				if (pFriendlyTarget->HasAura(57068))
					m_SpectralArmorTimer = 500;
				else
				{
					if (DoCastSpellIfCan(pFriendlyTarget, 57068) == CAST_OK)
						m_SpectralArmorTimer = urand(6 * IN_MILLISECONDS, 9 * IN_MILLISECONDS);
				}
			}
		}
		else
			m_SpectralArmorTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_haunted_blacksmith(Creature* pCreature)
{
	return new haunted_blacksmithAI(pCreature);
}

struct phantom_guardsmanAI : public ScriptedAI
{
	phantom_guardsmanAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_ShieldBlockTimer;
	uint32 m_CurseOfWeaknessTimer;

	void Reset() override
	{
		m_ShieldBlockTimer = 5 * IN_MILLISECONDS;
		m_CurseOfWeaknessTimer = urand(14 * IN_MILLISECONDS, 20 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_ShieldBlockTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 2565) == CAST_OK)
				m_ShieldBlockTimer = 5 * IN_MILLISECONDS;
		}
		else
			m_ShieldBlockTimer -= uiDiff;

		if (m_CurseOfWeaknessTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 12493) == CAST_OK)
					m_CurseOfWeaknessTimer = urand(14 * IN_MILLISECONDS, 20 * IN_MILLISECONDS);
			}
		}
		else
			m_CurseOfWeaknessTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_phantom_guardsman(Creature* pCreature)
{
	return new phantom_guardsmanAI(pCreature);
}

struct haunted_stable_tenderAI : public ScriptedAI
{
	haunted_stable_tenderAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_CallSpectralSteedTimer;

	void Reset() override
	{
		m_CallSpectralSteedTimer = urand(14 * IN_MILLISECONDS, 18 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_CallSpectralSteedTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 57070) == CAST_OK)
				m_CallSpectralSteedTimer = urand(14 * IN_MILLISECONDS, 18 * IN_MILLISECONDS);
		}
		else
			m_CallSpectralSteedTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_haunted_stable_tender(Creature* pCreature)
{
	return new haunted_stable_tenderAI(pCreature);
}

struct shattercage_spearmanAI : public ScriptedAI
{
	shattercage_spearmanAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_ShattercageImpaleTimer;

	void Reset() override
	{
		m_ShattercageImpaleTimer = urand(10 * IN_MILLISECONDS, 12 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_ShattercageImpaleTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
			{
				if (DoCastSpellIfCan(pTarget, 57071) == CAST_OK)
					m_ShattercageImpaleTimer = urand(10 * IN_MILLISECONDS, 12 * IN_MILLISECONDS);
			}
		}
		else
			m_ShattercageImpaleTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_shattercage_spearman(Creature* pCreature)
{
	return new shattercage_spearmanAI(pCreature);
}

struct shattercage_magiskullAI : public ScriptedAI
{
	shattercage_magiskullAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		Reset();
	}

	uint32 m_ArcaneExplosionTimer;

	void Reset() override
	{
		m_ArcaneExplosionTimer = urand(8 * IN_MILLISECONDS, 12 * IN_MILLISECONDS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_ArcaneExplosionTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 25679) == CAST_OK)
				m_ArcaneExplosionTimer = urand(8 * IN_MILLISECONDS, 12 * IN_MILLISECONDS);
		}
		else
			m_ArcaneExplosionTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_shattercage_magiskull(Creature* pCreature)
{
	return new shattercage_magiskullAI(pCreature);
}

void AddSC_instance_lower_karazhan_halls()
{
	Script* newscript;

	newscript = new Script;
	newscript->Name = "instance_lower_karazhan_halls";
	newscript->GetInstanceData = &GetInstanceData_instance_lower_karazhan_halls;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "shadowbane_glutton";
	newscript->GetAI = &GetAI_shadowbane_glutton;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "phantom_cook";
	newscript->GetAI = &GetAI_phantom_cook;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "shadowbane_alpha";
	newscript->GetAI = &GetAI_shadowbane_alpha;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "shadowbane_darkcaster";
	newscript->GetAI = &GetAI_shadowbane_darkcaster;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "shadowbane_ragefang";
	newscript->GetAI = &GetAI_shadowbane_ragefang;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "haunted_blacksmith";
	newscript->GetAI = &GetAI_haunted_blacksmith;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "phantom_guardsman";
	newscript->GetAI = &GetAI_phantom_guardsman;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "haunted_stable_tender";
	newscript->GetAI = &GetAI_haunted_stable_tender;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "shattercage_spearman";
	newscript->GetAI = &GetAI_shattercage_spearman;
	newscript->RegisterSelf();

	newscript = new Script;
	newscript->Name = "shattercage_magiskull";
	newscript->GetAI = &GetAI_shattercage_magiskull;
	newscript->RegisterSelf();
}