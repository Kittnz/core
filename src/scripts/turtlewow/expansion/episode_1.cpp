
#include "scriptPCH.h"
#include "Utilities/EventProcessor.h"

enum EI_Quests
{
    INTRODUCTION          = 80000,
    TO_ALAHTHALAS         = 80001,
    CRYSTAL_CLEAR_TASK    = 80002,
    RELICS_IN_FERALAS     = 80003
};

bool GossipHello_npc_caledra(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(INTRODUCTION) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Greetings! I'm here to help.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(300000, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_caledra(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1) 
    { 
        // TODO: Make a timer.

        pCreature->MonsterSay("I’m glad that you wish to assist us...I will do my best to recap where we stand..");
        pCreature->MonsterSay("I should explain the situation better. I am Caledra Dawnbreeze, formerly a Ranger-Captain of the Farstriders during the Second war, but now merely a citizen of Stormwind. After the loss of Quel\'thalas our people suffered deeply due to our addiction to magic...Some of us led by our former Prince Kael\'thas were seduced by dark magic and from what I\'ve heard they betrayed the Alliance siding with the creatures known as the Naga and left.");
        pCreature->MonsterSay("I've heard other more...troubling stories but regardless, they are gone and we should focus on those of us who remain in the Alliance. A few months ago, I've managed to gather representatives of our people from all outlying settlements such as the Farstrider lodges.");
        pCreature->MonsterSay("We've had a meeting where we agreed that the time has come for our people to come together so that we may create a home for ourselves where we could rebuild our people in time, a military lodge or cities belonging to other races simply isn't the way to rebuild.");
        pCreature->MonsterSay("Thankfully Dalaran's surviving archives provided an opportunity, roughly a century ago an outpost was built on a peninsula near Quel'thalas. The Outpost is powered by an Arcane crystal infused with the energies of the Sunwell itself.");
        pCreature->MonsterSay("In other words, it's a way for us to cope with the addiction to magic we've been suffering from. The crystal will not last forever but it will buy us time to find a cure. Our Scouts have managed to find the site, and they've confirmed that it is intact. Our people has begun to settle the Outpost and they have named it Alah'thalas, the Land of Light in our tongue.");
        pCreature->MonsterSay("However, the buildings are old and have not been maintained properly, we lack the reagents and materials to sustain the enchantments that protect the Outpost. Likewise the local mine has been infested with creatures...In other words, any help you provide would be greatly appreciated!");

        pCreature->HandleEmoteCommand(EMOTE_ONESHOT_TALK);
        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80003); // Caledra Gossip Trigger
        if (cInfo != nullptr)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_elsharin(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestRewardStatus(TO_ALAHTHALAS))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Please, open a portal to Alah'Thalas.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(300001, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_elsharin(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSay("Safe travels!");

        float dis{ -3.0F };
        float x, y, z;
        pPlayer->GetSafePosition(x, y, z);
        x += dis * cos(pPlayer->GetOrientation());
        y += dis * sin(pPlayer->GetOrientation());
        pPlayer->SummonGameObject(3000001, x, y, z + 0.5F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 30, true);
        pPlayer->SummonGameObject(3000002, x, y, z - 1.5F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 30, true);

        pCreature->HandleEmote(EMOTE_STATE_SUBMERGED);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOHello_go_portal_alahthalas(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestRewardStatus(TO_ALAHTHALAS))
        pPlayer->TeleportTo(0, 4309.09f, -2854.56f, 5.33926f, 2.35496f);
    return true;
}

// Goblin starting zone

enum GoblinStartingZone
{
    QUEST_ME_NOT_ANY_KIND_OF_ORC = 80108,
    QUEST_GREEN_GOES_RED         = 80110,
    QUEST_SHADOW_ON_THE_PLATEAU  = 80107,
    ZONE_STONETALON_MOUNTAINS    = 406,
    ZONE_DUROTAR                 = 14
};

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

