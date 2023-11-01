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
	uint32 m_InterludeTimer;
	uint32 m_GlitteringDustTimer;
	uint32 m_SmokeBombTimer;
	uint32 m_ShuffleKickTimer;
	uint32 m_ShadowBlastTimer;
	uint32 m_MoroesCurseTimer;
	uint32 m_ReflectionTimer;
	uint32 m_SacrificeTimer;
	uint32 m_TeleportTimer;
	uint32 m_AfterTeleportTimer;
	bool sound1;
	bool intermission1;
	bool sacrifice;

	void Reset() override
	{
		m_InterludeTimer = 0;
		m_SacrificeTimer = 0;
		m_TeleportTimer = 0;
		m_AfterTeleportTimer = 0;
		sound1 = false;
		intermission1 = false;
		sacrifice = false;

		m_creature->RestoreFaction();
		RestoreFlags();
		ResetBattleTimers();

		if (m_pInstance)
		{
			m_pInstance->SetData(DATA_MOROES_STAGE, 0);
			if (m_pInstance->GetData(DATA_MOROES) != DONE)
				m_pInstance->SetData(DATA_MOROES, NOT_STARTED);
		}
	}

	void RestoreFlags()
	{
		if (!m_creature->HasFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP))
			m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);

		if (m_creature->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING))
			m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
	}

	void ResetCombat()
	{
		m_creature->RemoveAllAuras();
		m_creature->DeleteThreatList();
		m_creature->CombatStop(true);
	}

	void ResetBattleTimers()
	{
		m_GlitteringDustTimer = urand(20 * IN_MILLISECONDS, 26 * IN_MILLISECONDS);
		m_SmokeBombTimer = urand(15 * IN_MILLISECONDS, 18 * IN_MILLISECONDS);
		m_ShuffleKickTimer = urand(7 * IN_MILLISECONDS, 13 * IN_MILLISECONDS);
		m_ShadowBlastTimer = urand(10 * IN_MILLISECONDS, 16 * IN_MILLISECONDS);
		m_MoroesCurseTimer = urand(35 * IN_MILLISECONDS, 48 * IN_MILLISECONDS);
		m_ReflectionTimer = 25 * IN_MILLISECONDS;
	}

	uint8 GetPhase()
	{
		return m_pInstance->GetData(DATA_MOROES_STAGE);
	}

	void Aggro(Unit* /*pWho*/) override
	{
		m_creature->SetInCombatWithZone();
		ResetBattleTimers();

		if (m_pInstance)
			m_pInstance->SetData(DATA_MOROES, IN_PROGRESS);
	}

	void SetHostile()
	{
		m_creature->SetFactionTemplateId(14);
		m_creature->SetInCombatWithZone();

		if (m_pInstance->GetData(DATA_MOROES_STAGE) == 3)
			m_creature->PlayDirectMusic(60418);
	}

	void EnterEvadeMode() override
	{
		if (GetPhase() != 0 || GetPhase() != 2)
			m_creature->DespawnOrUnsummon(0, 30);
	}

	void JustDied(Unit* pKiller) override
	{
		m_creature->MonsterYell("Medivh, I have failed you...");
		m_creature->PlayDirectSound(60408);

		if (m_pInstance)
			m_pInstance->SetData(DATA_MOROES, DONE);
	}

	void StartBattle(bool newPhase)
	{
		if (!newPhase)
		{
			m_creature->MonsterYell("New guests? It has been a while since we have had those. I assume your arrival has taken -some- effort even if you were uninvited!");
			m_creature->PlayDirectSound(60402);
			m_InterludeTimer = 7000;
		}
		else
		{
			m_creature->MonsterYell("It is my duty to protect and watch over this tower, as approved by my master. I shall make sure to endulge in your little spectacle. Why don't we put on a show for those in attendance, hmm? Legalbrow, if you would please, play my theme.");
			m_creature->PlayDirectSound(60405);
			if (m_pInstance)
				m_pInstance->SetData(DATA_MOROES_STAGE, 3);
			m_InterludeTimer = 12000;
		}
	}

	void Teleport()
	{
		m_creature->CastSpell(m_creature, 12980, true);
		m_TeleportTimer = 1000;
	}

	void UpdateAI(const uint32 uiDiff) override
	{
		if (m_pInstance)
		{
			if (!m_creature->HasAura(9617))
				m_creature->AddAura(9617);

			if (GetPhase() == 0)
			{
				if (m_InterludeTimer)
				{
					if (m_InterludeTimer < uiDiff)
					{
						if (m_pInstance)
							m_pInstance->SetData(DATA_MOROES_STAGE, 1);

						SetHostile();
						m_InterludeTimer = 0;
					}
					else
						m_InterludeTimer -= uiDiff;
				}
			}
			else if (GetPhase() == 1)
			{
				if (!m_InterludeTimer && m_creature->GetHealthPercent() <= 10.0f)
				{
					intermission1 = true;
					m_creature->MonsterYell("Now now, why don't we save such pleasantries for a more, entertaining show. Meet me at the stage, and we shall truly decide the outcome of our engagement.");
					m_creature->PlayDirectSound(60404);
					m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_SPAWNING);
					m_creature->SetFactionTemplateId(35);
					m_creature->SetHealthPercent(100.0f);
					if (m_pInstance)
						m_pInstance->SetData(DATA_MOROES_STAGE, 2);
					ResetCombat();
					m_InterludeTimer = 10000;
					return;
				}

				if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
					return;

				if (m_GlitteringDustTimer < uiDiff)
				{
					if (DoCastSpellIfCan(m_creature->GetVictim(), 57095) == CAST_OK)
					{
						Unit* pSecond = m_creature->SelectAttackingTarget(ATTACKING_TARGET_TOPAGGRO, 1, nullptr, SELECT_FLAG_PLAYER);
						m_creature->GetThreatManager().modifyThreatPercent(m_creature->GetVictim(), -100);
						if (pSecond)
							m_creature->AI()->AttackStart(pSecond);
						m_GlitteringDustTimer = urand(20 * IN_MILLISECONDS, 26 * IN_MILLISECONDS);
					}
				}
				else
					m_GlitteringDustTimer -= uiDiff;

				if (m_SmokeBombTimer < uiDiff)
				{
					if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
					{
						if (DoCastSpellIfCan(pTarget, 57096) == CAST_OK)
							m_SmokeBombTimer = urand(15 * IN_MILLISECONDS, 18 * IN_MILLISECONDS);
					}
				}
				else
					m_SmokeBombTimer -= uiDiff;

				if (m_ShuffleKickTimer < uiDiff)
				{
					if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER | SELECT_FLAG_IN_MELEE_RANGE))
					{
						if (DoCastSpellIfCan(pTarget, 57097) == CAST_OK)
							m_ShuffleKickTimer = urand(7 * IN_MILLISECONDS, 13 * IN_MILLISECONDS);
						DoCastSpellIfCan(pTarget, 57098, CF_TRIGGERED);
					}
				}
				else
					m_ShuffleKickTimer -= uiDiff;

				if (!sound1 && m_creature->GetHealthPercent() <= 50.0f)
				{
					sound1 = true;
					m_creature->MonsterYell("Most impressive, it would appear your skills do match your bravery.");
					m_creature->PlayDirectSound(60403);
				}

				DoMeleeAttackIfReady();
			}
			else if (GetPhase() == 2)
			{
				if (m_InterludeTimer)
				{
					if (m_InterludeTimer < uiDiff)
					{
						m_InterludeTimer = 0;
						Teleport();
					}
					else
						m_InterludeTimer -= uiDiff;
				}

				if (m_TeleportTimer)
				{
					if (m_TeleportTimer < uiDiff)
					{
						m_TeleportTimer = 0;
						m_creature->NearTeleportTo(-10893.5, -1758.96, 90.477, 4.60134);
						m_AfterTeleportTimer = 1500;
					}
					else
						m_TeleportTimer -= uiDiff;
				}

				if (m_AfterTeleportTimer)
				{
					if (m_AfterTeleportTimer < uiDiff)
					{
						m_AfterTeleportTimer = 0;
						RestoreFlags();
						m_creature->SetMaxHealth(220388);
						m_creature->SetHealth(220388);
					}
					else
						m_AfterTeleportTimer -= uiDiff;
				}
			}
			else if (GetPhase() == 3)
			{
				if (m_InterludeTimer)
				{
					if (m_InterludeTimer < uiDiff)
					{
						SetHostile();
						m_InterludeTimer = 0;
					}
					else
						m_InterludeTimer -= uiDiff;
				}

				if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
					return;

				if (m_GlitteringDustTimer < uiDiff)
				{
					if (DoCastSpellIfCan(m_creature->GetVictim(), 57095) == CAST_OK)
					{
						Unit* pSecond = m_creature->SelectAttackingTarget(ATTACKING_TARGET_TOPAGGRO, 1, nullptr, SELECT_FLAG_PLAYER);
						m_creature->GetThreatManager().modifyThreatPercent(m_creature->GetVictim(), -100);
						if (pSecond)
							m_creature->AI()->AttackStart(pSecond);
						m_GlitteringDustTimer = urand(20 * IN_MILLISECONDS, 26 * IN_MILLISECONDS);
					}
				}
				else
					m_GlitteringDustTimer -= uiDiff;

				if (m_SmokeBombTimer < uiDiff)
				{
					if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
					{
						if (DoCastSpellIfCan(pTarget, 57096) == CAST_OK)
							m_SmokeBombTimer = urand(15 * IN_MILLISECONDS, 22 * IN_MILLISECONDS);
					}
				}
				else
					m_SmokeBombTimer -= uiDiff;

				if (m_ShuffleKickTimer < uiDiff)
				{
					if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER | SELECT_FLAG_IN_MELEE_RANGE))
					{
						if (DoCastSpellIfCan(pTarget, 57097) == CAST_OK)
							m_ShuffleKickTimer = urand(9 * IN_MILLISECONDS, 15 * IN_MILLISECONDS);
						DoCastSpellIfCan(pTarget, 57098, CF_TRIGGERED);
					}
				}
				else
					m_ShuffleKickTimer -= uiDiff;

				if (m_ShadowBlastTimer < uiDiff)
				{
					if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
					{
						if (DoCastSpellIfCan(pTarget, 57099) == CAST_OK)
							m_ShadowBlastTimer = urand(8 * IN_MILLISECONDS, 15 * IN_MILLISECONDS);
					}
				}
				else
					m_ShadowBlastTimer -= uiDiff;

				if (m_MoroesCurseTimer < uiDiff)
				{
					if (DoCastSpellIfCan(m_creature, 57100) == CAST_OK)
						m_MoroesCurseTimer = urand(43 * IN_MILLISECONDS, 49 * IN_MILLISECONDS);;
				}
				else
					m_MoroesCurseTimer -= uiDiff;

				if (m_ReflectionTimer < uiDiff)
				{
					if (DoCastSpellIfCan(m_creature, 27564) == CAST_OK)
						m_ReflectionTimer = urand(33 * IN_MILLISECONDS, 45 * IN_MILLISECONDS);;
				}
				else
					m_ReflectionTimer -= uiDiff;

				if (!sacrifice && m_creature->GetHealthPercent() <= 75.0f)
				{
					sacrifice = true;
					// m_creature->MonsterYell("Now, how about a little drama to our show?! Make your choice, sacrifice a dearest friend. Do not choose, and they shall all perish!");
					//SacrificeRaid();
				}

				DoMeleeAttackIfReady();
			}
		}
	}
};

