
#include "scriptPCH.h"
#include "Utilities/EventProcessor.h"

template <typename Functor>
void DoAfterTime(Player* player, uint32 p_time, Functor&& function)
{
    player->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), player->m_Events.CalculateTime(p_time));
}

enum AlahthalasQuests
{
    ASSISTING_CHILDREN_OF_THE_SUN                      = 80250,
    NPC_CUSTOM_OBJECTIVE_ASSISTING_CHILDREN_OF_THE_SUN = 80229,
    TO_ALAHTHALAS                                      = 80251,
    CRYSTAL_CLEAR_TASK                                 = 80002,
    RELICS_IN_FERALAS                                  = 80003,
    WELCOME_TO_ALAHTHALAS                              = 80256
};

bool GossipHello_npc_caledra(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(ASSISTING_CHILDREN_OF_THE_SUN) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Greetings! I'm here to help.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(90372, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_caledra(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1) 
    { 
        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSay("I'm glad that you wish to assist us. I will do my best to recap where we stand.");
        });

        DoAfterTime(pPlayer, 10 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSay("I will explain the situation. I am Caledra Dawnbreeze, formerly a Ranger-Captain of the Farstriders during the Second War, but now merely a citizen of Stormwind. After the loss of Quel\'Thalas, our people suffered deeply due to our addiction to magic. Some of us, led by our former prince, Kael\'thas, were seduced by dark magic, and, from what I\'ve heard, they betrayed the Alliance by siding with the creatures known as the Naga.");
        });

        DoAfterTime(pPlayer, 20 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSay("I've heard other... more troubling accounts, but regardless, they are lost to us. We should focus on those who have chosen to remain in the Alliance. A few months ago, I managed to gather representatives of our people from all outlying settlements such as the Farstrider lodges.");
        });


        DoAfterTime(pPlayer, 30 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSay("There was a meeting meeting where it was agreed upon that the time has come for our people to join their efforts so that we may create a home for ourselves. One where we could rebuild our people in time. Living in a military lodge or cities belonging to other races simply isn't the way to make progress in reforming our culture.");
        });


        DoAfterTime(pPlayer, 40 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSay("Thankfully Dalaran's surviving archives provided an opportunity. Roughly a century ago, an outpost was built on a peninsula near Quel'Thalas. The outpost is powered by an arcane crystal infused with the energies of the Sunwell itself.");
        });

        DoAfterTime(pPlayer, 50 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSay("In other words, it's a way for us to cope with the addiction to magic that we've been suffering from. The crystal will not last forever, but it will buy us time to find a cure. Our scouts have managed to find the site, and they've confirmed that it is inhabitable. Our people have begun to settle the outpost, and they have named it Alah'Thalas, the Land of Light in our tongue.");
        });

        DoAfterTime(pPlayer, 60 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(NPC_CUSTOM_OBJECTIVE_ASSISTING_CHILDREN_OF_THE_SUN);
            if (cInfo != nullptr)
                player->KilledMonster(cInfo, ObjectGuid());

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSay("However, the buildings are old and have not been maintained properly. We lack the reagents and materials to sustain the enchantments that protect the outpost. Likewise, the local mine has been infested with creatures. In other words, any help you provide would be greatly appreciated!");
        });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_elsharin(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestRewardStatus(TO_ALAHTHALAS))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Please open a portal to Alah'Thalas.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(90371, pCreature->GetGUID());
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
        pPlayer->SummonGameObject(3000220, x, y, z + 0.5F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 30, true);
        pPlayer->SummonGameObject(3000221, x, y, z - 1.5F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 30, true);

        pCreature->HandleEmote(EMOTE_STATE_SUBMERGED);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOHello_go_portal_alahthalas(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestRewardStatus(TO_ALAHTHALAS))
        pPlayer->TeleportTo(0, 4225.31F, -2723.46F, 121.87F, 0.70F);
    return true;
}

// Goblin starting zone

enum GoblinStartingZone
{
    QUEST_ME_NOT_ANY_KIND_OF_ORC = 80108,
    QUEST_GREEN_GOES_RED         = 80110,
    QUEST_SHADOW_ON_THE_PLATEAU  = 80107,
    ZONE_STONETALON_MOUNTAINS    = 406,
    ZONE_DUROTAR                 = 14,
    NPC_TOMB_SHADOW              = 80120
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

