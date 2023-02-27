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

/*######
## npc_daphne_stilwell
######*/

enum DaphneStilwellData
{
    SAY_DS_START        = 2360,
    SAY_DS_DOWN_1       = 5269,
    SAY_DS_DOWN_2       = 2369,
    SAY_DS_DOWN_3       = 2358,
    SAY_DS_PROLOGUE     = 3090,

    SPELL_SHOOT         = 6660,
    QUEST_TOME_VALOR    = 1651,
    NPC_DEFIAS_RAIDER   = 6180,
    EQUIP_ID_RIFLE      = 20728,
    DAPHNE_SHOOT_CD     = 2000
};

enum Wave
{
    FIRST,
    SECOND,
    THIRD
};

constexpr float RaiderCoords[15][3] =
{
    {-11428.520f, 1612.757f, 72.241f}, // Spawn1
    {-11422.998f, 1616.106f, 74.153f}, // Spawn2
    {-11430.354f, 1618.334f, 72.632f}, // Spawn3
    {-11423.307f, 1621.033f, 74.224f}, // Spawn4
    {-11427.141f, 1623.220f, 73.168f}, // Spawn5

    {-11453.118f, 1554.380f, 53.100f}, // WP1a
    {-11449.692f, 1554.672f, 53.598f}, // WP2a
    {-11454.533f, 1558.679f, 52.497f}, // WP3a
    {-11449.488f, 1557.817f, 53.443f}, // WP4a
    {-11452.123f, 1559.800f, 52.890f}, // WP5a

    {-11475.067f, 1534.259f, 50.199f}, // WP1b
    {-11470.306f, 1533.835f, 50.267f}, // WP2b
    {-11471.954f, 1539.599f, 50.273f}, // WP3b
    {-11465.560f, 1534.399f, 50.649f}, // WP4b
    {-11467.391f, 1537.989f, 50.726f}  // WP5b
};

struct npc_daphne_stilwellAI : public npc_escortAI
{
    npc_daphne_stilwellAI(Creature* pCreature) : npc_escortAI(pCreature)
    {
        m_uiWPHolder = 0;
        Reset();
        firstWave = false;
        secondWave = false;
        lastWave = false;
    }

    uint32 m_uiWPHolder;
    uint32 m_uiShootTimer;
    bool firstWave;
    bool secondWave;
    bool lastWave;

    GuidList m_lSummonedRaidersGUIDs;

    void Reset() override
    {
        if (HasEscortState(STATE_ESCORT_ESCORTING))
        {
            if (m_uiWPHolder >= 6)
            {
                m_creature->SetSheath(SHEATH_STATE_RANGED);
            }

            switch (m_uiWPHolder)
            {
                case 8:
                {
                    DoScriptText(SAY_DS_DOWN_1, m_creature);

                    break;
                }
                case 9:
                {
                    DoScriptText(SAY_DS_DOWN_2, m_creature);

                    break;
                }
                case 10:
                {
                    if (m_lSummonedRaidersGUIDs.empty())
                        DoScriptText(SAY_DS_DOWN_3, m_creature);

                    break;
                }
            }
        }
        else
        {
            m_uiWPHolder = 0;
            firstWave = false;
            secondWave = false;
            lastWave = false;
        }

        m_uiShootTimer = 0;
    }

    void WaypointReached(uint32 uiPointId) override
    {
        m_uiWPHolder = uiPointId;

        switch (uiPointId)
        {
            case 5:
            {
                m_creature->HandleEmote(EMOTE_STATE_USESTANDING_NOSHEATHE);

                break;
            }
            case 6:
            {
                SetEquipmentSlots(false, EQUIP_NO_CHANGE, EQUIP_NO_CHANGE, EQUIP_ID_RIFLE);
                m_creature->SetSheath(SHEATH_STATE_RANGED);
                m_creature->HandleEmote(EMOTE_STATE_STAND);

                break;
            }
            case 8:
            {
                DoSendWave(Wave::FIRST);

                break;
            }
            case 9:
            {
                DoSendWave(Wave::SECOND);

                break;
            }
            case 10:
            {
                DoSendWave(Wave::THIRD);
                SetEscortPaused(true);

                break;
            }
            case 11:
            {
                SetRun(false);

                break;
            }
            case 12:
            {
                DoScriptText(SAY_DS_PROLOGUE, m_creature);

                break;
            }
            case 14:
            {
                SetEquipmentSlots(true);
                m_creature->SetSheath(SHEATH_STATE_UNARMED);
                m_creature->HandleEmote(EMOTE_STATE_USESTANDING);

                break;
            }
            case 15:
            {
                m_creature->HandleEmote(EMOTE_STATE_STAND);

                break;
            }
            case 18:
            {
                if (Player* pPlayer = GetPlayerForEscort())
                    pPlayer->GroupEventHappens(QUEST_TOME_VALOR, m_creature);

                break;
            }
            case 19:
            {
                DoEndEscort();

                break;
            }
        }
    }

