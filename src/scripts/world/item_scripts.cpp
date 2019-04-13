// This will run an additional script each time we cast the spell of the item. 
// Set up cooldown and charges directly for item_template in the database: spellid_1, spellcharges_1, spellcooldown_1. 
// If you make a new item, use visual effects only, make it doesn't share spell cooldown with anything important.

#include "scriptPCH.h"

bool ItemUse_character_rename(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    ChatHandler(pPlayer).PSendSysMessage("Please logout and enter a new name for this character.");
    pPlayer->SetAtLoginFlag(AT_LOGIN_RENAME);
    return false;
}

bool ItemUse_portable_meeting_stone(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (pPlayer->isInCombat() || pPlayer->IsBeingTeleported() || pPlayer->HasSpellCooldown(31726) || (pPlayer->getDeathState() == CORPSE))
        ChatHandler(pPlayer).PSendSysMessage("|cffF58CBASpeedy whispers: The portal is currently unstable and your fat ass doesn't fit in, please try again later!|r");
    else
    {
        pPlayer->TeleportTo((pPlayer->GetTeam() == ALLIANCE) ? WorldLocation(0, -8607.52f, 382.006f, 110.173f, 2.24265f) : WorldLocation(1, -397.356f, -2654.94f, 96.2232f, 2.25183f));
        pPlayer->SendSpellCooldown(7077, 3600000, pItem->GetEntry() == 50016);
    }
    return false;
}

bool ItemUse_highborne_soul_mirror(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    int male_models[10] = { 7874, 7010, 6630, 11669, 11671, 6994, 6779, 6549, 6546, 6385 };
    int female_models[6] = { 7872, 7922, 11672, 6782, 6548, 6547 };
    int modelid = rand() % 6; //TODO: More female models.
    pPlayer->SetDisplayId((pPlayer->getGender() == GENDER_MALE) ? male_models[modelid] : female_models[modelid]);
    return false;
}

#define ALICE_GROW_LBOUNDARY 1.05f
#define ALICE_GROW_RBOUNDARY 1.15f
#define ALICE_BELITTLE_LBOUNDARY 0.85f
#define ALICE_BELITTLE_RBOUNDARY 0.95f
bool ItemUse_alice_wonderland_scale(Player* pPlayer, Item* pItem, const SpellCastTargets&) {
    float scale;
    if (pItem->GetEntry() == 50021) { // Strange Bottle
        if (pPlayer->GetObjectScale() == ALICE_BELITTLE_LBOUNDARY) {
            ChatHandler(pPlayer).PSendSysMessage("|cffff8040You can't be smaller!|r");
            return true;
        }
        scale = frand(ALICE_BELITTLE_LBOUNDARY, pPlayer->GetObjectScale() == 1 ?
                                                ALICE_BELITTLE_RBOUNDARY : pPlayer->GetObjectScale());
    } else {
        if (pPlayer->GetObjectScale() == ALICE_GROW_RBOUNDARY) {
            ChatHandler(pPlayer).PSendSysMessage("|cffff8040You can't grow more!|r");
            return true;
        }
        scale = frand(pPlayer->GetObjectScale() == 1 ?
                      ALICE_GROW_LBOUNDARY : pPlayer->GetObjectScale(), ALICE_GROW_RBOUNDARY);
    }
    pPlayer->SetObjectScale(static_cast<float>(floor((scale * 100) + 0.5) / 100));
    return false;
}

class DanceAfterTime : public BasicEvent {
public:
    explicit DanceAfterTime(uint64 player_guid) : BasicEvent(), player_guid(player_guid) {}

    bool Execute(uint64 e_time, uint32 p_time) override {
        Player* player = ObjectAccessor::FindPlayer(player_guid);
        if (player) {
            player->HandleEmoteCommand(EMOTE_ONESHOT_DANCE);
        }
        return false;
    }

private:
    uint64 player_guid;
};

bool ItemUse_summer_vestment(Player* pPlayer, Item* pItem, const SpellCastTargets&) 
{
    pPlayer->m_Events.AddEvent(new DanceAfterTime(pPlayer->GetGUID()), pPlayer->m_Events.CalculateTime(1500));
    return false;
}

