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
SDName: Hinterlands
SD%Complete: 100
SDComment: Quest support: 863, 2742, 7840
SDCategory: The Hinterlands
EndScriptData */

/* ContentData
npc_rinji
go_lards_picnic_basket
EndContentData */

#include "scriptPCH.h"

template <typename Functor>
void DoAfterTime(Player* player, uint32 p_time, Functor&& function)
{
    player->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), player->m_Events.CalculateTime(p_time));
}

/*######
## npc_rinji
######*/

enum
{
    SAY_RIN_FREE            = -1000403,
    SAY_RIN_BY_OUTRUNNER    = -1000404,
    SAY_RIN_HELP_1          = -1000405,
    SAY_RIN_HELP_2          = -1000406,
    SAY_RIN_COMPLETE        = -1000407,
    SAY_RIN_PROGRESS_1      = -1000408,
    SAY_RIN_PROGRESS_2      = -1000409,

    QUEST_RINJI_TRAPPED     = 2742,
    NPC_RANGER              = 2694,
    NPC_OUTRUNNER           = 2691,
    GO_RINJI_CAGE           = 142036,
    FACTION_ESCORTEE        = 33,
};

struct Location
{
    float m_fX, m_fY, m_fZ;
};

Location m_afAmbushSpawn[] =
{
    {191.29620f, -2839.329346f, 107.388f},
    {70.972466f, -2848.674805f, 109.459f}
};

Location m_afAmbushMoveTo[] =
{
    {166.63038f, -2824.780273f, 108.153f},
    {70.886589f,  -2874.335449f, 116.675f}
};

struct npc_rinjiAI : public npc_escortAI
{
    npc_rinjiAI(Creature* pCreature) : npc_escortAI(pCreature)
    {
        m_bIsByOutrunner = false;
        m_iSpawnId = 0;
        Reset();
    }

    bool m_bIsByOutrunner;
    uint32 m_uiPostEventCount;
    uint32 m_uiPostEventTimer;
    int m_iSpawnId;

    void Reset()
    {
        m_uiPostEventCount = 0;
        m_uiPostEventTimer = 3000;
    }

    void JustRespawned()
    {
        m_bIsByOutrunner = false;
        m_iSpawnId = 0;
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC);
        npc_escortAI::JustRespawned();
    }

    void Aggro(Unit* pWho)
    {
        if (HasEscortState(STATE_ESCORT_ESCORTING))
        {
            if (pWho->GetEntry() == NPC_OUTRUNNER && !m_bIsByOutrunner)
            {
                DoScriptText(SAY_RIN_BY_OUTRUNNER, pWho);
                m_bIsByOutrunner = true;
            }

            if (urand(0, 3))
                return;

            //only if attacked and escorter is not in combat?
            DoScriptText(urand(0, 1) ? SAY_RIN_HELP_1 : SAY_RIN_HELP_2, m_creature);
        }
    }

    void DoSpawnAmbush(bool bFirst)
    {
        if (!bFirst)
            m_iSpawnId = 1;

        m_creature->SummonCreature(NPC_RANGER,
                                   m_afAmbushSpawn[m_iSpawnId].m_fX, m_afAmbushSpawn[m_iSpawnId].m_fY, m_afAmbushSpawn[m_iSpawnId].m_fZ, 0.0f,
                                   TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 60000);

        for (int i = 0; i < 2; ++i)
        {
            m_creature->SummonCreature(NPC_OUTRUNNER,
                                       m_afAmbushSpawn[m_iSpawnId].m_fX, m_afAmbushSpawn[m_iSpawnId].m_fY, m_afAmbushSpawn[m_iSpawnId].m_fZ, 0.0f,
                                       TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 60000);
        }
    }

    void JustSummoned(Creature* pSummoned)
    {
        pSummoned->SetWalk(false);
        pSummoned->GetMotionMaster()->MovePoint(0, m_afAmbushMoveTo[m_iSpawnId].m_fX, m_afAmbushMoveTo[m_iSpawnId].m_fY, m_afAmbushMoveTo[m_iSpawnId].m_fZ);
    }

    void WaypointReached(uint32 uiPointId)
    {
        Player* pPlayer = GetPlayerForEscort();

        if (!pPlayer)
            return;

        switch (uiPointId)
        {
            case 1:
                DoScriptText(SAY_RIN_FREE, m_creature, pPlayer);
                break;
            case 7:
                DoSpawnAmbush(true);
                break;
            case 13:
                DoSpawnAmbush(false);
                break;
            case 17:
                DoScriptText(SAY_RIN_COMPLETE, m_creature, pPlayer);
                pPlayer->GroupEventHappens(QUEST_RINJI_TRAPPED, m_creature);
                SetRun();
                m_uiPostEventCount = 1;
                break;
        }
    }

    void UpdateEscortAI(const uint32 uiDiff)
    {
        //Check if we have a current target
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
        {
            if (HasEscortState(STATE_ESCORT_ESCORTING) && m_uiPostEventCount)
            {
                if (m_uiPostEventTimer < uiDiff)
                {
                    m_uiPostEventTimer = 3000;

                    if (Player* pPlayer = GetPlayerForEscort())
                    {
                        switch (m_uiPostEventCount)
                        {
                            case 1:
                                DoScriptText(SAY_RIN_PROGRESS_1, m_creature, pPlayer);
                                ++m_uiPostEventCount;
                                break;
                            case 2:
                                DoScriptText(SAY_RIN_PROGRESS_2, m_creature, pPlayer);
                                m_uiPostEventCount = 0;
                                break;
                        }
                    }
                    else
                    {
                        m_creature->ForcedDespawn();
                        return;
                    }
                }
                else
                    m_uiPostEventTimer -= uiDiff;
            }

            return;
        }

        DoMeleeAttackIfReady();
    }
};

