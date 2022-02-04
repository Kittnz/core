#include "scriptPCH.h"
#include "Utilities/EventProcessor.h"

template <typename Functor>
void DoAfterTime(Player* player, uint32 p_time, Functor&& function)
{
    player->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), player->m_Events.CalculateTime(p_time));
}

template <typename Functor>
void DoAfterTime(Creature* creature, uint32 p_time, Functor&& function)
{
    creature->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), creature->m_Events.CalculateTime(p_time));
}

void insomniDialogue(Player* pPlayer, Creature* pQuestGiver);

class DemorphAfterTime : public BasicEvent
{
public:
    explicit DemorphAfterTime(uint64 player_guid) : BasicEvent(), player_guid(player_guid) {}

    bool Execute(uint64 e_time, uint32 p_time) override
    {
        Player* player = ObjectAccessor::FindPlayer(player_guid);
        if (player)
            player->DeMorph();
        return false;
    }

private:
    uint64 player_guid;
};

class DismountAfterTime : public BasicEvent
{
public:
    explicit DismountAfterTime(uint64 player_guid) : BasicEvent(), player_guid(player_guid) {}

    bool Execute(uint64 e_time, uint32 p_time) override
    {
        Player* player = ObjectAccessor::FindPlayer(player_guid);
        if (player)
            player->Unmount(false);
        return false;
    }

private:
    uint64 player_guid;
};

bool GOHello_runed_thalassian_tablet(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(80290) == QUEST_STATUS_INCOMPLETE && !pPlayer->FindNearestCreature(91808, 20.0F)) // The Lost Tablets
        pGo->SummonCreature(91808, pPlayer->GetPositionX() + 2.0F, pPlayer->GetPositionY() + 2.0F, pPlayer->GetPositionZ() + 1.0F, 0.0F, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 15 * IN_MILLISECONDS);
    return true;
}

struct highborne_wraithAI : public ScriptedAI
{
    highborne_wraithAI(Creature* c) : ScriptedAI(c) { Reset(); }
    void Reset() {}
    void UpdateAI(const uint32 diff) {}
    void JustRespawned() { Reset(); }
    void Aggro(Unit* who)
    {
        m_creature->MonsterYell("Leave this place! Leave! It took us, it will take you!");
    }
};

CreatureAI* GetAI_highborne_wraith(Creature* _Creature) { return new highborne_wraithAI(_Creature); }

bool GOHello_skeleton_thalo(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(80291) == QUEST_STATUS_INCOMPLETE && !pPlayer->FindNearestCreature(70891, 20.0F)) // The Shadow Well
    {
        pGo->SummonCreature(70891, pPlayer->GetPositionX() + 2.0F, pPlayer->GetPositionY() + 2.0F, pPlayer->GetPositionZ() + 1.0F, 0.0F, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 15 * IN_MILLISECONDS);
        ChatHandler(pPlayer).SendSysMessage("|cffF58CBABlack Blood of N'zoth whispers: N'zoth sees you, the black water shall herald an age of reckoning for this world.|r");
    }
    return true;
}

CreatureAI* GetAI_skeleton_thalo(Creature* _Creature) { return new highborne_wraithAI(_Creature); }

bool GossipHello_analyzor_53(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40044) == QUEST_STATUS_INCOMPLETE) // The Analyzation Chip
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Attempt to pull out the Analyzation Chip.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    pPlayer->SEND_GOSSIP_MENU(91775, pCreature->GetGUID());
    return true;
}

bool GossipSelect_analyzor_53(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSayToPlayer("Foreign interference detected! Dispatch threat!", pPlayer);
        pCreature->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
        pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
        pCreature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_the_cow_king(Player* pPlayer, Creature* pCreature)
{
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "King Moo, I wish to challenge you.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    pPlayer->SEND_GOSSIP_MENU(91799, pCreature->GetGUID());
    return true;
}

bool GossipSelect_the_cow_king(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        DoAfterTime(pPlayer, 3 * IN_MILLISECONDS, [player = pPlayer, creature = pCreature]() {
            creature->MonsterSayToPlayer("Very well, young one...", player);
            creature->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
            creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            creature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
            });
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

enum cow_king_spells
{
    SPELL_FIREBALL = 20678,
    SPELL_SHADOWBOLT_VOLLEY = 25586,
    SPELL_THUNDERCLAP = 23931,
    SPELL_FROSTBOLT = 28479,
    SPELL_CHARGE = 22911,
    SPELL_WARSTOMP = 16727,
};

struct the_cow_kingAI : public ScriptedAI
{
public:
    the_cow_kingAI(Creature* pCreature) : ScriptedAI(pCreature) { Reset(); }

    void Reset() override
    {
        m_uiCleaveTimer = 10000;
        m_uiMortalStrikeTimer = 15000;
        m_uiUppercutTimer = 5000;
        m_uiChargeTimer = 20000;
        m_uiWarstompTimer = 0;
    }

    void SpellHitTarget(Unit* /*pTarget*/, const SpellEntry* pSpell) override
    {
        if (pSpell->Id == SPELL_CHARGE)
            m_uiWarstompTimer = 500;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (m_uiCleaveTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_FIREBALL) == CAST_OK)
                m_uiCleaveTimer = 10000;
        }
        else
            m_uiCleaveTimer -= uiDiff;

        if (m_uiMortalStrikeTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_SHADOWBOLT_VOLLEY) == CAST_OK)
                m_uiMortalStrikeTimer = 15000;
        }
        else
            m_uiMortalStrikeTimer -= uiDiff;

        if (m_uiUppercutTimer <= uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_FROSTBOLT) == CAST_OK)
                m_uiUppercutTimer = 20000;
        }
        else
            m_uiUppercutTimer -= uiDiff;

        if (m_uiChargeTimer <= uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 1))
            {
                if (DoCastSpellIfCan(pTarget, SPELL_CHARGE) == CAST_OK)
                    m_uiChargeTimer = urand(15000, 25000);
            }
        }
        else
            m_uiChargeTimer -= uiDiff;

        if (m_uiWarstompTimer)
        {
            if (m_uiWarstompTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_WARSTOMP) == CAST_OK)
                    m_uiWarstompTimer = 0;
            }
            else
                m_uiWarstompTimer -= uiDiff;
        }

        DoMeleeAttackIfReady();
        EnterEvadeIfOutOfCombatArea(uiDiff);
    }

private:
    uint32 m_uiCleaveTimer;
    uint32 m_uiMortalStrikeTimer;
    uint32 m_uiUppercutTimer;
    uint32 m_uiChargeTimer;
    uint32 m_uiWarstompTimer;
};

CreatureAI* GetAI_the_cow_king(Creature* pCreature) { return new the_cow_kingAI(pCreature); }

bool GossipHello_npc_vereesa_windrunner(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40049) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Windrunner? That is a famous name. I'd like to learn more about you.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    if (pPlayer->GetQuestStatus(40069) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Are you happy with this?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    }

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(80877, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_vereesa_windrunner(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);

        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            npc->MonsterSayToPlayer("Ah my family name. I always lived in the shadows of my sisters. Alleria sacrificed herself to stop the Orcish Horde, Sylvanas she... Became the Ranger-General of Silvermoon. I have always been proud of my sisters but I never managed to reach their level, I guess I was lacking the conviction they had, but that has changed. Seeing what happened to my people.\t", player);
            });
        DoAfterTime(pPlayer, 10 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            npc->MonsterSayToPlayer("How broken they are, how much they suffer and struggle. I couldn't idle in Dalaran anymore, I reached out to the surviving Elven lodges and acquired the support from several Elven citizen and magi of Dalaran. I searched the Dalarani records and found records pertaining to this ancient outpost.\t", player);
            });

        if (pPlayer->GetRace() == RACE_HIGH_ELF)
        {
            DoAfterTime(pPlayer, 17 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                npc->MonsterSayToPlayer("Thus I led an expedition to reclaim the outpost and restore it. It isn't much yet, but I hope it will serve as the foundation to rebuild our people's future. I only wish Prince Kael'thas had seen these records. Perhaps if he knew of this place his fate would be different.\t", player);
                });
            DoAfterTime(pPlayer, 25 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                npc->MonsterSayToPlayer("Still, now is not the time to mourn. It is the time to forge ahead and rebuild what we can. As you know, we are still so few. I am truly glad that you managed to survive, you are an inspiration to us all.", player);

                if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60314))
                    player->KilledMonster(cInfo, ObjectGuid());
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                });
        }
        else
        {
            DoAfterTime(pPlayer, 17 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                npc->MonsterSayToPlayer("Thus I led an expedition to reclaim the outpost and restore it. It isn't much yet, but I hope it will serve as the foundation to rebuild my people's future. I only wish Prince Kael'thas had seen these records. Perhaps if he knew of this place his fate would be different.\t", player);
                });
            DoAfterTime(pPlayer, 25 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                npc->MonsterSayToPlayer("Still, now is not the time to mourn. It is the time to forge ahead and rebuild what we can. There's so few left of us that every life we save is a miracle. Thus your assistance here is very welcome and I salute you.", player);

                if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60314))
                    player->KilledMonster(cInfo, ObjectGuid());
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                });
        }
        pPlayer->CLOSE_GOSSIP_MENU();
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "What happens now?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(60301, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->SEND_GOSSIP_MENU(60312, pCreature->GetGUID());
    }
    return true;
}

bool GossipHello_npc_felstone(Player* pPlayer, Creature* pCreature)
{
    GameObject* menu_holder = pPlayer->FindNearestGameObject(2010698, 30.0F);
    GameObject* event_running = pPlayer->FindNearestGameObject(2010699, 80.0F);
    if (pPlayer->GetQuestStatus(40050) == QUEST_STATUS_INCOMPLETE && !menu_holder && !event_running)
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

bool GossipHello_npc_bessy(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestRewardStatus(40056))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Teleport me to the Cow Level", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(91798, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_bessy(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        static const WorldLocation m_CowLevel(801, 16649.712F, 16817.148F, 67.328f, 6.27F);
        pPlayer->TeleportTo(m_CowLevel);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_vestia_moonspear(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40060) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(60156, 1, false))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Ashylah Starcaller has sent me with this missive.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(7878, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_vestia_moonspear(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "That's terrible! What can I do to help?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(60313, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I see, It appears that I have no choice. I will help.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        pPlayer->SEND_GOSSIP_MENU(60314, pCreature->GetGUID());
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->SEND_GOSSIP_MENU(60315, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60317))
            pPlayer->KilledMonster(cInfo, ObjectGuid());

        if (pPlayer->HasItemCount(60156, 1, false))
        {
            pPlayer->DestroyItemCount(60156, 1, true);
            pPlayer->SaveInventoryAndGoldToDB();
        }
    }
    return true;
}

bool GOHello_go_sacred_water(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2010815)
    {
        if (pPlayer->GetQuestStatus(40060) == QUEST_STATUS_INCOMPLETE)
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
            DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                gob->SummonCreature(7878, -4496.34F, 1281.63F, 127.91F, 4.25F, TEMPSUMMON_TIMED_DESPAWN, 180 * IN_MILLISECONDS);
                gob->SetFlag(GAMEOBJECT_FLAGS, GO_FLAG_NO_INTERACT);
                });
            DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                if (Creature* vestia = player->FindNearestCreature(7878, 30.0F))
                {
                    vestia->SetWalk(true);
                    vestia->GetMotionMaster()->MovePoint(0, -4505.66F, 1265.37F, 127.57F);
                    vestia->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                }
                });
            DoAfterTime(pPlayer, 13 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                if (Creature* vestia = player->FindNearestCreature(7878, 30.0F))
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
                if (Creature* vestia = player->FindNearestCreature(7878, 30.0F))
                {
                    vestia->CastSpell(vestia, 23017, false); // Arcane Channeling
                    vestia->MonsterSayToPlayer("Mother moon, I call upon you to restore this sacred water, our negligence caused this defilement to happen and we humbly beg your giveness.", player);
                }
                });
            DoAfterTime(pPlayer, 45 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                gob->SummonCreature(60430, -4496.34F, 1281.63F, 127.91F, 4.25F, TEMPSUMMON_TIMED_DESPAWN, 5 * MINUTE * IN_MILLISECONDS);
                });
            DoAfterTime(pPlayer, 46 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                if (Creature* vestia = player->FindNearestCreature(7878, 30.0F))
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
                if (Creature* vestia = player->FindNearestCreature(7878, 30.0F))
                {
                    vestia->CastSpell(vestia, 1449, false);
                }
                });
            DoAfterTime(pPlayer, 103 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                if (Creature* vestia = player->FindNearestCreature(7878, 30.0F))
                {
                    vestia->HandleEmote(EMOTE_ONESHOT_KNEEL);
                    vestia->MonsterSayToPlayer("It is done. Please travel to Darnassus and speak to the High Priestess. I have something I must finish here, then I will catch up to you.", player);
                    vestia->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                    if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60318))
                        player->KilledMonster(cInfo, ObjectGuid());
                }
                });
            DoAfterTime(pPlayer, 180 * IN_MILLISECONDS, [player = pPlayer, gob = pGo]() {
                gob->RemoveFlag(GAMEOBJECT_FLAGS, GO_FLAG_NO_INTERACT);
                });
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool QuestAccept_npc_wendo_wobblefizz(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40068) //Wobblefree Fizz-gear
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);

        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_STATE_WORK);
            });
        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer("Now, I just put this here, and then...", player);
            });
        DoAfterTime(pPlayer, 9 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer("That's done it, I knew the Turbo-Charged Wobblefree Fizz-disk would come in handy.", player);
            });
        DoAfterTime(pPlayer, 13 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->HandleEmote(EMOTE_STATE_NONE);
            if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60319))
                player->KilledMonster(cInfo, ObjectGuid());
            });
    }
    return false;
}