bool GOHello_go_fm_acquisition(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetZoneId() != ZONE_DUROTAR && pPlayer->GetQuestStatus(QUEST_ME_NOT_ANY_KIND_OF_ORC) == QUEST_STATUS_COMPLETE)
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TAXI, "Set a course to Durotar! Full speed!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    
    pPlayer->SEND_GOSSIP_MENU(100100, pGo->GetGUID());
    return true;
}

bool GOSelect_go_fm_acquisition(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->SetDisplayId(8011);
        pPlayer->TeleportTo(1, 560.20F, -4576.21F, 142.0F, 4.08F);
        pPlayer->m_Events.AddEvent(new DemorphAfterTime(pPlayer->GetGUID()), pPlayer->m_Events.CalculateTime(15000));
        pPlayer->CastSpell(pPlayer, 130, true);
    }   
    return true;
}

// Durotar

template <typename Functor>
void DoAfterTime(Player* player, uint32 p_time, Functor&& function)
{
    player->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), player->m_Events.CalculateTime(p_time));
}

enum RefugeeNPCs
{
    NPC_NERT_STONETALON      = 80100,
    NPC_NERT_BLASTENTOM      = 80121,
    NPC_GRIZZLE_THE_ENFORCER = 80124,
    NPC_MAYTEN_BOOMRIFLE     = 80125,
    NPC_LEYTI_QUICKTONGUEM   = 80126, 
    NPC_WIZETTE_ICEWHISTLE   = 80128,
    NPC_AMRI_DEMONDEAL       = 80127, 
    NPC_SPRAT_NOZZLETON      = 80122
};

bool QuestComplete_npc_garthok(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == QUEST_GREEN_GOES_RED)
    {
        Creature* NertBlastenton    = pQuestGiver->SummonCreature(NPC_NERT_BLASTENTOM,      286.33F, -4717.00F, 13.78F, 2.68F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);
        Creature* GrizzleEnforcer   = pQuestGiver->SummonCreature(NPC_GRIZZLE_THE_ENFORCER, 288.25F, -4721.18F, 13.34F, 2.50F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);
        Creature* MaytenBoomfire    = pQuestGiver->SummonCreature(NPC_MAYTEN_BOOMRIFLE,     290.45F, -4717.65F, 13.34F, 2.59F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);
        Creature* LeytiQuicktongue  = pQuestGiver->SummonCreature(NPC_LEYTI_QUICKTONGUEM,   293.18F, -4716.50F, 13.09F, 2.59F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);
        Creature* WizetteIcewhistle = pQuestGiver->SummonCreature(NPC_WIZETTE_ICEWHISTLE,   290.78F, -4720.42F, 13.08F, 2.29F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);
        Creature* AmriDemondeal     = pQuestGiver->SummonCreature(NPC_AMRI_DEMONDEAL,       289.36F, -4723.89F, 12.91F, 2.80F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);
        Creature* SpratNozzleton    = pQuestGiver->SummonCreature(NPC_SPRAT_NOZZLETON,      293.27F, -4719.20F, 12.74F, 2.87F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);

        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS,
            [CreatureGuid = NertBlastenton->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSay("Mister Gar'thok, may I introduce ya to my crew? We've all got nowhere else to go, and we hear that's as good a reason as any to join the Horde.");
        });

        DoAfterTime(pPlayer, 13 * IN_MILLISECONDS,
            [CreatureGuid = GrizzleEnforcer->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature) 
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSay("Barely any different for me! I hear you orcs like bashin' skills, I like bashin' skulls, we’re gonna get along just fine.");
        });

        DoAfterTime(pPlayer, 21 * IN_MILLISECONDS,
            [CreatureGuid = MaytenBoomfire->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSay("Is what I hear true? You guys use bows? Buddy, buddy. Get with the century! I'll show you some real weapons.");
        });

        DoAfterTime(pPlayer, 23 * IN_MILLISECONDS,
            [CreatureGuid = LeytiQuicktongue->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_BOW);
            creature->MonsterTextEmote("Leyti Quicktongue bows silently.");
        });

        DoAfterTime(pPlayer, 31 * IN_MILLISECONDS,
            [CreatureGuid = WizetteIcewhistle->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSay("Do ya even have a mage to help out around here? Well, I guess I can set up shop, conjure up some water. For a price, of course, but also for the Horde!");
        });

        DoAfterTime(pPlayer, 39 * IN_MILLISECONDS,
            [CreatureGuid = AmriDemondeal->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSay("I've made some bad deals with demons, and I know you orcs have too. Thanks for takin' us in.");
        });

        DoAfterTime(pPlayer, 48 * IN_MILLISECONDS,
            [CreatureGuid = SpratNozzleton->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSay("Who cares about honor? Where's the food!?");
        });

        DoAfterTime(pPlayer, 53 * IN_MILLISECONDS,
            [CreatureGuid = pQuestGiver->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_LAUGH);
            creature->MonsterTextEmote("Gar'thok laughs.");
            creature->MonsterSay("You'll do nicely. Welcome to the Horde, my little green friends. Head up the road to Orgrimmar and get settled in. Except you, if you think you're strong enough to serve the Horde here for a while.");
        });
    }
    return false;
}