bool QuestAccept_npc_rinji(Player* pPlayer, Creature* pCreature, const Quest* pQuest)
{
    if (pQuest->GetQuestId() == QUEST_RINJI_TRAPPED)
    {
        if (GameObject* pGo = GetClosestGameObjectWithEntry(pCreature, GO_RINJI_CAGE, INTERACTION_DISTANCE))
            pGo->UseDoorOrButton();

        pCreature->SetFactionTemporary(FACTION_ESCORTEE, TEMPFACTION_RESTORE_RESPAWN);
        pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC);

        if (npc_rinjiAI* pEscortAI = dynamic_cast<npc_rinjiAI*>(pCreature->AI()))
            pEscortAI->Start(false, pPlayer->GetGUID(), pQuest);
    }
    return true;
}

CreatureAI* GetAI_npc_rinji(Creature* pCreature)
{
    return new npc_rinjiAI(pCreature);
}

/*######
## go_lards_picnic_basket
######*/

enum
{
    NPC_KIDNAPPEUR_VILEBRANCH     = 14748,
};
struct go_lards_picnic_basketAI: public GameObjectAI
{
    go_lards_picnic_basketAI(GameObject* pGo) : GameObjectAI(pGo)
    {
        timer = 0;
        state = 0;
    }
    uint32 timer;
    bool state;//0 = usual, can launch. //1 = in use, cannot launch

    void UpdateAI(const uint32 uiDiff)
    {
        if (state)
        {
            if (timer < uiDiff)
            {
                state = 0;
                me->SetGoState(GO_STATE_READY);
                me->RemoveFlag(GAMEOBJECT_FLAGS, GO_FLAG_IN_USE);
            }
            else
                timer -= uiDiff;
        }
    }
    bool CheckCanStartEvent()
    {
        if (!state)
            return true;
        return false;
    }

    void SetInUse()
    {
        me->SetGoState(GO_STATE_ACTIVE);
        me->SetFlag(GAMEOBJECT_FLAGS, GO_FLAG_IN_USE);
        state = 1;
        timer = 300000;
    }
};
GameObjectAI* GetAIgo_lards_picnic_basket(GameObject *pGo)
{
    return new go_lards_picnic_basketAI(pGo);
}
bool GOHello_go_lards_picnic_basket(Player* pPlayer, GameObject* pGO)
{
    if (pGO->GetGoType() == GAMEOBJECT_TYPE_GOOBER)
    {
        if (go_lards_picnic_basketAI* pMarkAI = dynamic_cast<go_lards_picnic_basketAI*>(pGO->AI()))
        {
            if (pMarkAI->CheckCanStartEvent())
            {
                pMarkAI->SetInUse();
                for (int i = 0; i < 3; ++i)
                    pPlayer->SummonCreature(NPC_KIDNAPPEUR_VILEBRANCH, pPlayer->GetPositionX(), pPlayer->GetPositionY(), pPlayer->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN);
            }
        }
    }
    return false;
}