bool GOHello_go_grain_sacks(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(40099) == QUEST_STATUS_INCOMPLETE && pPlayer->GetQuestStatusData(40099)->m_creatureOrGOcount[2] != 5)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Poison grain.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    pPlayer->SEND_GOSSIP_MENU(2010824, pGo->GetGUID());
    return true;
}

bool GOSelect_go_grain_sacks(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60323))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
		pGo->Deactivate(150);
        // Purple smoke effect: 
		pPlayer->SummonGameObject(2000560, pGo->GetPositionX(), pGo->GetPositionY(), pGo->GetPositionZ(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 150, true);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GossipHello_npc_torble_and_kex(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40132) == QUEST_STATUS_INCOMPLETE || pPlayer->GetQuestStatus(40133) == QUEST_STATUS_INCOMPLETE)
    {
        if (pCreature->GetEntry() == 60441 || pCreature->GetEntry() == 60443)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Let's do it!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Not right now, give me a moment.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        }
    }

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(4654, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_torble_and_kex(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        switch (pCreature->GetEntry())
        {
        case 60441: // Torble Sparksprocket
            pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                npc->MonsterSay("Here we go! Awaken!");
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                if (Creature* analyzer_x51 = player->FindNearestCreature(60444, 30.0F))
                {
                    analyzer_x51->SetVisibility(VISIBILITY_ON);
                }
                });
            DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x51 = player->FindNearestCreature(60444, 30.0F))
                {
                    analyzer_x51->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                    analyzer_x51->MonsterSay("Initiating...");
                    analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                });
            DoAfterTime(pPlayer, 7 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x51 = player->FindNearestCreature(60444, 30.0F))
                {
                    analyzer_x51->MonsterSay("Processing...");
                    analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                });
            DoAfterTime(pPlayer, 9 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x51 = player->FindNearestCreature(60444, 30.0F))
                {
                    analyzer_x51->MonsterSay("Processing...");
                    analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                });
            DoAfterTime(pPlayer, 11 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x51 = player->FindNearestCreature(60444, 30.0F))
                {
                    analyzer_x51->MonsterSay("Scanning Unknown beings, threat minimal, universal translator engaged.");
                    analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                });
            DoAfterTime(pPlayer, 15 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x51 = player->FindNearestCreature(60444, 30.0F))
                {
                    analyzer_x51->MonsterSay("Systems Online. Analyzer X-51 Online. Memory banks are currently restricted. How can I assist you?");
                    analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                });
            DoAfterTime(pPlayer, 20 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                npc->MonsterSay("It works! It speaks! It somehow scanned us and learned our language! Amazing! ahem... What are you?");
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
            DoAfterTime(pPlayer, 25 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x51 = player->FindNearestCreature(60444, 30.0F))
                {
                    analyzer_x51->MonsterSay("I am Analyzer X-51, my primary purpose is to analyze systems and mechanisms in order to understand any flaw. Forexample, your purpose has been lost and you have been rendered soft and organic.");
                    analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                });
            DoAfterTime(pPlayer, 30 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                npc->MonsterSay("What? Wait, are you saying that you are...What Gnomes were originally?");
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
            DoAfterTime(pPlayer, 35 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x51 = player->FindNearestCreature(60444, 30.0F))
                {
                    analyzer_x51->MonsterSay("We share a basal design, correct. However I cannot say whether you are an analyzer or not. In fact judging by your structure I cannot even ascertain if you were ever granted a purpose. I require more information.");
                    analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                });
            DoAfterTime(pPlayer, 40 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                npc->MonsterSay("That's... Amazing, what else can you tell us? Where did you work? Were you assigned to the facility here? Are there more like you?");
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
            DoAfterTime(pPlayer, 45 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x51 = player->FindNearestCreature(60444, 30.0F))
                {
                    analyzer_x51->MonsterSay("My limbs are from different models, and my core was not designed for this body. It is fair to assume that others like me existed or exist. I cannot answer your other questions as I do not know. 97 persent of my memory banks are restricted.");
                    analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                });
            DoAfterTime(pPlayer, 50 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                npc->MonsterSay("Is there any way to unrestrict them?");
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
            DoAfterTime(pPlayer, 55 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x51 = player->FindNearestCreature(60444, 30.0F))
                {
                    analyzer_x51->MonsterSay("Negative. I require an additional component installed, an activation key.");
                    analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                });
            DoAfterTime(pPlayer, 60 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                npc->MonsterSay("I see... Then we will have to acquire one later. Thank you Analyzer X-51. $R come over here for a moment.");
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
            DoAfterTime(pPlayer, 65 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x51 = player->FindNearestCreature(60444, 30.0F))
                {
                    analyzer_x51->MonsterSay("I stand by for further instructions or inquiries.");
                    analyzer_x51->HandleEmote(EMOTE_ONESHOT_TALK);
                    if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60324))
                        player->KilledMonster(cInfo, ObjectGuid());
                    analyzer_x51->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                    npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                }
                });
            break;

        case 60443: // Kex Blowmaster
            pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                npc->MonsterSay("Hah! Go on then turn on!");
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                if (Creature* analyzer_x48 = player->FindNearestCreature(60445, 30.0F))
                {
                    analyzer_x48->SetVisibility(VISIBILITY_ON);
                }
                });
            DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x48 = player->FindNearestCreature(60445, 30.0F))
                {
                    analyzer_x48->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                    analyzer_x48->MonsterSay("Initiating...");
                    analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                });
            DoAfterTime(pPlayer, 10 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x48 = player->FindNearestCreature(60445, 30.0F))
                {
                    analyzer_x48->MonsterSay("Processing...");
                    analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                });
            DoAfterTime(pPlayer, 15 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x48 = player->FindNearestCreature(60445, 30.0F))
                {
                    analyzer_x48->MonsterSay("Processing...");
                    analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                });
            DoAfterTime(pPlayer, 15 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x48 = player->FindNearestCreature(60445, 30.0F))
                {
                    analyzer_x48->MonsterSay("Scanning Unknown beings, threat minimal, universal translator engaged.");
                    analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                });
            DoAfterTime(pPlayer, 20 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x48 = player->FindNearestCreature(60445, 30.0F))
                {
                    analyzer_x48->MonsterSay("Systems Online. Analyzer X-48 Online. Memory banks are currently restricted. How can I assist you?");
                    analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                });
            DoAfterTime(pPlayer, 25 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                npc->MonsterSay("Oh wow! I was afraid I had to get a Titanic translator or somethin', Yo dude! Tell us where to find gold and rare techologies!");
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
            DoAfterTime(pPlayer, 30 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x48 = player->FindNearestCreature(60445, 30.0F))
                {
                    analyzer_x48->MonsterSay("I am Analyzer X-48, my primary purpose is to analyze systems and mechanisms in order to understand any flaw in them. Forexample, your unadulterated greed and thirst for technology is errant and can lead to your destruction.");
                    analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                });
            DoAfterTime(pPlayer, 35 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                npc->MonsterSay("What? Are you patronizing me?! I gave you life, ya know? I spent time, effort, and MONEY on makin' you work, so help me out yeah? Don't worry about me, I'll be fine even with my greed. Heck if I get enough money maybe it'll go away, so yeah, you can help.");
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
            DoAfterTime(pPlayer, 40 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x48 = player->FindNearestCreature(60445, 30.0F))
                {
                    analyzer_x48->MonsterSay("I doubt your sincerity, however I am in your debt. Would that I could help more, but my memory banks are currently restricted. 98 persent of my memory banks are locked and require a key to function.");
                    analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                });
            DoAfterTime(pPlayer, 45 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                npc->MonsterSay("A key? Huh? Where would we find such a key? Is there another way to unlock your noggin? If we do it will you help?");
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
            DoAfterTime(pPlayer, 50 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x48 = player->FindNearestCreature(60445, 30.0F))
                {
                    analyzer_x48->MonsterSay("There is no other way to my knowledge. A key to unlock the memories within me are required. Once I have my memories back I will divulge the knowledge you seek in return for rebuilding me.");
                    analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                });
            DoAfterTime(pPlayer, 55 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                npc->MonsterSay("Any idea what this knowledge is? Your analytic abilities might be useful, and could help me win some money through gambling or prospectin' or something, but I'd prefer something more substantial. Do you have the blueprints for yourself?");
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
            DoAfterTime(pPlayer, 60 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x48 = player->FindNearestCreature(60445, 30.0F))
                {
                    analyzer_x48->MonsterSay("I do not know which knowledge is stored in my restricted memory banks. I however, surmise that since the memories are restricted, they would be valuable secrets to my people. So yes it could contain blueprints or technology and other things.");
                    analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                }
                });
            DoAfterTime(pPlayer, 65 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                npc->MonsterSay("Sweet! Hey Partner, come over here and talk to me! Analyzer you may rest or somethin', we'll talk later.");
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                });
            DoAfterTime(pPlayer, 70 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
                if (Creature* analyzer_x48 = player->FindNearestCreature(60445, 30.0F))
                {
                    analyzer_x48->MonsterSay("Affirmative, standing by.");
                    analyzer_x48->HandleEmote(EMOTE_ONESHOT_TALK);
                    if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60324))
                        player->KilledMonster(cInfo, ObjectGuid());
                    analyzer_x48->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                    npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                }
                });
            break;
        }
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        if (pCreature->GetEntry() == 60441 || pCreature->GetEntry() == 60443)
        {
            pPlayer->CLOSE_GOSSIP_MENU();
        }
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestAccept_npc_arnold_boran(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    bool first_item_added = false;
    bool second_item_added = false;

    if (pQuest->GetQuestId() == 40141) // The Boran Family
    {
        if (pPlayer->AddItem(60204)) first_item_added = true;
        if (pPlayer->AddItem(60205)) second_item_added = true;

        if (!first_item_added || !second_item_added)
        {
            pPlayer->RemoveQuest(40141);
            pPlayer->SetQuestStatus(40141, QUEST_STATUS_NONE);
            pPlayer->GetSession()->SendNotification("Your bags are full!");
            return false;
        }
    }
    return false;
}

