#include "scriptPCH.h"

template <typename Functor>
void DoAfterTime(Player* player, uint32 p_time, Functor&& function)
{
    player->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), player->m_Events.CalculateTime(p_time));
}

bool GOHello_go_sacred_water(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2010815)
    {
        if (pPlayer->GetQuestStatus(40382) == QUEST_STATUS_INCOMPLETE && !pPlayer->FindNearestCreature(10, 40.0F))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Use Bowl of Sacred Water.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            pPlayer->SEND_GOSSIP_MENU(100304, pGo->GetGUID());
        }
    }
    return true;
}

bool GOSelect_go_sacred_water(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pGo->GetEntry() == 2010815)
        {
            pGo->SummonCreature(10, pGo->GetPositionX(), pGo->GetPositionY(), pGo->GetPositionZ(), pPlayer->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN, 3 * MINUTE * IN_MILLISECONDS);

            Creature* vestia = pGo->SummonCreature(60666, -4496.34F, 1281.63F, 127.91F, 4.25F, TEMPSUMMON_TIMED_DESPAWN, 180 * IN_MILLISECONDS);
            if (!vestia)
                vestia = pPlayer->FindNearestCreature(60666, 30.0F);
            if (!vestia)
                return false;

            vestia->m_Events.AddLambdaEventAtOffset([vestia]()
                {
                    if (vestia)
                    {
                        vestia->SetWalk(true);
                        vestia->GetMotionMaster()->MovePoint(0, -4505.66F, 1265.37F, 127.57F);
                    }
                }, 5000);
            vestia->m_Events.AddLambdaEventAtOffset([vestia]()
                {
                    if (vestia)
                    {
                        vestia->CastSpell(vestia, 23017, false); // Arcane Channeling
                        vestia->MonsterSay("This is it, keep me safe!");
                    }
                }, 13000);
            pGo->m_Events.AddLambdaEventAtOffset([pGo]()
                {
                    //vestia->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING);
                    Creature* ogre_1 = pGo->SummonCreature(60430, -4496.34F, 1281.63F, 127.91F, 4.25F, TEMPSUMMON_CORPSE_DESPAWN);
                    //ogre_1->AI()->AttackStart(vestia);
                }, 15000);
            pGo->m_Events.AddLambdaEventAtOffset([pGo]()
                {
                    Creature* ogre_2 = pGo->SummonCreature(60430, -4496.34F, 1281.63F, 127.91F, 4.25F, TEMPSUMMON_CORPSE_DESPAWN);

                }, 30000);
            vestia->m_Events.AddLambdaEventAtOffset([vestia]()
                {
                    vestia->CastSpell(vestia, 23017, false); // Arcane Channeling
                    vestia->MonsterSay("Mother moon, I call upon you to restore this sacred water, our negligence caused this defilement to happen and we humbly beg your giveness.");
                }, 31000);
            pGo->m_Events.AddLambdaEventAtOffset([pGo]()
                {
                    Creature* ogre_3 = pGo->SummonCreature(60430, -4496.34F, 1281.63F, 127.91F, 4.25F, TEMPSUMMON_CORPSE_DESPAWN);
                }, 45000);
            vestia->m_Events.AddLambdaEventAtOffset([vestia]()
                {
                    if (vestia)
                    {
                        vestia->CastSpell(vestia, 23017, false); // Arcane Channeling
                        vestia->MonsterSay("Bless us with the light of the moon and restore these waters to their former glory so that your love can be shared even to our wayward kin!");
                    }
                }, 46000);
            pGo->m_Events.AddLambdaEventAtOffset([pGo]()
                {
                    Creature* tuwhak = pGo->SummonCreature(60431, -4496.34F, 1281.63F, 127.91F, 4.25F, TEMPSUMMON_CORPSE_DESPAWN);
                    tuwhak->MonsterYell("Tu'whak smack tiny people! Leave Tu'whak toilet alone!");
                }, 60000);
            vestia->m_Events.AddLambdaEventAtOffset([vestia]()
                {
                    vestia->CastSpell(vestia, 1449, false);
                }, 100000);
            DoAfterTime(pPlayer, 103 * IN_MILLISECONDS, [player = pPlayer]() {
                Creature* vestia = player->FindNearestCreature(60666, 30.0F);
                if (vestia)
                {
                    vestia->HandleEmote(EMOTE_ONESHOT_KNEEL);
                    vestia->MonsterSay("It is done. Please go back to Feathermoon Stronghold. I shall meet you there.");
                }
                if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60318))
                    player->KilledMonster(cInfo, ObjectGuid());
                });
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