/*######
## go_corrupted_crystal
######*/

enum
{
    QUEST_AN_INFINITE_HUNT = 80411,

    NPC_KHEYNA = 81041,
    NPC_CHROMIE = 50116,
    NPC_ANTNORMI = 81265,
    NPC_DRAKONID = 91000,

    SAY_KHEYNA_1 = -1780400,
    SAY_KHEYNA_2 = -1780402,
    SAY_KHEYNA_3 = -1780404,
    SAY_KHEYNA_4 = -1780406,

    SAY_CHROMIE_1 = -1780401,
    SAY_CHROMIE_2 = -1780403,
    SAY_CHROMIE_3 = -1780405,
    SAY_CHROMIE_4 = -1780408,

    YELL_ANTNORMI = -1780407,

    SPELL_TELEPORT = 26638,

    GOB_CHROMIE_PORTAL = 81048,
    GOB_DRAGON_PORTAL = 91001,
    GOB_FORCEFIELD = 3000511
    
};

struct go_corrupted_crystal : public GameObjectAI
{
    go_corrupted_crystal(GameObject* pGo) : GameObjectAI(pGo)
    {
        // Reset
    }
    uint32 m_uiDialogueTimer;
    uint32 m_uiTick = 0;
    bool state = true;//0 = usual, can launch. //1 = in use, cannot launch
    ObjectGuid m_player;
    ObjectGuid drakonidOne;
    ObjectGuid drakonidTwo;
    ObjectGuid antnormiPortal;
    bool doOnce = true;
    bool endPortal = false;