bool GossipHello_npc_samuel_boran(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40141) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(60205, 1, false))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "I have a letter from your brother.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(92936, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_samuel_boran(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
        if (pPlayer->HasItemCount(60205, 1, false))
        {
            pPlayer->DestroyItemCount(60205, 1, true);
            pPlayer->SaveInventoryAndGoldToDB();
        }
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("I knew Arnold was still out there somewhere, though I cannot imagine what it would be like stranded on some island at sea. Hopefully he returns home safely.", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("I have a letter for you, deliver it to him and with haste.", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            player->AddItem(60203, 1);
            if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60326))
                player->KilledMonster(cInfo, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_karl_boran(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40141) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(60204, 1, false))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "I have a letter from your brother.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(1042, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_karl_boran(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
        if (pPlayer->HasItemCount(60204, 1, false))
        {
            pPlayer->DestroyItemCount(60204, 1, true);
            pPlayer->SaveInventoryAndGoldToDB();
        }
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("A letter from Arnold... I thought he died at sea, I haven't heard from him in such a long time.", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("This is splendid news, here, please, take this to him.", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            player->AddItem(60202, 1);
            if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60325))
                player->KilledMonster(cInfo, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_chef_jenkel(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pCreature->IsVendor())
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ACTION_TRADE, "Buy something?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, "Teach me how to cook, mon!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);

    if (pPlayer->GetQuestStatus(40142) == QUEST_STATUS_INCOMPLETE)
    {
        if (pCreature->GetEntry() == 91950 && !pPlayer->HasItemCount(60207, 1, false))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Slim is asking for salt.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        }
    }

    pPlayer->SEND_GOSSIP_MENU(91950, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_chef_jenkel(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        pPlayer->GetSession()->SendListInventory(pCreature->GetGUID());

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->AddItem(60207);
        if (pPlayer->HasItemCount(60207, 1, false))
        {
            pCreature->MonsterSayToPlayer("Alright, fine, but he owes me, make sure you tell him!", pPlayer);
            pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
            pPlayer->CLOSE_GOSSIP_MENU();
            return true;
        }
        else
            pPlayer->GetSession()->SendNotification("Your bags are full!");
        return false;
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 5)
    {
        pPlayer->GetSession()->SendTrainerList(pCreature->GetGUID());
        return true;
    }

    return true;
}

bool GossipHello_npc_marty_moonshine(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsVendor())
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ACTION_TRADE, "I want to browse your goods.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pPlayer->GetQuestStatus(40148) == QUEST_STATUS_INCOMPLETE)
    {
        if (pCreature->GetEntry() == 92137 && !pPlayer->HasItemCount(60217, 1, false))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Give me the Recipe for Southsea Reserve and you get to live!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        }
    }

    pPlayer->SEND_GOSSIP_MENU(92137, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_marty_moonshine(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        pPlayer->GetSession()->SendListInventory(pCreature->GetGUID());

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->AddItem(60217);
        if (pPlayer->HasItemCount(60217, 1, false))
        {
            pCreature->MonsterSayToPlayer("Fine! Spare me please, here is the recipe!", pPlayer);
            pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
            pPlayer->CLOSE_GOSSIP_MENU();
            return true;
        }
        else
            pPlayer->GetSession()->SendNotification("Your bags are full!");
        return false;
    }

    return true;
}

struct npc_captain_saltbeardAI : public ScriptedAI
{
    npc_captain_saltbeardAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() {}
    void UpdateAI(const uint32 diff)
    {
        DoMeleeAttackIfReady();
    }
    void Aggro(Unit* who)
    {
        m_creature->MonsterSay("We got company on the ship! Push back these mainlanders!");
    }
    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_npc_captain_saltbeard(Creature* _Creature) { return new npc_captain_saltbeardAI(_Creature); }

struct npc_captain_blackeyeAI : public ScriptedAI
{
    npc_captain_blackeyeAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() {}
    void UpdateAI(const uint32 diff)
    {
        DoMeleeAttackIfReady();
    }
    void Aggro(Unit* who)
    {
        m_creature->MonsterSay("Who are you? You think you can take my ship without a fight?!");
    }
    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_npc_captain_blackeye(Creature* _Creature) { return new npc_captain_blackeyeAI(_Creature); }

struct npc_captain_ironhoofAI : public ScriptedAI
{
    npc_captain_ironhoofAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() {}
    void UpdateAI(const uint32 diff)
    {
        DoMeleeAttackIfReady();
    }
    void Aggro(Unit* who)
    {
        m_creature->MonsterSay("You wont stand a chance against me scurvy dog!");
    }
    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_npc_captain_ironhoof(Creature* _Creature) { return new npc_captain_ironhoofAI(_Creature); }

bool GOHello_go_blast_powder_keg(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(40174) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(60373, 1, false))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Pour water into the keg.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->SEND_GOSSIP_MENU(2010834, pGo->GetGUID());
    }

    if (pPlayer->GetQuestStatus(40186) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(60257, 1, false))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Ignite the gunpowder.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(2010834, pGo->GetGUID());
    }
    return true;
}

bool GOSelect_go_blast_powder_keg(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->HandleEmote(EMOTE_ONESHOT_KNEEL);
        pGo->Deactivate(150);
        if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60328))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    if (action == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pGo->SummonGameObject(2000838, pGo->GetPositionX(), pGo->GetPositionY(), pGo->GetPositionZ() + 0.6f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 30, true); /*burning effect*/
        pPlayer->DestroyItemCount(60257, 1, true);
        pPlayer->SaveInventoryAndGoldToDB();
        if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60330))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOHello_go_keg_of_rum(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(40178) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(60252, 1, false))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Poison the rum.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->SEND_GOSSIP_MENU(100304, pGo->GetGUID());
    }
    return true;
}

bool GOSelect_go_keg_of_rum(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pGo->GetEntry() == 2010836)
        {
            pPlayer->DestroyItemCount(60252, 1, true);
            pPlayer->SaveInventoryAndGoldToDB();
            if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60329))
                pPlayer->KilledMonster(cInfo, ObjectGuid());
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GossipHello_npc_morgan_the_storm(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40179) == QUEST_STATUS_INCOMPLETE) // Exterminate the Rat
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Spit in Morgan's face.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_morgan_the_storm(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        //pCreature->MonsterSayToPlayer("Prepare to die!", pPlayer);
        pCreature->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
        pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
        pCreature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_garfield_sparkblast(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40172) == QUEST_STATUS_INCOMPLETE) // Red Flag over the Sea
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "I want to join you.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pPlayer->GetQuestStatus(40187) == QUEST_STATUS_INCOMPLETE) // Captain of the Bloodsail Buccaneers
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "I'm ready!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

    if (pPlayer->GetQuestStatus(40354) == QUEST_STATUS_INCOMPLETE) // Naming the Vessel
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I'll call it The Crying Dandelion.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60496, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_garfield_sparkblast(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        auto faction1 = sObjectMgr.GetFactionEntry(87); // Bloodsail Buccaneers
        if (faction1)
        {
            pPlayer->GetReputationMgr().SetReputation(faction1, 0);
            pCreature->HandleEmote(EMOTE_ONESHOT_APPLAUD);
            if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60332))
                pPlayer->KilledMonster(cInfo, ObjectGuid());
        }
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);

        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("Well done, Cap'n!", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 3 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("Set yer veils high 'n conquer this world under yer name 'n the Jolly Roger o' the Bloodsail Buccaneers!", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 8 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterYell("Ahoy! Now let\'s get some rum \'n party.");
            npc->HandleEmote(EMOTE_ONESHOT_APPLAUD);
            });
        DoAfterTime(pPlayer, 12 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterYell("Yo-ho-ho!");
            npc->HandleEmote(EMOTE_ONESHOT_CHEER);
            if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60331))
                player->KilledMonster(cInfo, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            });
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
        pCreature->MonsterSay("The Crying Dandelion, eh? Didn't take ye for a romantic. So be it, the vessel's name will be so from now on, I will let the crew know.");
        pCreature->HandleEmote(EMOTE_ONESHOT_TALK);

        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60354))
                player->KilledMonster(cInfo, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_thirael(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40184) == QUEST_STATUS_INCOMPLETE) // No Hope for Tomorrow
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "I will end your pain.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_thirael(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

struct npc_thiraelAI : public ScriptedAI
{
    npc_thiraelAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() { }
    void JustDied(Unit*) override
    {
        if(!m_creature->FindNearestCreature(60464, 5.0F))
        m_creature->SummonCreature(60464, m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ(), m_creature->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 115 * IN_MILLISECONDS);
    }
};

CreatureAI* GetAI_npc_thirael(Creature* _Creature) { return new npc_thiraelAI(_Creature); }

bool QuestRewarded_npc_thirael_ghost(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40184) // No Hope for Tomorrow
    {
        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->ForcedDespawn();
            });
    }

    return false;
}

bool QuestRewarded_npc_blazno(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40190) // The Blazno Touch
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer("Now, behold my brilliance, my sheer wit and power of mind! With these items, I will be rich again! Haha!", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 12 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer("Huh... Maybe its supposed to take a while, I'll think of a new method to make this work, thanks again pal!", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            });
    }

    return false;
}

bool QuestRewarded_npc_daela_evermoon(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40197) // Old Greypaw
    {
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_CRY);
    }

    return false;
}

bool GossipHello_npc_old_greypaw(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40197) == QUEST_STATUS_INCOMPLETE) // Old Greypaw
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Daela Evermoon was asking if you were okay.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(60470, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_old_greypaw(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("WHO?! Evermoon asking if I am weak?! Evermoon want to kill me huh?! Who are you, messenger, scout?", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("You think you can probe me for weakness?!", player);
            npc->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            npc->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
            });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

struct npc_old_greypawAI : public ScriptedAI
{
    npc_old_greypawAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() { }
    void JustDied(Unit*) override
    {
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
        m_creature->SetFactionTemporary(15, TEMPFACTION_RESTORE_COMBAT_STOP);
    }
};

CreatureAI* GetAI_npc_old_greypaw(Creature* _Creature) { return new npc_old_greypawAI(_Creature); }

bool GossipHello_npc_insomni(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40210) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "I am ready to hear your tale.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pPlayer->GetQuestStatus(40214) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "We must banish this evil together.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

    pPlayer->SEND_GOSSIP_MENU(60446, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_insomni(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    switch (uiAction)
    {
    case GOSSIP_ACTION_INFO_DEF + 1:
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);

        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSay("I come from a land far away, shrouded in mystery and green mist. I am blessed by those you would not understand, and those that inhabit this mystical land. I am an outcast of my kin, and have only come here to seek new purpose. This purpose was found upon these islands.");
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 21 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSay("Slowly, day by day, a darkness came, a power much like myself that dared to challenge the rule I had established. Little by little I would lose this pitiful match of displaying power to attempt to keep the locals swayed to my side.");
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 41 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSay("In the end, I could not offer the secrets of my power to those that followed me. Eventually, most of my followers and worshippers stepped aside to bask in the glory of this dark energy. Now, I am seeking revenge, I am seeking to once again reclaim my throne upon these lands, do you understand mortal?");
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 56 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60334))
                player->KilledMonster(cInfo, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            });
        break;
    }
    case GOSSIP_ACTION_INFO_DEF + 2:
    {
        insomniDialogue(pPlayer, pCreature);
        break;
    }

    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestAccept_npc_insomni(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40171) // The Tower of Lapidis IX
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        pQuestGiver->CastSpell(pQuestGiver, 13236, false);

        DoAfterTime(pPlayer, 18 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_ONESHOT_YES);
            npc->CastSpell(npc, 5906, false);
            });
        DoAfterTime(pPlayer, 20 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            player->AddItem(60244);
            if (player->HasItemCount(60244, 1, false))
            {
                npc->MonsterSayToPlayer("There, it is done, the key is attuned, do with it what you must. I hope whatever purpose you are using this for, serves you well.", player);
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                return true;
            }
            else
                player->RemoveQuest(40171);
            player->SetQuestStatus(40171, QUEST_STATUS_NONE);
            player->GetSession()->SendNotification("Your bags are full!");
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            return false;
            });
    }

    if (pQuest->GetQuestId() == 40271) // The Maul'ogg Crisis VIII --
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        pQuestGiver->CastSpell(pQuestGiver, 13236, false);

        DoAfterTime(pPlayer, 18 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_ONESHOT_YES);
            npc->CastSpell(npc, 5906, false);
            });
        DoAfterTime(pPlayer, 20 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            player->AddItem(60345);
            if (player->HasItemCount(60345, 1, false))
            {
                npc->MonsterSayToPlayer("I must confess something to you mortal, for I am not one to withhold information, nor am I one to outwardly lie without purpose. I had many reasonings for the death of the Prophet Jammal'an within the depths of the Sunken Temple.", player);
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                return true;
            }
            else
                player->RemoveQuest(40271);
            player->SetQuestStatus(40271, QUEST_STATUS_NONE);
            player->GetSession()->SendNotification("Your bags are full!");
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            return false;
            });
    }

    if (pQuest->GetQuestId() == 40214) // Uncovering Evil
        insomniDialogue(pPlayer, pQuestGiver);

    return false;
}

