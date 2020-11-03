/* Copyright (C) 2006 - 2010 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/* ScriptData
SDName: Boss_Buru
SD%Complete: 99%
SDComment: Ras, en attente de tests.
SDCategory: Ruins of Ahn'Qiraj
EndScriptData */

#include "scriptPCH.h"
#include "ruins_of_ahnqiraj.h"

enum
{
    EMOTE_TARGET                =   -1509002,

    SPELL_CREEPING_PLAGUE       =   20512,
    SPELL_DISMEMBER             =   96,
    SPELL_GAIN_SPEED            =   1834,
    SPELL_FULL_SPEED            =   1557,
    SPELL_THORNS                =   25640,
    SPELL_BURU_TRANSFORM        =   24721,
    SPELL_CREATURE_SPECIAL      =   7155,
    SPELL_BURU_EGG_TRIGGER      =   26646,
    SPELL_SUMMON_HATCHLING      =   1881,
    SPELL_EXPLODE               =   19593,

    NPC_BURU_EGG                =   15514,
    NPC_BURU_EGG_TRIGGER        =   15964,
    NPC_HIVEZARA_HATCHLING      =   15521,

    MODEL_BURU_NORMAL           =   15654,
    MODEL_INVISIBLE             =   11686
};

const float THREAT_LOCK = FLT_MAX;

static SpawnLocations Eggs[] =
{
    { -9312.73f, 1281.51f, -63.56f },
    { -9300.03f, 1304.52f, -63.25f },
    { -9263.38f, 1293.48f, -63.84f },
    { -9245.11f, 1280.30f, -63.33f },
    { -9234.96f, 1244.95f, -63.05f },
    { -9267.78f, 1249.26f, -63.58f }
};

struct boss_buruAI : public ScriptedAI
{
    boss_buruAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;

    bool m_bIsPhaseTwo;
    bool m_bTransformationCompleted;
    bool m_bAwaitingNewTarget;

    uint32 m_uiDismember_Timer;
    uint32 m_uiSpeed_Timer;
    uint32 m_uiCreepingPlague_Timer;
    uint32 m_uiTransform_Timer;
    uint32 m_uiNewTarget_Timer;
    uint32 m_uiRespawnEgg_Timer[6];

    uint64 m_eggsGUID[6];

    void Reset()
    {
        m_creature->SetDisplayId(MODEL_BURU_NORMAL);
        m_creature->RemoveAllAuras();
        m_creature->SetSpeedRate(MOVE_RUN,  0.5f, true);
        m_bIsPhaseTwo = false;
        m_bTransformationCompleted = false;
        m_bAwaitingNewTarget = false;
        m_uiTransform_Timer = 6000;
        m_uiDismember_Timer = 1000;
        m_uiSpeed_Timer = 9000;
        m_uiCreepingPlague_Timer = 6000;
        m_uiNewTarget_Timer = 3000;

        for (int i = 0; i < 6; i++)
            m_uiRespawnEgg_Timer[i] = 120000;

        Creature* egg;
        for (int i = 0; i < 6; i++)
        {
            egg = m_pInstance->GetCreature(m_eggsGUID[i]);
            if (egg != nullptr)
                egg->AddObjectToRemoveList();
            if (Creature* egg = m_creature->SummonCreature(NPC_BURU_EGG, Eggs[i].x, Eggs[i].y, Eggs[i].z, 0))
                m_eggsGUID[i] = egg->GetGUID();
        }

        if (m_pInstance)
            m_pInstance->SetData(TYPE_BURU, NOT_STARTED);
    }

    void Aggro(Unit *pWho)
    {
        m_creature->SetInCombatWithZone();
        DoCast(m_creature, SPELL_THORNS);

        LockTarget(pWho, false);

        if (m_pInstance)
            m_pInstance->SetData(TYPE_BURU, IN_PROGRESS);
    }

    void JustDied(Unit* pKiller)
    {
        // Remove Creeping Plague on boss death
        Map::PlayerList const &playerList = m_creature->GetMap()->GetPlayers();
        for (const auto & player : playerList)
            player.getSource()->RemoveAurasDueToSpell(SPELL_CREEPING_PLAGUE);

        if (m_pInstance)
            m_pInstance->SetData(TYPE_BURU, DONE);
    }