        if (pPlayer->HasItemCount(6948, 1, 0))
            pPlayer->RemoveItemCurrency(6948, 1);
    }   
    return true;
}

// Durotar

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
            creature->MonsterSay("Barely any different for me! I hear you orcs like bashin' skills, I like bashin' skulls, we're gonna get along just fine.");
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
            creature->MonsterSay("Very well, goblins, I'm giving you a chance to prove yourself worthy of the Horde, there is work for you here or further up the road in Orgrimmar, earn the respect of your possible allies. Go now, all around Durotar and honor the Horde.");
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
        pQuestGiver->MonsterSay("Do not be frightened, these troggs are small and weak. They're easy to take out alone. However, if they swarm the caravans, people could get hurt, and we cannot spare more men to deal with them while keeping the other threats out there away from the lodge.");
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

            // Face player and render creature unselectable while speaking
            creature->SetCastingTarget(player);
     //       creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);

            creature->HandleEmote(EMOTE_ONESHOT_CRY);
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

    //        creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
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

#define WHIZZBOT_MIN_AGGRO_TEXT 80000
#define WHIZZBOT_MAX_AGGRO_TEXT 80005
#define WHIZZBOT_MIN_DIE_TEXT   80011
#define WHIZZBOT_MAX_DIE_TEXT   80016

struct npc_whizzbotAI : public ScriptedAI
{
    npc_whizzbotAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    void Aggro(Unit *who)
    {
        m_creature->MonsterSay(irand(WHIZZBOT_MIN_AGGRO_TEXT, WHIZZBOT_MAX_AGGRO_TEXT));
    }

    void Reset() {}

    void KilledUnit(Unit* victim) {}

    void JustDied(Unit*)
    {
        m_creature->MonsterSay(irand(WHIZZBOT_MIN_DIE_TEXT, WHIZZBOT_MAX_DIE_TEXT));
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

bool GOHello_go_crypt_door(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(QUEST_SHADOW_ON_THE_PLATEAU) == QUEST_STATUS_INCOMPLETE)
    {
        pGo->UseDoorOrButton();
        pGo->SummonCreature(NPC_TOMB_SHADOW, 1626.74F, 1698.38F, 146.65F, 5.708F, TEMPSUMMON_TIMED_DESPAWN, 60 * 1000);

        DoAfterTime(pPlayer, 20 * IN_MILLISECONDS,
            [GObjectGuid = pGo->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            GameObject* object = map->GetGameObject(GObjectGuid);
            object->ResetDoorOrButton();
        });
    }
    return false;
}

bool GOHello_go_translocation_orb(Player* pPlayer, GameObject* pGo)
{
    switch (pGo->GetEntry())
    {
    case 3000224: pPlayer->TeleportTo(0, 4235.40F, -2778.20F, 20.65F, 6.25F); break;
    case 3000225: pPlayer->TeleportTo(0, 4225.31F, -2723.46F, 121.87F, 0.70F); break;
    default: break;
    }

    return true;
}

bool GossipHello_npc_nert_joining_horde(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(80135) == QUEST_STATUS_INCOMPLETE) // The Old Goblin and His Silver Tongue
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "He is waiting! Speak!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(80121, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_nert_joining_horde(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80135);
        if (cInfo != nullptr)
            pPlayer->KilledMonster(cInfo, ObjectGuid());

    //TODO:

    //    Eitrigg: "Warchief, I present Nert Blastentom and his friend, <name>, a <class> that aided our troops and civilians back in Razor Hill against the menaces that were.

    //    <Thrall nods as he motions the two of you to move closer.>

    //    <Nert shows little signs of courtesy, this wasn"t a noble"s house, this was the home of warchief and he had to show pride and courage.> "Warchief Thrall, I am Nert and this here is my pal, <name>, we left the Venture Co, some would call us mad, some will call us traitors, we call ourselves survivors.
    //    We know the sins the Company did in the past are not easy to forget, but we turned a new page, as you may have hard, <name> tried to aid your people in any way he could and he will not be the first one to do that.

