
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
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("I'm glad that you wish to assist us. I will do my best to recap where we stand.", player);
        });

        DoAfterTime(pPlayer, 10 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("I will explain the situation. I am Caledra Dawnbreeze, formerly a Ranger-Captain of the Farstriders during the Second War, but now merely a citizen of Stormwind. After the loss of Quel\'Thalas, our people suffered deeply due to our addiction to magic. Some of us, led by our former prince, Kael\'thas, were seduced by dark magic, and, from what I\'ve heard, they betrayed the Alliance by siding with the creatures known as the Naga.", player);
        });

        DoAfterTime(pPlayer, 20 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("I've heard other... more troubling accounts, but regardless, they are lost to us. We should focus on those who have chosen to remain in the Alliance. A few months ago, I managed to gather representatives of our people from all outlying settlements such as the Farstrider lodges.", player);
        });


        DoAfterTime(pPlayer, 30 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("There was a meeting where it was agreed upon that the time has come for our people to join their efforts so that we may create a home for ourselves. One where we could rebuild our people in time. Living in a military lodge or cities belonging to other races simply isn't the way to make progress in reforming our culture.", player);
        });


        DoAfterTime(pPlayer, 40 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("Thankfully Dalaran's surviving archives provided an opportunity. Roughly a century ago, an outpost was built on a peninsula near Quel'Thalas. The outpost is powered by an arcane crystal infused with the energies of the Sunwell itself.", player);
        });

        DoAfterTime(pPlayer, 50 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("In other words, it's a way for us to cope with the addiction to magic that we've been suffering from. The crystal will not last forever, but it will buy us time to find a cure. Our scouts have managed to find the site, and they've confirmed that it is inhabitable. Our people have begun to settle the outpost, and they have named it Alah'Thalas, the Land of Light in our tongue.", player);
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
            creature->MonsterSayToPlayer("However, the buildings are old and have not been maintained properly. We lack the reagents and materials to sustain the enchantments that protect the outpost. Likewise, the local mine has been infested with creatures. In other words, any help you provide would be greatly appreciated!", player);
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
        //float dis{ 1.0F };
        //float x, y, z;
        //pPlayer->GetSafePosition(x, y, z);
        //x += dis * cos(pPlayer->GetOrientation());
        //y += dis * sin(pPlayer->GetOrientation());
        pPlayer->SummonGameObject(3000220, -9002.817F, 883.549F, 29.58F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 30, true);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_sunkiss(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestRewardStatus(TO_ALAHTHALAS))
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Please open a portal to Stormwind.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }

    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(90371, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_sunkiss(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSay("Al diel shala!", 10);
        pPlayer->TeleportTo(0, -9009.26F, 883.30F, 29.62F, 0.57F);
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

bool GossipHello_npc_nert_blastentom(Player* pPlayer, Creature* pCreature)
{
    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(80100, pCreature->GetGUID());
    return true;
}

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
            [CreatureGuid = NertBlastenton->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("Mister Gar'thok, may I introduce ya to my crew? We've all got nowhere else to go, and we hear that's as good a reason as any to join the Horde.", player);
        });

        DoAfterTime(pPlayer, 13 * IN_MILLISECONDS,
            [CreatureGuid = GrizzleEnforcer->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature) 
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("Barely any different for me! I hear you orcs like bashin' skills, I like bashin' skulls, we're gonna get along just fine.", player);
        });

        DoAfterTime(pPlayer, 21 * IN_MILLISECONDS,
            [CreatureGuid = MaytenBoomfire->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("Is what I hear true? You guys use bows? Buddy, buddy. Get with the century! I'll show you some real weapons.", player);
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
            [CreatureGuid = WizetteIcewhistle->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("Do ya even have a mage to help out around here? Well, I guess I can set up shop, conjure up some water. For a price, of course, but also for the Horde!", player);
        });

        DoAfterTime(pPlayer, 39 * IN_MILLISECONDS,
            [CreatureGuid = AmriDemondeal->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("I've made some bad deals with demons, and I know you orcs have too. Thanks for takin' us in.", player);
        });

        DoAfterTime(pPlayer, 48 * IN_MILLISECONDS,
            [CreatureGuid = SpratNozzleton->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("Who cares about honor? Where's the food!?", player);
        });

        DoAfterTime(pPlayer, 53 * IN_MILLISECONDS,
            [CreatureGuid = pQuestGiver->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_LAUGH);
            creature->MonsterTextEmote("Gar'thok laughs.");
            creature->MonsterSayToPlayer("Very well, goblins. I am giving you a chance to prove yourself worthy of the Horde. There is work for you here and further up the road in Orgrimmar. Earn the respect of your new allies. Go now all around Durotar and honor the Horde.", player);
        });
    }
    return false;
}

