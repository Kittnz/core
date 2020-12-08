
#include "scriptPCH.h"

bool GossipHello_npc_dirge_the_bouncer(Player* p_Player, Creature* p_Creature)
{
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "What is this place?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Why do they call you Dirge?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
    p_Player->SEND_GOSSIP_MENU(90200, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_dirge_the_bouncer(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        p_Creature->MonsterSay("This be tha Grey Raven lad. Ye better have coin ta pay for yer drinks. There's no handouts here.", 7, 0);
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
        p_Creature->MonsterSay("They call me Dirge, 'cause I'm tha last thing ye hear before they put ye in tha ground.", 7, 0);
    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_chixpixx(Player* p_Player, Creature* p_Creature)
{
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Poke him with a stick!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    p_Player->SEND_GOSSIP_MENU(90370, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_chixpixx(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        switch (p_Player->getClass())
        {
        case CLASS_DRUID:    p_Creature->MonsterSay(90371); break;
        case CLASS_WARRIOR:  p_Creature->MonsterSay(90372); break;
        case CLASS_PRIEST:   p_Creature->MonsterSay(90373); break;
        case CLASS_WARLOCK:  p_Creature->MonsterSay(90374); break;
        case CLASS_MAGE:     p_Creature->MonsterSay(90375); break;
        case CLASS_PALADIN:  p_Creature->MonsterSay(90376); break;
        case CLASS_HUNTER:   p_Creature->MonsterSay(90377); break;
        case CLASS_SHAMAN:   p_Creature->MonsterSay(90378); break;
        case CLASS_ROGUE:    p_Creature->MonsterSay(90379); break;
        default:
            break;
        }
    }
    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_aspirant_shadewalker(Player* p_Player, Creature* p_Creature)
{
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "What is Ardent Watch?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Who is allowed in Ardent Watch?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    p_Player->SEND_GOSSIP_MENU(90343, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_aspirant_shadewalker(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        p_Creature->MonsterSay("Ardent Watch is the central most base of operations for the Argent Dawn and its foreign operations battalion, The Argent Vanguard. Besides Light's Hope itself, it is one of the most well fortified bastions in the fight against the Scourge within the former Eastweald.", 7, 0);
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
        p_Creature->MonsterSay("Being members of the Argent Dawn, they hold no affiliations to the Horde and Alliance short of co-operation in our fight against the Scourge. Due to necessity, the Argent Dawn and Scarlet Crusade have signed a pact making them non-hostile for the moment, yet tensions exist. Members of the Scourge or other shadowy organizations will likely not be welcomed.", 7, 0);
    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_joshua_westfield(Player* p_Player, Creature* p_Creature)
{
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "What is Redwater Syndicate?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    p_Player->SEND_GOSSIP_MENU(90341, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_joshua_westfield(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        p_Creature->MonsterSay("We are a syndicate, we make profit, we work for ourselves and we fight like brothers in arms. Do you think you have what it takes to join a syndicate? Talk to Grohkan!", 7, 0);
        p_Creature->HandleEmote(EMOTE_ONESHOT_EXCLAMATION);
    }

    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}


bool GossipHello_npc_terry_palin(Player* pPlayer, Creature* pCreature)
{

        CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(51299);

        if (cInfo != nullptr)
            pPlayer->KilledMonster(cInfo, ObjectGuid());


    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(90338, pCreature->GetGUID());
    return true;
}

bool GossipHello_npc_lordaeron_alice(Player* p_Player, Creature* p_Creature)
{
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "<Choose blue stone>", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "<Choose red stone>", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    p_Player->SEND_GOSSIP_MENU(90201, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_lordaeron_alice(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        p_Creature->MonsterTextEmote("Alice waves her hand in front of your face. Your reason for coming is no longer clear to you, and you forget what you know about the Ghosts of Lordaeron.");
        p_Creature->MonsterSay("Go! Take the ferry back, and begone! Never return to this place if you value your life!", 33, 0);
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
        p_Creature->MonsterSay("Ah, so the truth is too enticing for you to look away. Very well. Go on ahead, and speak with whoever is here, or wait until someone arrives. It will be a difficult road for you, but I assure you it is the correct one.", 33, 0);

    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

#define ELUNE_WINTER_QUEST 50318     
#define EGGNOG_ITEM        17198      
#define MOONKIN_FED        19705      

bool GossipHello_npc_shivering_moonkin(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->HasAura(MOONKIN_FED))
    {
        pCreature->MonsterSay("Hoot!");
        pCreature->SendPlaySpellVisual(SPELL_VISUAL_KIT_DRINK);
    }
    else
    {
        if (pPlayer->GetQuestStatus(ELUNE_WINTER_QUEST) == QUEST_STATUS_INCOMPLETE)
        {
            if (pPlayer->HasItemCount(EGGNOG_ITEM, 1, 0))
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "<Give moonkin a hot cup of Egg Nog>", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
        pPlayer->SEND_GOSSIP_MENU(90318, pCreature->GetGUID());
    }
    return true;
}

bool GossipSelect_npc_shivering_moonkin(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (!pCreature)
        return true;

    if (!pPlayer)
        return true;

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pCreature->MonsterSay("Hoot!");
        pCreature->MonsterTextEmote(90319);
        pCreature->SendPlaySpellVisual(SPELL_VISUAL_KIT_DRINK);
        pPlayer->AddItem(51248); // Add Snow Covered Feather
        pPlayer->RemoveItemCurrency(EGGNOG_ITEM, 1);
        pCreature->AddAura(MOONKIN_FED);

        SpellAuraHolder* holder = pCreature->GetSpellAuraHolder(MOONKIN_FED);
        holder->SetAuraDuration(300000); // 5 minutes
        holder->UpdateAuraDuration();
    }
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_tinsel(Player* pPlayer, Creature* pCreature)
{
    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(90335, pCreature->GetGUID());
    return true;
}


bool GossipHello_npc_misletoe(Player* pPlayer, Creature* pCreature)
{
    pPlayer->PrepareQuestMenu(pCreature->GetGUID());
    pPlayer->SEND_GOSSIP_MENU(90336, pCreature->GetGUID());
    return true;
}

bool GossipHello_npc_frosty(Player* pPlayer, Creature* pCreature)
{
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Happy Winter Veil, Frosty!\nTeleport me to the Winter Veil Vale!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    pPlayer->SEND_GOSSIP_MENU(90326, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_frosty(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        static const WorldLocation m_WinterVeilVale(0, -4746.845F, 622.921F, 401.9f, 2.49F);
        pPlayer->TeleportTo(m_WinterVeilVale);
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

struct npc_chihkoaAI : public ScriptedPetAI
{
    npc_chihkoaAI(Creature* pCreature) : ScriptedPetAI(pCreature)
    {
    }

    void ReceiveEmote(Player* pPlayer, uint32 uiEmote)
    {
        if (m_creature && m_creature->isAlive())
        {
            if (uiEmote == TEXTEMOTE_DANCE)
                m_creature->MonsterSay("Yeee-ha!");

            if (pPlayer->ToPlayer()->GetQuestStatus(50328) == QUEST_STATUS_INCOMPLETE)
            {
                if (pPlayer->ToPlayer()->GetDrunkValue() > 0)
                {
                    int32 dummy_player{ 70011 };
                    CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(dummy_player);

                    if (cInfo != nullptr)
                        pPlayer->ToPlayer()->KilledMonster(cInfo, ObjectGuid());
                }

            }
        }
    }
};

CreatureAI* GetAI_npc_chihkoa(Creature* pCreature)
{
    return new npc_chihkoaAI(pCreature);
}

struct npc_scripted_companionAI : public ScriptedPetAI
{
    bool init = false;

    npc_scripted_companionAI(Creature* pCreature) : ScriptedPetAI(pCreature)
    {
        init = false;
    }

    void UpdatePetOOCAI(const uint32 uiDiff)
    {
        if (!init && m_creature && m_creature->isAlive() && m_creature->IsPet())
        {
            init = true;
            m_creature->GetMotionMaster()->MoveFollow(m_creature->GetCharmerOrOwnerPlayerOrPlayerItself(),
                                                      PET_FOLLOW_DIST,
                                                      270.0f * (M_PI_F / 180.0f));
        }
    }

    void ReceiveEmote(Player* pPlayer, uint32 uiEmote)
    {
        if (m_creature && m_creature->isAlive() && m_creature->IsPet())
        {
            if (uiEmote == TEXTEMOTE_DANCE)
                m_creature->HandleEmoteCommand(EMOTE_ONESHOT_DANCE);
        }
    }
};

CreatureAI* GetAI_npc_scripted_companion(Creature* pCreature)
{
    return new npc_scripted_companionAI(pCreature);
}

struct lil_foot_petAI : public ScriptedPetAI
{
    bool init = false;

    lil_foot_petAI(Creature* pCreature) : ScriptedPetAI(pCreature)
    {
        init = false;
    }

    void UpdatePetOOCAI(const uint32 uiDiff)
    {
        if (!init && m_creature && m_creature->isAlive() && m_creature->IsPet())
        {
            init = true;
            m_creature->PMonsterSay("Aww! I hate being little!");
            m_creature->GetMotionMaster()->MoveFollow(m_creature->GetCharmerOrOwnerPlayerOrPlayerItself(),
                                                      PET_FOLLOW_DIST,
                                                      270.0f * (M_PI_F / 180.0f));
        }
    }

};

CreatureAI* GetAI_lil_foot_pet(Creature* pCreature)
{
    return new lil_foot_petAI(pCreature);
}

#define ONCE_UPON_A_SHEEP        60005
#define LOST_FARM_SHEEP_ITEM     51220
#define DELICIOUS_ELWYNN_TRUFFLE 51218
#define WOOL_WILL_WORL           60008
#define FLOCK_OF_WOOL            51223

bool GossipHello_npc_lost_farm_sheep(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(ONCE_UPON_A_SHEEP) == QUEST_STATUS_INCOMPLETE)
    {
        if (pPlayer->HasItemCount(DELICIOUS_ELWYNN_TRUFFLE, 0))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Come with me, if you want to live!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
        else
        {
            pCreature->MonsterSay("Ba-a-a-h! Ba-a-a-h!");
            pCreature->GetMotionMaster()->MoveConfused();
        }
    }
    if (pPlayer->GetQuestStatus(WOOL_WILL_WORL) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Attempt to gather some wool.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    }

    pPlayer->SEND_GOSSIP_MENU(90310, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_lost_farm_sheep(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (!pPlayer)
            return false;

        pCreature->MonsterSay("Ba-a-a-h!");
        pCreature->MonsterTextEmote("The sheep scarfs down the truffle, and then it jumps into your bags to rifle around for more!");
        pCreature->ForcedDespawn();
        pPlayer->AddItem(LOST_FARM_SHEEP_ITEM);
        pPlayer->RemoveItemCurrency(DELICIOUS_ELWYNN_TRUFFLE, 1);
    }

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        if (!pPlayer)
            return false;

        int chance_array[100];

        for (int i = 0; i < 100; i++)
        {
            int chance_array = i;
        }

        int chance_rand = rand() % 100;

        if (chance_rand[chance_array] >= 80)
        {
            pCreature->MonsterSay("Ba-a-a-h?");
            pPlayer->AddItem(FLOCK_OF_WOOL, 1);
        }
        else
        {
            pCreature->MonsterSay("Ba-a-a-h! Ba-a-a-h!");
            pCreature->GetMotionMaster()->MoveFleeing(pPlayer, 100);
            pPlayer->KnockBack(2.0F, 3.0F, 3.0F);
        }
    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}


bool GossipHello_daenerys(Player* pPlayer, Creature* pCreature)
{
    if (!pPlayer->HasItemCount(50236, 1, true))
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Do... do you want me to hold that cloak for you?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
    pPlayer->SEND_GOSSIP_MENU(90002, pCreature->GetGUID());
    return true;
}

bool GossipSelect_daenerys(Player* player, Creature* creature, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF) {
        creature->PMonsterSay("Thanks, a good friend of mine crafted this cloak using one of Drogon's scales. You can have it, I don't need it anymore.");
        player->AddItem(50236, 1);
    }
    player->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_title_masker(Player* pPlayer, Creature* pCreature)
{
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I'm not interested, goodbye.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
    if (pPlayer->IsIgnoringTitles())
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I'm ready to show my rank again!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    else if (pPlayer->GetMoney() >= 50000)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Yes... I want some privacy, can you hide my rank? I'll give you the gold.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    pPlayer->SEND_GOSSIP_MENU(90003, pCreature->GetGUID());
    return true;
}

bool GossipSelect_title_masker(Player* player, Creature* creature, uint32 sender, uint32 action) {
    if (action > GOSSIP_ACTION_INFO_DEF) {
        bool hideRank = action == GOSSIP_ACTION_INFO_DEF + 2;
        player->SetIgnoringTitles(hideRank);
        if (hideRank) {
            player->ModifyMoney(-50000);
            ChatHandler(player).PSendSysMessage("|cffff8040You carefully place 5 gold coins in the dealer's hand.|r");
        }
        ChatHandler(player).SendSysMessage("Please logout and login again!");
    }
    player->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_birthday_dragon(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(60000) == QUEST_STATUS_INCOMPLETE)
        if (!pPlayer->GetQuestRewardStatus(60000))
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Speedy is having a Birthday Party today!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
    pPlayer->SEND_GOSSIP_MENU(90301, pCreature->GetGUID());
    return true;
}

bool GossipSelect_birthday_dragon(Player* player, Creature* creature, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF) {
        creature->PMonsterSay("A birthday party? Why would HE need such a ... Nevermind. Since it's Speedy, I'm going to bring some joy to old friend no matter the reason.");
        player->AddItem(51022, 1);
    }
    player->CLOSE_GOSSIP_MENU();
    return true;
}

enum DressingBoxes
{
    FESTIVALE_GARMENTS        = 50022,
    DEMON_HUNTER              = 50023,
    CRIMSON_INQUISITOR        = 50025,
    KULTIRAS_GUARD            = 50382,
    THERAMORE_GUARD           = 50383,
    DWARF_MOUNTAINEER         = 50386,
    NIGHTWATCHMAN             = 50388,
    STROMGARDE_GURAD          = 50384,
    SCHOLOMANCE_STUDENT       = 50101,
    DARKMASTER                = 50509,
    GOLDWEAVE_RAINMENT        = 50511,
    NECROMANCER               = 50513,
    STORMWIND_GUARD           = 50381,
    DARNASSUS_SENTINEL        = 50385,
    ORGRIMMAR_GUARD           = 50389,
    THUNDER_BLUFF_GUARD       = 50390,
    SENJIN_GUARD              = 50416,
    DEATHGUARD                = 50387,
    HIDDEN_SET                = 50024,

    FASHION_COIN              = 51217
};

bool GossipHello_npc_riding_horse(Player* p_Player, Creature* p_Creature)
{
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Hire this horse for 50 copper.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    p_Player->SEND_GOSSIP_MENU(90365, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_riding_horse(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    uint32 spell{ 0 };

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (p_Player->GetMoney() >= 50)
        {
            switch (p_Creature->GetEntry())
            {
            case 51560: spell = 468; break;
            case 51561: spell = 471; break;
            default:
                break;
            }
            p_Player->CastSpell(p_Player, spell, true);
            p_Player->ModifyMoney(-50);
        }
        else
            p_Player->GetSession()->SendNotification("You don't have enough money!");
    }
    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

class  StopFlyingAfterTime : public BasicEvent
{
public:
    explicit StopFlyingAfterTime(uint64 player_guid) : BasicEvent(), player_guid(player_guid) {}

    bool Execute(uint64 e_time, uint32 p_time) override 
    {
        Player* player = ObjectAccessor::FindPlayer(player_guid);
        if (player) 
        {
            player->Unmount(); 

            player->SetFlying(false);
            player->UpdateSpeed(MOVE_SWIM, true, 1.0F);

            player->m_movementInfo.UpdateTime(WorldTimer::getMSTime());
            WorldPacket stop_swim(MSG_MOVE_STOP_SWIM, 31);
            stop_swim << player->GetPackGUID();
            stop_swim << player->m_movementInfo;
            player->SendMovementMessageToSet(std::move(stop_swim), true);
        }
        return false;
    }
private:
    uint64 player_guid;
};

bool GossipHello_npc_riding_gryphon(Player* p_Player, Creature* p_Creature)
{
    if (p_Player->GetQuestRewardStatus(60070))
    {
        p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Take me to Elwynn Uphills!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }
    p_Player->PrepareQuestMenu(p_Creature->GetGUID());
    p_Player->SEND_GOSSIP_MENU(90366, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_riding_gryphon(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (p_Player->HasItemCount(422, 1))
        {
            p_Player->GetSession()->SendNotification("You have 60 seconds to get to the Uphills!");
            p_Player->SetUInt32Value(UNIT_FIELD_MOUNTDISPLAYID, 6852);
            p_Player->m_Events.AddEvent(new StopFlyingAfterTime(p_Player->GetGUID()), p_Player->m_Events.CalculateTime(1 * MINUTE * IN_MILLISECONDS));
            p_Player->SetFlying(true);
            p_Player->UpdateSpeed(MOVE_SWIM, true, 4.0F);
            p_Player->RemoveItemCurrency(422, 1);
        }
        else
            p_Player->PMonsterEmote("Gryphon clearly looks hungry and frustrated. Perhaps a handful of famous Dwarven Mild could do some good?", nullptr, false);
    }
    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

// too lazy

bool GossipHello_npc_riding_gryphon_back(Player* p_Player, Creature* p_Creature)
{
    if (p_Player->GetQuestRewardStatus(60070))
    {
        p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Take me back!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    }
    p_Player->PrepareQuestMenu(p_Creature->GetGUID());
    p_Player->SEND_GOSSIP_MENU(90366, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_riding_gryphon_back(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (p_Player->HasItemCount(422, 1))
        {
            p_Player->GetSession()->SendNotification("You have 10 seconds to get back to Northshire Valley!");
            p_Player->SetUInt32Value(UNIT_FIELD_MOUNTDISPLAYID, 6852);
            p_Player->m_Events.AddEvent(new StopFlyingAfterTime(p_Player->GetGUID()), p_Player->m_Events.CalculateTime(10000));
            p_Player->SetFlying(true);
            p_Player->UpdateSpeed(MOVE_SWIM, true, 4.0F);
            p_Player->RemoveItemCurrency(422, 1);
        }
        else
            p_Player->PMonsterEmote("Gryphon clearly looks hungry and frustrated. Perhaps a handful of famous Dwarven Mild could do some good?", nullptr, false);
    }
    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_npc_riding_wyvern(Player* p_Player, Creature* p_Creature)
{
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Take me out of here.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    p_Player->PrepareQuestMenu(p_Creature->GetGUID());
    p_Player->SEND_GOSSIP_MENU(1, p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_riding_wyvern(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        p_Player->GetSession()->SendNotification("Your flight will last 45 seconds.");
        p_Player->SetUInt32Value(UNIT_FIELD_MOUNTDISPLAYID, 295);
        p_Player->m_Events.AddEvent(new StopFlyingAfterTime(p_Player->GetGUID()), p_Player->m_Events.CalculateTime(45000));
        p_Player->SetFlying(true);
        p_Player->UpdateSpeed(MOVE_SWIM, true, 4.0F);
    }
    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

#define KODO_CALFLING 51599

enum palkeoteEvents
{
    EVENT_WEAKNESS = 1,
    EVENT_FEAR
};

enum palkeoteSpells
{
    SPELL_CURSE_OF_WEAKNESS = 11708,
    SPELL_FEAR = 26580
};

struct palkeoteAI : public ScriptedAI
{
    palkeoteAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    EventMap m_events;
    bool calfActive = false;

    void Reset()
    {
        m_events.Reset();
        m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_NPC);
        m_creature->setFaction(m_creature->GetCreatureInfo()->faction);
        calfActive = false;
    }

    void Aggro()
    {
        m_events.ScheduleEvent(EVENT_WEAKNESS, Seconds(urand(4, 8)));
        m_events.ScheduleEvent(SPELL_FEAR, Seconds(urand(8, 12)));
    }

    void JustRespawned()
    {
        Reset();
    }

    void UpdateAI(const uint32 diff)
    {
        if (calfActive)
            return;

        if (m_creature->GetHealthPercent() < 20)
        {
            calfActive = true;

            m_creature->CombatStop(true);
            m_creature->ClearInCombat();
            m_creature->setFaction(35);
            m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_NPC);


            ThreatList const& tList = m_creature->getThreatManager().getThreatList();
            for (ThreatList::const_iterator i = tList.begin(); i != tList.end(); ++i)
            {
                Unit* pUnit = m_creature->GetMap()->GetUnit((*i)->getUnitGuid());
                if (pUnit && (pUnit->GetTypeId() == TYPEID_PLAYER))
                {
                    CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(51598);
                    pUnit->ToPlayer()->KilledMonster(cInfo, ObjectGuid());
                }
            }

            m_creature->ForcedDespawn(10 * 1000);

            float fX, fY, fZ;
            m_creature->GetRandomPoint(m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ(), 60.0f, fX, fY, fZ);
            m_creature->SummonCreature(KODO_CALFLING, fX, fY, fZ, 0.0F, TEMPSUMMON_TIMED_DESPAWN, 10 * 1000);
            m_creature->SetWalk(true);
            m_creature->GetMotionMaster()->MovePoint(0, fX, fY, fZ + 1.0F);
            return;
        }

        //Return since we have no target
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        m_events.Update(diff);
        while (uint32 eventId = m_events.ExecuteEvent())
        {
            switch (eventId)
            {
            case EVENT_WEAKNESS:
                DoCastSpellIfCan(m_creature->getVictim(), SPELL_CURSE_OF_WEAKNESS);
                m_events.Repeat(Seconds(urand(4, 8)));
                break;
            case EVENT_FEAR:
                DoCastSpellIfCan(m_creature->getVictim(), SPELL_FEAR);
                m_events.Repeat(Seconds(urand(8, 12)));
                break;
            }
        }

        DoMeleeAttackIfReady();
    }

};

CreatureAI* GetAI_palkeote(Creature *_Creature)
{
    return new palkeoteAI(_Creature);
}

bool GossipHello_npc_ropaw(Player* p_Player, Creature* p_Creature)
{
    p_Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Tell me my fortune.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    p_Player->SEND_GOSSIP_MENU(urand(90650, 90667), p_Creature->GetGUID());
    return true;
}

bool GossipSelect_npc_ropaw(Player* p_Player, Creature* p_Creature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        p_Creature->MonsterSay(urand(90560, 90628));
    }
    p_Player->CLOSE_GOSSIP_MENU();
    return true;
}

bool GossipHello_ArenaMaster(Player* player, Creature* creature)
{
    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_BATTLE, "Join the battle in the Azshara Crater!", GOSSIP_SENDER_MAIN, 1);
    //if (player->GetGroup())
    //    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_BATTLE, "Queue for 2v2 (Group)", GOSSIP_SENDER_MAIN, 2);
    player->PlayerTalkClass->SendGossipMenu(195007, creature->GetGUID());

    return true;
}

bool GossipSelect_ArenaMaster(Player* player, Creature* creature, uint32 sender, uint32 action)
{
    switch (action)
    {
    case 1:
    case 2:
        player->AddToArenaQueue(action == 2);
        break;
    }

    player->CLOSE_GOSSIP_MENU();
    return true;
}

#define MINING_PICK 2901
#define ORNATE_SPLYGLASS 5507
#define LIGHT_LEATHER 2318

#define FACTION_RATCHET 470

#define MINING_ENCHANT_5 906
#define SPELL_VISUAL 14867

#define DEFAULT_TEXT 70000
#define UNAVAILABLE_TEXT 70001
#define ALREADY_INSTALLED_TEXT 70002

bool GossipHello_MiningEnchanter(Player* player, Creature* creature)
{
    if (player->GetReputationRank(FACTION_RATCHET) >= REP_FRIENDLY)
    {
        Item* item = player->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_MAINHAND);
        if (item && item->GetEnchantmentId(PERM_ENCHANTMENT_SLOT) == MINING_ENCHANT_5)
        {
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "I don't think I want it anymore...", GOSSIP_SENDER_MAIN,
                                    GOSSIP_ACTION_INFO_DEF + 1);
            player->SEND_GOSSIP_MENU(ALREADY_INSTALLED_TEXT, creature->GetGUID());
        }
        else
        {
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Please, install the telescopic lens!", GOSSIP_SENDER_MAIN,
                                    GOSSIP_ACTION_INFO_DEF + 2);
            player->SEND_GOSSIP_MENU(DEFAULT_TEXT, creature->GetGUID());
        }

        return true;
    }

    player->SEND_GOSSIP_MENU(UNAVAILABLE_TEXT, creature->GetGUID());
    return true;
}

bool GossipSelect_MiningEnchanter(Player* player, Creature* creature, uint32 sender, uint32 action)
{
    bool error = false;
    const char *text;

    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        text = "Sorry, no refunds.";
        error = true;
    }

    Item* item = player->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_MAINHAND);
    if (!error && (!item || item->GetEntry() != MINING_PICK))
    {
        text = "I can't inspect your pick if you don't equip it!";
        error = true;
    }

    if (!error && (!player->HasItemCount(ORNATE_SPLYGLASS) || !player->HasItemCount(LIGHT_LEATHER, 10)))
    {
        text = "Either bring me the materials or quit wasting my time!";
        error = true;
    }

    if (!error)
    {
        player->RemoveItemCurrency(ORNATE_SPLYGLASS, 1);
        player->RemoveItemCurrency(LIGHT_LEATHER, 10);

        creature->SendSpellGo(creature, SPELL_VISUAL);

        item->ClearEnchantment(PERM_ENCHANTMENT_SLOT);
        item->SetEnchantment(PERM_ENCHANTMENT_SLOT, MINING_ENCHANT_5, 0, 0);
    }
    else
        creature->MonsterSay(text);

    player->CLOSE_GOSSIP_MENU();
    return true;
}

void AddSC_random()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "arena_master";
    newscript->pGossipHello = &GossipHello_ArenaMaster;
    newscript->pGossipSelect = &GossipSelect_ArenaMaster;
    newscript->RegisterSelf(false);

    newscript = new Script;
    newscript->Name = "npc_ropaw";
    newscript->pGossipHello = &GossipHello_npc_ropaw;
    newscript->pGossipSelect = &GossipSelect_npc_ropaw;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "palkeote";
    newscript->GetAI = &GetAI_palkeote;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_chixpixx";
    newscript->pGossipHello = &GossipHello_npc_chixpixx;
    newscript->pGossipSelect = &GossipSelect_npc_chixpixx;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_riding_wyvern";
    newscript->pGossipHello = &GossipHello_npc_riding_wyvern;
    newscript->pGossipSelect = &GossipSelect_npc_riding_wyvern;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_riding_gryphon_back";
    newscript->pGossipHello = &GossipHello_npc_riding_gryphon_back;
    newscript->pGossipSelect = &GossipSelect_npc_riding_gryphon_back;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_riding_gryphon";
    newscript->pGossipHello = &GossipHello_npc_riding_gryphon;
    newscript->pGossipSelect = &GossipSelect_npc_riding_gryphon;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_riding_horse";
    newscript->pGossipHello = &GossipHello_npc_riding_horse;
    newscript->pGossipSelect = &GossipSelect_npc_riding_horse;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_aspirant_shadewalker";
    newscript->pGossipHello = &GossipHello_npc_aspirant_shadewalker;
    newscript->pGossipSelect = &GossipSelect_npc_aspirant_shadewalker;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_joshua_westfield";
    newscript->pGossipHello = &GossipHello_npc_joshua_westfield;
    newscript->pGossipSelect = &GossipSelect_npc_joshua_westfield;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_lost_farm_sheep";
    newscript->pGossipHello = &GossipHello_npc_lost_farm_sheep;
    newscript->pGossipSelect = &GossipSelect_npc_lost_farm_sheep;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_dirge_the_bouncer";
    newscript->pGossipHello = &GossipHello_npc_dirge_the_bouncer;
    newscript->pGossipSelect = &GossipSelect_npc_dirge_the_bouncer;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_lordaeron_alice";
    newscript->pGossipHello = &GossipHello_npc_lordaeron_alice;
    newscript->pGossipSelect = &GossipSelect_npc_lordaeron_alice;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_terry_palin";
    newscript->pGossipHello = &GossipHello_npc_terry_palin;
    newscript->RegisterSelf();
    
    newscript = new Script;
    newscript->Name = "npc_shivering_moonkin";
    newscript->pGossipHello = &GossipHello_npc_shivering_moonkin;
    newscript->pGossipSelect = &GossipSelect_npc_shivering_moonkin;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_frosty";
    newscript->pGossipHello = &GossipHello_npc_frosty;
    newscript->pGossipSelect = &GossipSelect_npc_frosty;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_tinsel";
    newscript->pGossipHello = &GossipHello_npc_tinsel;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_misletoe";
    newscript->pGossipHello = &GossipHello_npc_misletoe;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_chihkoa";
    newscript->GetAI = &GetAI_npc_chihkoa;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_scripted_companion";
    newscript->GetAI = &GetAI_npc_scripted_companion;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "lil_foot_pet";
    newscript->GetAI = &GetAI_lil_foot_pet;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "daenerys";
    newscript->pGossipHello = &GossipHello_daenerys;
    newscript->pGossipSelect = &GossipSelect_daenerys;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "title_masker";
    newscript->pGossipHello = &GossipHello_title_masker;
    newscript->pGossipSelect = &GossipSelect_title_masker;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "birthday_dragon";
    newscript->pGossipHello = &GossipHello_birthday_dragon;
    newscript->pGossipSelect = &GossipSelect_birthday_dragon;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "mining_enchanter";
    newscript->pGossipHello = &GossipHello_MiningEnchanter;
    newscript->pGossipSelect = &GossipSelect_MiningEnchanter;
    newscript->RegisterSelf();

}