bool QuestComplete_npc_nert_blastentom(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == QUEST_SHADOW_ON_THE_PLATEAU)
    {
        DoAfterTime(pPlayer, 2 * IN_MILLISECONDS,
            [CreatureGuid = pQuestGiver->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_NO);
            creature->MonsterSay("Alright, I'll be honest with you. The boss isn't gonna be happy we're not bringing him back his treasure. But I've seen enough, and I think you have too, right?");
        });

        DoAfterTime(pPlayer, 10 * IN_MILLISECONDS,
            [CreatureGuid = pQuestGiver->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_QUESTION);
            creature->MonsterSay("We can't go back to the Venture Co, or the boss'll find us. And there's no way the Steamwheedle Cartel will trust us, not after the Venture Co puts out the word that we took off with their loot, right?");
        });


        DoAfterTime(pPlayer, 17 * IN_MILLISECONDS,
            [CreatureGuid = pQuestGiver->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_LAUGH);
            creature->MonsterSay("So here we are. A bunch of smelly, grimy refugees without a single coin to our name. Who in the world would take us in?");
        });


        DoAfterTime(pPlayer, 20 * IN_MILLISECONDS,
            [CreatureGuid = pQuestGiver->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->MonsterTextEmote("Nert Blastentom smiles.");
        });

        DoAfterTime(pPlayer, 23 * IN_MILLISECONDS,
            [CreatureGuid = pQuestGiver->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->MonsterSay("I think I have just the place... Get the team and hop in the plane.");
        });

        DoAfterTime(pPlayer, 21 * IN_MILLISECONDS,
            [CreatureGuid = pQuestGiver->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->SetWalk(true);
            creature->GetMotionMaster()->MovePoint(0, 1799.06F, 1349.06F, 144.95F, 4.04F, 1.7F);
        });

        DoAfterTime(pPlayer, 50 * IN_MILLISECONDS,
            [CreatureGuid = pQuestGiver->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->DespawnOrUnsummon();
        });
    }
    return false;
}

struct npc_tomb_shadowAI : public ScriptedAI
{
    npc_tomb_shadowAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    void Aggro(Unit *who)
    {
        m_creature->MonsterSay("You will not disturb what lays here!");
    }

    void Reset() {}

    void KilledUnit(Unit* victim) {}

    void JustDied(Unit*)
    {
        m_creature->MonsterSay("There is only death for your people here! I am only one... of many...");
    }

    void UpdateAI(const uint32 diff)
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;
        DoMeleeAttackIfReady();
    }

};

CreatureAI* GetAI_npc_tomb_shadow(Creature *_Creature)
{
    return new npc_tomb_shadowAI(_Creature);
}

