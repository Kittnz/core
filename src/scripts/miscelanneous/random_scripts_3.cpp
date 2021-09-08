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
    pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
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
        pPlayer->SEND_GOSSIP_MENU(100300, pCreature->GetGUID());
    }
    return true;
}

bool GossipSelect_npc_vereesa_windrunner(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        {
        Creature* vereesa_windrunner = pPlayer->FindNearestCreature(80877, 20.0F);
        if (vereesa_windrunner)
        {
            DoAfterTime(pPlayer, 1 * IN_MILLISECONDS, [player = pPlayer, npc = vereesa_windrunner]() {
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                npc->MonsterSayToPlayer("Ah my family name. I always lived in the shadows of my sisters. Alleria sacrificed herself to stop the Orcish Horde, Sylvanas she... Became the Ranger-General of Silvermoon. I have always been proud of my sisters but I never managed to reach their level, I guess I was lacking the conviction they had, but that has changed. Seeing what happened to my people.\t", player);
                });
            DoAfterTime(pPlayer, 6 * IN_MILLISECONDS, [player = pPlayer, npc = vereesa_windrunner]() {
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                npc->MonsterSayToPlayer("How broken they are, how much they suffer and struggle. I couldn't idle in Dalaran anymore, I reached out to the surviving Elven lodges and acquired the support from several Elven citizen and magi of Dalaran. I searched the Dalarani records and found records pertaining to this ancient outpost.\t", player);
                });
        }

        if (pPlayer->GetRace() == RACE_HIGH_ELF)
        {
            DoAfterTime(pPlayer, 11 * IN_MILLISECONDS, [player = pPlayer, npc = vereesa_windrunner]() {
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                npc->MonsterSayToPlayer("Thus I led an expedition to reclaim the outpost and restore it. It isn't much yet, but I hope it will serve as the foundation to rebuild our people's future. I only wish Prince Kael'thas had seen these records. Perhaps if he knew of this place his fate would be different.\t", player);
                });
            DoAfterTime(pPlayer, 16 * IN_MILLISECONDS, [player = pPlayer, npc = vereesa_windrunner]() {
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                npc->MonsterSayToPlayer("Still, now is not the time to mourn. It is the time to forge ahead and rebuild what we can. As you know, we are still so few. I am truly glad that you managed to survive, you are an inspiration to us all.", player);

                if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60314))
                    player->KilledMonster(cInfo, ObjectGuid());
                });
        }
        else
        {
            DoAfterTime(pPlayer, 11 * IN_MILLISECONDS, [player = pPlayer, npc = vereesa_windrunner]() {
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                npc->MonsterSayToPlayer("Thus I led an expedition to reclaim the outpost and restore it. It isn't much yet, but I hope it will serve as the foundation to rebuild my people's future. I only wish Prince Kael'thas had seen these records. Perhaps if he knew of this place his fate would be different.\t", player);
                });
            DoAfterTime(pPlayer, 16 * IN_MILLISECONDS, [player = pPlayer, npc = vereesa_windrunner]() {
                npc->HandleEmote(EMOTE_ONESHOT_TALK);
                npc->MonsterSayToPlayer("Still, now is not the time to mourn. It is the time to forge ahead and rebuild what we can. There's so few left of us that every life we save is a miracle. Thus your assistance here is very welcome and I salute you.", player);

                if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(60314))
                    player->KilledMonster(cInfo, ObjectGuid());
                });
        }
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

void AddSC_random_scripts_3()
{
    Script* newscript;

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
