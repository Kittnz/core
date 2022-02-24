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

            DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                gob->SummonCreature(60666, -4496.34F, 1281.63F, 127.91F, 4.25F, TEMPSUMMON_TIMED_DESPAWN, 180 * IN_MILLISECONDS);
                });
            DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                if (Creature* vestia = player->FindNearestCreature(60666, 30.0F))
                {
                    vestia->SetWalk(true);
                    vestia->GetMotionMaster()->MovePoint(0, -4505.66F, 1265.37F, 127.57F);
                }
                });
            DoAfterTime(pPlayer, 13 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                if (Creature* vestia = player->FindNearestCreature(60666, 30.0F))
                {
                    vestia->CastSpell(vestia, 23017, false); // Arcane Channeling
                    vestia->MonsterSayToPlayer("This is it, keep me safe!", player);
                }
                });
            DoAfterTime(pPlayer, 15 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                gob->SummonCreature(60430, -4496.34F, 1281.63F, 127.91F, 4.25F, TEMPSUMMON_TIMED_DESPAWN, 5 * MINUTE * IN_MILLISECONDS);
                });
            DoAfterTime(pPlayer, 30 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                gob->SummonCreature(60430, -4496.34F, 1281.63F, 127.91F, 4.25F, TEMPSUMMON_TIMED_DESPAWN, 5 * MINUTE * IN_MILLISECONDS);
                });
            DoAfterTime(pPlayer, 31 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                if (Creature* vestia = player->FindNearestCreature(60666, 30.0F))
                {
                    vestia->CastSpell(vestia, 23017, false); // Arcane Channeling
                    vestia->MonsterSayToPlayer("Mother moon, I call upon you to restore this sacred water, our negligence caused this defilement to happen and we humbly beg your giveness.", player);
                }
                });
            DoAfterTime(pPlayer, 45 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                gob->SummonCreature(60430, -4496.34F, 1281.63F, 127.91F, 4.25F, TEMPSUMMON_TIMED_DESPAWN, 5 * MINUTE * IN_MILLISECONDS);
                });
            DoAfterTime(pPlayer, 46 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                if (Creature* vestia = player->FindNearestCreature(60666, 30.0F))
                {
                    vestia->CastSpell(vestia, 23017, false); // Arcane Channeling
                    vestia->MonsterSayToPlayer("Bless us with the light of the moon and restore these waters to their former glory so that your love can be shared even to our wayward kin!", player);
                }
                });
            DoAfterTime(pPlayer, 60 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                gob->SummonCreature(60431, -4496.34F, 1281.63F, 127.91F, 4.25F, TEMPSUMMON_TIMED_DESPAWN, 5 * MINUTE * IN_MILLISECONDS);
                if (Creature* tuwhak = player->FindNearestCreature(60431, 30.0F))
                {
                    tuwhak->MonsterYell("Tu'whak smack tiny people! Leave Tu'whak toilet alone!");
                }
                });
            DoAfterTime(pPlayer, 100 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                if (Creature* vestia = player->FindNearestCreature(60666, 30.0F))
                {
                    vestia->CastSpell(vestia, 1449, false);
                }
                });
            DoAfterTime(pPlayer, 103 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                if (Creature* vestia = player->FindNearestCreature(60666, 30.0F))
                {
                    vestia->HandleEmote(EMOTE_ONESHOT_KNEEL);
                    vestia->MonsterSayToPlayer("It is done. Please travel to Darnassus and speak to the High Priestess. I have something I must finish here, then I will catch up to you.", player);
                    if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60318))
                        player->KilledMonster(cInfo, ObjectGuid());
                }
                });
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GossipHello_npc_felstone(Player* pPlayer, Creature* pCreature)
{
    GameObject* menu_holder = pPlayer->FindNearestGameObject(2010698, 30.0F);
    GameObject* event_running = pPlayer->FindNearestGameObject(2010699, 80.0F);
    if (pPlayer->GetQuestStatus(40377) == QUEST_STATUS_INCOMPLETE && !menu_holder && !event_running)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Inspect Felstone", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }
    pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_felstone(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        pPlayer->SummonGameObject(2010698, pPlayer->GetPositionX(), pPlayer->GetPositionY(), pPlayer->GetPositionZ(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 180, true);
    {
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->SummonCreature(60426, 3549.72F, -1560.13F, 169.80F, 3.85F, TEMPSUMMON_TIMED_DESPAWN, 5 * MINUTE * IN_MILLISECONDS);
            npc->SummonCreature(60427, 3558.34F, -1567.86F, 172.00F, 3.37F, TEMPSUMMON_TIMED_DESPAWN, 5 * MINUTE * IN_MILLISECONDS);
            });

        DoAfterTime(pPlayer, 41 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->SummonCreature(60426, 3558.34F, -1567.86F, 172.00F, 3.37F, TEMPSUMMON_TIMED_DESPAWN, 5 * MINUTE * IN_MILLISECONDS);
            npc->SummonCreature(60427, 3549.72F, -1560.13F, 169.80F, 3.85F, TEMPSUMMON_TIMED_DESPAWN, 5 * MINUTE * IN_MILLISECONDS);
            });

        DoAfterTime(pPlayer, 81 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->SummonCreature(60425, 3553.80F, -1561.09F, 170.19F, 4.09F, TEMPSUMMON_TIMED_DESPAWN, 5 * MINUTE * IN_MILLISECONDS);
            if (Creature* dralox_felstar = player->FindNearestCreature(60425, 30.0F))
                dralox_felstar->MonsterSayToPlayer("Get away from that Felstone! It is crucial to my plans!", player);
            });
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