    //    <Thrall raises his hand in the air, as a sign to stop.>

    //    "Hold on goblin, indeed your friend aided us, but he was rewarded for his aid was he not? I truthfully think it will be hard to convince Cairne of your intentions, since they are at war with the Venture Co.as we speak, goblins have helped the Horde in the past, Gazlowe of Ratchet is a very good friend of mine, I know your worth, I am more than sure you will prove a good asset to the Horde, you will be able to settle in Orgrimmar for now, sell whatever you want within reason, and prove your worth to the Horde, I shall speak to Cairne, be sure to show them of all the people of the Horde that your intentions are good."

    //    <Nert nods.> "Thank you warchief, we will prove ourselves useful in order to survive and we will make sure to show it to others aswell."

    //    Thrall : "That you will, are you the one leading them Nert, or is the one next to you ? "

    //    Nert : "We don't have a leader, goblins are only tied by a Trade Prince, you are our leader, if needed I will speak for the goblins of the Horde."
    //    Thrall : "Very well, I hereby acknowledge these goblins as members of the Horde, from this day forth we fight together side by side as brothers and sisters in arms, may our blades never dull, victory or death!"

    //    <Rounds of applause and cheers and whatever.>

    //    Thrall : <Name> if you are free I might need your aid with something, stick around.

    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

#define GAMBLING_TEXT 80602
#define OPT1 "10 silver coins."
#define OPT2 "1 gold coin."
#define OPT3 "10 gold coins."
#define OPT4 "50 gold coins."

#define COIN_SOUND 1204

#define SPELL_FIREWORK 11543

#define FIVE_MINUTES 5 * 60

#define GAMBLING_QUEST 80300
#define DUMMY_GAMBLING_OBJECTIVE 80600

struct GamblerInfo
{
    uint32 betCount;
    uint32 lastBet;
    time_t timestamp;
};

std::unordered_map<uint64, GamblerInfo> gamblingRecords;

uint32 handleRecords(Player* pPlayer, uint32 amount, int result)
{
    GamblerInfo currentInfo{};
    uint32 newAmount = 0;
    time_t currentTime = time(nullptr);

    if (!gamblingRecords.count(pPlayer->GetGUID()))
    {
        currentInfo =
        {
            0,
            amount,
            currentTime
        };
    }
    else
        currentInfo = gamblingRecords[pPlayer->GetGUID()];

    // Reset count if amount is different or last bet is older than 5 minutes.
    if (currentInfo.lastBet != amount || currentInfo.timestamp < currentTime - FIVE_MINUTES)
        currentInfo.betCount = 0;
    currentInfo.betCount++;

    if (currentInfo.betCount == 3 && currentInfo.lastBet == amount)
    {
        if (result > 75)
            newAmount = amount * 3;

        currentInfo.betCount = 0;
    }
    else if (result > 50)
        newAmount = amount * 2;
    else
        currentInfo.betCount = 0;

    currentInfo.lastBet = amount;
    currentInfo.timestamp = currentTime;
    gamblingRecords[pPlayer->GetGUID()] = currentInfo;

    return newAmount;
}

bool GossipHello_npc_agne_gambler(Player* pPlayer, Creature* pCreature)
{
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_MONEY_BAG, OPT1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_MONEY_BAG, OPT2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_MONEY_BAG, OPT3, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_MONEY_BAG, OPT4, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);

