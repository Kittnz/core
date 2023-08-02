#include "scriptPCH.h"
#include "lower_karazhan_halls.h"

struct boss_moroesAI : public ScriptedAI
{
	boss_moroesAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
		m_pInstance = (ScriptedInstance*)m_creature->GetInstanceData();
		Reset();
	}

	ScriptedInstance* m_pInstance;

	void Reset() override
	{
	}

	void Aggro(Unit* /*pWho*/) override
	{
	}

	void JustDied(Unit* pKiller) override
	{
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
			return;

		DoMeleeAttackIfReady();
	}
};

CreatureAI* GetAI_boss_moroes(Creature* pCreature)
{
	return new boss_moroesAI(pCreature);
}

void AddSC_boss_moroes()
{
	Script* newscript;

	newscript = new Script;
	newscript->Name = "boss_moroes";
	newscript->GetAI = &GetAI_boss_moroes;
	newscript->RegisterSelf();
}