void insomniDialogue(Player* pPlayer, Creature* pQuestGiver)
{
    pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);

    DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->SetWalk(true);
            npc->GetMotionMaster()->MovePoint(0, -12864.27F, 2809.63F, -6.85F, 0, 3.0F);
            npc->PMonsterSay("Come, %s. It is time to banish this evil.", player->GetName());
        }
        });
    DoAfterTime(pPlayer, 39 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->MonsterSay("We must travel to the center of Kazon Island, there, I can channel the energies of both Lapidis, and Gillijim.");
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
        }
        });
    DoAfterTime(pPlayer, 42 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->GetMotionMaster()->MovePoint(0, -12865.99F, 2821.96F, -0.82F, 0, 3.0F);
        }
        });
    DoAfterTime(pPlayer, 47 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->MonsterSay("With the energies, and my own, I will be able to draw out the corruption that has plagued the land.");
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
        }
        });
    DoAfterTime(pPlayer, 48 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->GetMotionMaster()->MovePoint(0, -12864.54F, 2908.59F, 10.24F, 0, 3.0F);
        }
        });
    DoAfterTime(pPlayer, 61 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->GetMotionMaster()->MovePoint(0, -12865.12F, 2873.97F, 1.67F, 0, 3.0F);
        }
        });
    DoAfterTime(pPlayer, 65 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->GetMotionMaster()->MovePoint(0, -12864.54F, 2908.59F, 10.24F, 0, 3.0F, 0.62F);
        }
        });
    DoAfterTime(pPlayer, 78 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->MonsterSay("Now then - this will take much concentration to bring the entity forward into physical form, it is up to you to weaken it! When it is weak enough, I will be free to join you, until then, protect me!");
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
        }
        });
    DoAfterTime(pPlayer, 82 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->CastSpell(npc, 13236, false);
            GameObject* riftSpell = npc->SummonGameObject(7000035, -12853.94f, 2915.04f, 10.81f, 0);
        }
        });

    DoAfterTime(pPlayer, 92 * IN_MILLISECONDS, [pPlayer = pPlayer]() {
        if (GameObject* riftSpell = pPlayer->FindNearestGameObject(7000035, 50.0f))
            riftSpell->AddObjectToRemoveList();
        });

    DoAfterTime(pPlayer, 92 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
        {
            npc->SummonCreature(60499, -12853.94f, 2915.04f, 10.81f, 3.83F, TEMPSUMMON_CORPSE_DESPAWN);
        }
        });
}

struct npc_fearothAI : public ScriptedAI
{
    npc_fearothAI(Creature* c) : ScriptedAI(c) { Reset(); }

    bool transformed;
    bool fightBegun;

    void Reset() 
    {
        transformed = false;
        fightBegun = false;
    }

    void UpdateAI(const uint32 diff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!fightBegun)
        {
            fightBegun = true;
            m_creature->MonsterSay("Who are you interlopers? Do you really think you can stop my plans?");
        }

        if (!transformed && m_creature->GetHealthPercent() < 25.0f)
        {
            if (Creature* insomni = m_creature->FindNearestCreature(60446, 100.0F))
            {
                Creature* insomnius = m_creature->SummonCreature(60498, insomni->GetPositionX(), insomni->GetPositionY(), insomni->GetPositionZ(), insomni->GetOrientation(), TEMPSUMMON_MANUAL_DESPAWN);

                transformed = true;

                insomni->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                insomni->DespawnOrUnsummon();
            }
        }

        DoMeleeAttackIfReady();
    }

    void JustDied(Unit*) 
    {
        Creature* insomnius = m_creature->FindNearestCreature(60498, 40.0F);

        if (insomnius)
        {
            insomnius->MonsterSay("It is done! The darkness has faded. Can you feel it dissipating before your very eyes? I'll be returning to the cave. Meet me there.");
            insomnius->DespawnOrUnsummon();
        }
    }

    void EnterEvadeMode() 
    {
        if (Creature* insomni = m_creature->FindNearestCreature(60446, 100.0F))
            insomni->DespawnOrUnsummon();

        if (Creature* insomnius = m_creature->FindNearestCreature(60498, 100.0F))
            insomnius->DespawnOrUnsummon();

        m_creature->DespawnOrUnsummon();
    }
};

CreatureAI* GetAI_npc_fearoth(Creature* _Creature) { return new npc_fearothAI(_Creature); }

struct npc_lapidisAI : public ScriptedAI
{
    npc_lapidisAI(Creature* c) : ScriptedAI(c) { Reset(); }

    void Reset() {}
    void UpdateAI(const uint32 diff)
    {
        DoMeleeAttackIfReady();
    }
    void Aggro(Unit* who)
    {
        m_creature->MonsterSay("Who let you in this tower?! Do you know who you are messing with?!");
    }
    void JustDied(Unit*) override
    {
        m_creature->MonsterSay("You know.. Nothing... I was more powerful then all of you.");
    }
    void EnterCombat() {}
    void JustRespawned() { Reset(); }
};

CreatureAI* GetAI_npc_lapidis(Creature* _Creature) { return new npc_lapidisAI(_Creature); }

bool GossipHello_npc_lorthiras(Player* pPlayer, Creature* pCreature)
{
    //if (pPlayer->GetQuestStatus(00000) == QUEST_STATUS_INCOMPLETE)
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "I am looking for a fight dreadlord.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60503, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_lorthiras(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFactionTemporary(554, TEMPFACTION_RESTORE_COMBAT_STOP);
        pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
        pCreature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestRewarded_npc_lorthiras(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40239) // The Will of Lorthiras
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
        pQuestGiver->CastSpell(pQuestGiver, 698, false); // Ritual of Summoning

        DoAfterTime(pPlayer, 6 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer("You feel it, don't you, the knowledge swell within your mind, the very fabric of my magic clinging to your thoughts. You have been gifted knowledge which is forbidden to your kind, and once you craft the blade, it will be forgotten forever.", player);
            npc->CastSpell(npc, 1456, false); // Life Tap
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });

        DoAfterTime(pPlayer, 16 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            });
    }

    return false;
}

#define LAPIDIS_TOWER_KEY 60302
#define MAGICALLY_SEALED_DOOR_RESET 1

bool GOHello_magically_sealed_door(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->HasItemCount(LAPIDIS_TOWER_KEY, 1))
    {
        pGo->UseDoorOrButton(10);
        pPlayer->HandleEmote(EMOTE_ONESHOT_KNEEL);

        if (GameObjectAI* gAI = pGo->AI())
            gAI->SetData(MAGICALLY_SEALED_DOOR_RESET, 1);
    }
    else
        pPlayer->GetSession()->SendNotification("Requires Lapidis Tower Key.");

    return true;
}

struct magically_sealed_door : public GameObjectAI
{
    explicit magically_sealed_door(GameObject* pGo) : GameObjectAI(pGo) {}
    uint32 BackTimer = 0;

    virtual void UpdateAI(uint32 const uiDiff) override
    {
        if (BackTimer != 0)
        {
            if (BackTimer < uiDiff)
            {
                BackTimer = 0;
                me->ResetDoorOrButton();
            }
            else
            {
                BackTimer -= uiDiff;
                if (BackTimer == 0)
                {
                    me->ResetDoorOrButton();
                }
            }
        }
    }

    virtual void SetData(uint32 id, uint32 value) override
    {
        if (id == MAGICALLY_SEALED_DOOR_RESET)
            BackTimer = 25 * IN_MILLISECONDS;
        GameObjectAI::SetData(id, value);
    }
};

GameObjectAI* GetAI_magically_sealed_door(GameObject* Obj) { return new magically_sealed_door(Obj); }

bool QuestAccept_npc_iselus(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40247) // Staff of Eldara
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
        pQuestGiver->CastSpell(pQuestGiver, 23017, false); // Arcane Channeling

        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer("We Keepers have been active within Azshara to leave the secrets of the region a mystery. We have fallen into shadow, into dissaray unable to even communicate effectively with one another, and spread over large distances. We are surrounded by enemies at all sides and what once was is nothing more then a faded memory of ruins.", player);
            });

        DoAfterTime(pPlayer, 20 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer("It has been a long time since I have had the chance to wield my magic in such a manner, and now, crafting this Staff of Eldara has granted me some glimmer of hope.", player);
            });

        DoAfterTime(pPlayer, 33 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->CastSpell(npc, 24171, false);
            });

        DoAfterTime(pPlayer, 35 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer("It is done.", player);
            if (CreatureInfo const* dummy_bunny = ObjectMgr::GetCreatureTemplate(60335))
                player->KilledMonster(dummy_bunny, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            });
    }
    return false;
}

bool GossipHello_npc_iselus(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40285) == QUEST_STATUS_INCOMPLETE)
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "I come asking for help in finding someone, have you met an orcish blademaster years ago?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(91722, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_iselus(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("Hmm, now that you've mentioned it, I recall such a figure, he was a muscular orc, though quite friendly. This was during the demonic invasion a few years back, he seeked battle within the Temple of Arrkoran the last I seen him, hopefully this helps your search.", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            if (CreatureInfo const* dummy_bunny = ObjectMgr::GetCreatureTemplate(60340))
                player->KilledMonster(dummy_bunny, ObjectGuid());
            });
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOHello_go_way_stone(Player* pPlayer, GameObject* pGo)
{
    if (!pPlayer->HasItemCount(60372, 1, false))
    {
        pPlayer->GetSession()->SendNotification("Require The Staff of Eldara");
        pPlayer->CLOSE_GOSSIP_MENU();
    }
    else 
    {
        switch (pGo->GetEntry())
        {
        case 2010849:
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Teleport to Shattered Strand.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            pPlayer->SEND_GOSSIP_MENU(100304, pGo->GetGUID());
            return true;
            break;

        case 2010850:
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Teleport to Temple of Arkkoran.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            pPlayer->SEND_GOSSIP_MENU(100304, pGo->GetGUID());
            return true;
            break;
        }
    }
    return true;
}

bool GOSelect_go_way_stone(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        static const WorldLocation m_eldarath(1, 3814.92F, -5526.18F, 131.00f, 3.70F);
        pPlayer->TeleportTo(m_eldarath);
    }

    if (action == GOSSIP_ACTION_INFO_DEF + 2)
    {
        static const WorldLocation m_dorath(1, 4011.45F, -7131.67F, 24.81f, 3.70F);
        pPlayer->TeleportTo(m_dorath);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GOHello_go_ashan_stone(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(40253) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Tizah Ashan Dal'asha.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->CLOSE_GOSSIP_MENU();
    }
    pPlayer->SEND_GOSSIP_MENU(100400, pGo->GetGUID());
    return true;
}