    pPlayer->SEND_GOSSIP_MENU(GAMBLING_TEXT, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_agne_gambler(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    uint32 amount;
    int32 result = 0;

    switch (uiAction)
    {
        case GOSSIP_ACTION_INFO_DEF + 1:
            amount = 1000;
            break;
        case GOSSIP_ACTION_INFO_DEF + 2:
            amount = 10000;
            break;
        case GOSSIP_ACTION_INFO_DEF + 3:
            amount = 100000;
            break;
        case GOSSIP_ACTION_INFO_DEF + 4:
            amount = 500000;
            break;
        default:
            return true;
    }

    if (pPlayer->GetMoney() < amount)
    {
        pPlayer->GetSession()->SendNotification("You don't have enough money!");
        pPlayer->PlayerTalkClass->CloseGossip();
        return true;
    }

    pPlayer->ModifyMoney(amount * -1);

    pCreature->HandleEmote(EMOTE_ONESHOT_ATTACK1H);
    pCreature->PlayDirectSound(COIN_SOUND, pPlayer); // Coin sound

    result = urand(1, 100);

    ChatHandler(pPlayer).PSendSysMessage("Agne rolls a dice for %s... %i!", pPlayer->GetName(), result);

    uint32 amountToAward = handleRecords(pPlayer, amount, result);
    if (amountToAward > 0)
    {
        pPlayer->ModifyMoney(amountToAward);

        if (amountToAward >= amount * 3)
        {
            pCreature->PMonsterEmote("STREAK!");
            pPlayer->SendSpellGo(pPlayer, SPELL_FIREWORK);
        }
        else
            pPlayer->HandleEmote(EMOTE_ONESHOT_CHEER);
    }
    else
        pPlayer->HandleEmote(EMOTE_ONESHOT_CRY);

    pPlayer->CLOSE_GOSSIP_MENU();

    // Complete quest if it's active and incomplete
    if (pPlayer->GetQuestStatus(GAMBLING_QUEST) == QUEST_STATUS_INCOMPLETE) // What's Yours is Ours
    {
        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(DUMMY_GAMBLING_OBJECTIVE);
        if (cInfo != nullptr)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }

    return true;
}

bool GossipHello_npc_rov(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(80304) == QUEST_STATUS_INCOMPLETE) // Quark's Justice
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "I hear Sturk owes The Rov a punching debt.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    pPlayer->SEND_GOSSIP_MENU(80603, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_rov(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {     
        Creature* sturk = pPlayer->FindNearestCreature(80604, 20.0F); // Sturk

        if (!sturk)
        {
            pCreature->MonsterSay("Geeh, looks like this sneaky bastard is gone.");
            return false;
        }

        pCreature->MonsterSay("About time The Rov gets to shut that idiot down, The Rov will beat him up.");
        pCreature->GetMotionMaster()->MovePoint(1, 2025.37, -4633.34, 29.55, 0, 2.0F);
        pCreature->SetWalk(true);

        DoAfterTime(pPlayer, 7 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer, sturkGuid = sturk->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);
            Creature* sturk_mob = map->GetCreature(sturkGuid);

            if (!creature || !sturkGuid)
                return;

            creature->Attack(sturk_mob, true);

            CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80606);
            if (cInfo != nullptr)
                player->KilledMonster(cInfo, ObjectGuid());
        });

        DoAfterTime(pPlayer, 6 * IN_MILLISECONDS,
            [player = pPlayer, sturkGuid = sturk->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* sturk_mob = map->GetCreature(sturkGuid);

            sturk_mob->MonsterSay("Hey, hey, not the face man!");
            sturk_mob->GetMotionMaster()->MovePoint(1, 2026.39, -4645.33, 29.66, 0, 5.0F);
            sturk_mob->SetWalk(false);
        });

        DoAfterTime(pPlayer, 11 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer, sturkGuid = sturk->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);
            Creature* sturk_mob = map->GetCreature(sturkGuid);

            creature->ForcedDespawn(300);
            sturk_mob->ForcedDespawn(300);
        });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_deino(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestRewardStatus(80300)) // A Tusken Affair
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Open a portal to Amani'Alor.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(pCreature->GetDefaultGossipMenuId(), pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_deino(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSay("May the spirits be with ya and the Loa guide ya steps.");

        float dis{ -3.0F };
        float x, y, z;
        pPlayer->GetSafePosition(x, y, z);
        x += dis * cos(pPlayer->GetOrientation());
        y += dis * sin(pPlayer->GetOrientation());
        pPlayer->SummonGameObject(3000240, x, y, z + 0.5F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 30, true);
        pPlayer->SummonGameObject(3000241, x, y, z - 1.5F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 30, true);

        pCreature->HandleEmote(EMOTE_STATE_SUBMERGED);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOHello_go_portal_amanialor(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestRewardStatus(80300)) // A Tusken Affair
        pPlayer->TeleportTo(1, 2862.1F, 2450.4F, 148.33F, 0.33F);
    return true;
}

