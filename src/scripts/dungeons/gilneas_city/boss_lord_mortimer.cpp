#include "scriptPCH.h"
#include "instance_gilneas_city.h"

struct boss_lord_mortimerAI : public ScriptedAI
{
	boss_lord_mortimerAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		m_pInstance = (ScriptedInstance*)m_creature->GetInstanceData();
		Reset();
	}

	ScriptedInstance* m_pInstance;
	uint32 m_uiHolyStrikeTimer;
	uint32 m_uiConsecrationTimer;
	uint32 m_uiBlastWaveTimer;

	void Reset() override
	{
		m_uiHolyStrikeTimer = 10 * IN_MILLISECONDS;
		m_uiConsecrationTimer = 15 * IN_MILLISECONDS;
		m_uiBlastWaveTimer = 25 * IN_MILLISECONDS;
		m_pInstance->SetData(PHASE_1, NOT_STARTED);
		m_pInstance->SetData(PHASE_2, NOT_STARTED);
		m_creature->SetDisplayId(m_creature->GetNativeDisplayId());
	}

	void Aggro(Unit* pWho) override
	{
		m_pInstance->SetData(PHASE_1, IN_PROGRESS);
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (m_pInstance->GetData(PHASE_2) != IN_PROGRESS && m_creature->HealthBelowPct(50))
		{
			m_pInstance->SetData(PHASE_1, DONE);
			m_pInstance->SetData(PHASE_2, IN_PROGRESS);
		}

		if (m_pInstance->GetData(PHASE_1) == IN_PROGRESS)
		{
			if (m_uiHolyStrikeTimer <= uiDiff)
			{
				Unit* target = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0);

				if (target && DoCastSpellIfCan(target, SPELL_HOLY_STRIKE) == CAST_OK)
					m_uiHolyStrikeTimer = 10 * IN_MILLISECONDS;
			}
			else
				m_uiHolyStrikeTimer -= uiDiff;

			if (m_uiConsecrationTimer <= uiDiff)
			{
				Unit* target = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0);

				if (target && DoCastSpellIfCan(target, SPELL_CONSECRATION) == CAST_OK)
					m_uiConsecrationTimer = 15 * IN_MILLISECONDS;
			}
			else
				m_uiConsecrationTimer -= uiDiff;
		}

		if (m_pInstance->GetData(PHASE_2) == IN_PROGRESS)
		{
			if (m_creature->GetDisplayId() != MODEL_DRAGONKIN_LORD_MORTIMER)
			{
				m_creature->SetDisplayId(MODEL_DRAGONKIN_LORD_MORTIMER);
			}

			if (m_uiBlastWaveTimer <= uiDiff)
			{
				Unit* target = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0);

				if (target && DoCastSpellIfCan(target, SPELL_BLAST_WAVE) == CAST_OK)
					m_uiBlastWaveTimer = 25 * IN_MILLISECONDS;
			}
			else
				m_uiBlastWaveTimer -= uiDiff;
		}

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_boss_lord_mortimer(Creature* pCreature)
{
	return new boss_lord_mortimerAI(pCreature);
}

void AddSC_boss_lord_mortimer()
{
	Script* newscript;
	newscript = new Script;
	newscript->Name = "boss_lord_mortimer";
	newscript->GetAI = &GetAI_boss_lord_mortimer;
	newscript->RegisterSelf();
}