    void OnEggExploded()
    {
        // Only handle this if boss is not in Phase 2
        if (m_creature->GetHealthPercent() < 20)
            return;


        m_creature->RemoveAurasDueToSpell(SPELL_GAIN_SPEED);
        m_creature->RemoveAurasDueToSpell(SPELL_FULL_SPEED);
        m_creature->SetSpeedRate(MOVE_RUN, 0.5f, true);

        DisableMovement();
        m_creature->CastSpell(m_creature, SPELL_CREATURE_SPECIAL, false);

        m_uiSpeed_Timer = 9000;

        m_bAwaitingNewTarget = true;
        m_uiNewTarget_Timer = 6000;
    }

    void EnableMovement()
    {
        m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC);
        SetCombatMovement(true);
        m_creature->clearUnitState(UNIT_STAT_ROOT);
        m_creature->SetMovement(MOVE_UNROOT);
    }

    void DisableMovement()
    {
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC);
        SetCombatMovement(false);
        m_creature->RemoveAllAttackers();
        m_creature->AttackStop();
        m_creature->StopMoving();
        m_creature->addUnitState(UNIT_STAT_ROOT);
        m_creature->SetMovement(MOVE_ROOT);
    }

    void LockTarget(Unit *pWho, bool resetAggro=true)
    {
        DoScriptText(EMOTE_TARGET, m_creature, pWho, -1, 300.0);

        // Reset aggro
        if (resetAggro)
            m_creature->getThreatManager().modifyThreatPercent(m_creature->getVictim(), -100);
        // Add a really high threat to lock boss to target
        m_creature->getThreatManager().addThreat(pWho, THREAT_LOCK);
        m_bAwaitingNewTarget = false;
    }

    void Transform()
    {
        m_creature->RemoveAurasDueToSpell(SPELL_THORNS); // Delete Thorns ability during Phase 2

        DisableMovement();
        m_creature->CastSpell(m_creature, SPELL_BURU_TRANSFORM, false);
    }

    void UpdateAI(const uint32 uiDiff)
    {
        Creature* egg;
        for (int i = 0; i < 6 && !m_bIsPhaseTwo; i++)
        {
            egg = m_pInstance->GetCreature(m_eggsGUID[i]);
            if (egg == nullptr)
            {
                if (Creature* egg = m_creature->SummonCreature(NPC_BURU_EGG, Eggs[i].x, Eggs[i].y, Eggs[i].z, 0))
                    m_eggsGUID[i] = egg->GetGUID();
            }
            else if (!egg->isAlive())
            {
                if (m_uiRespawnEgg_Timer[i] < uiDiff)
                {
                    m_uiRespawnEgg_Timer[i] = 120000;
                    egg->Respawn();
                }
                else
                    m_uiRespawnEgg_Timer[i] -= uiDiff;

            }
        }

        // Phase transition
        if (m_bIsPhaseTwo && !m_bTransformationCompleted)
        {
            if (m_uiTransform_Timer <= uiDiff)
            {
                EnableMovement();

                m_bTransformationCompleted = true;

                m_creature->DeleteThreatList();
                if (m_creature->CanHaveThreatList())
                    m_creature->SetInCombatWithZone();
                m_creature->RemoveAurasDueToSpell(SPELL_GAIN_SPEED);
                m_creature->RemoveAurasDueToSpell(SPELL_FULL_SPEED);
                m_creature->SetSpeedRate(MOVE_RUN, 1.0f, true);

                if (m_creature->getVictim())
                    m_creature->SetFacingToObject(m_creature->getVictim());

                // Kill remaining eggs
                for (unsigned long guid : m_eggsGUID)
                {
                    Creature* egg = m_pInstance->GetCreature(guid);
                    if (egg != nullptr && egg->isAlive())
                    {
                        egg->DoKillUnit(egg);
                        egg->AddObjectToRemoveList();
                    }
                }
            }
            else
            {
                m_uiTransform_Timer -= uiDiff;
                return;
            }
        }

        if (m_bAwaitingNewTarget && !m_bIsPhaseTwo)
        {
            if (m_uiNewTarget_Timer <= uiDiff)
            {
                if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                {
                    EnableMovement();
                    LockTarget(pTarget);
                }
            }
            else
            {
                m_uiNewTarget_Timer -= uiDiff;
                return;
            }
        }

        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        // Check if boss should enrage or not.
        if (!m_bIsPhaseTwo)
        {
            if (m_creature->GetHealthPercent() <= 20)
            {
                m_bIsPhaseTwo = true;

                Transform();
            }
            else
            {
                // Dismember - A stacking bleed effect that does 1248 damage every 2 second. Buru will use this if he catches up to whoever he is targeting.
                if (m_uiDismember_Timer < uiDiff)
                {
                    if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_DISMEMBER) == CAST_OK)
                        m_uiDismember_Timer = 6000;
                }
                else
                    m_uiDismember_Timer -= uiDiff;

                // Gain speed
                if (m_uiSpeed_Timer < uiDiff)
                {
                    m_creature->CastSpell(m_creature, SPELL_GAIN_SPEED, true);
                    m_uiSpeed_Timer = 9000;
                }
                else
                    m_uiSpeed_Timer -= uiDiff;
            }
        }
        else if (m_bTransformationCompleted)
        {
            // Creeping plague
            if (m_uiCreepingPlague_Timer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_CREEPING_PLAGUE) == CAST_OK)
                    m_uiCreepingPlague_Timer = 6000;
            }
            else
                m_uiCreepingPlague_Timer -= uiDiff;
        }

        DoMeleeAttackIfReady();
    }
};