enum
{
    NPC_FELSTONE_GUARDINA_1 = 60426,
    NPC_FELSTONE_GUARDINA_2 = 60427,
    NPC_DRALOX_FELSTAR = 60425,
    QUEST_BREAKING_THE_FELSTAR = 40377,
    GO_CORRUPTED_FELSTONE = 2010883,
    GO_IVENT_TRIGGER_1 = 2010698,
    GO_IVENT_TRIGGER_2 = 2010699,
    NPC_EVENT_TRIGGER = 604250,
    NPC_HELPER = 60429,
    //60429
};

static float firstWaveCoords[2][5] =
{
    {NPC_FELSTONE_GUARDINA_1, 3549.72f, -1560.13f, 169.80f, 3.85f},
    {NPC_FELSTONE_GUARDINA_2, 3558.34f, -1567.86f, 172.00f, 3.37f}
};

static float secondWaveCoords[2][5] =
{
    {NPC_FELSTONE_GUARDINA_1, 3558.34f, -1567.86f, 172.00f, 3.37f},
    {NPC_FELSTONE_GUARDINA_2, 3549.72f, -1560.13f, 169.80f, 3.85f}
};

static float lastWaveCoords[3][5] =
{
    {NPC_HELPER, 3515.17f, -1600.66f, 169.37f, 2.76f},
    {NPC_HELPER, 3533.07f, -1603.13f, 172.10f, 1.40f},
    {NPC_HELPER, 3526.66f, -1601.96f, 170.83f, 1.73f},
};

/*####
# npc_triggerQuest5321
####*/

struct npc_triggerQuest40377AI : public ScriptedAI
{
    npc_triggerQuest40377AI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    bool eventInProggress;
    bool firstWave;
    bool secondWave;
    bool thirdWave;
    bool lastWave;

    GuidList m_lSummonedCreatureFirstWave;
    GuidList m_lSummonedCreatureSecondWave;
    GuidList m_lSummonedCreatureLastWave;

    bool GetEventInProggress()
    {
        return eventInProggress;
    }

    bool GetFirstWave()
    {
        return firstWave;
    }

    bool GetSecondWave()
    {
        return secondWave;
    }

    bool GetThirdWave()
    {
        return thirdWave;
    }

    bool GetLastWave()
    {
        return lastWave;
    }

    void SetEventInProggress(bool value)
    {
        eventInProggress = value;
    }

    void SetFirstWave(bool value)
    {
        firstWave = value;
    }

    void SetSecondWave(bool value)
    {
        secondWave = value;
    }

    void SetThirdWave(bool value)
    {
        thirdWave = value;
    }

    void SetLastWave(bool value)
    {
        lastWave = value;
    }

    void JustSummoned(Creature* pSummoned) override
    {
        if (pSummoned->GetEntry() == NPC_FELSTONE_GUARDINA_1 || pSummoned->GetEntry() == NPC_FELSTONE_GUARDINA_2 || pSummoned->GetEntry() == NPC_HELPER)
        {
            if (firstWave)
            {
                m_lSummonedCreatureFirstWave.push_back(pSummoned->GetObjectGuid());
            }

            if (secondWave)
            {
                m_lSummonedCreatureSecondWave.push_back(pSummoned->GetObjectGuid());
            }

            if (lastWave)
            {
                m_lSummonedCreatureLastWave.push_back(pSummoned->GetObjectGuid());
            }
        }
    }

    void SummonedCreatureJustDied(Creature* pSummoned) override
    {
        if (firstWave)
        {
            m_lSummonedCreatureFirstWave.remove(pSummoned->GetObjectGuid());

            if (m_lSummonedCreatureFirstWave.empty())
            {
                StartSecondWave();
            }
        }
        else if (secondWave)
        {
            m_lSummonedCreatureSecondWave.remove(pSummoned->GetObjectGuid());

            if (m_lSummonedCreatureSecondWave.empty())
            {
                StartThirdWave();
            }
        }
        else if (lastWave)
        {
            m_lSummonedCreatureLastWave.remove(pSummoned->GetObjectGuid());
        }
    }

    void StartEvent(Player* pPlayer)
    {
        eventInProggress = true;
        firstWave = true;

        for (auto& firstWaveCoord : firstWaveCoords)
        {
            if (Creature* summonedCreature = m_creature->SummonCreature(firstWaveCoord[0], firstWaveCoord[1], firstWaveCoord[2], firstWaveCoord[3], firstWaveCoord[4], TEMPSUMMON_CORPSE_DESPAWN))
            {
                summonedCreature->AI()->AttackStart(pPlayer);
            }
        }
    }