enum HighElfStartingZone
{
    QUEST_CLEARING_OUT_VERMINS                = 80203,
    QUEST_GATHERING_INTEL                      = 80204,
    NPC_CUSTOM_OBJECTIVE_GATHERING_INTEL       = 80203,
    NPC_CUSTOM_OBJECTIVE_BURNT_WHEELS          = 80204,
    QUEST_SLAKING_THEIR_THIRST                 = 80205,
    QUEST_BURNT_WHEELS                         = 80206,
    NPC_CUSTOM_OBJECTIVE_ITEM_SCRAPPING        = 80206,
    NPC_ALISHA_SUNBLADE                        = 80210,
    NPC_CUSTOM_OBJECTIVE_SUNBLADE_RENUNION     = 80211,
    QUEST_SUNBLADE_RENUNION                    = 80208,
    QUEST_PORTING_TO_GOLDSHIRE                 = 80209,
    NPC_CUSTOM_OBJECTIVE_PORTING_TO_GOLDSHIRE  = 80212
};

bool QuestAccept_npc_kathy_wake(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == QUEST_CLEARING_OUT_VERMINS)
    {
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_NO);
        pQuestGiver->MonsterSay("Do not be frightened, these Trogg are small and weak, easy to take out alone, however... if they swarm the Caravans, people could get hurt and we cannot spare more men to deal with them while keeping the other big bad things out there away from the lodge.");
    }
    return false;
}

struct go_exploration_trigger : public GameObjectAI
{
    explicit go_exploration_trigger(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_bUsed = false;
        m_uiJustUsedTimer = 1;
        m_uiUpdateTimer = 1000;
    }

    bool m_bUsed;
    uint32 m_uiJustUsedTimer;
    uint32 m_uiUpdateTimer;

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_uiJustUsedTimer < uiDiff)
        {
            if (m_uiUpdateTimer < uiDiff)
            {
                std::list<Player*> players;
                MaNGOS::AnyPlayerInObjectRangeCheck check(me, 30.0f);
                MaNGOS::PlayerListSearcher<MaNGOS::AnyPlayerInObjectRangeCheck> searcher(players, check);

                Cell::VisitWorldObjects(me, searcher, 30.0f);

                for (Player* pPlayer : players)
                {
                    if (pPlayer->GetQuestStatus(QUEST_GATHERING_INTEL) == QUEST_STATUS_INCOMPLETE)
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(NPC_CUSTOM_OBJECTIVE_GATHERING_INTEL);
                        if (cInfo != nullptr)
                            pPlayer->KilledMonster(cInfo, ObjectGuid());
                    }
                }
                m_uiUpdateTimer = 2500;
            }
            else
            {
                m_uiUpdateTimer -= uiDiff;
            }
            m_bUsed = true;
        }
        else
        {
            m_uiJustUsedTimer -= uiDiff;
        }
    }
};

GameObjectAI* GetAI_go_exploration_trigger(GameObject* gameobject)
{
    return new go_exploration_trigger(gameobject);
}

#define EMPTY_BARREL  80209
#define FILLED_BARREL 80210

bool GOHello_go_farstrider_well(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->HasItemCount(EMPTY_BARREL, 1))
    {
        pPlayer->RemoveItemCurrency(EMPTY_BARREL, 1); 
        pPlayer->AddItem(FILLED_BARREL); 
        pPlayer->HandleEmote(EMOTE_ONESHOT_KNEEL);
    }
    else
        pPlayer->GetSession()->SendNotification("Requires Empty Barrel.");

    return true;
}