bool QuestAccept_npc_nert_blastentom(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == QUEST_ME_NOT_ANY_KIND_OF_ORC)
    {
        DoAfterTime(pPlayer, 2 * IN_MILLISECONDS,
            [CreatureGuid = pQuestGiver->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_NO);
            creature->MonsterSayToPlayer("Alright, I'll be honest with you. The boss isn't gonna be happy we're not bringing him back his treasure. But I've seen enough, and I think you have too, right?", player);
        });

        DoAfterTime(pPlayer, 10 * IN_MILLISECONDS,
            [CreatureGuid = pQuestGiver->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_QUESTION);
            creature->MonsterSayToPlayer("We can't go back to the Venture Co, or the boss'll find us. And there's no way the Steamwheedle Cartel will trust us, not after the Venture Co puts out the word that we took off with their loot, right?", player);
        });


        DoAfterTime(pPlayer, 17 * IN_MILLISECONDS,
            [CreatureGuid = pQuestGiver->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_LAUGH);
            creature->MonsterSayToPlayer("So here we are. A bunch of smelly, grimy refugees without a single coin to our name. Who in the world would take us in?", player);
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
            [CreatureGuid = pQuestGiver->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->MonsterSayToPlayer("I think I have just the place... Get the team and hop in the plane.", player);
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
        pQuestGiver->MonsterSayToPlayer("Do not be frightened, these troggs are small and weak. They're easy to take out alone. However, if they swarm the caravans, people could get hurt, and we cannot spare more men to deal with them while keeping the other threats out there away from the lodge.", pPlayer);
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
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_CRY);
            creature->MonsterSayToPlayer("My sister was on that wagon!", player);
        });

        DoAfterTime(pPlayer, 5 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("We all knew there was a risk, but... she was practically here already! It could have been any of us!", player);
        });

        DoAfterTime(pPlayer, 10 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_CRY);
            creature->MonsterSayToPlayer("How could this have happened?! We survived the Scourge, the Wetlands, and the Horde only to have our possessions burned to a cinder while being kidnapped?! It's not fair!", player);
        });

        DoAfterTime(pPlayer, 15 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("I'm sorry. I shouldn't burden you with this. We've all struggled ever since we lost Quel'Thalas, but you've provided so much support for us.", player);
        });

        DoAfterTime(pPlayer, 20 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("The wood, the water, you've even defeated those vile trogg creatures. You're right, I must be calm. Perhaps my sister is still out there. She is the only family I have left, and if anyone can save her, it's you.", player);
        });

        DoAfterTime(pPlayer, 25 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_EXCLAMATION);
            creature->MonsterSayToPlayer("Go speak to that rogueish human woman who led the caravan escorts. Perhaps she can help!", player);
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

            creature->SetCastingTarget(player);
            creature->HandleEmote(EMOTE_ONESHOT_CRY);
            creature->MonsterSayToPlayer("You've saved my sister!", player);
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
            creature->MonsterSayToPlayer("I can't overstate how honored I am to be able to call you my friend. Thanks to you, little Arisha is safe. We're all so overwhelmed by your heroism.", player);
        });


        DoAfterTime(pPlayer, 14 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("Several wagons have moved on to Stormwind while you were away, but a lot of us have decided to stay here for the time being. Perhaps even forever.", player);
        });


        DoAfterTime(pPlayer, 19 * IN_MILLISECONDS,
            [CreatureGuid = pCreature->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_APPLAUD);
            creature->MonsterSayToPlayer("I believe Kathy wishes to speak with you. Here is a present from me. Take care, okay? Wherever you may end up, remember that we'll always remain friends!", player);
            CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(NPC_CUSTOM_OBJECTIVE_SUNBLADE_RENUNION);
            if (cInfo != nullptr)
                player->KilledMonster(cInfo, ObjectGuid());           
        });
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

