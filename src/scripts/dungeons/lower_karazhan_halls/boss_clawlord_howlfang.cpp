#include "scriptPCH.h"
#include "lower_karazhan_halls.h"

struct boss_clawlord_howlfangAI : public ScriptedAI
{
	boss_clawlord_howlfangAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		m_pInstance = (ScriptedInstance*)m_creature->GetInstanceData();
		Reset();
	}

	ScriptedInstance* m_pInstance;
	uint32 m_TerrifyingPresenceTimer;
	uint32 m_SlaveringBiteTimer;
	uint32 m_ShadowbaneCurseTimer;
	bool phase;
	bool frenzy;

	void Reset() override
	{
		m_TerrifyingPresenceTimer = 2 * IN_MILLISECONDS;
		m_SlaveringBiteTimer = urand(10 * IN_MILLISECONDS, 12 * IN_MILLISECONDS);
		m_ShadowbaneCurseTimer = 60 * IN_MILLISECONDS;
		phase = false;
		frenzy = false;
	}

	void Aggro(Unit* /*pWho*/) override
	{
		m_creature->PlayDirectSound(60415);
		m_creature->MonsterYell("So it was you I smelled! Such a foul taint.");
	}

	void JustDied(Unit* pKiller) override
	{
		m_creature->PlayDirectSound(60417);
		m_creature->MonsterYell("You vile, disgusting creatures, how could I lose to you?");
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		if (!phase && m_creature->GetHealthPercent() <= 50.0f)
		{
			phase = true;
			m_creature->PlayDirectSound(60416);
			m_creature->MonsterYell("My pack shall tear you apart, bone by bone!");
		}

		if (!phase && m_creature->GetHealthPercent() <= 30.0f)
		{
			frenzy = true;
			DoCastSpellIfCan(m_creature, 57082);
		}

		if (m_TerrifyingPresenceTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 57083) == CAST_OK)
				m_TerrifyingPresenceTimer = 5 * IN_MILLISECONDS;
		}
		else
			m_TerrifyingPresenceTimer -= uiDiff;

		if (m_SlaveringBiteTimer < uiDiff)
		{
			if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER | SELECT_FLAG_IN_MELEE_RANGE))
			{
				if (DoCastSpellIfCan(pTarget, 57076) == CAST_OK)
					m_SlaveringBiteTimer = urand(12 * IN_MILLISECONDS, 14 * IN_MILLISECONDS);
			}
		}
		else
			m_SlaveringBiteTimer -= uiDiff;

		if (m_ShadowbaneCurseTimer < uiDiff)
		{
			if (DoCastSpellIfCan(m_creature, 57084) == CAST_OK)
				m_ShadowbaneCurseTimer = 60 * IN_MILLISECONDS;
		}
		else
			m_ShadowbaneCurseTimer -= uiDiff;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_boss_clawlord_howlfang(Creature* pCreature)
{
	return new boss_clawlord_howlfangAI(pCreature);
}

void AddSC_boss_clawlord_howlfang()
{
	Script* newscript;

	newscript = new Script;
	newscript->Name = "boss_clawlord_howlfang";
	newscript->GetAI = &GetAI_boss_clawlord_howlfang;
	newscript->RegisterSelf();
}