bool GossipHello_npc_malvinah_sunblade(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(QUEST_BURNT_WHEELS) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Malvinah, we need to talk.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    if (pPlayer->GetQuestStatus(QUEST_SUNBLADE_RENUNION) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I'm glad that your sister is safe and sound!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(100200, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_malvinah_sunblade(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        DoAfterTime(pPlayer, 1 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_CRY);
            creature->MonsterSay("My sister was on that wagon!");
        });

        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSay("We all knew there was a risk but...she was practically here! It could have been us!");
        });

        DoAfterTime(pPlayer, 10 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_CRY);
            creature->MonsterSay("How could this have happened?! We survived the Scourge, the Wetlands, the Horde... only for... them to have their possessions burnt while being kidnapped?! It's not fair!");
        });

        DoAfterTime(pPlayer, 15 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSay("I'm... sorry I shouldn't burden you with this, we've all struggled ever since we lost Quel'thalas but you've come through for us here...");
        });

        DoAfterTime(pPlayer, 20 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSay("The wood, the water, you've even defeated those vile Trogg creatures... You're right, I must be calm, perhaps my sister is still out there, she is the only family I have left and if anyone can save her it's you.");
        });

        DoAfterTime(pPlayer, 25 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_EXCLAMATION);
            creature->MonsterSay("Go speak to that rogueish Human woman who led the escorts, perhaps she can help!");
            CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(NPC_CUSTOM_OBJECTIVE_BURNT_WHEELS);
            if (cInfo != nullptr)
                player->KilledMonster(cInfo, ObjectGuid());

        });
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        DoAfterTime(pPlayer, 2 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_CHEER);
            creature->MonsterSay("You've saved my sister!");
            creature->SummonCreature(NPC_ALISHA_SUNBLADE, -5628.99F, -4319.46F, 401.18F, 4.4F, TEMPSUMMON_TIMED_DESPAWN, 25 * 1000);
        });


        DoAfterTime(pPlayer, 8 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSay("I can't overstate how honored I am to be able to call you my friend. Thanks to you little Arisha is safe. We're all so overwhelmed by your heroism...");
        });


        DoAfterTime(pPlayer, 14 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSay("Several wagons have moved on to Stormwind while you were away but a lot of us have decided to stay here for the time being perhaps even forever. ");
        });


        DoAfterTime(pPlayer, 19 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_APPLAUD);
            creature->MonsterSay("I also believe Kathy wishes to speak with you... Here is a present from me, take care, okay? Wherever you may end up, remember that we'll remains friends!");
            CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(NPC_CUSTOM_OBJECTIVE_SUNBLADE_RENUNION);
            if (cInfo != nullptr)
                player->KilledMonster(cInfo, ObjectGuid());
        });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

#define DARK_KEY 80216

bool GOHello_go_shadowforge_cage(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->HasItemCount(DARK_KEY, 1))
    {
        pGo->UseDoorOrButton();
        pPlayer->HandleEmote(EMOTE_ONESHOT_KNEEL);

        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(NPC_CUSTOM_OBJECTIVE_ITEM_SCRAPPING);
        if (cInfo != nullptr)
            pPlayer->KilledMonster(cInfo, ObjectGuid());

        Creature* Alisha = pPlayer->FindNearestCreature(NPC_ALISHA_SUNBLADE, 5.0F);

        if (Alisha)
        {
            Alisha->MonsterSay("I thought I'd never see my sister again. Thank you, hero!");
            // Change it later to real coords.
            float fX, fY, fZ;
            Alisha->GetRandomPoint(Alisha->GetPositionX(), Alisha->GetPositionY(), Alisha->GetPositionZ(), 15.0f, fX, fY, fZ);
            Alisha->GetMotionMaster()->MovePoint(0, -5831.14F, -4119.65F, 387.77F, 0, 3.0F);
            Alisha->SetWalk(false);

            DoAfterTime(pPlayer, 25 * IN_MILLISECONDS,
                [CreatureGuid = Alisha->GetObjectGuid(), GObjectGuid = pGo->GetObjectGuid(),  player = pPlayer]()
            {
                Map* map = sMapMgr.FindMap(0);
                Creature* creature = map->GetCreature(CreatureGuid);
                GameObject* object = map->GetGameObject(GObjectGuid);

                object->ResetDoorOrButton();

                if (!creature)
                    return;

                creature->DespawnOrUnsummon();
            });
        }
    }
    else
        pPlayer->GetSession()->SendNotification("Requires Dark Key.");

    return true;
}