    void UpdateAI(const uint32 uiDiff)
    {
        if (m_uiDialogueTimer <= uiDiff && !state)
        {
            switch (m_uiTick)
            {
            case 0:
                if (Creature* kheyna = me->FindNearestCreature(NPC_KHEYNA, 100, true))
                {
                    kheyna->MonsterMove(669.26f, -4105.60f, 99.43f);

                    if (kheyna->GetPositionX() == 669.26f)
                        m_uiTick++;
                    m_uiDialogueTimer = 1000;
                }
                else Reset();
                break;
            case 1:
                if (Creature* kheyna = me->FindNearestCreature(NPC_KHEYNA, 100, true))
                {
                    Player* pPlayer = me->GetMap()->GetPlayer(m_player);

                    kheyna->MonsterMove(669.70f, -4094.36f, 100.70f);
                    kheyna->PMonsterSay("%s, you're early! What fortune! I believe I've finally tracked-", pPlayer->GetName());
                    me->SummonCreature(GOB_CHROMIE_PORTAL, 667.73f, -4086.49f, 100.71, 0, TEMPSUMMON_TIMED_DESPAWN, 5000);
                    m_uiDialogueTimer = 5000;
                    m_uiTick++;
                }
                else Reset();
                break;
            case 2:
                if (Creature* chromie = me->SummonCreature(NPC_CHROMIE, 667.73f, -4086.49f, 100.71f, 0, TEMPSUMMON_DEAD_DESPAWN))
                {
                    chromie->CastSpell(chromie, SPELL_TELEPORT, false);
                    chromie->MonsterSay(SAY_CHROMIE_1); // I've found you villain! There is no escape!
                    chromie->SetFacingTo(4.88f);
                    chromie->MonsterMove(667.99f, -4088.13f, 100.74f);
                    m_uiDialogueTimer = 5000;
                    m_uiTick++;
                }
                else Reset();
                break;
            case 3:
            {
                Creature* drakonidOneptr = me->SummonCreature(NPC_DRAKONID, 666.65f, -4095.23f, 100.71f, TEMPSUMMON_DEAD_DESPAWN);
                Creature* drakonidTwoptr = me->SummonCreature(NPC_DRAKONID, 671.32f, -4097.37f, 100.70f, TEMPSUMMON_DEAD_DESPAWN);
                if (drakonidOneptr && drakonidTwoptr)
                {
                    drakonidOne = drakonidOneptr->GetObjectGuid();
                    drakonidTwo = drakonidTwoptr->GetObjectGuid();

                    drakonidOneptr->CastSpell(drakonidOneptr, SPELL_TELEPORT, false);
                    drakonidTwoptr->CastSpell(drakonidTwoptr, SPELL_TELEPORT, false);

                    if (Creature* kheyna = me->FindNearestCreature(NPC_KHEYNA, 100, true))
                    {
                        drakonidOneptr->SetFacingToObject(kheyna);
                        drakonidTwoptr->SetFacingToObject(kheyna);
                        GameObject* forceField = drakonidOneptr->SummonGameObject(GOB_FORCEFIELD, kheyna->GetPositionX(), kheyna->GetPositionY(), kheyna->GetPositionZ() + .25, 0);
                    }
                }
                else Reset();
                m_uiDialogueTimer = 2500;
                m_uiTick++;
                break;
            }
            case 4:
                if (Creature* kheyna = me->FindNearestCreature(NPC_KHEYNA, 100, true))
                {
                    kheyna->MonsterSay(SAY_KHEYNA_2); // No wait! Listen to me! I am here to hunt a larger threat and she's on the way. I'm not the one you should be after!
                    m_uiDialogueTimer = 7500;
                    m_uiTick++;
                }
                else Reset();
                break;

            case 5:
                if (Creature* antnormi = me->SummonCreature(NPC_ANTNORMI, 704.01f, -4090.40f, 100.71, TEMPSUMMON_DEAD_DESPAWN))
                {
                    Creature* antnormiPortalSummon = antnormi->SummonCreature(GOB_DRAGON_PORTAL, 726.33f, -4089.56f, 101, 0, TEMPSUMMON_MANUAL_DESPAWN);

                    antnormiPortal = antnormiPortalSummon->GetGUID();

                    antnormi->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER);
                    antnormi->MonsterMove(702.14f, -4090.37f, 100.71f);
                    m_uiDialogueTimer = 5000;
                    m_uiTick++;
                    break;
                }
                else Reset();
            case 6:
            {
                Creature* drakonidOneptr = me->GetMap()->GetCreature(drakonidOne);
                Creature* drakonidTwoptr = me->GetMap()->GetCreature(drakonidTwo);
                if (drakonidOneptr && drakonidTwoptr)
                {
                    if (GameObject* forceField = drakonidOneptr->FindNearestGameObject(GOB_FORCEFIELD, 50))
                        forceField->Despawn();

                    if (Creature* antnormi = drakonidOneptr->FindNearestCreature(NPC_ANTNORMI, 200, true))
                        antnormi->SetRooted(true);

                    drakonidOneptr->MonsterMove(700.94f, -4091.69f, 100.71f);
                    drakonidTwoptr->MonsterMove(700.94f, -4091.69f, 100.71f);
                    m_uiDialogueTimer = 1000;
                    m_uiTick++;
                    break;
                }
                else Reset();
                }
            case 7:
                if (Creature* chromie = me->FindNearestCreature(NPC_CHROMIE, 100, true))
                {
                    chromie->MonsterYell(SAY_CHROMIE_2); // What is that behind you?!
                    m_uiDialogueTimer = 5000;
                    m_uiTick++;
                    break;
                }
                else Reset();
            case 8:
                if (Creature* antnormi = me->FindNearestCreature(NPC_ANTNORMI, 1000, true))
                {
                    if (Creature* target = antnormi->FindNearestCreature(NPC_DRAKONID, 30, true))
                        antnormi->CastSpell(target, 27567, true);

                    m_uiDialogueTimer = 1000;
                    m_uiTick++;
                    break;
                }
                else Reset();
            case 9:
                if (Creature* kheyna = me->FindNearestCreature(NPC_KHEYNA, 100, true))
                {
                    kheyna->MonsterSay(SAY_KHEYNA_3); // It's her who I've been hunting! Her name is Antnormi. We're not ready yet to face her, but we've got no choice!
                    
                    if (Creature* antnormi = kheyna->FindNearestCreature(NPC_ANTNORMI, 500, true))
                        antnormi->SetFacingToObject(kheyna);
                    
                    m_uiDialogueTimer = 7500;
                    m_uiTick++;
                }
                else Reset();
                break;
            case 10:
                if (Creature* chromie = me->FindNearestCreature(NPC_CHROMIE, 100, true))
                {
                    if (Creature* antnormi = me->FindNearestCreature(NPC_ANTNORMI, 1000, true))
                        chromie->AddThreat(antnormi, 1000);

                    chromie->MonsterSay(SAY_CHROMIE_3); // Adventurer, I'll weaken it, but you must finish her.
                    chromie->setFaction(11);
                    chromie->MonsterMove(691.41f, -4086.98f, 100.71f);
                    m_uiDialogueTimer = 5000;
                    m_uiTick++;
                }
                else Reset();
                break;
            case 11:
                if (Creature* kheyna = me->FindNearestCreature(NPC_KHEYNA, 100, true))
                {
                    if (Creature* antnormi = me->FindNearestCreature(NPC_ANTNORMI, 1000, true))
                    {
                        antnormi->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER);
                        antnormi->SetRooted(false);
                        kheyna->AddThreat(antnormi, 900);
                        kheyna->MonsterSay(SAY_KHEYNA_4); // I'll help you! Let's KILL!
                        kheyna->setFaction(11);
                        kheyna->MonsterMove(690.41f, -4087.98f, 100.71f);
                        kheyna->Attack(antnormi, true);
                    }

                    m_uiTick++;
                    m_uiDialogueTimer = 5000;
                }
                else Reset();
                break;
            case 12:
                if (Creature* antnormi = me->FindNearestCreature(NPC_ANTNORMI, 1000, true))
                {
                    if (antnormi->GetHealthPercent() <= 90.0f && !endPortal)
                        endPortal = true;

                    if (endPortal)
                    {
                        if (doOnce)
                        {
                            antnormi->MonsterYell(YELL_ANTNORMI); // Enough of this! I have no time for insects like you. The master's plan is almost complete and my diversion was a success!
                            doOnce = false;
                        }
                        Creature* antnormiPortalptr = me->GetMap()->GetCreature(antnormiPortal);
                        antnormi->MonsterMove(antnormiPortalptr->GetPositionX(), antnormiPortalptr->GetPositionY(), 100);
                        antnormi->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                        antnormi->DeleteThreatList();

                        if (Creature* kheyna = me->FindNearestCreature(NPC_KHEYNA, 1000, true))
                        {
                            kheyna->MonsterMoveWithSpeed(690.09f, -4086.31f, 100.71f, 0, 1, MOVE_WALK_MODE);

                            if (Creature* chromie = me->FindNearestCreature(NPC_CHROMIE, 1000, true))
                            {
                                chromie->MonsterMoveWithSpeed(690.40f, -4087.36f, 100.71f, 0, 1, MOVE_WALK_MODE);

                                if (antnormiPortalptr->FindNearestCreature(antnormi->GetEntry(), 5, true))
                                {
                                    antnormi->ForcedDespawn();
                                    antnormiPortalptr->DespawnOrUnsummon(2000);
                                    m_uiTick++;
                                }
                            }
                        }
                        m_uiDialogueTimer = 3000;
                    }
                }
                else Reset();
                break;
            case 13:
                    m_uiTick++;
                    m_uiDialogueTimer = 1000;
                break;
            case 14:
                if (Creature* chromie = me->FindNearestCreature(NPC_CHROMIE, 1000, true))
                {
                    if (Creature* kheyna = chromie->FindNearestCreature(NPC_KHEYNA, 50, true))
                    {
                        chromie->SetFacingToObject(kheyna);
                        kheyna->SetFacingToObject(chromie);
                        chromie->MonsterSay(SAY_CHROMIE_4); // We have much to talk about Kheyna. Adventurer, return to Andorhal and speak to me.
                        chromie->SummonCreature(GOB_CHROMIE_PORTAL, 681.30, -4090.56, 100.71, 0, TEMPSUMMON_TIMED_DESPAWN, 60000);
                        kheyna->MonsterMove(chromie->GetPositionX() + 1, chromie->GetPositionY() + 1, chromie->GetPositionZ());

                        Player* pPlayer = me->GetMap()->GetPlayer(m_player);

                        if (pPlayer && pPlayer->GetQuestStatus(QUEST_AN_INFINITE_HUNT) == QUEST_STATUS_INCOMPLETE)
                            pPlayer->CompleteQuest(QUEST_AN_INFINITE_HUNT);

                        m_uiDialogueTimer = 5000;
                        m_uiTick++;
                    }
                }
                else Reset();
                break;
            case 15:
                if (Creature* chromie = me->FindNearestCreature(NPC_CHROMIE, 1000, true))
                {
                    if (Creature* kheyna = chromie->FindNearestCreature(NPC_KHEYNA, 50, true))
                    {
                        if (Creature* portal = chromie->FindNearestCreature(GOB_CHROMIE_PORTAL, 15, true))
                        {
                            chromie->MonsterMoveWithSpeed(portal->GetPositionX(), portal->GetPositionY(), portal->GetPositionZ(), 0, 1, MOVE_WALK);
                            kheyna->MonsterMoveWithSpeed(portal->GetPositionX(), portal->GetPositionY(), portal->GetPositionZ(), 0, 1, MOVE_WALK);

                            if (portal->FindNearestCreature(chromie->GetEntry(), 1, true))
                            {
                                chromie->CastSpell(chromie, SPELL_TELEPORT, false);
                                chromie->ForcedDespawn(1000);
                            }

                            if (portal->FindNearestCreature(kheyna->GetEntry(), 3, true))
                                kheyna->HandleEmote(3);
                            if (portal->FindNearestCreature(kheyna->GetEntry(), 1, true))
                            {
                                kheyna->CastSpell(kheyna, SPELL_TELEPORT, false);
                                kheyna->ForcedDespawn(1000);
                            }

                            if (!kheyna && !chromie)
                            {
                                portal->ForcedDespawn();
                                m_uiTick++;
                            }
                        }
                    }
                    m_uiDialogueTimer = 5000;
                }
                else Reset();
                break;
            case 16:
                Reset();
                break;
            }
        }
        else
            m_uiDialogueTimer -= uiDiff;
    }
    bool CheckCanStartEvent()
    {
        return state;
    }

    void SetInUse()
    {
        me->SetGoState(GO_STATE_ACTIVE);
        me->SetFlag(GAMEOBJECT_FLAGS, GO_FLAG_IN_USE);
        state = false;
        m_uiDialogueTimer = 0;
    }

    void PassPlayer(Player* pPlayer)
    {
        m_player = pPlayer->GetObjectGuid();
    }

    void Reset()
    {
        bool doOnce = true;
        endPortal = false;
        state = true;
        m_uiDialogueTimer = 0;
        me->SetGoState(GO_STATE_READY);
        me->RemoveFlag(GAMEOBJECT_FLAGS, GO_FLAG_IN_USE);

        Creature* drakonidOneptr = me->GetMap()->GetCreature(drakonidOne);
        Creature* drakonidTwoptr = me->GetMap()->GetCreature(drakonidTwo);
        Creature* antinormiPortalptr = me->GetMap()->GetCreature(antnormiPortal);

        if (drakonidOneptr)
            drakonidOneptr->ForcedDespawn();
        if (drakonidTwoptr)
            drakonidTwoptr->ForcedDespawn();
        if (antinormiPortalptr)
            antinormiPortalptr->ForcedDespawn();

        ObjectGuid m_player = NULL;
        ObjectGuid drakonidOne = NULL;
        ObjectGuid drakonidTwo = NULL;
        ObjectGuid antnormiPortal = NULL;

    }
};

