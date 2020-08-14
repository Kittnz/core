
#include "scriptPCH.h"

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

        pCreature->MonsterSay("I�m glad that you wish to assist us...I will do my best to recap where we stand..");
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
    player->m_Events.AddEvent(new LambdaBasicEvent(std::move(function)), player->m_Events.CalculateTime(p_time));
}

enum RefugeeNPCs
{
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
        Creature* NertBlastenton    = pQuestGiver->SummonCreature(NPC_NERT_BLASTENTOM,      268.11F, -4710.95F, 17.58F, 3.87F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);
        Creature* GrizzleEnforcer   = pQuestGiver->SummonCreature(NPC_GRIZZLE_THE_ENFORCER, 288.25F, -4721.18F, 13.34F, 2.50F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);
        Creature* MaytenBoomfire    = pQuestGiver->SummonCreature(NPC_MAYTEN_BOOMRIFLE,     290.45F, -4717.65F, 13.34F, 2.59F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);
        Creature* LeytiQuicktongue  = pQuestGiver->SummonCreature(NPC_LEYTI_QUICKTONGUEM,   293.18F, -4716.50F, 13.09F, 2.59F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);
        Creature* WizetteIcewhistle = pQuestGiver->SummonCreature(NPC_WIZETTE_ICEWHISTLE,   290.78F, -4720.42F, 13.08F, 2.29F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);
        Creature* AmriDemondeal     = pQuestGiver->SummonCreature(NPC_AMRI_DEMONDEAL,       289.36F, -4723.89F, 12.91F, 2.80F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);
        Creature* SpratNozzleton    = pQuestGiver->SummonCreature(NPC_SPRAT_NOZZLETON,      293.27F, -4719.20F, 12.74F, 2.87F, TEMPSUMMON_TIMED_DESPAWN, 1 * MINUTE * IN_MILLISECONDS);

        DoAfterTime(pPlayer, 4 * IN_MILLISECONDS,
            [CreatureGuid = NertBlastenton->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return false;

            creature->HandleEmote(ANIM_EMOTE_TALK);
            creature->MonsterSay("Mister Gar�thok, may I introduce ya to my crew ? We�ve all got nowhere else to go, and we hear that�s as good a reason as any to join the Horde.");
        });

        DoAfterTime(pPlayer, 7 * IN_MILLISECONDS,
            [CreatureGuid = GrizzleEnforcer->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature) 
                return false;

            creature->HandleEmote(ANIM_EMOTE_TALK);
            creature->MonsterSay("Barely any different for me!I hear you orcs like bashin� skills, I like bashin� skulls, we�re gonna get along just fine.");
        });

        DoAfterTime(pPlayer, 10 * IN_MILLISECONDS,
            [CreatureGuid = MaytenBoomfire->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return false;

            creature->HandleEmote(ANIM_EMOTE_TALK);
            creature->MonsterSay("Is what I hear true? You guys use bows? Buddy, buddy. Get with the century! I�ll show you some real weapons.");
        });

        DoAfterTime(pPlayer, 13 * IN_MILLISECONDS,
            [CreatureGuid = LeytiQuicktongue->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return false;

            creature->HandleEmote(ANIM_EMOTE_BOW);
            creature->MonsterTextEmote("Leyti Quicktongue bows silently.");
        });

        DoAfterTime(pPlayer, 14 * IN_MILLISECONDS,
            [CreatureGuid = WizetteIcewhistle->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return false;

            creature->HandleEmote(ANIM_EMOTE_TALK);
            creature->MonsterTextEmote("Do ya even have a mage to help out around here? Well, I guess I can set up shop, conjure up some water. For a price, of course, but also for the Horde!");
        });

        DoAfterTime(pPlayer, 17 * IN_MILLISECONDS,
            [CreatureGuid = AmriDemondeal->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return false;

            creature->HandleEmote(ANIM_EMOTE_TALK);
            creature->MonsterTextEmote("I�ve made some bad deals with demons, and I know you orcs have too.Thanks for takin� us in.");
        });

        DoAfterTime(pPlayer, 20 * IN_MILLISECONDS,
            [CreatureGuid = SpratNozzleton->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return false;

            creature->HandleEmote(ANIM_EMOTE_TALK);
            creature->MonsterTextEmote("Who cares about honor? Where�s the food!?");
        });

        DoAfterTime(pPlayer, 23 * IN_MILLISECONDS,
            [CreatureGuid = pQuestGiver->GetObjectGuid()]()
        {
            Map* map = sMapMgr.FindMap(1);
            Creature* creature = map->GetCreature(CreatureGuid);

            if (!creature)
                return false;

            creature->MonsterTextEmote("Gar�thok laughs.");
            creature->MonsterSay("You�ll do nicely.Welcome to the horde, my little green friends.Head up the road to Orgrimmar and get settled in - except you, <name>, if you think you�re strong enough to serve the Horde here for a while.");
        });
    }
    return false;
}


void AddSC_episode_1()
{
    Script *newscript;

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