bool GOHello_go_spirit_pyre(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(80301) == QUEST_STATUS_INCOMPLETE) // Lighting the Pyres
    {
        pGo->UseDoorOrButton(60);

        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80803);
        if (cInfo != nullptr)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    return false;
}

bool QuestAccept_npc_teslinah(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 80261) // Teslinah's Search I
    {
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_CRY);
        pQuestGiver->MonsterSay("Thank you, thank you, thank you! I am so happy! We should go to Stormwind, let\'s find someone important who can help! I believe miss Tanilaeh in the Golden Dawn Institute can take us back!");
    }
    return false;
}

bool QuestRewarded_npc_teslinah(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 80261) // Teslinah's Search I
    {
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_CHEER);
        pQuestGiver->MonsterSay("Mommy is gone but we will find her! I am sure! Until then I am happy and excited to adventure with you! We\'re the bestest friends now! We\'re going to have a lot of fun seeing the world! He-he!");
    }
    return false;
}

struct go_teslinah_search : public GameObjectAI
{
    explicit go_teslinah_search(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_uiUpdateTimer = 10000;
    }

    uint32 m_uiUpdateTimer;

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_uiUpdateTimer < uiDiff)
        {
            std::list<Player*> players;
            MaNGOS::AnyPlayerInObjectRangeCheck check(me, 15.0f, true, false);
            MaNGOS::PlayerListSearcher<MaNGOS::AnyPlayerInObjectRangeCheck> searcher(players, check);

            Cell::VisitWorldObjects(me, searcher, 15.0f);

            for (Player* pPlayer : players)
            {
                if (pPlayer->GetQuestStatus(80261) == QUEST_STATUS_INCOMPLETE) // Teslinah's Search I
                {
                    Creature* teslinah = pPlayer->GetMiniPet();

                    if (!teslinah)
                        break;

                    switch (me->GetEntry())
                    {
                    case 3000250:
                    {                    
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80270);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("Ooh this place is huge! Where do we go now? ? Let's start in the mage district! We can also look at the pub, I heard people drink there when they're sad! My mom is definitely sad without me.");
                        break;
                    }
                    case 3000251:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80271);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("I feel the magic in the air! This place is nice but not as pretty or magical as Silvermoon!");
                        break;
                    }
                    case 3000252:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80272);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("Mommy isn't here... Let's keep moving!");
                        break;
                    }
                    case 3000253:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80273);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("This place is scary, there's bad magic here and it smells horrible! Can we leave?! Please?");
                        break;
                    }
                    }
                }
                if (pPlayer->GetQuestStatus(80262) == QUEST_STATUS_INCOMPLETE) // Teslinah's Search II
                {
                    Creature* teslinah = pPlayer->GetMiniPet();

                    if (!teslinah)
                        break;

                    switch (me->GetEntry())
                    {
                    case 3000254:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80274);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("Look it's a Night Elf Priestess! And it's a Moonwell! I love all the grass and glowing plants! This place is nice! I bet Mommy would like it! Let's keep searching so we can show it to her!");
                        break;
                    }
                    case 3000255:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80275);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("Yuck! This place smells... Would Mommy really be here?");
                        break;
                    }
                    case 3000256:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80276);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("Oooh, this place looks much more civil... But I am sure my Mommy didn't go to the Dwarf lands...");
                        break;
                    }
                    case 3000257:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80277);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("Ooh our people have settled here! It's pretty, not as pretty as Silvermoon but pretty!... This place isn't large though and Mommy isn't here. Let's keep looking!");
                        break;
                    }
                    }
                }
                if (pPlayer->GetQuestStatus(80263) == QUEST_STATUS_INCOMPLETE) // Teslinah's Search III
                {
                    Creature* teslinah = pPlayer->GetMiniPet();

                    if (!teslinah)
                        break;

                    switch (me->GetEntry())
                    {
                    case 3000258:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80278);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("That looks so weird! The Gnomes made this, right? I'm sure Mommy isn't there, that leads to the Dwarf city I think... It's cold there, mommy hates the cold.");
                        break;
                    }
                    case 3000259:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80279);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("Ooh the King lives there! We shouldn't disturb him... Mommy isn't there either, they wouldn't allow her in, we don't have much... Mommy is pretty but we lost everything when Quel'thalas fell.");
                        break;
                    }
                    case 3000260:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80280);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("I heard this place existed before the new town was built! There's so many shops but the streets are also so crammed it is a bit scary...");
                        break;
                    }
                    case 3000261:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80281);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("This place smells strange... Mommy isn't here either, I am worried, where could she be?");
                        break;
                    }
                    }
                }
                if (pPlayer->GetQuestStatus(80264) == QUEST_STATUS_INCOMPLETE) // Teslinah's Search IV
                {
                    Creature* teslinah = pPlayer->GetMiniPet();

                    if (!teslinah)
                        break;

                    switch (me->GetEntry())
                    {
                    case 3000262:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80282);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("The army is there... Could my mom have been arrested? But she didn't commit any crime... I don't think this is the place, we can come back here if we don't find her anywhere else.");
                        break;
                    }
                    case 3000263:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80283);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("It's the Cathedral! It's so huge! That's amazing!");
                        break;
                    }
                    case 3000264:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80284);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("If mommy is gone, I could end up there... I don't want to think about that... It's so sad.");
                        teslinah->HandleEmote(EMOTE_ONESHOT_CRY);
                    }
                        break;
                    case 3000265:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80285);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("Ooh! Look at this place! It's... Amazing! Wow! Look at how pretty this place is!");
                        break;
                    }
                    }
                }
                if (pPlayer->GetQuestStatus(80265) == QUEST_STATUS_INCOMPLETE) // Teslinah's Search V
                {
                    Creature* teslinah = pPlayer->GetMiniPet();

                    if (!teslinah)
                        break;

                    switch (me->GetEntry())
                    {
                    case 3000266:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80286);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("This place... is not pretty, it smells and is scary, can we leave please? I don't like how the man in red looks at me.");
                        break;
                    }
                    case 3000267:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80287);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("This is bad, this is bad, please let's go? I'm scared.");
                        break;
                    }
                    case 3000268:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80288);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("Oh there's so many people! I remember when we first arrived here by Gryphon! Their feathers were fluffy! Could Mom be here?");
                        break;
                    }
                    case 3000269:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80289);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSay("Oh... In there! That's the Visitor Center where we first checked in when we arrived, maybe they know something!");
                        break;
                    }
                    }
                }
            }
            m_uiUpdateTimer = 10000;
        }
        else
        {
            m_uiUpdateTimer -= uiDiff;
        }
    }
};