bool GOSelect_go_ashan_stone(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        GameObject* ashan_stone = pPlayer->FindNearestGameObject(2010851, 10.0F); // Ashan Stone
        if (pGo->GetEntry() == 2010851)
        {
            if (CreatureInfo const* dummy_bunny = ObjectMgr::GetCreatureTemplate(60336))
                pPlayer->KilledMonster(dummy_bunny, ObjectGuid());

            pPlayer->SummonGameObject(2010804, ashan_stone->GetPositionX(), ashan_stone->GetPositionY(), ashan_stone->GetPositionZ() - 4.00F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 4, true);
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GossipHello_npc_lord_crukzogg(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40264) == QUEST_STATUS_INCOMPLETE) // The Maul'ogg Crisis I
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Lord Cruk'Zogg, I come on behalf of Haz'gorg, he is asking you to end your foolhardy aggresion.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pPlayer->GetQuestStatus(40272) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(60345, 1, false)) // The Maul'ogg Crisis IX
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Lord Cruk'zogg, Haz'gorg has asked me to deliver this potion of strength to help enhance your mighty power!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

    pPlayer->SEND_GOSSIP_MENU(92184, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_lord_crukzogg(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("Hah!", player);
            npc->HandleEmote(EMOTE_ONESHOT_LAUGH);
            });
        DoAfterTime(pPlayer, 4 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("Haz'gorg isn't strong enough to lead the Maul'ogg, I will do as I please, I am strongest, you are lucky to live after such words little $R.", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            if (CreatureInfo const* dummy_bunny = ObjectMgr::GetCreatureTemplate(60337))
                player->KilledMonster(dummy_bunny, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            });
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->SendPlaySpellVisual(SPELL_VISUAL_KIT_DRINK);
            player->DestroyItemCount(60345, 1, true);
            player->SaveInventoryAndGoldToDB();
            });
        DoAfterTime(pPlayer, 4 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("A potion of strength?! Haz'gorg has learned his place, hah!", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 12 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("I can feel it, yes, through my body! I... Hmm... I feel funny, and good. Tell Haz'gorg that I thank him for the potion, I have thought over what he said earlier, maybe Maul'ogg rest and think about strategy to expand, rather then smash enemy.", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 14 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (CreatureInfo const* dummy_bunny = ObjectMgr::GetCreatureTemplate(60339))
                player->KilledMonster(dummy_bunny, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_seer_bolukk(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40266) == QUEST_STATUS_INCOMPLETE) // The Maul'ogg Crisis III
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "I was sent on behalf of Haz'gorg the Great Seer to remedy the situation with Lord Cruk'Zogg.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(91854, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_seer_bolukk(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
        DoAfterTime(pPlayer, 3 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("I have not spoken with Haz'gorg in some time, but my people are also going through much the same as he, the Gor'dosh have fallen on dark times, and are ruled by a tyrant. I hold no power any longer, but if I can help the Maul'ogg then perhaps I have done something for the greater good.", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
        DoAfterTime(pPlayer, 23 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("Before the Tyrant King came into power, I had dabbled with the idea of making an elixir, a potion, or a spell to sway his mind into seeking less hostile means, perhaps this could work with Lord Cruk'Zogg, to pacify him from being engulfed into madness, bring this information back to Haz'gorg, perhaps he can figure out something that I could not.", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 33 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (CreatureInfo const* dummy_bunny = ObjectMgr::GetCreatureTemplate(60338))
                player->KilledMonster(dummy_bunny, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestAccept_npc_duke_nargelas(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    bool first_item_added = false;
    bool second_item_added = false;

    if (pQuest->GetQuestId() == 40280) // Ways of Magic
    {
        if (pPlayer->AddItem(60189)) first_item_added = true;
        if (pPlayer->AddItem(60190)) second_item_added = true;

        if (!first_item_added || !second_item_added)
        {
            pPlayer->RemoveQuest(40280);
            pPlayer->SetQuestStatus(40280, QUEST_STATUS_NONE);
            pPlayer->GetSession()->SendNotification("Your bags are full!");
            return false;
        }
    }
    return false;
}

bool QuestAccept_npc_pierce_shackleton(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    bool first_item_added = false;
    bool second_item_added = false;

    if (pQuest->GetQuestId() == 40282) // Darlthos Legacy
    {
        if (pPlayer->AddItem(60189)) first_item_added = true;
        if (pPlayer->AddItem(60391)) second_item_added = true;

        if (!first_item_added || !second_item_added)
        {
            pPlayer->RemoveQuest(40282);
            pPlayer->SetQuestStatus(40282, QUEST_STATUS_NONE);
            pPlayer->GetSession()->SendNotification("Your bags are full!");
            return false;
        }
    }
    return false;
}

bool GossipHello_npc_katokar_bladewind(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40289) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Tak'gar Deephate.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(92196, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_katokar_bladewind(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("You have honored the dead, may his soul be guided safely to his fellow masters.", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            if (CreatureInfo const* dummy_bunny = ObjectMgr::GetCreatureTemplate(60341))
                player->KilledMonster(dummy_bunny, ObjectGuid());
            });
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestAccept_npc_yhargosh(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40293) // Ritual of the Farseer
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);

        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->SetWalk(true);
                npc->GetMotionMaster()->MovePoint(0, 4993.68F, -6042.01F, 89.09F, 0, 3.0F, 2.05F);
            }
            });
        DoAfterTime(pPlayer, 2.3 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->GetMotionMaster()->MovePoint(0, 4985.88F, -6026.60F, 88.69F, 0, 3.0F, 0.61F);
            }
            });
        DoAfterTime(pPlayer, 7 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->GetMotionMaster()->MovePoint(0, 4993.11F, -6020.67F, 89.27F, 0, 3.0F, 0.14F);
            }
            });
        DoAfterTime(pPlayer, 11 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->GetMotionMaster()->MovePoint(0, 5009.55F, -6018.99F, 86.59F, 0, 3.0F, 0.11F);
            }
            });
        DoAfterTime(pPlayer, 19 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->MonsterYell("Spirits of Azshara, heed my call. Tell me, what is happening to this land.");
                npc->HandleEmote(EMOTE_ONESHOT_SHOUT);
            }
            });
        DoAfterTime(pPlayer, 23 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->SummonGameObject(2000745, npc->GetPositionX(), npc->GetPositionY(), npc->GetPositionZ(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 36, true);
            }
            });
        DoAfterTime(pPlayer, 27 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->MonsterSay("I see... A radiant city... full of people…");
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
            }
            });
        DoAfterTime(pPlayer, 35 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->MonsterSay("They are dying... A great wave swallows them all.");
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
            }
            });
        DoAfterTime(pPlayer, 43 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->MonsterSay("Magical energies, waning, blue crystals... A roar.");
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
            }
            });
        DoAfterTime(pPlayer, 51 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->MonsterSay("A shadow... Of a dragon?");
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
            }
            });
        DoAfterTime(pPlayer, 59 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->MonsterSay("This is all... I need a rest.");
                npc->HandleEmote(EMOTE_STATE_KNEEL);
            }
            });
        DoAfterTime(pPlayer, 67 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->GetMotionMaster()->MovePoint(0, 4993.11F, -6020.67F, 89.27F, 0, 3.0F, 3.28F);
            }
            });
        DoAfterTime(pPlayer, 71.7 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->GetMotionMaster()->MovePoint(0, 4985.88F, -6026.60F, 88.69F, 0, 3.0F, 3.75F);
            }
            });
        DoAfterTime(pPlayer, 75.7 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->GetMotionMaster()->MovePoint(0, 4994.63F, -6041.35F, 89.09F, 0, 3.0F, 4.20F);
            }
            });
        DoAfterTime(pPlayer, 80 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->GetMotionMaster()->MovePoint(0, 4992.68F, -6045.22F, 89.02F, 0, 3.0F, 2.46F);
                if (CreatureInfo const* dummy_bunny = ObjectMgr::GetCreatureTemplate(60342))
                    player->KilledMonster(dummy_bunny, ObjectGuid());
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            }
            });
    }
    return false;
}

bool QuestRewarded_npc_colonel_hardinus(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40303) // The Tower of Lapidis X
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_CHEER);
        DoAfterTime(pPlayer, 1.75 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer("It is done, the tyranny of Lapidis has come to an end! Admiral Caelan's soul is put to rest, cheers to $N for their heroic actions!", player);
            npc->HandleEmote(EMOTE_ONESHOT_SHOUT);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            });

        Creature* NPC_cheer1 = pPlayer->FindNearestCreature(92004, 100.0F);
        Creature* NPC_cheer2 = pPlayer->FindNearestCreature(91882, 100.0F);
        Creature* NPC_cheer3 = pPlayer->FindNearestCreature(91889, 100.0F);
        Creature* NPC_cheer4 = pPlayer->FindNearestCreature(92025, 100.0F);

        if (NPC_cheer1)
        {
            DoAfterTime(pPlayer, 2.3 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer1]() {
                npc->HandleEmote(EMOTE_ONESHOT_CHEER);
                });
            DoAfterTime(pPlayer, 2.5 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer2]() {
                npc->HandleEmote(EMOTE_ONESHOT_CHEER);
                });
            DoAfterTime(pPlayer, 2.7 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer3]() {
                npc->HandleEmote(EMOTE_ONESHOT_CHEER);
                });
            DoAfterTime(pPlayer, 2.9 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer4]() {
                npc->HandleEmote(EMOTE_ONESHOT_CHEER);
                });
            return true;
        }
    }

    return false;
}

bool QuestAccept_npc_korgan(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40309) // The Depths of Karazhan VI
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        pQuestGiver->CastSpell(pQuestGiver, 23017, false); // Arcane Channeling

        DoAfterTime(pPlayer, 14 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_ONESHOT_YES);
            npc->CastSpell(npc, 1449, false);
            });
        DoAfterTime(pPlayer, 15 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->MonsterSayToPlayer("It is done! The power of the arcane flowed through my veins, and I was able to mimic the magic that once lingered upon the key. Now, the protection of the Horde can dominate our thought, and guide our next step.", player);
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                if (CreatureInfo const* dummy_bunny = ObjectMgr::GetCreatureTemplate(60344))
                    player->KilledMonster(dummy_bunny, ObjectGuid());
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                return true;
            }
            });
    }

    return false;
}

bool QuestAccept_npc_magus_ariden_dusktower(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40316) // The Mystery of Karazhan VI
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        pQuestGiver->CastSpell(pQuestGiver, 23017, false); // Arcane Channeling

        DoAfterTime(pPlayer, 14 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_ONESHOT_YES);
            npc->CastSpell(npc, 1449, false);
            });
        DoAfterTime(pPlayer, 15 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            {
                npc->MonsterSayToPlayer("There! It took a considerable amount of focus, but I was able to mimic the magic upon the key, now we can turn our attention to the evil present beneath Karazhan.", player);
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                if (CreatureInfo const* dummy_bunny = ObjectMgr::GetCreatureTemplate(60345))
                    player->KilledMonster(dummy_bunny, ObjectGuid());
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                return true;
            }
            });
    }

    return false;
}

bool GossipHello_npc_inunquaq(Player* pPlayer, Creature* pCreature)
{
    switch (pCreature->GetEntry())
    {
    case 81046: // Inunquaq in Darkshore
        if (!pPlayer->GetQuestStatus(40321) == QUEST_STATUS_NONE)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I am ready to travel Inunquaq, let us head out!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
        if (pCreature->IsQuestGiver())
            pPlayer->PrepareQuestMenu(pCreature->GetGUID());

        pPlayer->SEND_GOSSIP_MENU(81046, pCreature->GetGUID());
        break;

    case 60611: // Inunquaq in The Northeast Passage
        if (pPlayer->GetQuestRewardStatus(40321) || pPlayer->GetQuestStatus(40321) == QUEST_STATUS_COMPLETE)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Inunquaq, I wish to return to Darkshore", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        }
        if (pCreature->IsQuestGiver())
            pPlayer->PrepareQuestMenu(pCreature->GetGUID());

        pPlayer->SEND_GOSSIP_MENU(60611, pCreature->GetGUID());
        break;
    }

    return true;
}

bool GossipSelect_npc_inunquaq(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        static const WorldLocation m_the_northeast_passage(1, 13654.652344F, -6585.791504F, 0.609558F, 0);
        pPlayer->TeleportTo(1, 13654.652344F, -6585.791504F, 0.609558F, 0);

        if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(91195))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        static const WorldLocation m_darkshore(1, 7831.624630F, -776.579773F, 1.205446F, 0);
        pPlayer->TeleportTo(m_darkshore);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOHello_go_moo_rune(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2010799)
    {
         pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Teleport me to Bessy", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
         pPlayer->SEND_GOSSIP_MENU(2010799, pGo->GetGUID());
    }
    return true;
}