GameObjectAI* GetAI_go_corrupted_crystal(GameObject* gameobject)
{
    return new go_corrupted_crystal(gameobject);
}

bool GOHello_go_corrupted_crystal(Player* pPlayer, GameObject* pGO)
{
    if (pPlayer->GetQuestStatus(QUEST_AN_INFINITE_HUNT) == QUEST_STATUS_INCOMPLETE)
    {
        if (go_corrupted_crystal* gobAI = dynamic_cast<go_corrupted_crystal*>(pGO->AI()))
        {
            if (gobAI->CheckCanStartEvent())
            {
                gobAI->SetInUse();
                gobAI->PassPlayer(pPlayer);

                pPlayer->SummonCreature(NPC_KHEYNA, 658.04, -4105.24, 99.43, 0, TEMPSUMMON_DEAD_DESPAWN);
            }
        }
        return false;
    }
}


void AddSC_hinterlands()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "npc_rinji";
    newscript->GetAI = &GetAI_npc_rinji;
    newscript->pQuestAcceptNPC = &QuestAccept_npc_rinji;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_lards_picnic_basket";
    newscript->GOGetAI = &GetAIgo_lards_picnic_basket;
    newscript->pGOHello = &GOHello_go_lards_picnic_basket;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_corrupted_crystal";
    newscript->pGOHello = &GOHello_go_corrupted_crystal;
    newscript->GOGetAI = &GetAI_go_corrupted_crystal;
    newscript->RegisterSelf();
}
