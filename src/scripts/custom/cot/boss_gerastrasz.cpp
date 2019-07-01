/* Copyright (C) 2006 - 2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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

#include "scriptPCH.h"

enum
{
    SPELL_RAIN_OF_FIRE          = 19717,
    SPELL_BLOOD_FUNNEL          = 24617,
    SPELL_CLEAVE                = 20691,
    TWIN_TELEPORT_VISUAL        = 26638
};

enum
{
    CREATURE_ECHO_OF_GERASTRASZ  = 50088
};

struct boss_gerastraszAI : public ScriptedAI
{
    boss_gerastraszAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    uint32 m_uiRainOfFireTimer;
    uint32 m_uiCleaveTimer;
    uint32 m_uiBloodFunnelTimer;

    bool first_echo_summoned;
    bool second_echo_summoned;

    Creature* currentEcho;

    void Reset()
    {
        m_uiRainOfFireTimer = urand(10000, 15000);
        m_uiCleaveTimer = urand(3000, 6000);
        m_uiBloodFunnelTimer = 18000;

        first_echo_summoned = false;
        second_echo_summoned = false;

        currentEcho = nullptr;
    }

    void Aggro(Unit* pWho)
    {
        m_creature->PMonsterYell("Who dares disrupt our majestic plan? All dragons united will rule everything.");
        m_creature->SetInCombatWithZone();
    }

    void JustDied(Unit* pKiller)
    {
        if (currentEcho) {
            currentEcho->DisappearAndDie();
            currentEcho = nullptr;
        }
    }

    void SummonEcho() {
        m_creature->PMonsterYell("I am eternal!");
        Unit* spawnUnit = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0);
        m_creature->SummonCreature(CREATURE_ECHO_OF_GERASTRASZ, spawnUnit->GetPositionX(), spawnUnit->GetPositionY(),
                                   spawnUnit->GetPositionZ(), spawnUnit->GetOrientation(), TEMPSUMMON_CORPSE_DESPAWN);
    }

    void JustSummoned(Creature *summoned)
    {
        summoned->CastSpell(summoned, TWIN_TELEPORT_VISUAL, false);
        summoned->MonsterTextEmote("Echo of Gerastrasz prepares to sacrifice himself and heal the Commander.");
        summoned->Attack(summoned->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0), true);
        m_uiBloodFunnelTimer = 18000;
        currentEcho = summoned;
    }

    void SummonedCreatureDespawn(Creature*) {
        currentEcho = nullptr;
    }

    void UpdateAI(const uint32 uiDiff)
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        if (m_creature->GetHealthPercent() <= 75 && !first_echo_summoned) {
            SummonEcho();
            first_echo_summoned = true;
        }

        if (m_creature->GetHealthPercent() <= 35 && !second_echo_summoned) {
            SummonEcho();
            second_echo_summoned = true;
        }

        if (currentEcho) {
            if (m_uiBloodFunnelTimer < uiDiff) {
                currentEcho->addUnitState(UNIT_STAT_ROOT);
                currentEcho->MonsterTextEmote("Echo of Gerastrasz begins to heal the Commander.");
                currentEcho->CastSpell(m_creature, SPELL_BLOOD_FUNNEL, false);
                m_uiBloodFunnelTimer = 10250;
            } else {
                m_uiBloodFunnelTimer -= uiDiff;
            }
        }

        // Rain of Fire
        if (m_uiRainOfFireTimer < uiDiff)
        {
            m_creature->InterruptNonMeleeSpells(false);
            if (DoCastSpellIfCan(m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0), SPELL_RAIN_OF_FIRE) == CAST_OK) {
                m_creature->PMonsterYell("The sky will fall upon you, mortals!");
                m_uiRainOfFireTimer = urand(10000, 15000);
            }
        }
        else
            m_uiRainOfFireTimer -= uiDiff;

        // Cleave
        if (m_uiCleaveTimer < uiDiff)
        {
            DoCastSpellIfCan(m_creature->getVictim(), SPELL_CLEAVE);
            m_uiCleaveTimer = urand(6000, 8000);
        }
        else
            m_uiCleaveTimer -= uiDiff;

        DoMeleeAttackIfReady();
    }
};
CreatureAI* GetAI_boss_gerastrasz(Creature* pCreature)
{
    return new boss_gerastraszAI(pCreature);
}

void AddSC_boss_gerastrasz()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "boss_gerastrasz";
    newscript->GetAI = &GetAI_boss_gerastrasz;
    newscript->RegisterSelf();
}