    void StartSecondWave()
    {
        firstWave = false;
        secondWave = true;
        Player* pPlayer = m_creature->FindNearestPlayer(30.0f);
        for (auto& secondWaveCoord : secondWaveCoords)
        {
            if (Creature* summonedCreature = m_creature->SummonCreature(secondWaveCoord[0], secondWaveCoord[1], secondWaveCoord[2], secondWaveCoord[3], secondWaveCoord[4], TEMPSUMMON_CORPSE_DESPAWN))
            {
                if (pPlayer && pPlayer->GetQuestStatus(QUEST_BREAKING_THE_FELSTAR) == QUEST_STATUS_INCOMPLETE)
                    summonedCreature->AI()->AttackStart(pPlayer);
            }
        }
    }

    void StartThirdWave()
    {
        secondWave = false;
        thirdWave = true;
        if (Creature* summonedCreature = m_creature->SummonCreature(NPC_DRALOX_FELSTAR, 3553.80F, -1561.09F, 170.19F, 4.09F, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 0.15 * MINUTE * IN_MILLISECONDS))
        {
            if (Player* pPlayer = m_creature->FindNearestPlayer(30.0f))
            {
                if (pPlayer && pPlayer->GetQuestStatus(QUEST_BREAKING_THE_FELSTAR) == QUEST_STATUS_INCOMPLETE)
                {
                    summonedCreature->AI()->AttackStart(pPlayer);
                    summonedCreature->MonsterSayToPlayer("Get away from that Felstone! It is crucial to my plans!", pPlayer);
                }

            }
        }
    }

    void StartLastWave(Creature* pCreature)
    {
        thirdWave = false;
        lastWave = true;
        bool yell = false;
        for (auto& lastWaveCoord : lastWaveCoords)
        {
            if (Creature* summonedCreature = m_creature->SummonCreature(lastWaveCoord[0], lastWaveCoord[1], lastWaveCoord[2], lastWaveCoord[3], lastWaveCoord[4], TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 120 * IN_MILLISECONDS))
            {
                if (Creature* pdraloxFelstart = m_creature->FindNearestCreature(NPC_DRALOX_FELSTAR, 35.0f))
                {
                    summonedCreature->AI()->AttackStart(pdraloxFelstart);

                    if (!yell)
                    {
                        summonedCreature->MonsterSay("You do not stand alone friend! Let's take this creature down!");
                        yell = true;
                    }
                }
            }
        }
    }

    void DespawnHelper()
    {
        bool yell = false;
        for (auto& helperGUID : m_lSummonedCreatureLastWave)
        {
            if (Creature* helper = m_creature->GetMap()->GetCreature(helperGUID))
            {
                if (!yell)
                {
                    helper->MonsterSay("We will warn the Sentinels about the Felstone, go now!");
                    yell = true;
                }

                helper->DespawnOrUnsummon(5000);
            }
        }
        m_lSummonedCreatureLastWave.clear();
    }

    void Reset() override 
    {
        eventInProggress = false;
        firstWave = false;
        secondWave = false;
        thirdWave = false;
        lastWave = false;
        m_lSummonedCreatureFirstWave.clear();
        m_lSummonedCreatureSecondWave.clear();
        DespawnHelper();
    }
};

CreatureAI* GetAI_npc_triggerQuest40377(Creature* pCreature)
{
    return new npc_triggerQuest40377AI(pCreature);
}

bool GOHello_go_felstone(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == GO_CORRUPTED_FELSTONE)
    {
        if (Creature* pCreature = pPlayer->FindNearestCreature(NPC_EVENT_TRIGGER, 30.0f))
        {
            if (npc_triggerQuest40377AI* pTriggerAI = dynamic_cast<npc_triggerQuest40377AI*>(pCreature->AI()))
            {
                bool eventInProggress = pTriggerAI->GetEventInProggress();

                if (!eventInProggress && pPlayer->GetQuestStatus(QUEST_BREAKING_THE_FELSTAR) == QUEST_STATUS_INCOMPLETE)
                {
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Inspect Felstone.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
                    pPlayer->SEND_GOSSIP_MENU(100304, pGo->GetGUID());
                }
            }
        }
    }
    return true;
}