#define DARK_KEY 80216

#define ID_GOBJECT_SHADOWFORGECAGE_RESET 1

bool GOHello_go_shadowforge_cage(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->HasItemCount(DARK_KEY, 1))
    {
        pGo->UseDoorOrButton();
        pPlayer->HandleEmote(EMOTE_ONESHOT_KNEEL);

		if (GameObjectAI* gAI = pGo->AI())
		{
			gAI->SetData(ID_GOBJECT_SHADOWFORGECAGE_RESET, 1);
		}

        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(NPC_CUSTOM_OBJECTIVE_ITEM_SCRAPPING);
        if (cInfo != nullptr)
            pPlayer->KilledMonster(cInfo, ObjectGuid());

        Creature* Alisha = pPlayer->FindNearestCreature(NPC_ALISHA_SUNBLADE, 5.0F);

        if (Alisha)
        {
            Alisha->MonsterSayToPlayer("I thought I'd never see my sister again. Thank you, hero!", pPlayer);
            // Change it later to real coords.
            float fX, fY, fZ;
            Alisha->GetRandomPoint(Alisha->GetPositionX(), Alisha->GetPositionY(), Alisha->GetPositionZ(), 15.0f, fX, fY, fZ);
            Alisha->GetMotionMaster()->MovePoint(0, -5831.14F, -4119.65F, 387.77F, 0, 3.0F);
            Alisha->SetWalk(false);

            DoAfterTime(pPlayer, 25 * IN_MILLISECONDS,
                [CreatureGuid = Alisha->GetObjectGuid()]()
            {
                Map* map = sMapMgr.FindMap(0);
                Creature* creature = map->GetCreature(CreatureGuid);

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

struct go_shadowforge_cage : public GameObjectAI
{
	explicit go_shadowforge_cage(GameObject* pGo) : GameObjectAI(pGo)
	{}

	uint32 BackTimer = 0;
	char DebugInfo[32];

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
		if (id == ID_GOBJECT_SHADOWFORGECAGE_RESET)
		{
			BackTimer = 25 * IN_MILLISECONDS;
		}
		GameObjectAI::SetData(id, value);
	}

	virtual const char* GetDebugInfo() override
	{
		sprintf(DebugInfo, "BackTimer %u", BackTimer);
		return DebugInfo;
	}

};

GameObjectAI* GetAI_shadoforge_cage(GameObject* Obj)
{
	return new go_shadowforge_cage(Obj);
}


bool GossipHello_npc_magistrix_ishalah(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(QUEST_PORTING_TO_GOLDSHIRE) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I'm ready, Ishalah. Teleport me to Goldshire!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        pPlayer->SEND_GOSSIP_MENU(100201, pCreature->GetGUID());
        return true;
    }
    pPlayer->SEND_GOSSIP_MENU(100202, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_magistrix_ishalah(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->HandleEmote(EMOTE_ONESHOT_SPELLPRECAST);
        pCreature->MonsterSay("Safe travels, friend!");
        pPlayer->SummonGameObject(3000204, -5660.109F, -4258.419F, 407.899F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 30, true);
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
        // Remove Hearthstone:
        if (pPlayer->HasItemCount(6948, 1, 0))
            pPlayer->RemoveItemCurrency(6948, 1);
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

#define GAMBLING_TEXT 80602
#define OPT1 "10 silver coins."
#define OPT2 "1 gold coin."
#define OPT3 "10 gold coins."
#define OPT4 "50 gold coins."

#define COIN_SOUND 1204

#define SPELL_FIREWORK 11543

#define FIVE_MINUTES 5 * 60

#define GAMBLING_QUEST 80306
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
    uint32 amountToAward;
    uint8 result = 0;

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

    pCreature->PMonsterEmote("Agne rolls a dice for %s... %u!", nullptr, false, pPlayer->GetName(),
            result);

    amountToAward = handleRecords(pPlayer, amount, result);
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
    if (pPlayer->GetQuestStatus(80310) == QUEST_STATUS_INCOMPLETE) // Quark's Justice
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
        pCreature->MonsterSayToPlayer("May the spirits be with ya and the Loa guide ya steps.", pPlayer);

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

		if (GameObjectAI* GoAI = pGo->AI())
		{
			// reset gameobject after 25 sec.
			GoAI->SetData(1, 1);
		}

        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80803);
        if (cInfo != nullptr)
            pPlayer->KilledMonster(cInfo, ObjectGuid());
    }
    return false;
}

struct go_spirit_pyre : public GameObjectAI
{
	explicit go_spirit_pyre(GameObject* pGo) : GameObjectAI(pGo)
	{}

	uint32 BackTimer = 0;
	char DebugInfo[32];

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
		if (id == ID_GOBJECT_SHADOWFORGECAGE_RESET)
		{
			BackTimer = 25 * IN_MILLISECONDS;
		}
		GameObjectAI::SetData(id, value);
	}

	virtual const char* GetDebugInfo() override
	{
		sprintf(DebugInfo, "BackTimer %u", BackTimer);
		return DebugInfo;
	}

};

GameObjectAI* GetAI_go_spirit_pyre(GameObject* Obj)
{
	return new go_spirit_pyre(Obj);
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
        pQuestGiver->MonsterSayToPlayer("Thank you, thank you, thank you! I am so happy! We should go to Stormwind. Let\'s find someone important who can help! I believe miss Tanilaeh in the Golden Dawn Institute can take us back!", pPlayer);
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
        pQuestGiver->MonsterSayToPlayer("Mommy is gone, but we will definitely find her! I am sure of it! Until then, I am happy and excited to adventure with you! We\'re the bestest friends now! We\'re going to have a lot of fun seeing the world! Hehe!", pPlayer);
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
                        teslinah->MonsterSayToPlayer("Oooh, this place is huge! Where do we go now? Let's start in the Mage District! We can also look at that weird-smelling place. The pub? I heard people drink special drinks there when they're sad! My mom is definitely sad without me.", pPlayer);
                        break;
                    }
                    case 3000251:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80271);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSayToPlayer("I feel the magic in the air! This place is nice, but not as pretty or magical as Silvermoon!", pPlayer);
                        break;
                    }
                    case 3000252:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80272);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSayToPlayer("Mommy isn't here... Let's keep moving!", pPlayer);
                        break;
                    }
                    case 3000253:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80273);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSayToPlayer("This place is scary. There's bad magic here, and it smells horrible! Can we leave?! Please?", pPlayer);
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
                        teslinah->MonsterSayToPlayer("Look, it's a night elf priestess! And a moonwell! I love all the grass and glowing plants. This place is really nice. I bet Mommy would like it! Let's keep searching so that we can show it to her.", pPlayer);
                        break;
                    }
                    case 3000255:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80275);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSayToPlayer("Yuck! This place smells. Would Mommy really be here?", pPlayer);
                        break;
                    }
                    case 3000256:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80276);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSayToPlayer("Oooh, this place looks much kinder than the other one. But I'm sure my mom didn't go to the dwarf lands.", pPlayer);
                        break;
                    }
                    case 3000257:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80277);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSayToPlayer("This is the place where our people settled! It's pretty. Not as pretty as Silvermoon, but pretty. This place isn't large though, and Mommy isn't here. Let's keep looking!", pPlayer);
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
                        teslinah->MonsterSayToPlayer("That looks so weird. The gnomes made this, right? I'm sure Mommy isn't here. That tram leads to the dwarf city, I think. It's cold there, and Mommy hates the cold.", pPlayer);
                        break;
                    }
                    case 3000259:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80279);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSayToPlayer("The king lives there! We shouldn't disturb him, though, even if finding my mommy is super important. I know she isn't there either because they wouldn't allow her in. We don't have much. Mommy is very pretty, but we lost everything when Quel'Thalas fell.", pPlayer);
                        break;
                    }
                    case 3000260:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80280);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSayToPlayer("I heard that this place existed before the new town was built! There's so many shops, but the streets are all so crammed that it's a little bit scary.", pPlayer);
                        break;
                    }
                    case 3000261:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80281);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSayToPlayer("This place is smelly. Mommy isn't here either. I am really worried. Where else could she be?", pPlayer);
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
                        teslinah->MonsterSayToPlayer("The army is there. Could my mom have been arrested? But she didn't commit any crimes. I don't think this is the place, but we can come back here if we don't find her anywhere else.", pPlayer);
                        break;
                    }
                    case 3000263:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80283);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSayToPlayer("It's the Cathedral! Wow, it's so huge! That's amazing!", pPlayer);
                        break;
                    }
                    case 3000264:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80284);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSayToPlayer("If Mommy is really gone, then I could end up in that place. I don't even want to think about that. It makes me so sad that I could cry.", pPlayer);
                        teslinah->HandleEmote(EMOTE_ONESHOT_CRY);
                    }
                    break;
                    case 3000265:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80285);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSayToPlayer("Look at this place! It's amazing! Wow, it's breathtaking!", pPlayer);
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
                        teslinah->MonsterSayToPlayer("This looks awful, and it's gross and scary. Can we leave, please? I don't like the way that man in red is looking at me.", pPlayer);
                        break;
                    }
                    case 3000267:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80287);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSayToPlayer("This is bad. This is really bad. I don't like it here. Let's go, please? I'm scared.", pPlayer);
                        break;
                    }
                    case 3000268:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80288);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSayToPlayer("Oh, there's so many people here! I remember when we first arrived after flying on gryphon's back! Their feathers were really fluffy and soft. Could Mom be here?", pPlayer);
                        break;
                    }
                    case 3000269:
                    {
                        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80289);
                        pPlayer->KilledMonster(cInfo, ObjectGuid());
                        teslinah->MonsterSayToPlayer("Oh, in there! That's the Visitor's Center where we first checked in when we arrived. Maybe they might know something!", pPlayer);
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