bool ItemUse_city_protector_scroll(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (!pPlayer->IsCityProtector() || pPlayer->isInCombat() || pPlayer->IsBeingTeleported() || (pPlayer->getDeathState() == CORPSE))
    {
        ChatHandler(pPlayer).PSendSysMessage("You can't use this item.");
        return false;
    }
    else
    {
        switch (pPlayer->getRace())
        {
        case RACE_HUMAN:
            // Stormwind City
            pPlayer->TeleportTo(0, -8828.231445f, 627.927490f, 94.055664f, 0.0f);
            break;
        case RACE_GNOME:
            // Ironforge
            pPlayer->TeleportTo(0, -4917.0f, -955.0f, 502.0f, 0.0f);
            break;
        case RACE_DWARF:
            // Ironforge
            pPlayer->TeleportTo(0, -4917.0f, -955.0f, 502.0f, 0.0f);
            break;
        case RACE_NIGHTELF:
            // Darnassus
            pPlayer->TeleportTo(1, 9962.712891f, 2280.142822f, 1341.394409f, 0.0f);
            break;
        case RACE_ORC:
            // Orgrimmar
            pPlayer->TeleportTo(1, 1437.0f, -4421.0f, 25.24f, 1.65f);
            break;
        case RACE_TAUREN:
            // Thunder Bluff
            pPlayer->TeleportTo(1, -1272.703735f, 116.886490f, 131.016861f, 0.0f);
            break;
        case RACE_TROLL:
            // Orgrimmar
            pPlayer->TeleportTo(1, 1437.0f, -4421.0f, 25.24f, 1.65f);
            break;
        case RACE_UNDEAD:
            //Undercity
            pPlayer->TeleportTo(0, 1822.0999f, 238.638855f, 60.694809f, 0.0f);
            break;
        }
        return true;
    }
}