    void DoSendWave(uint32 wave)
    {
        constexpr uint8 uiFirstWPOffset = 5;

        switch (wave)
        {
            case Wave::FIRST:
            {
                for (std::size_t counter = 0; counter < 3; ++counter)
                {
                    if (Creature* pAdd = m_creature->SummonCreature(NPC_DEFIAS_RAIDER, RaiderCoords[counter][0], RaiderCoords[counter][1], RaiderCoords[counter][2], 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 30000, false, true))
                    {
                        pAdd->GetMotionMaster()->MovePoint(counter, RaiderCoords[uiFirstWPOffset + counter][0], RaiderCoords[uiFirstWPOffset + counter][1], RaiderCoords[uiFirstWPOffset + counter][2]);
                    }
                }

                firstWave = true;
                SetEscortPaused(true);

                break;
            }
            case Wave::SECOND:
            {
                for (std::size_t counter = 0; counter < 4; ++counter)
                {
                    if (Creature* pAdd = m_creature->SummonCreature(NPC_DEFIAS_RAIDER, RaiderCoords[counter][0], RaiderCoords[counter][1], RaiderCoords[counter][2], 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 30000, false, true))
                    {
                        pAdd->GetMotionMaster()->MovePoint(counter, RaiderCoords[uiFirstWPOffset + counter][0], RaiderCoords[uiFirstWPOffset + counter][1], RaiderCoords[uiFirstWPOffset + counter][2]);
                    }
                }

                secondWave = true;
                SetEscortPaused(true);

                break;
            }
            case Wave::THIRD:
            {
                for (std::size_t counter = 0; counter < 5; ++counter)
                {
                    if (Creature* pAdd = m_creature->SummonCreature(NPC_DEFIAS_RAIDER, RaiderCoords[counter][0], RaiderCoords[counter][1], RaiderCoords[counter][2], 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 30000, false, true))
                    {
                        pAdd->GetMotionMaster()->MovePoint(counter, RaiderCoords[uiFirstWPOffset + counter][0], RaiderCoords[uiFirstWPOffset + counter][1], RaiderCoords[uiFirstWPOffset + counter][2]);
                    }
                }

                lastWave = true;

                break;
            }
        }
    }

    void SummonedMovementInform(Creature* pSummoned, uint32 uiMotionType, uint32 uiData) override
    {
        constexpr uint8 uiSecondWPOffset = 10;

        if (pSummoned->GetEntry() == NPC_DEFIAS_RAIDER && uiMotionType == POINT_MOTION_TYPE) // sanity check
        {
            switch (uiData)
            {
                case 0:
                {
                    pSummoned->GetMotionMaster()->MovePoint(5, RaiderCoords[uiSecondWPOffset][0], RaiderCoords[uiSecondWPOffset][1], RaiderCoords[uiSecondWPOffset][2]);
                    break;
                }
                case 1:
                {
                    pSummoned->GetMotionMaster()->MovePoint(5, RaiderCoords[uiSecondWPOffset + 1][0], RaiderCoords[uiSecondWPOffset + 1][1], RaiderCoords[uiSecondWPOffset + 1][2]);
                    break;
                }
                case 2:
                {
                    pSummoned->GetMotionMaster()->MovePoint(5, RaiderCoords[uiSecondWPOffset + 2][0], RaiderCoords[uiSecondWPOffset + 2][1], RaiderCoords[uiSecondWPOffset + 2][2]);
                    break;
                }
                case 3:
                {
                    pSummoned->GetMotionMaster()->MovePoint(5, RaiderCoords[uiSecondWPOffset + 3][0], RaiderCoords[uiSecondWPOffset + 3][1], RaiderCoords[uiSecondWPOffset + 3][2]);
                    break;
                }
                case 4:
                {
                    pSummoned->GetMotionMaster()->MovePoint(5, RaiderCoords[uiSecondWPOffset + 4][0], RaiderCoords[uiSecondWPOffset + 4][1], RaiderCoords[uiSecondWPOffset + 4][2]);
                    break;
                }
                default:
                {
                    pSummoned->GetMotionMaster()->MoveIdle();
                    break;
                }
            }
        }
    }

    void Aggro(Unit* /*who*/) override
    {
        SetCombatMovement(false);
    }

    void JustReachedHome() override
    {
        if (HasEscortState(STATE_ESCORT_ESCORTING) && m_uiWPHolder >= 6)
        {
            m_creature->SetSheath(SHEATH_STATE_RANGED);
        }
    }

    void JustSummoned(Creature* pSummoned) override
    {
        if (pSummoned->GetEntry() == NPC_DEFIAS_RAIDER)
        {
            m_lSummonedRaidersGUIDs.push_back(pSummoned->GetObjectGuid());
        }
    }