bool GossipHello_npc_iluria(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(80315) == QUEST_STATUS_INCOMPLETE) // Apple a Day...
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "A young tree with few rings named Applebough came to us for guidance and expertise with his leaves. Will you offer your time to help us find a cure for his ailment?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }
    pPlayer->SEND_GOSSIP_MENU(1, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_iluria(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->AddItem(80865, 1);
        pCreature->MonsterSayToPlayer("Ahh! Applebough. Of course. Here's the balm that will help.", pPlayer);
        pCreature->HandleEmote(EMOTE_ONESHOT_TALK);
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool QuestAccept_npc_applebough(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 80315) // Apple a Day
    {        
        pQuestGiver->CastSpell(pQuestGiver, 5570, true); // Insects
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_CRY);

        if (pQuestGiver->GetDisplayId() == 18356) // Green
        {
            pQuestGiver->SetDisplayId(18029); // Yellow
            pQuestGiver->MonsterSayToPlayer("My leaves. They fall. Big sad.", pPlayer);
        }
        else
            pQuestGiver->MonsterSayToPlayer("Was green. Had fruits. Was happy...", pPlayer);
    }
    return false;
}

bool QuestRewarded_npc_applebough(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 80315) // Apple a Day
    {
        pQuestGiver->HandleEmote(EMOTE_ONESHOT_CHEER);
        // I don't understand why he's not cheering? Model has /cheer animation.
        pQuestGiver->SetDisplayId(18356); // Green
        pQuestGiver->MonsterSayToPlayer("I feel revitalized! The life is flowing back into my branches. Thank you, $N. This is a kindness that I won't soon forget!", pPlayer);
        return true;
    }

	return false;
}

