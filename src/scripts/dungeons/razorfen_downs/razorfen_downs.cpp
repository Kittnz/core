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

/* ScriptData
SDName: Razorfen_Downs
SD%Complete: 100
SDComment: Support for Henry Stern(2 recipes)
SDCategory: Razorfen Downs
EndScriptData */

/* ContentData
npc_henry_stern
EndContentData */

#include "scriptPCH.h"
#include "razorfen_downs.h"

/*###
# npc_henry_stern
####*/

enum
{
    SPELL_GOLDTHORN_TEA = 13028,
    SPELL_TEACHING_GOLDTHORN_TEA = 13029,
    SPELL_MIGHT_TROLLS_BLOOD_POTION = 3451,
    SPELL_TEACHING_MIGHTY_TROLLS_BLOOD_POTION = 13030,
    GOSSIP_TEXT_TEA_ANSWER = 2114,
    GOSSIP_TEXT_POTION_ANSWER = 2115,
};

#define GOSSIP_ITEM_TEA "Teach me the cooking recipe"
#define GOSSIP_ITEM_POTION "Teach me the alchemy recipe"

bool GossipHello_npc_henry_stern(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetSkillValueBase(SKILL_COOKING) >= 175 && !pPlayer->HasSpell(SPELL_GOLDTHORN_TEA))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM_TEA, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pPlayer->GetSkillValueBase(SKILL_ALCHEMY) >= 180 && !pPlayer->HasSpell(SPELL_MIGHT_TROLLS_BLOOD_POTION))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM_POTION, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

    pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_henry_stern(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->CastSpell(pPlayer, SPELL_TEACHING_GOLDTHORN_TEA, true);
        pPlayer->SEND_GOSSIP_MENU(GOSSIP_TEXT_TEA_ANSWER, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->SEND_GOSSIP_MENU(GOSSIP_TEXT_POTION_ANSWER, pCreature->GetGUID());
        pCreature->CastSpell(pPlayer, SPELL_TEACHING_MIGHTY_TROLLS_BLOOD_POTION, true);
    }

    return true;
}

enum
{
    SPELL_MIND_BLAST = 8105,
    FACTION_SCOURGE = 974,
    MODEL_ID_UNDEAD = 10698
};

struct boss_ladyFaltheressAI : public ScriptedAI
{
    boss_ladyFaltheressAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    uint32 MindBlast_Timer;

    void Reset() override
    {
        MindBlast_Timer = 8000;
    }

    void TransformIntoHostile()
    {
        m_creature->SetFactionTemplateId(FACTION_SCOURGE);
        //TODO : find the humain appearance she transforms out of.
        m_creature->SetDisplayId(MODEL_ID_UNDEAD);
    }

    void UpdateAI(const uint32 diff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (MindBlast_Timer < diff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_MIND_BLAST) == CAST_OK)
                MindBlast_Timer = 8000;
        }
        else
            MindBlast_Timer -= diff;
        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_ladyFaltheress(Creature* pCreature)
{
    return new boss_ladyFaltheressAI(pCreature);
}

bool GOHello_go_holding_pen(Player* pPlayer, GameObject* pGo)
{
    if (Creature* pCreature = pGo->FindNearestCreature(14686, 20.000000, true))
    {
        if (boss_ladyFaltheressAI* pAI = dynamic_cast<boss_ladyFaltheressAI*>(pCreature->AI()))
            pAI->TransformIntoHostile();
    }
    return true;
}

enum
{
    QUEST_EXTINGUISHING_THE_IDOL = 3525,
    SAY_BELNISTRASZ_READY = -1129005,
    SAY_BELNISTRASZ_START_RIT = -1129006,
    SAY_BELNISTRASZ_AGGRO_1 = -1129007,
    SAY_BELNISTRASZ_AGGRO_2 = -1129008,
    SAY_BELNISTRASZ_3_MIN = -1129009,
    SAY_BELNISTRASZ_2_MIN = -1129010,
    SAY_BELNISTRASZ_1_MIN = -1129011,
    SAY_BELNISTRASZ_FINISH = -1129012,

    NPC_IDOL_ROOM_SPAWNER = 8611,
    NPC_WITHERED_BATTLE_BOAR = 7333,
    NPC_WITHERED_QUILGUARD = 7329,
    NPC_DEATHS_HEAD_GEOMANCER = 7335,
    NPC_PLAGUEMAW_THE_ROTTING = 7356,