bool OnGossipSelect_boss_moroes(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
	pCreature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
	pPlayer->CLOSE_GOSSIP_MENU();

	if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
	{
		if (boss_moroesAI* ai = dynamic_cast<boss_moroesAI*>(pCreature->AI()))
			ai->StartBattle(false);
	}
	else if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
	{
		pPlayer->CLOSE_GOSSIP_MENU();
		if (boss_moroesAI* ai = dynamic_cast<boss_moroesAI*>(pCreature->AI()))
			ai->StartBattle(true);
	}
	return true;
}

bool OnGossipHello_boss_moroes(Player* pPlayer, Creature* pCreature)
{
	if (InstanceData* pInstance = pCreature->GetInstanceData())
	{
		if (pInstance->GetData(DATA_BROOD_QUEEN_ARAXXNA) == DONE && pInstance->GetData(DATA_BLACKWALD_II) == DONE && pInstance->GetData(DATA_CLAWLORD_HOWLFANG) == DONE &&
			pInstance->GetData(DATA_GRIZIKIL) == DONE)
		{
			if (pInstance->GetData(DATA_MOROES_STAGE) == 0)
			{
				pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I am here to challenge you.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
				pPlayer->SEND_GOSSIP_MENU(61226, pCreature->GetGUID());
			}
			else if (pInstance->GetData(DATA_MOROES_STAGE) == 2)
			{
				pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I am ready to challenge you again.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
				pPlayer->SEND_GOSSIP_MENU(61226, pCreature->GetGUID());
			}
			// temp
			else
			{
				pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Gossip error. Please contact to developer.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
				pPlayer->SEND_GOSSIP_MENU(61226, pCreature->GetGUID());
			}
		}
		else
			pPlayer->SEND_GOSSIP_MENU(61225, pCreature->GetGUID());
		return true;
	}
	return false;
}

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
	newscript->pGossipHello = &OnGossipHello_boss_moroes;
	newscript->pGossipSelect = &OnGossipSelect_boss_moroes;
	newscript->RegisterSelf();
}