bool GossipHello_npc_vanira_unicorn_vendor(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->getRace() == RACE_HIGH_ELF || pPlayer->GetReputationRank(269) == 7)
    {
        pPlayer->SEND_VENDORLIST(pCreature->GetGUID());
        return true;
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    pCreature->MonsterSayToPlayer("My unicorns are for sale only to the elves of the Silvermoon Remnants and to their exalted allies.", pPlayer);
    return true;
}

bool QuestComplete_npc_voldana(Player* pPlayer, Creature* pQuestGiver, Quest const* pQuest)
{
    if (!pQuestGiver)
        return false;

    if (!pPlayer)
        return false;

    if (pQuest->GetQuestId() == 80393)
    {

        DoAfterTime(pPlayer, 3 * IN_MILLISECONDS,
            [CreatureGuid = pQuestGiver->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("Loania and her sister Lieren are the daughters of a Human paladin named Dougan. I have known Dougan since the Second war when we fought the Horde together.", player);
        });

        DoAfterTime(pPlayer, 9 * IN_MILLISECONDS,
            [CreatureGuid = pQuestGiver->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("During the Second war, Dougan, myself, and a dwarf of the Wildhammer clan known as Kardan were close companions. After the war, Dougan and his wife Adena settled down in Grand Hamlet. ", player);
        });

        DoAfterTime(pPlayer, 15 * IN_MILLISECONDS,
            [CreatureGuid = pQuestGiver->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("Grand Hamlet later fell under a curse and became known as Darkshire, but I digress. One day, Dougan heard reports of villagers disappearing in the nearby cursed tower known as Karazhan. He summoned Kardan and I, and together we entered the tower to attempt a rescue.", player);
        });

        DoAfterTime(pPlayer, 23 * IN_MILLISECONDS,
            [CreatureGuid = pQuestGiver->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_CRY);
            creature->MonsterSayToPlayer("It didn't go well, Karazhan was far more treacherous than we could have anticipated... Dougan didn't make it, and his wife subsequently lost the will to live. Kardan and I each adopted one of his infant twin daughters and raised them as our own.", player);
        });

        DoAfterTime(pPlayer, 30 * IN_MILLISECONDS,
            [CreatureGuid = pQuestGiver->GetObjectGuid(), player = pPlayer]()
        {
            Map* map = sMapMgr.FindMap(0);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return;

            creature->HandleEmote(EMOTE_ONESHOT_TALK);
            creature->MonsterSayToPlayer("I believe the girls have a destiny before them, perhaps you will play a part in it too. For now, take this as your reward with my blessing.", player);
        });

    }
    return false;
}