bool ItemUse_remote_mail_terminal(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    pPlayer->SummonGameObject(144112, pPlayer->GetPositionX() + 2.0f, pPlayer->GetPositionY() + 2.0f, pPlayer->GetPositionZ(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 180, true);
    return false;
}

bool ItemUse_sword_of_truth(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    ChatHandler(pPlayer).SendSysMessage(urand(50200, 50210));
    return false;
}

bool ItemUse_makeup_red(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    // Sally Whitemane
    pPlayer->SetByteValue(PLAYER_BYTES, 0, 10);
    ChatHandler(pPlayer).SendSysMessage("Please logout and login again!");
    return false;
}

bool ItemUse_makeup_black(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    // Jandice Barov
    pPlayer->SetByteValue(PLAYER_BYTES, 0, 11);
    ChatHandler(pPlayer).SendSysMessage("Please logout and login again!");
    return false;
}

bool ItemUse_hairdye(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    uint8 color = 0;
    
    switch (pItem->GetEntry())
    {
    // Night Elves
    case 50107: color = 0; break; // Grass Green
    case 50108: color = 1; break; // Green
    case 50109: color = 2; break; // Dark Green
    case 50110: color = 3; break; // Aquamarine
    case 50111: color = 4; break; // White
    case 50112: color = 5; break; // Blue
    case 50113: color = 6; break; // Dark Blue
    case 50114: color = 7; break; // Purple
    // Humans
    case 50115: color = 0; break; // Black
    case 50116: color = 1; break; // Crushed Garnet
    case 50117: color = 2; break; // Havana Brown
    case 50118: color = 3; break; // Copper Shimmer
    case 50119: color = 4; break; // Reddish Blonde
    case 50120: color = 5; break; // Sunflower Blonde
    case 50121: color = 6; break; // Beeline Honey
    case 50122: color = 7; break; // Pure Diamond
    case 50123: color = 8; break; // Dark Ash Grey
    case 50124: color = 9; break; // Light Ash Grey
    // Gnomes
    case 50125: color = 0; break; // Black
    case 50126: color = 1; break; // Chocolate Brown
    case 50127: color = 2; break; // Ash Blonde
    case 50128: color = 3; break; // Diamond Blonde
    case 50129: color = 4; break; // Dream Purple
    case 50130: color = 5; break; // Ruby Fusion
    case 50131: color = 6; break; // Steel Blue
    case 50132: color = 7; break; // Pure Green
    case 50133: color = 8; break; // Shining Pink
    // Dwarves
    case 50134: color = 0; break; // Copper Shimmer
    case 50135: color = 1; break; // Reddish Blonde
    case 50136: color = 2; break; // Dark Orange
    case 50137: color = 3; break; // Ash Blonde
    case 50138: color = 4; break; // Light Auburn
    case 50139: color = 5; break; // Black
    case 50140: color = 6; break; // Caramel
    case 50141: color = 7; break; // Light Ash Grey
    case 50142: color = 8; break; // Dark Ash Grey
    // Trolls
    case 50143: color = 0; break; // Purple
    case 50144: color = 1; break; // Red
    case 50145: color = 2; break; // Orange
    case 50146: color = 3; break; // Yellow
    case 50147: color = 4; break; // Grass Green
    case 50148: color = 5; break; // Mint Blue
    case 50149: color = 6; break; // Light Blue
    case 50150: color = 7; break; // Dark Blue
    case 50151: color = 8; break; // Ash Grey
    case 50152: color = 9; break; // Snow White
    // Orcs
    case 50153: color = 0; break; // Blue Black
    case 50154: color = 1; break; // Oak Brown
    case 50155: color = 2; break; // Dark Purple
    case 50156: color = 3; break; // Lilac Violet
    case 50157: color = 4; break; // Rich Purple
    case 50158: color = 5; break; // Black
    case 50159: color = 6; break; // Dark Ash Grey
    case 50160: color = 7; break; // Light Ash Grey
    // Undeads
    case 50161: color = 0; break; // Lime Green
    case 50162: color = 1; break; // Ash Rose
    case 50163: color = 2; break; // Mud Brown
    case 50164: color = 3; break; // Green Blonde
    case 50165: color = 4; break; // Ash Blonde
    case 50167: color = 5; break; // Mint Blue
    case 50168: color = 6; break; // Mud Green
    case 50169: color = 7; break; // Light Teal 
    case 50170: color = 8; break; // Dirty Purple
    case 50171: color = 9; break; // Ash Black
    }

    pPlayer->SetByteValue(PLAYER_BYTES, 3, color);
    ChatHandler(pPlayer).SendSysMessage("Please logout and login again!");
    return false;
}

bool ItemUse_skin_changer(Player* pPlayer, Item* pItem, const SpellCastTargets&) {
    bool isMale = pPlayer->getGender() == GENDER_MALE;
    uint32 itemEntry = pItem->GetEntry();
    int8 bytesToSet = -1;

    switch (pPlayer->getRace()) {
        case RACE_HUMAN:
            switch (itemEntry) {
                case 50105: // Sally Whitemane
                    if (!isMale)
                        bytesToSet = 10;
                    break;
                case 50106: // Jandice Barov (Cult of the Damned)
                    bytesToSet = 11;
                    break;
                default:
                    break;
            }
            break;
        case RACE_DWARF:
            switch (itemEntry) {
                case 50204: // Wildhammer
                    if (isMale)
                        bytesToSet = static_cast<uint8>(irand(16, 17));
                    else
                        bytesToSet = 9;
                    break;
                case 50205: // Dark Iron
                    if (isMale)
                        bytesToSet = 9;
                    else
                        bytesToSet = 10;
                    break;
                case 50206: // Earthen
                    if (isMale)
                        bytesToSet = static_cast<uint8>(irand(10, 15));
                    break;
                default:
                    break;
            }
            break;
        case RACE_ORC:
            switch (itemEntry) {
                case 50207: // Blackrock
                    if (isMale)
                        bytesToSet = static_cast<uint8>(irand(0, 1) == 0 ? 9 : 11);
                    else
                        bytesToSet = 9;
                    break;
                case 50208: // Chaos
                    if (isMale)
                        bytesToSet = 10;
                    break;
                case 50209: // Mag'Har
                    if (isMale)
                        bytesToSet = 12;
                    break;
                default:
                    break;
            }
            break;
        case RACE_TROLL:
            switch (itemEntry) {
                case 50210: // Forest
                    bytesToSet = 13;
                    break;
                case 50211: // Sandfury (Farraki), 14 is the zombie one.
                    bytesToSet = static_cast<uint8>(irand(0, 1) == 0 ? static_cast<uint8>(irand(9, 11)) : 14);
                    break;
                default:
                    break;
            }
            break;
        default:
            break;
    }


    if (bytesToSet > -1) {
        pPlayer->SetByteValue(PLAYER_BYTES, 0, static_cast<uint8>(bytesToSet));
        ChatHandler(pPlayer).SendSysMessage("Please logout and login again! Some items have multiple skins, so try them all!");
    } else {
        ChatHandler(pPlayer).SendSysMessage("You can't use this item.");
    }

    return false;
}

void AddSC_item_scripts()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "character_rename";
    newscript->pItemUse = &ItemUse_character_rename;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "portable_meeting_stone";
    newscript->pItemUse = &ItemUse_portable_meeting_stone;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "highborne_soul_mirror";
    newscript->pItemUse = &ItemUse_highborne_soul_mirror;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_alice_wonderland_scale";
    newscript->pItemUse = &ItemUse_alice_wonderland_scale;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_summer_vestment";
    newscript->pItemUse = &ItemUse_summer_vestment;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "city_protector_scroll";
    newscript->pItemUse = &ItemUse_city_protector_scroll;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "remote_mail_terminal";
    newscript->pItemUse = &ItemUse_remote_mail_terminal;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "sword_of_truth";
    newscript->pItemUse = &ItemUse_sword_of_truth;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "makeup_red";
    newscript->pItemUse = &ItemUse_makeup_red;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "makeup_black";
    newscript->pItemUse = &ItemUse_makeup_black;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "hairdye";
    newscript->pItemUse = &ItemUse_hairdye;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "skin_changer";
    newscript->pItemUse = &ItemUse_skin_changer;
    newscript->RegisterSelf();
}