    GO_BELNISTRASZ_BRAZIER = 152097,
    GO_IDOL_OVEN_FIRE = 151951,
    GO_IDOL_MOUTH_FIRE = 151973,

    SPELL_ARCANE_INTELLECT = 13326, // use this somewhere (he has it as default)
    SPELL_FIREBALL = 9053,
    SPELL_FROST_NOVA = 11831,
    SPELL_IDOL_SHUTDOWN = 12774,

    // summon spells only exist in 1.x
    //SPELL_SUMMON_1 = 12694, // NPC_WITHERED_BATTLE_BOAR
    //SPELL_SUMMON_2 = 14802, // NPC_DEATHS_HEAD_GEOMANCER
    //SPELL_SUMMON_3 = 14801, // NPC_WITHERED_QUILGUARD
};

static float m_fSpawnerCoord[3][4] =
{
    {2582.79f, 954.392f, 52.4821f, 3.78736f},
    {2569.42f, 956.380f, 52.2732f, 5.42797f},
    {2570.62f, 942.393f, 53.7433f, 0.71558f}
};

struct npc_belnistraszAI : public npc_escortAI
{
    npc_belnistraszAI(Creature* pCreature) : npc_escortAI(pCreature)
    {
        pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        m_uiRitualPhase = 0;
        m_uiRitualTimer = 1000;
        m_bAggro = false;
        Reset();
    }

    ScriptedInstance* pInstance;
    uint8 m_uiRitualPhase;
    uint32 m_uiRitualTimer;
    bool m_bAggro;
    uint32 m_uiFireballTimer;
    uint32 m_uiFrostNovaTimer;
    uint32 m_uiRegenTimer;

    void Reset() override
    {
        m_uiFireballTimer = 1000;
        m_uiFrostNovaTimer = 6000;
        m_uiRegenTimer = 5000;
    }

    void AttackedBy(Unit* pAttacker) override
    {
        if (HasEscortState(STATE_ESCORT_PAUSED))
        {
            if (!m_bAggro)
            {
                DoScriptText(urand(0, 1) ? SAY_BELNISTRASZ_AGGRO_1 : SAY_BELNISTRASZ_AGGRO_2, m_creature, pAttacker);
                m_bAggro = true;
            }
            return;
        }
        ScriptedAI::AttackedBy(pAttacker);
    }

    void AttackStart(Unit* pWho) override
    {
        if (HasEscortState(STATE_ESCORT_PAUSED) && (m_uiRitualPhase > 0))
            return;

        npc_escortAI::AttackStart(pWho);
    }

    void SpawnerSummon(Creature* pSummoner)
    {
        Creature * pCreature = nullptr;
        if (m_uiRitualPhase > 7)
        {
            if (pCreature = pSummoner->SummonCreature(NPC_PLAGUEMAW_THE_ROTTING, pSummoner->GetPositionX(), pSummoner->GetPositionY(), pSummoner->GetPositionZ(), pSummoner->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 60000))
                pCreature->SetRespawnDelay(600000);
            return;
        }

        for (int i = 0; i < 4; ++i)
        {
            uint32 uiEntry = 0;
            // ref TARGET_RANDOM_CIRCUMFERENCE_POINT
            float angle = 2.0f * M_PI_F * rand_norm_f();
            float fX, fZ, fY;
            pSummoner->GetClosePoint(fX, fY, fZ, 0.0f, 2.0f, angle);
            switch (i)
            {
                case 0:
                case 1:
                    uiEntry = NPC_WITHERED_BATTLE_BOAR;
                    break;
                case 2:
                    uiEntry = NPC_WITHERED_QUILGUARD;
                    break;
                case 3:
                    uiEntry = NPC_DEATHS_HEAD_GEOMANCER;
                    break;
            }
            if (pCreature = pSummoner->SummonCreature(uiEntry, fX, fY, fZ, 0.0f, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 60000))
            {
                pCreature->SetRespawnDelay(600000);
                if (Player* pPlayer = pCreature->FindNearestHostilePlayer(15.0f))
                    pCreature->AddThreat(pPlayer, 100.0f);
            }
        }
    }

    void JustSummoned(Creature* pSummoned) override
    {
        SpawnerSummon(pSummoned);
    }