bool GOSelect_go_moo_rune(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (pGo->GetEntry() == 2010799)
        {
            static const WorldLocation m_bessy(0, -9128.736328F, -1050.399170F, 70.611626, 0.030956);
            pPlayer->TeleportTo(m_bessy);
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

bool GossipHello_npc_tholdan_mountainheart(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(40338) == QUEST_STATUS_INCOMPLETE) // The Azurestone
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "I wish to hear the tale of the Azurestone.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(60629, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_tholdan_mountainheart(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("Long, long ago, we first discovered the Azurestone when digging the very halls of Ironforge itself, at the beginning, it was simply seen as a beautiful blue jewel and held a natural value. Quite quickly thereafter, the power of the Azurestone was discovered by a dwarf naturally gifted with the arcana.", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 21 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("Huidgrar Azurebrow was the one who studied the stone, and taught others of its power, the name 'Azurestone' came from his name, and those that studied beneath him created 'The Azurestone Order'. The Order has been pivotol in many key points in history, from the War of the Three Hammers, to when the orcs were getting close to Ironforge itself!", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 41 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("When Huidgrar died from his rather long and vibrant life, the Azurestone Order fell with him, falling into obscurity with time. It is up to us, the naturally gifted of our kind to reignite this ancient group, and to show the world our prowess with fire, frost, and the arcane!", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 48 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (CreatureInfo const* dummy_bunny = ObjectMgr::GetCreatureTemplate(60347))
                player->KilledMonster(dummy_bunny, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestAccept_npc_sage_palerunner(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40346) // The Way of Spiritwalking III
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        pQuestGiver->CastSpell(pQuestGiver, 13236, false);

        DoAfterTime(pPlayer, 3 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer("Spirits, it is I, Sage Palerunner, I call from the mortal plane to bring another into the fold. He has already braved the harsh wilds to gather the Spiritleaf required, he shows true bravery in the face of adversity.", player);
            });
        DoAfterTime(pPlayer, 13 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->MonsterSayToPlayer("I ask of you to allow your magic to flow through into their body, and be blessed by the Earthmother's gift. They will be the bearer of our culture, and our traditions, from now until the end of time.", player);
            });
        DoAfterTime(pPlayer, 23 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_ONESHOT_YES);
            npc->CastSpell(npc, 5906, false);
            });
        DoAfterTime(pPlayer, 26 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
                npc->MonsterSayToPlayer("The ritual is complete, they will see you, to see if you are truly worthy.", player);
                if (CreatureInfo const* dummy_bunny = ObjectMgr::GetCreatureTemplate(60348))
                    player->KilledMonster(dummy_bunny, ObjectGuid());
                npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                npc->InterruptNonMeleeSpells(true);
                return true;
            });
    }

    return false;
}

bool GossipHello_npc_ancestor_of_wisdom(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40348) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I have come to learn your lesson.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60636, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_ancestor_of_wisdom(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->SEND_GOSSIP_MENU(30012, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60349))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    return true;
}

bool QuestRewarded_npc_ancestor_of_wisdom(Player* pPlayer, Creature* pCreature, Quest const* pQuest)
{
    enum spells
    {
        QUEST_WAY_OF_SPIRITWALKING_5 = 40348,
        SPELL_SPIRITWALKING = 47262
    };

    Quest const* quest = sObjectMgr.GetQuestTemplate(QUEST_WAY_OF_SPIRITWALKING_5);

    if (pQuest == quest)
        pPlayer->LearnSpell(SPELL_SPIRITWALKING, false);

    return true;
}

bool GossipHello_npc_ancestor_of_virtue(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40348) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I have come to learn your lesson.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60637, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_ancestor_of_virtue(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->SEND_GOSSIP_MENU(30013, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60350))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    return true;
}

bool GossipHello_npc_ancestor_of_humility(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40348) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I have come to learn your lesson.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60638, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_ancestor_of_humility(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->SEND_GOSSIP_MENU(30014, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60351))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    return true;
}

bool QuestAccept_npc_bombay(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 40351) // The Way Of The Witch Doctor III
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        pQuestGiver->CastSpell(pQuestGiver, 13236, false);

        DoAfterTime(pPlayer, 10 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->HandleEmote(EMOTE_ONESHOT_YES);
            npc->CastSpell(npc, 5906, false);
            npc->MonsterSayToPlayer("It be done, I have put the power of the mojo into this serum.", player);
            player->CompleteQuest(40351);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            return true;
            });
    }

    return false;
}

bool GossipHello_npc_nribbi(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40352) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(60509, 1, false))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "N'ribbi, I have brought this serum for you as tribute.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60631, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_nribbi(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60353))
            pPlayer->KilledMonster(cInfo, ObjectGuid());

        if (pPlayer->HasItemCount(60509, 1, false))
        {
            pPlayer->DestroyItemCount(60509, 1, true);
            pPlayer->SaveInventoryAndGoldToDB();
        }
    }
    return true;
}

bool QuestRewarded_npc_nribbi(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 40353) // The Way Of The Witch Doctor V
    {
        pQuestGiver->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
        pQuestGiver->AddAura(15473);
        pPlayer->LearnSpell(45504, false);

        DoAfterTime(pPlayer, 7 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            });

        DoAfterTime(pPlayer, 30 * IN_MILLISECONDS, [player = pPlayer, npc = pQuestGiver]() {
            npc->RemoveAurasAtReset();
            });

        Creature* NPC_cheer1 = pPlayer->FindNearestCreature(60639, 40.0F);
        Creature* NPC_cheer2 = pPlayer->FindNearestCreature(60640, 40.0F);
        Creature* NPC_cheer3 = pPlayer->FindNearestCreature(60641, 40.0F);

        if (NPC_cheer1)
        {
            DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer1]() {
                npc->MonsterSayToPlayer("Ribbit!", player);
                });
            DoAfterTime(pPlayer, 3 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer2]() {
                npc->MonsterSayToPlayer("Riiiibit", player);
                });
            DoAfterTime(pPlayer, 4 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer3]() {
                npc->MonsterSayToPlayer("Riibit", player);
                });
            DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer1]() {
                npc->MonsterSayToPlayer("Ribit", player);                });
            DoAfterTime(pPlayer, 7 * IN_MILLISECONDS, [player = pPlayer, npc = NPC_cheer2]() {
                npc->MonsterSayToPlayer("We are saved!", player);                });
            return true;
        }
    }

    return false;
}

bool GossipHello_npc_ironpatch(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40355) == QUEST_STATUS_INCOMPLETE) // Sark's Grudge
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Let me show what how in shape I am.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(2547, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_ironpatch(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSayToPlayer("Arrrgh!", pPlayer);
        pCreature->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
        pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
        pCreature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_vildo_onetusk(Player* pPlayer, Creature* pCreature)
{
    if (!pPlayer->GetQuestStatus(40358) == QUEST_STATUS_NONE)  // Golden Elves of Feralas
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Let's set sail for Feralas!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60459, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_vildo_onetusk(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "<Roll your eyes in disbelief and leave>.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        pPlayer->SEND_GOSSIP_MENU(30015, pCreature->GetGUID());
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->CLOSE_GOSSIP_MENU();
    }

    return true;
}

bool GossipHello_npc_fazgel_mechaflame(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40360) == QUEST_STATUS_INCOMPLETE) // Highly Unexpected Event
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Let's do it!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60643, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_fazgel_mechaflame(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSayToPlayer("Yeah, I don't think so bub!", pPlayer);
        pCreature->SetFactionTemporary(14, TEMPFACTION_RESTORE_COMBAT_STOP);
        pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
        pCreature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_sovatir(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40362) == QUEST_STATUS_INCOMPLETE)  // A Historian Finds You
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Arcanist Sovatir, how is this possible?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60644, pCreature->GetGUID());

    return true;
}

bool GossipSelect_npc_sovatir(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->SEND_GOSSIP_MENU(30016, pCreature->GetGUID());
        if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60355))
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    return true;
}

enum BloodsailQuestItems
{
    ITEM_Highborne_Golden_Statue = 60510,
    ITEM_Arcanist_Sovatirs_Torn_Notes = 60512,
};

bool QuestAcceptGO_lyvdia_dawnbird(Player* player, GameObject* pGo, const Quest* pQuest)
{
    if (!player)
        return false;

    bool first_item_added = false;
    bool second_item_added = false;

    if (pQuest->GetQuestId() == 40361) // Taking the Booty Home
    {
        if (!player->HasItemCount(ITEM_Highborne_Golden_Statue, 1))
        {
            if (player->AddItem(ITEM_Highborne_Golden_Statue))
                first_item_added = true;
        }
        else
            first_item_added = true;

        if (!player->HasItemCount(ITEM_Arcanist_Sovatirs_Torn_Notes, 1))
        {
            if (player->AddItem(ITEM_Arcanist_Sovatirs_Torn_Notes))
                second_item_added = true;
        }
        else
            second_item_added = true;

        if (!first_item_added || !second_item_added)
        {
            player->RemoveQuest(40361);
            player->SetQuestStatus(40361, QUEST_STATUS_NONE);
            player->GetSession()->SendNotification("Your bags are full!");
            return false;
        }
    }
    return false;
}

