#include "scriptPCH.h"
#include "Utilities/EventProcessor.h"

template <typename Functor>
void DoAfterTime(Player* player, uint32 p_time, Functor&& function)
{
    player->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), player->m_Events.CalculateTime(p_time));
}

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

CreatureAI* GetAI_the_cow_king(Creature* pCreature){ return new the_cow_kingAI(pCreature); }

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
        DoAfterTime(pPlayer, 6 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            npc->MonsterSayToPlayer("How broken they are, how much they suffer and struggle. I couldn't idle in Dalaran anymore, I reached out to the surviving Elven lodges and acquired the support from several Elven citizen and magi of Dalaran. I searched the Dalarani records and found records pertaining to this ancient outpost.\t", player);
            });

        if (pPlayer->GetRace() == RACE_HIGH_ELF)
        {
        DoAfterTime(pPlayer, 11 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            npc->MonsterSayToPlayer("Thus I led an expedition to reclaim the outpost and restore it. It isn't much yet, but I hope it will serve as the foundation to rebuild our people's future. I only wish Prince Kael'thas had seen these records. Perhaps if he knew of this place his fate would be different.\t", player);
            });
        DoAfterTime(pPlayer, 16 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
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
        DoAfterTime(pPlayer, 11 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
            npc->HandleEmote(EMOTE_ONESHOT_TALK);
            npc->MonsterSayToPlayer("Thus I led an expedition to reclaim the outpost and restore it. It isn't much yet, but I hope it will serve as the foundation to rebuild my people's future. I only wish Prince Kael'thas had seen these records. Perhaps if he knew of this place his fate would be different.\t", player);
            });
        DoAfterTime(pPlayer, 16 * IN_MILLISECONDS, [player = pPlayer, npc = pCreature]() {
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
    if (pPlayer->GetQuestStatus(40050) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Inspect Felstone", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }
    pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_felstone(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
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
                Creature* mob_one = m_creature->SummonCreature(60429, 3515.17F, -1600.66F, 169.37F, 2.76F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 150 * IN_MILLISECONDS);
                Creature* mob_two = m_creature->SummonCreature(60429, 3533.07F, -1603.13F, 172.10F, 1.40F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 150 * IN_MILLISECONDS);
                Creature* mob_three = m_creature->SummonCreature(60429, 3526.66F, -1601.96F, 170.83F, 1.73F, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 150 * IN_MILLISECONDS);

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

    pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_bessy(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        static const WorldLocation m_CowLevel(801, 16809.69F, 16794.09F, 65.36f, 3.70F);
        pPlayer->TeleportTo(m_CowLevel);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_vestia_moonspear(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(40060) == QUEST_STATUS_INCOMPLETE && pPlayer->HasItemCount(60156, 1, false))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Ashylah Starcaller has sent me with this missive.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->SEND_GOSSIP_MENU(7878, pCreature->GetGUID());
    }
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
        pPlayer->RemoveItemCurrency(60156, 1);
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

bool QuestAccept_npc_grelda(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    bool first_item_added = false;
    bool second_item_added = false;

    if (pQuest->GetQuestId() == 40085) //Into The Uplands
    {
        if (pPlayer->AddItem(60173)) first_item_added = true;
        if (pPlayer->AddItem(60174)) second_item_added = true;

        if (!first_item_added || !second_item_added)
        {
            pPlayer->RemoveQuest(40085);
            pPlayer->SetQuestStatus(40085, QUEST_STATUS_NONE);
            pPlayer->GetSession()->SendNotification("Your bags are full!");
            return false;
        }
    }
    return false;
}

void AddSC_random_scripts_3()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "npc_grelda";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_grelda;
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
}