    void DoSummonRandom()
    {
        uint32 type = urand(0, 2);
        if (Creature* pSpawner = m_creature->SummonCreature(NPC_IDOL_ROOM_SPAWNER, m_fSpawnerCoord[type][0], m_fSpawnerCoord[type][1], m_fSpawnerCoord[type][2], m_fSpawnerCoord[type][3], TEMPSUMMON_TIMED_DESPAWN, 10000))
            pSpawner->SetRespawnDelay(600000);
    }

    void WaypointReached(uint32 uiPointId) override
    {
        if (uiPointId == 24)
        {
            DoScriptText(SAY_BELNISTRASZ_START_RIT, m_creature);
            SetEscortPaused(true);
        }
    }

    void UpdateEscortAI(const uint32 uiDiff) override
    {
        if (m_uiRegenTimer < uiDiff)
        {
            if (m_creature->GetHealth() < m_creature->GetMaxHealth())
                m_creature->SetHealth(m_creature->GetHealth() + std::min(m_creature->GetMaxHealth() - m_creature->GetHealth(), 100u));
            m_uiRegenTimer = 5000;
        }
        else
            m_uiRegenTimer -= uiDiff;

        if (HasEscortState(STATE_ESCORT_PAUSED))
        {
            if (m_uiRitualTimer < uiDiff)
            {
                switch (m_uiRitualPhase)
                {
                    case 0:
                        SetCombatMovement(false);
                        DoCastSpellIfCan(m_creature, SPELL_IDOL_SHUTDOWN);
                        m_uiRitualTimer = 1000;
                        break;
                    case 1:
                        DoSummonRandom();
                        m_uiRitualTimer = 39000;
                        break;
                    case 2:
                        DoSummonRandom();
                        m_uiRitualTimer = 20000;
                        break;
                    case 3:
                        DoScriptText(SAY_BELNISTRASZ_3_MIN, m_creature, m_creature);
                        m_uiRitualTimer = 20000;
                        break;
                    case 4:
                        DoSummonRandom();
                        m_uiRitualTimer = 40000;
                        break;
                    case 5:
                        DoSummonRandom();
                        DoScriptText(SAY_BELNISTRASZ_2_MIN, m_creature, m_creature);
                        m_uiRitualTimer = 40000;
                        break;
                    case 6:
                        DoSummonRandom();
                        m_uiRitualTimer = 20000;
                        break;
                    case 7:
                        DoScriptText(SAY_BELNISTRASZ_1_MIN, m_creature, m_creature);
                        m_uiRitualTimer = 40000;
                        break;
                    case 8:
                        DoSummonRandom();
                        m_uiRitualTimer = 20000;
                        break;
                    case 9:
                        DoScriptText(SAY_BELNISTRASZ_FINISH, m_creature, m_creature);
                        m_uiRitualTimer = 3000;
                        break;
                    case 10:
                    {
                        if (Player* pPlayer = GetPlayerForEscort())
                        {
                            pPlayer->GroupEventHappens(QUEST_EXTINGUISHING_THE_IDOL, m_creature);
                        }
                        m_creature->RemoveAurasDueToSpell(SPELL_IDOL_SHUTDOWN);
                        m_creature->SummonGameObject(GO_BELNISTRASZ_BRAZIER, 2577.196f, 947.0781f, 53.16757f, 2.356195f, 0, 0, 0.9238796f, 0.3826832f, 3600);
                        if (GameObject* pGoOvenFire = GetClosestGameObjectWithEntry(m_creature, GO_IDOL_OVEN_FIRE, 50))
                            pGoOvenFire->SetLootState(GO_JUST_DEACTIVATED);
                        if (GameObject* pGoMouthFire = GetClosestGameObjectWithEntry(m_creature, GO_IDOL_MOUTH_FIRE, 50))
                            pGoMouthFire->SetLootState(GO_JUST_DEACTIVATED);
                        if (pInstance)
                            pInstance->SetData(EXTINGUISH_FIRES, 0);
                        SetEscortPaused(false);
                        break;
                    }
                }
                ++m_uiRitualPhase;
            }
            else
                m_uiRitualTimer -= uiDiff;
            return;
        }

        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiFireballTimer < uiDiff)
        {
            DoCastSpellIfCan(m_creature->GetVictim(), SPELL_FIREBALL);
            m_uiFireballTimer = urand(2000, 3000);
        }
        else
            m_uiFireballTimer -= uiDiff;