bool GossipHello_npc_waya_tallgrain(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40366) == QUEST_STATUS_INCOMPLETE)
    {
        if (pCreature->GetEntry() == 60652 && pPlayer->HasItemCount(60514, 1, false))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Deliver the pelts.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
    }

    if (pCreature->IsQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(60652, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_waya_tallgrain(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->DestroyItemCount(60514, 1, true);
        pPlayer->SaveInventoryAndGoldToDB();
        pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("These pelts... The Dryad gave them to us as an offering? Their quality is astounding. With pelts such as these, the newborn are sure to be protected from the cold nights and harsh winters.", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 16 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("I will let all the families know who is to thank for these pelts. If this noble Dryad wishes to earn our friendship with more deeds like these, we will not deny her. We understand she is not a Centaur, she is one with nature, and if she continues to assist us in such a way, even the most stubborn Tauren will see this as well.", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 34 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->MonsterSayToPlayer("Return to her and thank her for the offering. Let her know that she is welcome in Bloodhoof Village.", player);
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            });
        DoAfterTime(pPlayer, 35 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            if (CreatureInfo const* dummy_bunny = ObjectMgr::GetCreatureTemplate(60356))
                player->KilledMonster(dummy_bunny, ObjectGuid());
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            npc->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_kauth(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(65003) == QUEST_STATUS_INCOMPLETE) // Harmony in Peace and Understanding
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "I have this offering from Melyndella for you.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    pPlayer->SEND_GOSSIP_MENU(100500, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_kauth(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->PMonsterSay("These pelts... The Dryad gave them to us as an offering? The quality is astounding. With pelts such as these, the newborn are sure to be protected from the cold nights and winters.");

        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS, [pCreature = pCreature]() {
            pCreature->PMonsterSay("I will let all the families know who is to thank for these pelts. If she wishes to earn our friendship with more deeds like these, we will not deny her. We understand she is not a Centaur, and if she continues to assist us in such a way, even the most stubborn Tauren will as well."); });

        DoAfterTime(pPlayer, 15 * IN_MILLISECONDS, [pPlayer = pPlayer, pCreature = pCreature]() {
            pCreature->PMonsterSay("Return to her and thank her for the offering. Let her know that she is welcome in Bloodhoof Village. ");
            if (CreatureInfo const* dummy_bunny = ObjectMgr::GetCreatureTemplate(60370))
                pPlayer->KilledMonster(dummy_bunny, ObjectGuid());
            });
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

Player* escortedPlayer{ nullptr };

struct npc_zohjikAI : public ScriptedAI
{
    npc_zohjikAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    int8 phase;
    uint32 spellCastTimer;
    bool doOnce;


    enum Entries
    {
        NPC_MAGISTER = 65140,

        SPELL_ICE_BLOCK = 27619,
        SPELL_ARCANE_EXPLOSION = 25672,
        SPELL_ARCANE_BOLT = 25055,
        SPELL_LIGHTNING_BOLT = 26098,
        SPELL_BALL_LIGHTNING = 28299,
        SPELL_VOID_BOLT = 21066,
        SPELL_FINAL_BLAST = 20565,

        SPELL_BERSERK = 26297


    };


    void Reset() override
    {
        escortedPlayer = nullptr;
        phase = 0;
        spellCastTimer = 3000;
        doOnce = false;
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PLAYER);
        m_creature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (escortedPlayer)
        {
            if (phase > 0 && phase < 5)
            {
                escortedPlayer->AddAura(SPELL_ICE_BLOCK); // entirety of this phase the player is ice blocked

                if (Creature* magister = m_creature->FindNearestCreature(NPC_MAGISTER, 50.0f, true))
                {
                    if (spellCastTimer <= uiDiff)
                    {

                        int8 rand = irand(1, 6);
                        uint32 spellEntry = 0;

                        switch (rand)
                        {
                        case 1:
                            spellEntry = SPELL_ARCANE_BOLT;
                            break;
                        case 2:
                            spellEntry = SPELL_LIGHTNING_BOLT;
                            break;
                        case 3:
                            spellEntry = SPELL_BALL_LIGHTNING;
                            break;
                        case 4:
                            spellEntry = SPELL_ARCANE_EXPLOSION;
                        }

                        if (magister->CastSpell(m_creature, spellEntry, true))
                            spellCastTimer = 7000;
                    }
                    else spellCastTimer -= uiDiff;
                }
            }

            switch (phase)
            {
            case 0:
            {
                if (escortedPlayer->GetAreaId() != 279)
                {
                    m_creature->PMonsterSay("You be leavin'? Use da whistle by da cart and I be ready.");
                    m_creature->DespawnOrUnsummon();
                    return;
                }

                if (!m_creature->GetVictim())
                    m_creature->GetMotionMaster()->MoveFollow(escortedPlayer, PET_FOLLOW_DIST, PET_FOLLOW_ANGLE);
                else
                {
                    if (escortedPlayer->GetVictim())
                    {
                        if (m_creature->GetVictim())
                            if (m_creature->GetVictim()->GetTypeId() == TYPEID_PLAYER) // no attacking players
                            {
                                m_creature->CombatStop();
                                m_creature->ClearInCombat();
                                return;
                            }
                    Unit* target = m_creature->GetVictim();

                    m_creature->SetInCombatWithVictim(escortedPlayer->GetVictim());
                    m_creature->AddThreat(escortedPlayer->GetVictim(), 100.00f);

                    if (target && target->IsDead())
                    {
                        target = nullptr;

                        int8 rand = irand(1, 5);

                        m_creature->HandleEmote(11); // laugh

                        switch (rand)
                        {
                        case 1:
                            m_creature->PMonsterSay("Another one bites da dust!");
                            break;
                        case 2:
                            m_creature->PMonsterSay("We make a great team, $n", escortedPlayer->GetName());
                            break;
                        case 3:
                            m_creature->PMonsterSay("For Zul’jin!");
                            break;
                        case 4:
                            m_creature->PMonsterSay("Ya got some skills mon!");
                            break;
                        case 5:
                            m_creature->PMonsterSay("Die ugly!");
                            break;
                        }
                    }
                    }
                }

                if (!escortedPlayer->IsAlive())
                    m_creature->DespawnOrUnsummon();

                if (!escortedPlayer->FindNearestCreature(m_creature->GetEntry(), 50.0f, true) && !m_creature->IsInCombat())
                    m_creature->DespawnOrUnsummon();

                if (escortedPlayer->GetQuestStatus(65007) == QUEST_STATUS_COMPLETE) // move on
                {
                    phase++;
                    escortedPlayer->SummonCreature(NPC_MAGISTER, escortedPlayer->GetPositionX() + 4.0f, escortedPlayer->GetPositionY() + 3.0f, escortedPlayer->GetPositionZ(), 0, TEMPSUMMON_DEAD_DESPAWN);
                }

                break;
            }
            case 1:
            {
                if (Creature* magister = m_creature->FindNearestCreature(NPC_MAGISTER, 50.0f, true)) 
                {
                    if (!doOnce)
                    {
                        doOnce = true;
                        escortedPlayer->PlayDirectMusic(8920);
                        magister->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                        magister->CastSpell(magister, 26638, true); // teleport spell
                        magister->PMonsterSay("Enough from you, %s. Stand still! I will take you in after I deal with this troll.", escortedPlayer->GetName());

                        DoAfterTime(escortedPlayer, 5 * IN_MILLISECONDS, [m_creature = m_creature]() {
                            m_creature->PMonsterSay("Keep ya ugly self away from me friend, elf!");
                            m_creature->CastSpell(m_creature, SPELL_BERSERK, false);
                            });
                    }

                    DoAfterTime(escortedPlayer, 10 * IN_MILLISECONDS, [m_creature = m_creature, magister = magister]() {
                        magister->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                        m_creature->Attack(magister, true);
                        magister->Attack(m_creature, true);
                        });

                    if (magister->GetHealthPercent() < 75.0f)
                    {
                        doOnce = false;
                        phase++;
                    }
                }
                break;
            }
            case 2:
            {
                if (Creature* magister = m_creature->FindNearestCreature(NPC_MAGISTER, 50.0f, true))
                {
                    if (!doOnce)
                    {
                        doOnce = true;

                        magister->PMonsterSay("You Amani are nothing to our greater purpose!");

                        DoAfterTime(escortedPlayer, 2 * IN_MILLISECONDS, [m_creature = m_creature]() {
                            m_creature->PMonsterSay("How bout ya purpose dis spear in ya face?");
                            m_creature->CastSpell(m_creature, SPELL_BERSERK, false);
                            });

                    }

                    if (magister->GetHealthPercent() < 50.0f)
                    {
                        doOnce = false;
                        phase++;
                    }
                }
                break;
            }
            case 3:
            {
                if (Creature* magister = m_creature->FindNearestCreature(NPC_MAGISTER, 50.0f, true))
                {
                    if (!doOnce)
                    {
                        doOnce = true;

                        magister->PMonsterSay("Is this all you can do wretch?");

                        DoAfterTime(escortedPlayer, 2 * IN_MILLISECONDS, [m_creature = m_creature]() {
                            m_creature->PMonsterSay("Seems to be enough!");
                            m_creature->CastSpell(m_creature, SPELL_BERSERK, false);
                            });

                    }

                    if (magister->GetHealthPercent() < 25.0f)
                    {
                        doOnce = false;
                        phase++;
                    }
                }
                break;
            }
            case 4:
            {
                if (Creature* magister = m_creature->FindNearestCreature(NPC_MAGISTER, 50.0f, true))
                {
                    if (!doOnce)
                    {
                        doOnce = true;

                        magister->PMonsterSay("Enough of this foolishment, I will end your life!");

                        DoAfterTime(escortedPlayer, 2 * IN_MILLISECONDS, [m_creature = m_creature]() {
                            m_creature->PMonsterSay("Won't ya just die already?");
                            });
                    }

                    if (magister->GetHealthPercent() < 5.0f)
                    {
                        magister->PMonsterSay("Lost to ... a forest ... frog. I'm taking ... you with me ...");
                        doOnce = false;
                        phase++;
                    }
                }
                break;
            }
            case 5:
            {
                if (Creature* magister = m_creature->FindNearestCreature(NPC_MAGISTER, 50.0f, true))
                {
                    if (magister->GetHealthPercent() < 5.00f) // ensure he doesn't die too early.
                        magister->SetHealthPercent(5.00f);

                    DoAfterTime(escortedPlayer, 2 * IN_MILLISECONDS, [m_creature = m_creature, magister = magister]() {
                    magister->CastSpell(m_creature, SPELL_FINAL_BLAST, true);
                        });

                    DoAfterTime(escortedPlayer, 4 * IN_MILLISECONDS, [m_creature = m_creature, magister = magister]() {
                        m_creature->DealDamage(magister, magister->GetHealth(), nullptr, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, nullptr, false);
                        m_creature->SetHealthPercent(1);
                        m_creature->AttackStop();
                        m_creature->SetStandState(UNIT_STAND_STATE_KNEEL);
                        });

                    DoAfterTime(escortedPlayer, 9 * IN_MILLISECONDS, [m_creature = m_creature, magister = magister]() {
                        m_creature->PMonsterSay("Dat -ugh-  ugly woman got me good. %s, Gi- give Zo’hjik a moment to res-", escortedPlayer->GetName());
                        });

                    DoAfterTime(escortedPlayer, 16 * IN_MILLISECONDS, [m_creature = m_creature, magister = magister]() {
                        m_creature->DealDamage(m_creature, m_creature->GetHealth(), nullptr, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, nullptr, false);
                        m_creature->PMonsterEmote("Zo’hjik closes his eyes and falls on the ground, dead.");
                        });

                    phase++;
                }
            }
            break;
            }
        }

        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }

    void EnterEvadeMode()
    {
        if (escortedPlayer)
            m_creature->GetMotionMaster()->MoveFollow(escortedPlayer, PET_FOLLOW_DIST, PET_FOLLOW_ANGLE);
    }

    void KilledUnit(Unit* unit)
    {

    }

    /* Commented out for now until fix applied */

    //void OnCombatStop() override
    //{                                                    
    //    if (escortedPlayer)
    //        m_creature->GetMotionMaster()->MoveFollow(escortedPlayer, PET_FOLLOW_DIST, PET_FOLLOW_ANGLE);
    //}

    //void Aggro(Unit* pWho) override
    //{
    //    if (pWho->GetTypeId() == TYPEID_PLAYER && m_creature->GetAreaId() != 279) // Dalaran
    //        m_creature->CombatStop();
    //}
};

CreatureAI* GetAI_npc_zohjik(Creature* pCreature)
{
    return new npc_zohjikAI(pCreature);
}

Player* escortedPlayerZulJin{ nullptr };

struct npc_zulJin2AI : public ScriptedAI
{
    npc_zulJin2AI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    int8 phase;
    uint32 spellCastTimer;
    bool doOnce;
    uint32 areaID;
    Unit* target{ nullptr };

    void Reset() override
    {

    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (escortedPlayerZulJin)
        {
            areaID = escortedPlayerZulJin->GetAreaId();

            if (areaID != 1883 && areaID != 355) // Start area and Altar of Zul
            {
                m_creature->PMonsterSay("We have da mission, mon. Come find me when ya be back.");
                m_creature->DespawnOrUnsummon();
                return;
            }

            if (!m_creature->GetVictim())
                m_creature->GetMotionMaster()->MoveFollow(escortedPlayerZulJin, PET_FOLLOW_DIST, PET_FOLLOW_ANGLE);
            else
            {
                if (escortedPlayerZulJin->GetVictim())
                {
                    if (m_creature->GetVictim())
                        if (m_creature->GetVictim()->GetTypeId() == TYPEID_PLAYER) // no attacking players
                        {
                            m_creature->CombatStop();
                            m_creature->ClearInCombat();
                            return;
                        }

                    target = m_creature->GetVictim();

                    m_creature->SetInCombatWithVictim(escortedPlayerZulJin->GetVictim());
                    m_creature->AddThreat(escortedPlayerZulJin->GetVictim(), 100.00f);

                    if (target && target->IsDead())
                    {
                        target = nullptr;

                        int8 rand = irand(1, 5);

                        m_creature->HandleEmote(11); // laugh

                        switch (rand)
                        {
                        case 1:
                            m_creature->PMonsterSay("For da Amani!");
                            break;
                        case 2:
                            m_creature->PMonsterSay("Loa save ya twisted soul.");
                            break;
                        case 3:
                            m_creature->PMonsterSay("Loa give me strength.");
                            break;
                        case 4:
                            m_creature->PMonsterSay("Fools, de Blood God be tricking ya!");
                            break;
                        case 5:
                            m_creature->PMonsterSay("Me patience ran out!");
                            break;
                        }
                    }
                }
            }

            if (!escortedPlayerZulJin->IsAlive())
                m_creature->DespawnOrUnsummon();

            if (!escortedPlayerZulJin->FindNearestCreature(m_creature->GetEntry(), 50.0f, true) && !m_creature->IsInCombat())
                m_creature->DespawnOrUnsummon();

            if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
                return;

            target = m_creature->GetVictim();

            DoMeleeAttackIfReady();
        }
    }
};


CreatureAI* GetAI_npc_zuljin_2(Creature* pCreature)
{
    return new npc_zulJin2AI(pCreature);
}


bool QuestAccepted_npc_zulJin(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (pPlayer->GetQuestStatus(65009) == QUEST_STATUS_INCOMPLETE) // Bringing Them Home
    {
        if (Creature* escortNPC = pPlayer->SummonCreature(65145, pQuestGiver->GetPositionX(), pQuestGiver->GetPositionY(), pQuestGiver->GetPositionZ(), 0, TEMPSUMMON_MANUAL_DESPAWN)) // ZulJin
        {
            pQuestGiver->DestroyForPlayer(pPlayer);

            escortNPC->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER | UNIT_NPC_FLAG_GOSSIP);

            escortedPlayerZulJin = pPlayer;

            DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [escortNPC = escortNPC, pPlayer = pPlayer]() {
                escortNPC->HandleEmote(3);
                escortNPC->GetMotionMaster()->MoveFollow(pPlayer, PET_FOLLOW_DIST, PET_FOLLOW_ANGLE);
                escortNPC->MonsterSay("Loa give us strength. Lead da way, mon.");
                });

            return true;
        }
    }
    return false;
}