    void SummonedCreatureJustDied(Creature* pSummoned) override
    {
        m_lSummonedRaidersGUIDs.remove(pSummoned->GetObjectGuid());

        if (m_lSummonedRaidersGUIDs.empty())
        {
            if ((firstWave && m_uiWPHolder == 8) || (secondWave && m_uiWPHolder == 9) || (lastWave && m_uiWPHolder >= 10))
            {
                SetEscortPaused(false);
                SetRun(false);
            }
        }
    }

    void SummonedCreatureDespawn(Creature* pSummoned) override
    {
        if (pSummoned->IsAlive())
        {
            m_lSummonedRaidersGUIDs.remove(pSummoned->GetObjectGuid());
        }
    }

    void JustDied(Unit* pKiller) override
    {
        m_lSummonedRaidersGUIDs.clear();
        npc_escortAI::JustDied(pKiller);
    }

    void DoEndEscort()
    {
        m_creature->ForcedDespawn();
        m_creature->Respawn();
    }

    void UpdateEscortAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiShootTimer < uiDiff)
        {
            m_uiShootTimer = DAPHNE_SHOOT_CD;

            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SHOOT) != CanCastResult::CAST_OK && !IsCombatMovement())
            {
                SetCombatMovement(true);
                DoStartMovement(m_creature->GetVictim());
            }
        }
        else
        {
            m_uiShootTimer -= uiDiff;
        }

        DoMeleeAttackIfReady();
    }
};

bool QuestAccept_npc_daphne_stilwell(Player* pPlayer, Creature* pCreature, const Quest* pQuest)
{
    if (pQuest->GetQuestId() == QUEST_TOME_VALOR)
    {
        DoScriptText(SAY_DS_START, pCreature);

        if (npc_daphne_stilwellAI* pEscortAI = dynamic_cast<npc_daphne_stilwellAI*>(pCreature->AI()))
        {
            pEscortAI->Start(true, pPlayer->GetGUID(), pQuest, true);
        }
    }

    return true;
}

CreatureAI* GetAI_npc_daphne_stilwell(Creature* pCreature)
{
    return new npc_daphne_stilwellAI(pCreature);
}

/*######
## npc_defias_traitor
######*/

enum DefiasTraitorData
{
    SAY_START                   = 9,
    SAY_PROGRESS                = 10,
    SAY_END                     = 11,
    SAY_AGGRO_1                 = 489,
    SAY_AGGRO_2                 = 485,

    QUEST_DEFIAS_BROTHERHOOD    = 155
};

struct npc_defias_traitorAI : public npc_escortAI
{
    npc_defias_traitorAI(Creature* pCreature) : npc_escortAI(pCreature)
    {
        Reset();
    }

    void WaypointReached(uint32 i) override
    {
        switch (i)
        {
            case 35:
            {
                SetRun(false);
                break;
            }
            case 36:
            {
                if (Player* pPlayer = GetPlayerForEscort())
                    DoScriptText(SAY_PROGRESS, m_creature, pPlayer);

                break;
            }
            case 44:
            {
                if (Player* pPlayer = GetPlayerForEscort())
                {
                    DoScriptText(SAY_END, m_creature, pPlayer);
                    pPlayer->GroupEventHappens(QUEST_DEFIAS_BROTHERHOOD, m_creature);
                }

                break;
            }
        }
    }

    void Aggro(Unit* who) override
    {
        DoScriptText(urand(0, 1) ? SAY_AGGRO_1 : SAY_AGGRO_2, m_creature, who);
    }

    void Reset() override { }
};

bool QuestAccept_npc_defias_traitor(Player* pPlayer, Creature* pCreature, const Quest* pQuest)
{
    if (pQuest->GetQuestId() == QUEST_DEFIAS_BROTHERHOOD)
    {
        DoScriptText(SAY_START, pCreature, pPlayer);

        if (npc_defias_traitorAI* pEscortAI = dynamic_cast<npc_defias_traitorAI*>(pCreature->AI()))
        {
            pEscortAI->SetMaxAssistDistance(15.0f);
            pEscortAI->Start(true, pPlayer->GetGUID(), pQuest);
        }
    }

    return true;
}

CreatureAI* GetAI_npc_defias_traitor(Creature* pCreature)
{
    return new npc_defias_traitorAI(pCreature);
}

void AddSC_westfall()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_daphne_stilwell";
    newscript->GetAI = &GetAI_npc_daphne_stilwell;
    newscript->pQuestAcceptNPC = &QuestAccept_npc_daphne_stilwell;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_defias_traitor";
    newscript->GetAI = &GetAI_npc_defias_traitor;
    newscript->pQuestAcceptNPC = &QuestAccept_npc_defias_traitor;
    newscript->RegisterSelf();
}