struct mob_buru_eggAI : public ScriptedAI
{
    mob_buru_eggAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;

    void Reset()
    {
        // Prevent eggs from rotating around
        SetCombatMovement(false);
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC);
    }

    void DamageTaken(Unit* pDoneBy, uint32 &uiDamage)
    {
        // Aggro Buru on egg attack
        if (Creature* pBuru = m_pInstance->GetCreature(m_pInstance->GetData64(DATA_BURU)))
        {
            if (!pBuru->isInCombat())
                pBuru->SetInCombatWithZone();
        }
    }

    void JustDied(Unit* pKiller)
    {
        if (!m_pInstance)
            return;

        // Make the egg explode
        m_creature->CastSpell(m_creature, SPELL_EXPLODE, true);

        if (Creature* add = m_creature->SummonCreature(NPC_HIVEZARA_HATCHLING, m_creature->GetPositionX(), m_creature->GetPositionY(),
            m_creature->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 2000))
        {
            add->SetInCombatWithZone();
        }

        m_creature->CastSpell(m_creature, SPELL_BURU_EGG_TRIGGER, true);

        // Inflict damage to Buru (should be handled in SpellEffects...)
        if (Creature* pBuru = m_pInstance->GetCreature(m_pInstance->GetData64(DATA_BURU)))
        {
            float distance = m_creature->GetDistance2d(pBuru);
            float damageFactor = 1.0f - (distance / 25.0f);
            if (pBuru->isAlive() && distance < 5.0f && pBuru->GetHealthPercent() >= 20)
            {
                pBuru->SetHealthPercent(pBuru->GetHealthPercent() - 10 * damageFactor);
                static_cast<boss_buruAI*>(pBuru->AI())->OnEggExploded();
            }
        }
    }

    void UpdateAI(const uint32 uiDiff)
    {
        return;
    }
};

CreatureAI* GetAI_boss_buru(Creature* pCreature)
{
    return new boss_buruAI(pCreature);
}

CreatureAI* GetAI_mob_buru_egg(Creature* pCreature)
{
    return new mob_buru_eggAI(pCreature);
}

void AddSC_boss_buru()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "boss_buru";
    newscript->GetAI = &GetAI_boss_buru;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "mob_buru_egg";
    newscript->GetAI = &GetAI_mob_buru_egg;
    newscript->RegisterSelf();
}