bool QuestRewarded_quest_banshees_favor(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver || !pPlayer) return false;

    if (pQuest->GetQuestId() == 65006) // In Da Banshee’s Favor
    {
        // input soon
    }

    return false;
}

bool ItemUseSpell_item_zhojik_whistle(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (pPlayer->FindNearestCreature(65142, 15.0f) && pPlayer->GetQuestStatus(65007) == QUEST_STATUS_INCOMPLETE)
    {
        if (Creature* escortNPC = pPlayer->SummonCreature(65141, 4.35f, 182.13f, 45.52f, 0, TEMPSUMMON_MANUAL_DESPAWN))
        {
            escortedPlayer = pPlayer;

            DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [escortNPC = escortNPC, pPlayer = pPlayer]() {
                escortNPC->MonsterMove(12.27f, 179.97f, 45.34f);
                });

            DoAfterTime(pPlayer, 3 * IN_MILLISECONDS, [escortNPC = escortNPC, pPlayer = pPlayer]() {
                escortNPC->HandleEmote(3);
                escortNPC->GetMotionMaster()->MoveFollow(pPlayer, PET_FOLLOW_DIST, PET_FOLLOW_ANGLE);
                escortNPC->MonsterSay("We be collectin' dem heads today. Lead da way.");
                });

            return true;
        }
    }
    return false;
}

bool GossipHello_npc_zohjik_questComplete(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(65006) == QUEST_STATUS_INCOMPLETE)
    {
        if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60370))
            pPlayer->KilledMonster(cInfo, ObjectGuid());

        if (pCreature->IsQuestGiver())
            pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    }
    else if (pCreature->IsQuestGiver())
            pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    pPlayer->SEND_GOSSIP_MENU(92942, pCreature->GetGUID());

    return true;
}

bool GOHello_mournful_apparition_atack(Player* pPlayer, GameObject* pGo)
{
    if (pGo->GetEntry() == 2010878)
    {
        if (pPlayer->GetQuestStatus(40370) == QUEST_STATUS_INCOMPLETE)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Take Tattered Necklace.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            pPlayer->SEND_GOSSIP_MENU(30017, pGo->GetGUID());
        }
    }
    return true;
}

bool GOSelect_mournful_apparition_atack(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->AddItem(60517, 1);
        pGo->SummonCreature(60658, pGo->GetPositionX(), pGo->GetPositionY(), pGo->GetPositionZ()+2, pPlayer->GetOrientation()+3.14, TEMPSUMMON_CORPSE_DESPAWN);
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return false;
}

void AddSC_random_scripts_3()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "mournful_apparition_atack";
    newscript->pGOHello = &GOHello_mournful_apparition_atack;
    newscript->pGOGossipSelect = &GOSelect_mournful_apparition_atack;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_waya_tallgrain";
    newscript->pGossipHello = &GossipHello_npc_waya_tallgrain;
    newscript->pGossipSelect = &GossipSelect_npc_waya_tallgrain;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "GO_lyvdia_dawnbird";
    newscript->pGOQuestAccept = &QuestAcceptGO_lyvdia_dawnbird;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_sovatir";
    newscript->pGossipHello = &GossipHello_npc_sovatir;
    newscript->pGossipSelect = &GossipSelect_npc_sovatir;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_fazgel_mechaflame";
    newscript->pGossipHello = &GossipHello_npc_fazgel_mechaflame;
    newscript->pGossipSelect = &GossipSelect_npc_fazgel_mechaflame;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_vildo_onetusk";
    newscript->pGossipHello = &GossipHello_npc_vildo_onetusk;
    newscript->pGossipSelect = &GossipSelect_npc_vildo_onetusk;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_ironpatch";
    newscript->pGossipHello = &GossipHello_npc_ironpatch;
    newscript->pGossipSelect = &GossipSelect_npc_ironpatch;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_nribbi";
    newscript->pGossipHello = &GossipHello_npc_nribbi;
    newscript->pGossipSelect = &GossipSelect_npc_nribbi;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_nribbi;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_bombay";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_bombay;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_ancestor_of_humility";
    newscript->pGossipHello = &GossipHello_npc_ancestor_of_humility;
    newscript->pGossipSelect = &GossipSelect_npc_ancestor_of_humility;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_ancestor_of_virtue";
    newscript->pGossipHello = &GossipHello_npc_ancestor_of_virtue;
    newscript->pGossipSelect = &GossipSelect_npc_ancestor_of_virtue;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_ancestor_of_wisdom";
    newscript->pGossipHello = &GossipHello_npc_ancestor_of_wisdom;
    newscript->pGossipSelect = &GossipSelect_npc_ancestor_of_wisdom;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_ancestor_of_wisdom;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_sage_palerunner";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_sage_palerunner;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_tholdan_mountainheart";
    newscript->pGossipHello = &GossipHello_npc_tholdan_mountainheart;
    newscript->pGossipSelect = &GossipSelect_npc_tholdan_mountainheart;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_moo_rune";
    newscript->pGOHello = &GOHello_go_moo_rune;
    newscript->pGOGossipSelect = &GOSelect_go_moo_rune;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_inunquaq";
    newscript->pGossipHello = &GossipHello_npc_inunquaq;
    newscript->pGossipSelect = &GossipSelect_npc_inunquaq;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_magus_ariden_dusktower";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_magus_ariden_dusktower;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_korgan";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_korgan;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_colonel_hardinus";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_colonel_hardinus;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_yhargosh";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_yhargosh;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_katokar_bladewind";
    newscript->pGossipHello = &GossipHello_npc_katokar_bladewind;
    newscript->pGossipSelect = &GossipSelect_npc_katokar_bladewind;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_pierce_shackleton";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_pierce_shackleton;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_duke_nargelas";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_duke_nargelas;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_seer_bolukk";
    newscript->pGossipHello = &GossipHello_npc_seer_bolukk;
    newscript->pGossipSelect = &GossipSelect_npc_seer_bolukk;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_lord_crukzogg";
    newscript->pGossipHello = &GossipHello_npc_lord_crukzogg;
    newscript->pGossipSelect = &GossipSelect_npc_lord_crukzogg;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_ashan_stone";
    newscript->pGOHello = &GOHello_go_ashan_stone;
    newscript->pGOGossipSelect = &GOSelect_go_ashan_stone;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_way_stone";
    newscript->pGOHello = &GOHello_go_way_stone;
    newscript->pGOGossipSelect = &GOSelect_go_way_stone;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_iselus";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_iselus;
    newscript->pGossipHello = &GossipHello_npc_iselus;
    newscript->pGossipSelect = &GossipSelect_npc_iselus;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "magically_sealed_door";
    newscript->pGOHello = &GOHello_magically_sealed_door;
    newscript->GOGetAI = &GetAI_magically_sealed_door;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_lorthiras";
    newscript->pGossipHello = &GossipHello_npc_lorthiras;
    newscript->pGossipSelect = &GossipSelect_npc_lorthiras;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_lorthiras;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_lapidis";
    newscript->GetAI = &GetAI_npc_lapidis;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_fearoth";
    newscript->GetAI = &GetAI_npc_fearoth;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_insomni";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_insomni;
    newscript->pGossipHello = &GossipHello_npc_insomni;
    newscript->pGossipSelect = &GossipSelect_npc_insomni;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_daela_evermoon";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_daela_evermoon;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_old_greypaw";
    newscript->pGossipHello = &GossipHello_npc_old_greypaw;
    newscript->pGossipSelect = &GossipSelect_npc_old_greypaw;
    newscript->GetAI = &GetAI_npc_old_greypaw;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_blazno";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_blazno;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_thirael_ghost";
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_thirael_ghost;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_thirael";
    newscript->pGossipHello = &GossipHello_npc_thirael;
    newscript->pGossipSelect = &GossipSelect_npc_thirael;
    newscript->GetAI = &GetAI_npc_thirael;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_garfield_sparkblast";
    newscript->pGossipHello = &GossipHello_npc_garfield_sparkblast;
    newscript->pGossipSelect = &GossipSelect_npc_garfield_sparkblast;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_morgan_the_storm";
    newscript->pGossipHello = &GossipHello_npc_morgan_the_storm;
    newscript->pGossipSelect = &GossipSelect_npc_morgan_the_storm;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_keg_of_rum";
    newscript->pGOHello = &GOHello_go_keg_of_rum;
    newscript->pGOGossipSelect = &GOSelect_go_keg_of_rum;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_blast_powder_keg";
    newscript->pGOHello = &GOHello_go_blast_powder_keg;
    newscript->pGOGossipSelect = &GOSelect_go_blast_powder_keg;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_captain_ironhoof";
    newscript->GetAI = &GetAI_npc_captain_ironhoof;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_captain_blackeye";
    newscript->GetAI = &GetAI_npc_captain_blackeye;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_captain_saltbeard";
    newscript->GetAI = &GetAI_npc_captain_saltbeard;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_marty_moonshine";
    newscript->pGossipHello = &GossipHello_npc_marty_moonshine;
    newscript->pGossipSelect = &GossipSelect_npc_marty_moonshine;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_chef_jenkel";
    newscript->pGossipHello = &GossipHello_npc_chef_jenkel;
    newscript->pGossipSelect = &GossipSelect_npc_chef_jenkel;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_samuel_boran";
    newscript->pGossipHello = &GossipHello_npc_samuel_boran;
    newscript->pGossipSelect = &GossipSelect_npc_samuel_boran;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_karl_boran";
    newscript->pGossipHello = &GossipHello_npc_karl_boran;
    newscript->pGossipSelect = &GossipSelect_npc_karl_boran;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_arnold_boran";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_arnold_boran;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_torble_and_kex";
    newscript->pGossipHello = &GossipHello_npc_torble_and_kex;
    newscript->pGossipSelect = &GossipSelect_npc_torble_and_kex;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_grain_sacks";
    newscript->pGOHello = &GOHello_go_grain_sacks;
    newscript->pGOGossipSelect = &GOSelect_go_grain_sacks;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_wendo_wobblefizz";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_wendo_wobblefizz;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_sacred_water";
    newscript->pGOHello = &GOHello_go_sacred_water;
    newscript->pGOGossipSelect = &GOSelect_go_sacred_water;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_vestia_moonspear";
    newscript->pGossipHello = &GossipHello_npc_vestia_moonspear;
    newscript->pGossipSelect = &GossipSelect_npc_vestia_moonspear;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_bessy";
    newscript->pGossipHello = &GossipHello_npc_bessy;
    newscript->pGossipSelect = &GossipSelect_npc_bessy;
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

    newscript = new Script;
    newscript->Name = "npc_vereesa_windrunner";
    newscript->pGossipHello = &GossipHello_npc_vereesa_windrunner;
    newscript->pGossipSelect = &GossipSelect_npc_vereesa_windrunner;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "the_cow_king";
    newscript->pGossipHello = &GossipHello_the_cow_king;
    newscript->pGossipSelect = &GossipSelect_the_cow_king;
    newscript->GetAI = &GetAI_the_cow_king;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "analyzor_53";
    newscript->pGossipHello = &GossipHello_analyzor_53;
    newscript->pGossipSelect = &GossipSelect_analyzor_53;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "skeleton_thalo";
    newscript->pGOHello = &GOHello_skeleton_thalo;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "highborne_wraith";
    newscript->GetAI = &GetAI_highborne_wraith;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "runed_thalassian_tablet";
    newscript->pGOHello = &GOHello_runed_thalassian_tablet;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_kauth";
    newscript->pGossipHello = &GossipHello_npc_kauth;
    newscript->pGossipSelect = &GossipSelect_npc_kauth;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_kauth";
    newscript->pGossipHello = &GossipHello_npc_kauth;
    newscript->pGossipSelect = &GossipSelect_npc_kauth;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "quest_banshees_favor";
    newscript->pQuestRewardedNPC = &QuestRewarded_quest_banshees_favor;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_zohjik";
    newscript->GetAI = &GetAI_npc_zohjik;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_zhojik_whistle";
    newscript->pItemUseSpell = &ItemUseSpell_item_zhojik_whistle;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_zohjik_questComplete";
    newscript->pGossipHello = &GossipHello_npc_zohjik_questComplete;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_zuljin_2";
    newscript->pQuestAcceptNPC = &QuestAccepted_npc_zulJin;
    newscript->GetAI = &GetAI_npc_zuljin_2;
    newscript->RegisterSelf();
}