bool GOSelect_go_felstone(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (Creature* pCreature = pPlayer->FindNearestCreature(NPC_EVENT_TRIGGER, 30.0f))
        {
            if (npc_triggerQuest40377AI* pTriggerAI = dynamic_cast<npc_triggerQuest40377AI*>(pCreature->AI()))
            {
                bool eventInProggress = pTriggerAI->GetEventInProggress();

                if (!eventInProggress && pGo->GetEntry() == GO_CORRUPTED_FELSTONE)
                {
                    pTriggerAI->StartEvent(pPlayer);
                }
            }
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

struct npc_dralox_felstarAI : public ScriptedAI
{
    npc_dralox_felstarAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() 
    {
        if (Creature* pCreature = m_creature->FindNearestCreature(NPC_EVENT_TRIGGER, 30.0f))
        {
            if (npc_triggerQuest40377AI* pTriggerAI = dynamic_cast<npc_triggerQuest40377AI*>(pCreature->AI()))
            {
                pTriggerAI->Reset();
            }
        }
    }
    void UpdateAI(const uint32 diff)
    {
        if (m_creature->GetHealthPercent() > 50 && m_creature->GetHealthPercent() < 75)
        {
            if (Creature* pCreature = m_creature->FindNearestCreature(NPC_EVENT_TRIGGER, 30.0f))
            {
                if (npc_triggerQuest40377AI* pTriggerAI = dynamic_cast<npc_triggerQuest40377AI*>(pCreature->AI()))
                {
                    bool eventInProggress = pTriggerAI->GetEventInProggress();
                    bool thirdWave = pTriggerAI->GetThirdWave();

                    if (eventInProggress && thirdWave)
                    {
                        pTriggerAI->StartLastWave(m_creature);
                    }
                }
            }
        }
        DoMeleeAttackIfReady();
    }
    void JustDied(Unit*) override
    {
        m_creature->MonsterSay("NO! Thousands of years of planning!");

        Reset();
    }
    void EnterCombat() {}
};

CreatureAI* GetAI_npc_dralox_felstar(Creature* _Creature) { return new npc_dralox_felstarAI(_Creature); }

bool QuestRewarded_npc_bolvar(Player* pPlayer, Creature* bolvar, Quest const* pQuest)
{
    if (!bolvar) return false;

    if (pQuest->GetQuestId() == 40379 && !pPlayer->FindNearestCreature(60667, 30.0F))
    {
        Creature* anduin = bolvar->FindNearestCreature(1747, 30.0F);        
        if (!anduin)
            return false;
        Creature* vereesa = bolvar->SummonCreature(60667, -8443.82F, 336.08F, 122.16F, 5.40F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 50 * IN_MILLISECONDS);
        if (!vereesa)
            return false;

        bolvar->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER);

        anduin->m_Events.AddLambdaEventAtOffset([anduin]() 
            {
            anduin->MonsterSay("Vereesa Windrunner, do your promise that from this day forward your people will join the Alliance and fight for it no matter the hardships it may bring?");
            anduin->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 2000);
        vereesa->m_Events.AddLambdaEventAtOffset([vereesa]() 
            {
            vereesa->MonsterSay("Arrogance and isolation doomed my people once before, we thought ourselves invincible, and that was our undoing. We will not repeat the mistakes of the past. From this day, the Quel'Dorei will stand as one with the Alliance.");
            vereesa->HandleEmote(EMOTE_ONESHOT_KNEEL);
            }, 15000);
        anduin->m_Events.AddLambdaEventAtOffset([anduin]() 
            {
            anduin->MonsterSay("Well spoken. Well-spoken. Then it is my honor to officially proclaim the Quel'dorei of Alah'thalas a full-fledged member of the Grand Alliance!");
            anduin->HandleEmote(EMOTE_ONESHOT_APPLAUD);
            }, 30000);
        vereesa->m_Events.AddLambdaEventAtOffset([vereesa]() 
            {
            vereesa->MonsterSay("The honor is mine, and on behalf of my people I thank you all.");
            vereesa->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 45000);
        bolvar->m_Events.AddLambdaEventAtOffset([bolvar]() 
            {
            bolvar->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER); 
            }, 50000);
    }
    return true;
}

bool QuestRewarded_npc_alunasha(Player* pPlayer, Creature* alunasha, Quest const* pQuest)
{
    if (!alunasha) return false;

    if (pQuest->GetQuestId() == 40384 && !pPlayer->FindNearestCreature(10, 50.0F))
    {
        Creature* controller = alunasha->SummonCreature(10, alunasha->GetPositionX(), alunasha->GetPositionY(), alunasha->GetPositionZ(), alunasha->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 44 * IN_MILLISECONDS);
        if (!controller)
            return false;
        Creature* vereesa = alunasha->SummonCreature(60667, 4272.49F, -2815.05F, 82.31F, 2.62F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 44 * IN_MILLISECONDS);
        if (!vereesa)
            return false;
        Creature* tyrande = alunasha->SummonCreature(60669, 4273.26F, -2807.21F, 82.31F, 3.48F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 44 * IN_MILLISECONDS);
        if (!tyrande)
            return false;
        Creature* citizen= alunasha->FindNearestCreature(60436, 50.0F);
        if (!citizen)
            return false;

        alunasha->m_Events.AddLambdaEventAtOffset([alunasha]()
            {
                alunasha->MonsterYell("Mother Moon, we pray to you! Give these wayward children the blessing of your light and show them the path to your love! Let this water become the foundation for this Moonwell. Let its power bring harmony to both body and mind of those who bask in its light.");
                alunasha->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 4000);

        alunasha->m_Events.AddLambdaEventAtOffset([alunasha]()
            {
                alunasha->CastSpell(alunasha, 13236, false);
            }, 5000);

        alunasha->m_Events.AddLambdaEventAtOffset([alunasha]()
            {
                alunasha->SummonGameObject(2010879, alunasha->GetPositionX()+6.05F, alunasha->GetPositionY()-0.31F, alunasha->GetPositionZ(), alunasha->GetOrientation(), 0.0f, 0.0f, 0.0f, 0.0f, 4, true);
                alunasha->SummonGameObject(1000233, alunasha->GetPositionX()+6.05F, alunasha->GetPositionY()-0.31F, alunasha->GetPositionZ(), alunasha->GetOrientation(), 0.0f, 0.0f, 0.0f, 0.0f, 8, true);
            }, 10000);

        alunasha->m_Events.AddLambdaEventAtOffset([alunasha]()
            {
                alunasha->SummonGameObject(2010880, alunasha->GetPositionX()+6.05F, alunasha->GetPositionY()-0.31F, alunasha->GetPositionZ(), alunasha->GetOrientation(), 0.0f, 0.0f, 0.0f, 0.0f, 30, true);
            }, 14000);

        alunasha->m_Events.AddLambdaEventAtOffset([alunasha]()
            {
                alunasha->CastSpell(alunasha, 5906, false);
            }, 18000);

        citizen->m_Events.AddLambdaEventAtOffset([citizen]()
            {
                citizen->MonsterSay("I feel...Renewed? Can the goddess do this?, Finally I can focus on casting better spells., This reminds me of the Sunwell.");
                citizen->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 25000);

        vereesa->m_Events.AddLambdaEventAtOffset([vereesa]()
            {
                vereesa->MonsterSay("I feel so light. My mind is free from having to focus on not losing myself. I wish to thank you for all you have done. Know that you will always be considered a close friend of Quel'Dorei, and while we may not know what awaits us, I hope that we can call on you if the need arises.");
                vereesa->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 30000);
    }
    return true;
}

bool QuestRewarded_npc_tyrande(Player* pPlayer, Creature* tyrande, Quest const* pQuest)
{
    if (!tyrande) return false;

    if (pQuest->GetQuestId() == 40383 && !pPlayer->FindNearestCreature(10, 50.0F))
    {
        Creature* controller = tyrande->SummonCreature(10, tyrande->GetPositionX(), tyrande->GetPositionY(), tyrande->GetPositionZ(), tyrande->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 160 * IN_MILLISECONDS);
        if (!controller)
            return false;
        Creature* vestia = tyrande->SummonCreature(60666, 9667.24F, 2527.82F, 1360.00F, 3.77F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 160 * IN_MILLISECONDS);
        if (!vestia)
            return false;
        Creature* vereesa = tyrande->SummonCreature(60667, 9671.61F, 2524.67F, 1360.00F, 3.15F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 160 * IN_MILLISECONDS);
        if (!vereesa)
            return false;

        vestia->m_Events.AddLambdaEventAtOffset([vestia]()
            {
                vestia->MonsterSay("High Priestess, the adventurer beside me, has proven a valuable ally and has worked tirelessly in order to assist us in purifying the Moonwell of Elder'thalas. In return, he only asks that we consider building a Moonwell in Alah'Thalas. I even brought a container filled with sacred water.");
                vestia->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 1000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande]()
            {
                tyrande->MonsterSay("I must stop you there Priestess. I thank you for your service on behalf of my people and the Goddess. But I have not forgotten what their people have done. Their reckless use of magic led not only to numerous catastrophes but almost to the destruction of the entire world. I have accepted them into the Alliance because they are not their ancestors, but that does not mean I will turn over the sacred waters of the Goddess to them.");
                tyrande->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 15000);

        vestia->m_Events.AddLambdaEventAtOffset([vestia]()
            {
                vestia->MonsterSay("High Priestess, please, the Quel'dorei have changed, they only seek.");
                vestia->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 30000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande]()
            {
                tyrande->MonsterSay("I have made my decision, Priestess. These waters will be used to establish a new Moonwell where it is needed.");
                tyrande->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 35000);

        vereesa->m_Events.AddLambdaEventAtOffset([vereesa]()
            {
                vereesa->MonsterSay("Pardon me, High Priestess.");
                vereesa->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 40000);

        vereesa->m_Events.AddLambdaEventAtOffset([vereesa]()
            {
                vereesa->MonsterSay("I come on behalf of my people. I can no longer let others do the talking for me.");
                vereesa->HandleEmote(EMOTE_ONESHOT_BOW);
            }, 45000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande]()
            {
                tyrande->MonsterSay("There is nothing to talk about, child.");
                tyrande->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 55000);

        vereesa->m_Events.AddLambdaEventAtOffset([vereesa]()
            {
                vereesa->MonsterSay("Ten thousand years ago, my ancestors did unspeakable things, but now they are dead. Our kingdom has perished, along with our old ways. The mistakes they made haunt us to this day. We need a font of magic, not to use it, but to help us heal. If it helps, then the Sisterhood can manage the well.");
                vereesa->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 60000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande]()
            {
                tyrande->MonsterSay("You would give us authority over something in your homeland? And what prevents you from betraying us and taking the well? I sympathize with your people's loss and condition, but the Moonwell is sacred to us.");
                tyrande->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 75000);

        vereesa->m_Events.AddLambdaEventAtOffset([vereesa]()
            {
                vereesa->MonsterSay("High Priestess, please! We are both parts of the Alliance, but more than that, we are kin. We have been arrogant in our ways, and we have paid for it dearly. We only seek one chance, a chance to prove that we can be better.");
                vereesa->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 90000);

        vereesa->m_Events.AddLambdaEventAtOffset([vereesa]()
            {
                vereesa->MonsterSay("My people are dying, there are so few of us left, and this curse is slowly devouring us. I need your help to secure the future for them, for, without it, we will slowly succumb to the curse and fade.");
                vereesa->HandleEmote(EMOTE_ONESHOT_KNEEL);
            }, 100000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande]()
            {
                tyrande->MonsterSay("Rise. I... believe you Vereesa Windrunner. Your words and intentions sound sincere. A small guard of Sentinels and members of the Sisterhood will protect the well and ensure it is treated properly.");
                tyrande->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 115000);

        vestia->m_Events.AddLambdaEventAtOffset([vestia]()
            {
                vestia->MonsterSay("Does that mean...?");
                vestia->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 125000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande]()
            {
                tyrande->MonsterSay("Yes Priestess. It means the next Moonwell is needed, in Alah'thalas. Perhaps in time, it will guide some of them back to Elune's light, but more importantly, it will give their people a second chance. You have done both of our people a great service. If Lady Vereesa Windrunner agrees, then I would like you to be present at the creation of the Moonwell. I shall send Priestess Alunasha to establish the well. She has shown sympathy to the plight of the Quel'dorei.");
                tyrande->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 130000);

        vereesa->m_Events.AddLambdaEventAtOffset([vereesa]()
            {
                vereesa->MonsterSay("I do not object, $N's aid has been fundamental to the survival of Alah'thalas. Thank you, High Priestess.");
                vereesa->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 145000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande]()
            {
                tyrande->MonsterSay("You may go now, Lady Windrunner. We shall meet again. Great. ");
                tyrande->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 155000);
    }
    return true;
}

bool GossipHello_npc_breanna_darrowmont(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestRewardStatus(40385) && !pPlayer->GetQuestRewardStatus(40386) && pPlayer->GetMapId() != 42)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "I'm ready to head to the Shalandis Isle.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    if (pPlayer->GetQuestRewardStatus(40386) &&  pPlayer->GetQuestStatus(40387) == QUEST_STATUS_COMPLETE && pPlayer->GetMapId() == 42)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "I'm ready to return to Theramore.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    }

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60670, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_breanna_darrowmont(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        static const WorldLocation m_shalandis(42, 7679.61f, -5631.98f, 0.4f, 5.3f);
        pPlayer->TeleportTo(m_shalandis);
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        static const WorldLocation m_theramore(1, -3854.16F, -4566.08F, 8.11f, 3.95f);
            pPlayer->TeleportTo(m_theramore);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool QuestAccept_npc_nasuna(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40386 && !pPlayer->FindNearestCreature(10, 50.0F)) // Scourge!
    {
        Creature* controller = pQuestGiver->SummonCreature(10, pQuestGiver->GetPositionX(), pQuestGiver->GetPositionY(), pQuestGiver->GetPositionZ(), pQuestGiver->GetOrientation(), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 600 * IN_MILLISECONDS);
        if (!controller)
            return false;

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->SummonCreature(60675, 7705.61F, -5679.09F, 3.26F, 1.83F, TEMPSUMMON_CORPSE_DESPAWN);
                pQuestGiver->SummonCreature(60675, 7707.94F, -5675.16F, 3.65F, 1.82F, TEMPSUMMON_CORPSE_DESPAWN);
                pQuestGiver->SummonCreature(60675, 7701.89F, -5677.43F, 3.16F, 1.91F, TEMPSUMMON_CORPSE_DESPAWN);
                pQuestGiver->SummonCreature(60675, 7700.34F, -5680.39F, 2.65F, 1.81F, TEMPSUMMON_CORPSE_DESPAWN);
                pQuestGiver->SummonCreature(60675, 7710.91F, -5677.55F, 3.78F, 1.88F, TEMPSUMMON_CORPSE_DESPAWN);
                if (Creature* commander = pQuestGiver->SummonCreature(60676, 7704.40F, -5673.89F, 3.62F, 1.89F, TEMPSUMMON_CORPSE_DESPAWN))
                {
                    commander->SetWalk(true);
                    commander->GetMotionMaster()->MovePoint(0, 7696.65F, -5651.08F, 3.559440F);
                }
                pQuestGiver->MonsterSay("Here they come, hold your ground!");
            }, 1000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->SummonCreature(60675, 7705.61F, -5679.09F, 3.26F, 1.83F, TEMPSUMMON_CORPSE_DESPAWN);
                pQuestGiver->SummonCreature(60675, 7707.94F, -5675.16F, 3.65F, 1.82F, TEMPSUMMON_CORPSE_DESPAWN);
                pQuestGiver->SummonCreature(60675, 7701.89F, -5677.43F, 3.16F, 1.91F, TEMPSUMMON_CORPSE_DESPAWN);
                pQuestGiver->SummonCreature(60675, 7700.34F, -5680.39F, 2.65F, 1.81F, TEMPSUMMON_CORPSE_DESPAWN);
                pQuestGiver->SummonCreature(60675, 7710.91F, -5677.55F, 3.78F, 1.88F, TEMPSUMMON_CORPSE_DESPAWN);
                pQuestGiver->SummonCreature(60676, 7704.40F, -5673.89F, 3.62F, 1.89F, TEMPSUMMON_CORPSE_DESPAWN);
                pQuestGiver->MonsterSay("Do not falter, for Quel'Thalas for the Alliance!");

            }, 60000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay("Endirina-dor Highborne!");
                if (Creature* lady_ripper = pQuestGiver->SummonCreature(60673, 7704.91F, -5676.25F, 3.51F, 1.89F, TEMPSUMMON_CORPSE_DESPAWN))
                {
                    lady_ripper->SetWalk(true);
                    lady_ripper->GetMotionMaster()->MovePoint(0, 7696.65F, -5651.08F, 3.559440F);
                }
            }, 140000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->SummonCreature(60675, 7705.61F, -5679.09F, 3.26F, 1.83F, TEMPSUMMON_CORPSE_DESPAWN);
                pQuestGiver->SummonCreature(60675, 7707.94F, -5675.16F, 3.65F, 1.82F, TEMPSUMMON_CORPSE_DESPAWN);
                pQuestGiver->SummonCreature(60675, 7701.89F, -5677.43F, 3.16F, 1.91F, TEMPSUMMON_CORPSE_DESPAWN);
                pQuestGiver->SummonCreature(60675, 7700.34F, -5680.39F, 2.65F, 1.81F, TEMPSUMMON_CORPSE_DESPAWN);
                pQuestGiver->SummonCreature(60675, 7710.91F, -5677.55F, 3.78F, 1.88F, TEMPSUMMON_CORPSE_DESPAWN);
                pQuestGiver->SummonCreature(60676, 7704.40F, -5673.89F, 3.62F, 1.89F, TEMPSUMMON_CORPSE_DESPAWN);

            }, 180000);

        pQuestGiver->m_Events.AddLambdaEventAtOffset([pQuestGiver]()
            {
                pQuestGiver->MonsterSay("Begone, spawn of darkness!");
                if (Creature* frostshiv = pQuestGiver->SummonCreature(60674, 7704.91F, -5676.25F, 3.51F, 1.89F, TEMPSUMMON_TIMED_DESPAWN, 3 * MINUTE * IN_MILLISECONDS))
                {
                    frostshiv->SetWalk(true);
                    frostshiv->GetMotionMaster()->MovePoint(0, 7696.65F, -5651.08F, 3.559440F);
                }
            }, 200000);

    }

    return false;
}

struct npc_lady_ripperAI : public ScriptedAI
{
    npc_lady_ripperAI(Creature* c) : ScriptedAI(c) { Reset(); }

    bool transformed;
    bool fightBegun;

    void Reset()
    {
        transformed = false;
        fightBegun = false;
    }

    void UpdateAI(const uint32 diff)
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!fightBegun)
        {
            fightBegun = true;
        }

        DoMeleeAttackIfReady();
    }
    void EnterCombat() {}
    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_npc_lady_ripper(Creature* _Creature) { return new npc_lady_ripperAI(_Creature); }

struct npc_frostshivAI : public ScriptedAI
{
    npc_frostshivAI(Creature* c) : ScriptedAI(c) { Reset(); }

    bool transformed;
    bool fightBegun;

    void Reset()
    {
        transformed = false;
        fightBegun = false;
    }

    void UpdateAI(const uint32 diff)
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!fightBegun)
        {
            fightBegun = true;
            m_creature->MonsterSay("Surrender to the might of the Scourge, Lord Dar'khan will see to your death!");
        }

        DoMeleeAttackIfReady();
    }
    void JustDied(Unit*) override
    {
        Creature* nasuna = m_creature->FindNearestCreature(60677, 50.0F);
        if (nasuna)
            nasuna->MonsterSay("Victory is ours! The enemy's attack is slowing down. Set up the defenses and take position! The next time they come, we will be ready!");
    }
    void EnterCombat() {}
    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_npc_frostshiv(Creature* _Creature) { return new npc_frostshivAI(_Creature); }


struct npc_distance_trigger_AI : public ScriptedAI
{
    explicit npc_distance_trigger_AI(Creature* pCreature) : ScriptedAI(pCreature) { npc_distance_trigger_AI::Reset(); }

    uint16 m_uiCheckPulse{};

    static constexpr uint32 PULSE_TIMER{ 500 };
    static constexpr uint32 SPELL_STUN{ 27880 };
    static constexpr float PERMITTED_AREA{ 100.F };

    void Reset() override
    {
        m_uiCheckPulse = PULSE_TIMER;

        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_SPAWNING | UNIT_FLAG_IMMUNE_TO_PLAYER | UNIT_FLAG_IMMUNE_TO_NPC);
        m_creature->SetVisibility(VISIBILITY_OFF);
    }

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_uiCheckPulse < uiDiff)
        {
            Map::PlayerList const& list{ m_creature->GetMap()->GetPlayers() };
            for (const auto& player : list)
            {
                if (Player * pPlayer{ player.getSource() })
                {
                    if (!pPlayer->IsGameMaster() && !pPlayer->IsInRange3d(m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ(), 0.0f, PERMITTED_AREA))
                    {
                        pPlayer->AddAura(SPELL_STUN);

                        DoAfterTime(pPlayer, (3 * IN_MILLISECONDS), [player = pPlayer]()
                            {
                                if (player)
                                    static_cast<Unit*>(player)->NearTeleportTo(7705.45F, -5668.93F, 3.6f, 4.6f);
                            });

                    }
                }
            }

            m_uiCheckPulse = PULSE_TIMER;
        }
        else
        {
            m_uiCheckPulse -= uiDiff;
        }
    }
};

CreatureAI* GetAI_npc_distance_trigger(Creature* pCreature) { return new npc_distance_trigger_AI(pCreature); }

void AddSC_alahthalas()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "npc_distance_trigger";
    newscript->GetAI = &GetAI_npc_distance_trigger;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_frostshiv";
    newscript->GetAI = &GetAI_npc_frostshiv;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_lady_ripper";
    newscript->GetAI = &GetAI_npc_lady_ripper;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_nasuna";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_nasuna;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_breanna_darrowmont";
    newscript->pGossipHello = &GossipHello_npc_breanna_darrowmont;
    newscript->pGossipSelect = &GossipSelect_npc_breanna_darrowmont;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_tyrande";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_tyrande;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_alunasha";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_alunasha;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_bolvar";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_bolvar;
    newscript->RegisterSelf();
	
	newscript = new Script;
    newscript->Name = "go_sacred_water";
    newscript->pGOHello = &GOHello_go_sacred_water;
    newscript->pGOGossipSelect = &GOSelect_go_sacred_water;
    newscript->RegisterSelf();	
	
    newscript = new Script;
    newscript->Name = "npc_dralox_felstar";
    newscript->GetAI = &GetAI_npc_dralox_felstar;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_felstone";
    newscript->pGOHello = &GOHello_go_felstone;
    newscript->pGOGossipSelect = &GOSelect_go_felstone;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_triggerQuest40377";
    newscript->GetAI = &GetAI_npc_triggerQuest40377;
    newscript->RegisterSelf();

}