struct npc_dralox_felstarAI : public ScriptedAI
{
    npc_dralox_felstarAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() { }
    void UpdateAI(const uint32 diff)
    {
        GameObject* event_running = m_creature->FindNearestGameObject(2010699, 30.0F);
        if (m_creature->GetHealthPercent() > 70 && m_creature->GetHealthPercent() < 75)
        {
            if (!event_running)
            {
                m_creature->SummonGameObject(2010699, m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 180, true);
                Creature* mob_one = m_creature->SummonCreature(60429, 3515.17F, -1600.66F, 169.37F, 2.76F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 120 * IN_MILLISECONDS);
                Creature* mob_two = m_creature->SummonCreature(60429, 3533.07F, -1603.13F, 172.10F, 1.40F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 120 * IN_MILLISECONDS);
                Creature* mob_three = m_creature->SummonCreature(60429, 3526.66F, -1601.96F, 170.83F, 1.73F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 120 * IN_MILLISECONDS);

                mob_one->MonsterSay("You do not stand alone friend! Let's take this creature down!");
            }
        }
    }
    void JustDied(Unit*) override
    {
        m_creature->MonsterSay("NO! Thousands of years of planning!");
        Creature* mob_one = m_creature->FindNearestCreature(60429, 20.0F);
        Creature* mob_two = m_creature->FindNearestCreature(60429, 20.0F);
        Creature* mob_three = m_creature->FindNearestCreature(60429, 20.0F);

        if (mob_one && mob_two && mob_three)
        {
            mob_one->MonsterSay("We will warn the Sentinels about the Felstone, go now!");
            mob_one->ForcedDespawn();
            mob_two->ForcedDespawn();
            mob_three->ForcedDespawn();
        }
    }
    void EnterCombat() {}
    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_npc_dralox_felstar(Creature* _Creature) { return new npc_dralox_felstarAI(_Creature); }

bool QuestRewarded_npc_bolvar(Player* pPlayer, Creature* bolvar, Quest const* pQuest)
{
    if (!bolvar) return false;

    if (pQuest->GetQuestId() == 40379 && !pPlayer->FindNearestCreature(60667, 30.0F))
    {
        Creature* anduin = bolvar->FindNearestCreature(1747, 30.0F);        
        if (!anduin) return false;
        Creature* vereesa = bolvar->SummonCreature(60667, -8443.82F, 336.08F, 122.16F, 5.40F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 50 * IN_MILLISECONDS);
        bolvar->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER);

        bolvar->m_Events.AddLambdaEventAtOffset([bolvar, anduin]() 
            {
            anduin->MonsterSay("Vereesa Windrunner, do your promise that from this day forward your people will join the Alliance and fight for it no matter the hardships it may bring?");
            anduin->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 2000);
        bolvar->m_Events.AddLambdaEventAtOffset([bolvar, vereesa]() 
            {
            vereesa->MonsterSay("Arrogance and isolation dommed my people once before, we thought ourselves invincible, and that was our undoing. We will not repeat the mistakes of the past. From this day, the Quel'Dorei will stand as one with the Alliance.");
            vereesa->HandleEmote(EMOTE_ONESHOT_KNEEL);
            }, 15000);
        bolvar->m_Events.AddLambdaEventAtOffset([bolvar, anduin]() 
            {
            anduin->MonsterSay("Well spoken. Well-spoken. Then it is my honor to officially proclaim the Quel'dorei of Alah'thalas a full-fledged member of the Grand Alliance!");
            anduin->HandleEmote(EMOTE_ONESHOT_APPLAUD);
            }, 30000);
        bolvar->m_Events.AddLambdaEventAtOffset([bolvar, vereesa]() 
            {
            vereesa->MonsterSay("The honor is mine, and on behalf of my people I thank you all.");
            vereesa->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 45000);
        bolvar->m_Events.AddLambdaEventAtOffset([bolvar]() 
            { bolvar->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER); 
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
        Creature* vereesa = alunasha->SummonCreature(60667, 4272.49F, -2815.05F, 82.31F, 2.62F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 44 * IN_MILLISECONDS);
        Creature* tyrande = alunasha->SummonCreature(60669, 4273.26F, -2807.21F, 82.31F, 3.48F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 44 * IN_MILLISECONDS);
        Creature* citizen= alunasha->FindNearestCreature(60436, 50.0F);

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

        alunasha->m_Events.AddLambdaEventAtOffset([alunasha, citizen]()
            {
                citizen->MonsterSay("I feel...Renewed? Can the goddess do this?, Finally I can focus on casting better spells., This reminds me of the Sunwell.");
                citizen->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 25000);

        alunasha->m_Events.AddLambdaEventAtOffset([alunasha, vereesa]()
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
        Creature* vestia = tyrande->SummonCreature(60666, 9667.24F, 2527.82F, 1360.00F, 3.77F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 160 * IN_MILLISECONDS);
        Creature* vereesa = tyrande->SummonCreature(60667, 9671.61F, 2524.67F, 1360.00F, 3.15F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 160 * IN_MILLISECONDS);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande, vestia]()
            {
                vestia->MonsterSay("High Priestess, the adventurer beside me, has proven a valuable ally and has worked tirelessly in order to assist us in purifying the Moonwell of Elder'thalas. In return, he only asks that we consider building a Moonwell in Alah'Thalas. I even brought a container filled with sacred water.");
                vestia->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 1000);

        //tyrande->m_Events.AddLambdaEventAtOffset([tyrande]()
        //    {
        //        tyrande->SummonGameObject(2010879, alunasha->GetPositionX(), alunasha->GetPositionY(), alunasha->GetPositionZ(), alunasha->GetOrientation(), 0.0f, 0.0f, 0.0f, 0.0f, 159, true);
        //    }, 8000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande]()
            {
                tyrande->MonsterSay("I must stop you there Priestess. I thank you for your service on behalf of my people and the Goddess. But I have not forgotten what their people have done. Their reckless use of magic led not only to numerous catastrophes but almost to the destruction of the entire world. I have accepted them into the Alliance because they are not their ancestors, but that does not mean I will turn over the sacred waters of the Goddess to them.");
                tyrande->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 15000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande, vestia]()
            {
                vestia->MonsterSay("High Priestess, please, the Quel'dorei have changed, they only seek.");
                vestia->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 30000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande]()
            {
                tyrande->MonsterSay("I have made my decision, Priestess. These waters will be used to establish a new Moonwell where it is needed.");
                tyrande->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 35000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande, vereesa]()
            {
                vereesa->MonsterSay("Pardon me, High Priestess.");
                vereesa->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 40000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande, vereesa]()
            {
                vereesa->MonsterSay("I come on behalf of my people. I can no longer let others do the talking for me.");
                vereesa->HandleEmote(EMOTE_ONESHOT_BOW);
            }, 45000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande]()
            {
                tyrande->MonsterSay("There is nothing to talk about, child.");
                tyrande->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 55000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande, vereesa]()
            {
                vereesa->MonsterSay("Ten thousand years ago, my ancestors did unspeakable things, but now they are dead. Our kingdom has perished, along with our old ways. The mistakes they made haunt us to this day. We need a font of magic, not to use it, but to help us heal. If it helps, then the Sisterhood can manage the well.");
                vereesa->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 60000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande]()
            {
                tyrande->MonsterSay("You would give us authority over something in your homeland? And what prevents you from betraying us and taking the well? I sympathize with your people's loss and condition, but the Moonwell is sacred to us.");
                tyrande->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 75000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande, vereesa]()
            {
                vereesa->MonsterSay("High Priestess, please! We are both parts of the Alliance, but more than that, we are kin. We have been arrogant in our ways, and we have paid for it dearly. We only seek one chance, a chance to prove that we can be better.");
                vereesa->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 90000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande, vereesa]()
            {
                vereesa->MonsterSay("My people are dying, there are so few of us left, and this curse is slowly devouring us. I need your help to secure the future for them, for, without it, we will slowly succumb to the curse and fade.");
                vereesa->HandleEmote(EMOTE_ONESHOT_KNEEL);
            }, 100000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande]()
            {
                tyrande->MonsterSay("Rise. I... believe you Vereesa Windrunner. Your words and intentions sound sincere. A small guard of Sentinels and members of the Sisterhood will protect the well and ensure it is treated properly.");
                tyrande->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 115000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande, vestia]()
            {
                vestia->MonsterSay("Does that mean...?");
                vestia->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 125000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande]()
            {
                tyrande->MonsterSay("Yes Priestess. It means the next Moonwell is needed, in Alah'thalas. Perhaps in time, it will guide some of them back to Elune's light, but more importantly, it will give their people a second chance. <name>, you have done both of our people a great service. If Lady Vereesa Windrunner agrees, then I would like you to be present at the creation of the Moonwell. I shall send Priestess Alunasha to establish the well. She has shown sympathy to the plight of the Quel'dorei.");
                tyrande->HandleEmote(EMOTE_ONESHOT_TALK);
            }, 130000);

        tyrande->m_Events.AddLambdaEventAtOffset([tyrande, vereesa]()
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

void AddSC_alahthalas()
{
    Script* newscript;

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
    newscript->Name = "npc_felstone";
    newscript->pGossipHello = &GossipHello_npc_felstone;
    newscript->pGossipSelect = &GossipSelect_npc_felstone;
    newscript->RegisterSelf();

}
