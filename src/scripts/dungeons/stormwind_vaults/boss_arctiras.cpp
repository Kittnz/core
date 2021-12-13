// Giperion Turtle
// EUREKA 4
// December 2021
#include "scriptPCH.h"
#include "GenericSpellAI.h"

enum
{
	SPELL_FROSTBOLT = 17503,
	SPELL_CAUSE_INSANITY = 12888,
	SPELL_FROST_NOVA = 29849,
	CREATURE_FRIGID_GUARDIAN = 93108,
};

enum class eArctirasStages : uint32_t
{
	Stage0_WaitFor60,
	Stage1_SayAndSpawnAdds,
	Stage2_WaitFor35,
	Stage3_ActivateAdditionalSpell,
	Stage4_Rest
};


struct boss_ArctirasAI : public GenericSpellMob
{
	eArctirasStages Stage = eArctirasStages::Stage0_WaitFor60;

	explicit boss_ArctirasAI(Creature *c) 
		: GenericSpellMob(c)
	{
		bCanFightInMelee = false;
		boss_ArctirasAI::Reset();
		constexpr uint32_t FrostballCD = 2 * IN_MILLISECONDS + 100;
		// ref: https://classicdb.ch/?spell=17503
		GenericAISpell& Frostbolt = AddSpell(SPELL_FROSTBOLT, FrostballCD, FrostballCD, GENERIC_TARGET_VICTIM);
		Frostbolt.SpellCastFlag = CF_FORCE_CAST + CF_IGNORE_LOS;
		// ref: https://classicdb.ch/?spell=12888
		GenericAISpell& CauseInsanity = AddSpell(SPELL_CAUSE_INSANITY, 16 * IN_MILLISECONDS, 16 * IN_MILLISECONDS, GENERIC_TARGET_HOSTILE_RAND_NOT_TOP);
		CauseInsanity.SpellCastFlag = CF_FORCE_CAST + CF_IGNORE_LOS;
		Finalize();
	}

	virtual void Reset() override 
	{
		GenericSpellMob::Reset();
		me->AddUnitState(UNIT_STAT_ROOT);
		me->AddUnitState(UNIT_STAT_CANT_ROTATE);
		Stage = eArctirasStages::Stage0_WaitFor60;
	}

	virtual void Aggro(Unit* unit) override
	{
		if (Player* player = unit->ToPlayer())
		{
			me->MonsterSayToPlayer("[PH] So you have choosen death...", unit, true);
		}
	}

	virtual void UpdateAI(const uint32 uiDiff) override
	{
		GenericSpellMob::UpdateAI(uiDiff);

		if (!m_creature->GetVictim())
			return;

		//////////////////////////
		float HealthPercented = me->GetHealthPercent();
		
		switch (Stage)
		{
		case eArctirasStages::Stage0_WaitFor60:
			{
				if (HealthPercented <= 60)
				{
					Stage = eArctirasStages::Stage1_SayAndSpawnAdds;
				}
			}
			break;
		case eArctirasStages::Stage1_SayAndSpawnAdds:
			{
				me->MonsterTextEmote("Arc'tiras vocalizes a chilling chime.", nullptr, true);

				DoSpawnCreature(CREATURE_FRIGID_GUARDIAN, 5.0f, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 2000);
				DoSpawnCreature(CREATURE_FRIGID_GUARDIAN, 5.0f, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 2000);

				Stage = eArctirasStages::Stage2_WaitFor35;
			}
			break;
		case eArctirasStages::Stage2_WaitFor35:
			{
				if (HealthPercented <= 35)
				{
					Stage = eArctirasStages::Stage3_ActivateAdditionalSpell;
				}
			}
			break;
		case eArctirasStages::Stage3_ActivateAdditionalSpell:
			{
				me->MonsterTextEmote("Arc'tiras is destabilizing!", nullptr, true);
				GenericAISpell& FrostNova = AddSpell(SPELL_FROST_NOVA, 6 * IN_MILLISECONDS, 6 * IN_MILLISECONDS, GENERIC_TARGET_SELF);
				FrostNova.SpellCastFlag = CF_FORCE_CAST;
				Stage = eArctirasStages::Stage4_Rest;
			}
			break;
		case eArctirasStages::Stage4_Rest:
		default:
			break;
		}

	}

};

CreatureAI *GetAI_major_resonating_crystal(Creature *pCreature) 
{
	return new boss_ArctirasAI(pCreature);
}

void AddSC_boss_major_resonating_crystalAI() 
{
	Script *newscript = new Script;
	newscript->Name = "boss_arctiras";
	newscript->GetAI = &GetAI_major_resonating_crystal;
	newscript->RegisterSelf();
}