        if (m_uiFrostNovaTimer < uiDiff)
        {
            DoCastSpellIfCan(m_creature->GetVictim(), SPELL_FROST_NOVA);
            m_uiFrostNovaTimer = urand(10000, 15000);
        }
        else
            m_uiFrostNovaTimer -= uiDiff;

        if (!HasEscortState(STATE_ESCORT_PAUSED))
            DoMeleeAttackIfReady();
    }

};

CreatureAI* GetAI_npc_belnistrasz(Creature* pCreature)
{
    return new npc_belnistraszAI(pCreature);
}

bool QuestAccept_npc_belnistrasz(Player* pPlayer, Creature* pCreature, const Quest* pQuest)
{
    if (pQuest->GetQuestId() == QUEST_EXTINGUISHING_THE_IDOL)
    {
        if (npc_belnistraszAI* pEscortAI = dynamic_cast<npc_belnistraszAI*>(pCreature->AI()))
        {
            pEscortAI->Start(false, pPlayer->GetGUID(), pQuest);
            DoScriptText(SAY_BELNISTRASZ_READY, pCreature, pPlayer);
            pCreature->SetFactionTemplateId(FACTION_ESCORT_N_NEUTRAL_ACTIVE);
        }
    }
    return true;
}

/*######
## go_gong
######*/

bool GOHello_go_gong(Player* pPlayer, GameObject* pGO)
{
    //basic support, not blizzlike data is missing...
    ScriptedInstance* pInstance = (ScriptedInstance*)pGO->GetInstanceData();

    if (pInstance)
    {
        sLog.outString("SERVER STARTUP TIME: %i minutes %i seconds", WorldTimer::getMSTime() / 60000, (WorldTimer::getMSTime() % 60000) / 1000);
        pInstance->SetData(DATA_GONG_WAVES, pInstance->GetData(DATA_GONG_WAVES) + 1);
        return true;
    }

    return false;
}

enum eTombCreature
{
    SPELL_WEB = 745
};

struct npc_tomb_creatureAI : public ScriptedAI
{
    npc_tomb_creatureAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* pInstance;

    uint32 uiWebTimer;

    void Reset() override
    {
        uiWebTimer = urand(5000, 8000);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!UpdateVictim())
            return;

        //from acid
        if (m_creature->GetEntry() == CREATURE_TOMB_REAVER)
        {
            if (uiWebTimer <= uiDiff)
            {
                DoCast(m_creature->GetVictim(), SPELL_WEB);
                uiWebTimer = urand(7000, 16000);
            }
            else uiWebTimer -= uiDiff;
        }

        DoMeleeAttackIfReady();
    }

    void JustDied(Unit* pKiller) override
    {
        if (pInstance)
            pInstance->SetData(DATA_GONG_WAVES, pInstance->GetData(DATA_GONG_WAVES) + 1);
    }
};

CreatureAI* GetAI_npc_tomb_creature(Creature* pCreature)
{
    return new npc_tomb_creatureAI(pCreature);
}

bool GOQuestRewarded_go_belnistrasz(Player* pPlayer, GameObject* pGo, Quest const* pQuest)
{
    if (pQuest->GetQuestId() == 0)
        pGo->Delete();

    return true;
}

void AddSC_razorfen_downs()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "npc_henry_stern";
    newscript->pGossipHello = &GossipHello_npc_henry_stern;
    newscript->pGossipSelect = &GossipSelect_npc_henry_stern;
    newscript->RegisterSelf();
    /*
    newscript = new Script;
    newscript->Name = "go_holding_pen";
    newscript->pGOHello = &GOHello_go_holding_pen;
    newscript->RegisterSelf();
    */
    newscript = new Script;
    newscript->Name = "boss_lady_faltheress";
    newscript->GetAI = &GetAI_boss_ladyFaltheress;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_belnistrasz";
    newscript->GetAI = &GetAI_npc_belnistrasz;
    newscript->pQuestAcceptNPC = &QuestAccept_npc_belnistrasz;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_gong";
    newscript->pGOHello =           &GOHello_go_gong;
    newscript->RegisterSelf();
    /*
    newscript = new Script;
    newscript->Name = "go_belnistrasz";
    newscript->pQuestRewardedGO = &GOQuestRewarded_go_belnistrasz;
    newscript->RegisterSelf();
    */
    newscript = new Script;
    newscript->Name = "npc_tomb_creature";
    newscript->GetAI = &GetAI_npc_tomb_creature;
    newscript->RegisterSelf();
}