bool GossipHello_npc_magistrix_ishalah(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(QUEST_PORTING_TO_GOLDSHIRE) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I'm ready, Ishalah. Teleport me to Goldshire!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(100201, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_magistrix_ishalah(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSay("Safe travels, friend!");

        float dis{ -3.0F };
        float x, y, z;
        pPlayer->GetSafePosition(x, y, z);
        x += dis * cos(pPlayer->GetOrientation());
        y += dis * sin(pPlayer->GetOrientation());
        pPlayer->SummonGameObject(3000204, x, y, z + 0.5F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 30, true);
        pPlayer->SummonGameObject(3000205, x, y, z - 1.5F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 30, true);

        pCreature->HandleEmote(EMOTE_STATE_SUBMERGED);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOHello_go_portal_goldshire(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(QUEST_PORTING_TO_GOLDSHIRE) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->TeleportTo(0, -9464.0f, 62.0f, 56.0f, 0.0f);
        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(NPC_CUSTOM_OBJECTIVE_PORTING_TO_GOLDSHIRE);
        if (cInfo != nullptr)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    return true;
}

struct npc_whizzbotAI : public ScriptedAI
{
    npc_whizzbotAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    void Aggro(Unit *who)
    {
        m_creature->MonsterSay(urand(70000, 70005));
    }

    void Reset() {}

    void KilledUnit(Unit* victim) {}

    void JustDied(Unit*)
    {
        m_creature->MonsterSay(urand(70011, 70016));
    }

    void UpdateAI(const uint32 diff)
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;
        DoMeleeAttackIfReady();
    }

};

CreatureAI* GetAI_npc_whizzbot(Creature *_Creature)
{
    return new npc_whizzbotAI(_Creature);
}

void AddSC_episode_1()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_whizzbot";
    newscript->GetAI = &GetAI_npc_whizzbot;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_portal_goldshire";
    newscript->pGOHello = &GOHello_go_portal_goldshire;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_magistrix_ishalah";
    newscript->pGossipHello = &GossipHello_npc_magistrix_ishalah;
    newscript->pGossipSelect = &GossipSelect_npc_magistrix_ishalah;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_shadowforge_cage";
    newscript->pGOHello = &GOHello_go_shadowforge_cage;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_malvinah_sunblade";
    newscript->pGossipHello = &GossipHello_npc_malvinah_sunblade;
    newscript->pGossipSelect = &GossipSelect_npc_malvinah_sunblade;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_farstrider_well";
    newscript->pGOHello = &GOHello_go_farstrider_well;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_exploration_trigger";
    newscript->GOGetAI = &GetAI_go_exploration_trigger;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_kathy_wake";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_kathy_wake;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_tomb_shadow";
    newscript->GetAI = &GetAI_npc_tomb_shadow;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_nert_blastentom";
    newscript->pQuestRewardedNPC = &QuestComplete_npc_nert_blastentom;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_garthok";
    newscript->pQuestRewardedNPC = &QuestComplete_npc_garthok;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_fm_acquisition";
    newscript->pGOHello = &GOHello_go_fm_acquisition;
    newscript->pGOGossipSelect = &GOSelect_go_fm_acquisition;
    newscript->RegisterSelf();
	
	newscript = new Script;
    newscript->Name = "go_portal_alahthalas";
    newscript->pGOHello = &GOHello_go_portal_alahthalas;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_elsharin";
    newscript->pGossipHello = &GossipHello_npc_elsharin;
    newscript->pGossipSelect = &GossipSelect_npc_elsharin;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_caledra";
    newscript->pGossipHello = &GossipHello_npc_caledra;
    newscript->pGossipSelect = &GossipSelect_npc_caledra;
    newscript->RegisterSelf();

}