GameObjectAI* GetAI_go_teslinah_search(GameObject* gameobject)
{
    return new go_teslinah_search(gameobject);
}

void AddSC_episode_1()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "go_teslinah_search";
    newscript->GOGetAI = &GetAI_go_teslinah_search;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_teslinah";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_teslinah;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_teslinah;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_spirit_pyre";
    newscript->pGOHello = &GOHello_go_spirit_pyre;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_portal_amanialor";
    newscript->pGOHello = &GOHello_go_portal_amanialor;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_deino";
    newscript->pGossipHello = &GossipHello_npc_deino;
    newscript->pGossipSelect = &GossipSelect_npc_deino;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_rov";
    newscript->pGossipHello = &GossipHello_npc_rov;
    newscript->pGossipSelect = &GossipSelect_npc_rov;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_agne_gambler";
    newscript->pGossipHello = &GossipHello_npc_agne_gambler;
    newscript->pGossipSelect = &GossipSelect_npc_agne_gambler;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_nert_joining_horde";
    newscript->pGossipHello = &GossipHello_npc_nert_joining_horde;
    newscript->pGossipSelect = &GossipSelect_npc_nert_joining_horde;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_translocation_orb";
    newscript->pGOHello = &GOHello_go_translocation_orb;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_crypt_door";
    newscript->pGOHello = &GOHello_go_crypt_door;
    newscript->RegisterSelf();

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