bool GOHello_go_kheyna_wormhole(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->GetQuestStatus(80395) == QUEST_STATUS_INCOMPLETE)
        if (CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(80938))
            pPlayer->KilledMonster(cInfo, ObjectGuid());

    if (pPlayer->FindNearestCreature(81041, 15.0F))
        return true;

    if (pPlayer->GetQuestStatus(80395) == QUEST_STATUS_INCOMPLETE || pPlayer->GetQuestStatus(80395) == QUEST_STATUS_COMPLETE || pPlayer->GetQuestStatus(80396) == QUEST_STATUS_COMPLETE) // A Glittering Opportunity
        pGo->SummonCreature(81041, pGo->GetPositionX() + 1.0F, pGo->GetPositionY() + 1.0F, pGo->GetPositionZ(), pGo->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN, 60 * 1000);

    return true;
}

void AddSC_episode_1()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "go_kheyna_wormhole";
    newscript->pGOHello = &GOHello_go_kheyna_wormhole;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_vanira_unicorn_vendor";
    newscript->pGossipHello = &GossipHello_npc_vanira_unicorn_vendor;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_sunkiss";
    newscript->pGossipHello = &GossipHello_npc_sunkiss;
    newscript->pGossipSelect = &GossipSelect_npc_sunkiss;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_applebough";
    newscript->pQuestAcceptNPC = &QuestAccept_npc_applebough;
    newscript->pQuestRewardedNPC = &QuestRewarded_npc_applebough;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_iluria";
    newscript->pGossipHello = &GossipHello_npc_iluria;
    newscript->pGossipSelect = &GossipSelect_npc_iluria;
    newscript->RegisterSelf();

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
	newscript->GOGetAI = &GetAI_go_spirit_pyre;
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
	newscript->GOGetAI = &GetAI_shadoforge_cage;
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
    newscript->pQuestAcceptNPC = &QuestAccept_npc_nert_blastentom;
    newscript->pGossipHello = &GossipHello_npc_nert_blastentom;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_garthok";
    newscript->pQuestRewardedNPC = &QuestComplete_npc_garthok;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_voldana";
    newscript->pQuestRewardedNPC = &QuestComplete_npc_voldana;
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