
#include "scriptPCH.h"

bool ItemUse_character_rename(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    ChatHandler(pPlayer).PSendSysMessage("Please logout and enter a new name for this character.");
    pPlayer->SetAtLoginFlag(AT_LOGIN_RENAME);
    return false;
}

bool ItemUse_portable_wormhole_generator(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (pPlayer->isInCombat() || pPlayer->IsBeingTeleported() || (pPlayer->getDeathState() == CORPSE) || pPlayer->IsMoving())
        ChatHandler(pPlayer).PSendSysMessage("Warning! High radiation emittment detected! Wormhole Generator failsafe system shutting device down! Please use later!");
    else
    {
        if (pPlayer->GetMoney() >= 500)
        {
            float dis{ 2.0F };
            float x, y, z;
            pPlayer->GetSafePosition(x, y, z);
            x += dis * cos(pPlayer->GetOrientation());
            y += dis * sin(pPlayer->GetOrientation());
            pPlayer->SummonGameObject(1000081, x, y, z + 0.5F, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 8, true);
            pPlayer->ModifyMoney(-500);
        }
        else
            ChatHandler(pPlayer).PSendSysMessage("Device crackles and whirring. Aperture on it's husk is well fitting 5 silver coins.");
    }
    return false;
}

bool ItemUse_portable_meeting_stone(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    ChatHandler(pPlayer).PSendSysMessage("You sense magic sipped away from this stone. Most likely the source of magic is gone. Try Portable Wormhole Generator instead.");
    return false;
}

#define ALICE_GROW_LBOUNDARY 1.05f
#define ALICE_GROW_RBOUNDARY 1.15f
#define ALICE_BELITTLE_LBOUNDARY 0.85f
#define ALICE_BELITTLE_RBOUNDARY 0.95f
bool ItemUse_alice_wonderland_scale(Player* pPlayer, Item* pItem, const SpellCastTargets&) {
    float scale;
    float taurenVariance = pPlayer->getRace() == RACE_TAUREN ? (pPlayer->getGender() == GENDER_MALE ? 0.35f : 0.25f) : 0;
    float currentNormalizedScale = pPlayer->GetObjectScale() - taurenVariance;
    if (pItem->GetEntry() == 50021) { // Strange Bottle
        if (currentNormalizedScale == ALICE_BELITTLE_LBOUNDARY) {
            ChatHandler(pPlayer).PSendSysMessage("|cffff8040You can't be smaller!|r");
            return true;
        }
        scale = frand(ALICE_BELITTLE_LBOUNDARY, currentNormalizedScale == 1 ?
                                                ALICE_BELITTLE_RBOUNDARY : currentNormalizedScale);
    } else {
        if (currentNormalizedScale == ALICE_GROW_RBOUNDARY) {
            ChatHandler(pPlayer).PSendSysMessage("|cffff8040You can't grow more!|r");
            return true;
        }
        scale = frand(currentNormalizedScale == 1 ?
                      ALICE_GROW_LBOUNDARY : currentNormalizedScale, ALICE_GROW_RBOUNDARY);
    }
    pPlayer->SetObjectScale(static_cast<float>(floor((scale * 100) + 0.5) / 100) + taurenVariance);
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
        ChatHandler(pPlayer).PSendSysMessage("|cffff8040You are not a City Protector anymore.|r");
        pPlayer->RemoveSpellCooldown(7794, true);
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

        pPlayer->SendSpellCooldown(7794, 3600000, pPlayer->GetObjectGuid());
        return true;
    }
}

bool ItemUse_remote_mail_terminal(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    float dis{ 2.0F };
    float x, y, z;
    pPlayer->GetSafePosition(x, y, z);
    x += dis * cos(pPlayer->GetOrientation());
    y += dis * sin(pPlayer->GetOrientation());

    pPlayer->SummonGameObject(144112, x, y, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 180, true);
    return false;
}

bool ItemUse_sword_of_truth(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    ChatHandler(pPlayer).SendSysMessage(urand(50200, 50210));
    return false;
}

class DemorphAfterTime : public BasicEvent {
public:
    explicit DemorphAfterTime(uint64 player_guid) : BasicEvent(), player_guid(player_guid) {}

    bool Execute(uint64 e_time, uint32 p_time) override {
        Player* player = ObjectAccessor::FindPlayer(player_guid);
        if (player) {
            player->DeMorph();
        }
        return false;
    }

private:
    uint64 player_guid;
};

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
    pPlayer->SetDisplayId(15435); // Invisible
    pPlayer->m_Events.AddEvent(new DemorphAfterTime(pPlayer->GetGUID()), pPlayer->m_Events.CalculateTime(250));
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
                case 50106: // Cult of the Damned
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
                case 51010: // Dark Troll
                    bytesToSet = 6;
                    break;
                case 51011: // Ice Troll
                    bytesToSet = 7;
                    break;
                default:
                    break; 
            }
            break;
        case RACE_GNOME:
            switch (itemEntry) {
                case 50106: // Cult of the Damned
                    if (isMale)
                        bytesToSet = 6;
                    else
                        bytesToSet = 5;
                    break;
                case 50212: // Leper
                    if (isMale)
                        bytesToSet = 5;
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
        pPlayer->SetDisplayId(15435); // Invisible
        pPlayer->m_Events.AddEvent(new DemorphAfterTime(pPlayer->GetGUID()), pPlayer->m_Events.CalculateTime(250));
    } else {
        ChatHandler(pPlayer).SendSysMessage("You can't use this item.");
    }

    return false;
}

bool ItemUse_survival_kit(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    pPlayer->SetSkill(142, 1, 150);
    pPlayer->LearnSpell(25085, false);
    ChatHandler(pPlayer).SendSysMessage("You have learned how to create a new item: Dim Torch");
    return false;
}

bool ItemUse_survival_tent(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (pPlayer) {
        // reagents: Linen Cloth (5), Simple Wood (1)
        if (pPlayer->HasItemCount(2589, 5, false) && pPlayer->HasItemCount(4470, 1, false)) {
            // summon tent object for 20 minutes
            if (!pPlayer->IsFalling() && !pPlayer->IsInWater() && !pPlayer->InGurubashiArena(false) &&
                pPlayer->GetTerrain()->IsOutdoors(pPlayer->GetPositionX(), pPlayer->GetPositionY(), pPlayer->GetPositionZ()) &&
                pPlayer->GetZoneId() != 1519 && pPlayer->GetZoneId() != 1637 && pPlayer->GetZoneId() != 1497 && pPlayer->GetZoneId() != 1537 &&
                pPlayer->GetZoneId() != 1657 && pPlayer->GetZoneId() != 1638 && !pPlayer->GetInstanceId()) {
                
                // Tent now will appear in front of the player:
                float dis{ 4.0F };
                float x, y, z, ang, p_r, o_r;
                pPlayer->GetSafePosition(x, y, z);
                x += dis * cos(pPlayer->GetOrientation());
                y += dis * sin(pPlayer->GetOrientation());

                p_r = pPlayer->GetOrientation();
                o_r = remainderf(p_r + M_PI, M_PI * 2.0f);

                float rot2 = sin(o_r / 2);
                float rot3 = cos(o_r / 2);

                pPlayer->SummonGameObject(1000001, x, y, z, o_r, 0.0f, 0.0f, rot2, rot3, 1200, true);
                // set rested state - check for the actual script in go_survival_tent
                // update skill on usage:
                uint32 currvalue = 0;
                currvalue = pPlayer->GetSkillValue(142);
                switch (currvalue) {
                    case 150:
                        break;
                    default:
                        currvalue++;
                        pPlayer->SetSkill(142, currvalue, 150);
                        break;
                }
                pPlayer->DestroyItemCount(2589, 5, true);
                pPlayer->DestroyItemCount(4470, 1, true);
                //pPlayer->DestroyItemCount(50234, 1, true);
                return false;
            } else {
                ChatHandler(pPlayer).SendSysMessage("Can't build here! You need to be outside.");
                return true;
            }
        } else {
            ChatHandler(pPlayer).SendSysMessage("5 [Linen Cloth] and 1 [Simple Wood] are required to build a tent.");
            pPlayer->RemoveSpellCooldown(24085, true);
            return true;
        }
    }
    return false;
}

bool ItemUse_survival_boat(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (pPlayer) {
        // reagents: Simple Wood (15), Handful of Copper Bolts (1)
        if (pPlayer->HasItemCount(4470, 15, false) && pPlayer->HasItemCount(4359, 1, false)) {
            // summon boat for 60 minutes
            if (pPlayer->IsInWater() && !pPlayer->IsUnderWater()) {
                pPlayer->SummonGameObject(1000002, pPlayer->GetPositionX(), pPlayer->GetPositionY(),
                                          pPlayer->GetPositionZ() + 1.3f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 3600, true);
                pPlayer->TeleportTo(pPlayer->GetMapId(), pPlayer->GetPositionX(), pPlayer->GetPositionY(),
                                    pPlayer->GetPositionZ() + 3.5f, 3.0f);
                pPlayer->AddAura((pPlayer->HasAura(8083)) ? 0 : 8083); // todo: add removal.
                ChatHandler(pPlayer).SendSysMessage("You've gained +50 skill bonus to Fishing!");
                pPlayer->DestroyItemCount(4470, 15, true);
                pPlayer->DestroyItemCount(4359, 1, true);
                //pPlayer->DestroyItemCount(50235, 1, true);
                uint32 currvalue = 0;
                currvalue = pPlayer->GetSkillValue(142);
                switch (currvalue) {
                    case 150:
                        break;
                    default:
                        currvalue++;
                        pPlayer->SetSkill(142, currvalue, 150);
                        break;
                }
                return false;
            } else {
                ChatHandler(pPlayer).SendSysMessage("You need to be in a body of water surface!");
                return true;
            }

        } else {
            ChatHandler(pPlayer).SendSysMessage(
                    "15 [Simple Wood] and 1 [Handful of Copper Bolts] are required to build this boat.");
            pPlayer->RemoveSpellCooldown(14867, true);
            return true;
        }
    }
    return false;
}

bool ItemUse_bg_tabard(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    // Some spell checks might be obsolete, check it later.
    if (pPlayer->isInCombat() || pPlayer->InBattleGround() || pPlayer->IsBeingTeleported() || pPlayer->HasSpellCooldown(20939) || pPlayer->HasSpellCooldown(26013) || (pPlayer->getDeathState() == CORPSE))
        ChatHandler(pPlayer).PSendSysMessage("You are not meeting the conditions for joining!");
    else
    {
        pPlayer->SetBattleGroundEntryPoint();
        switch (pItem->GetEntry()) {
            case 19505:
            case 19506:
                pPlayer->GetSession()->SendBattlegGroundList(pPlayer->GetObjectGuid(), BATTLEGROUND_WS);
                break;
            case 20131:
            case 20132:
                pPlayer->GetSession()->SendBattlegGroundList(pPlayer->GetObjectGuid(), BATTLEGROUND_AB);
                break;
            case 19031:
            case 19032:
                pPlayer->GetSession()->SendBattlegGroundList(pPlayer->GetObjectGuid(), BATTLEGROUND_AV);
                break;
        }
    }
    return false;
}

bool ItemUse_highborne_soul_mirror(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (!pPlayer)
        return false;

    if (pPlayer->GetNativeDisplayId() != pPlayer->GetDisplayId()) {
        pPlayer->DeMorph();
        return false;
    }

    uint32 displayId = 0;
    bool isMale = pPlayer->getGender() == GENDER_MALE;
    switch (pPlayer->getClass())
    {
        case CLASS_WARRIOR:
            displayId = isMale ? 10375 : 4729;
            break;
        case CLASS_PALADIN:
            displayId = isMale ? 4245 : 4729;
            break;
        case CLASS_MAGE:
        case CLASS_WARLOCK:
            displayId = isMale ? 6779 : 3293;
            break;
        case CLASS_PRIEST:
            displayId = isMale ? 14394 : 4730;
            break;
        case CLASS_DRUID:
        case CLASS_SHAMAN:
        case CLASS_HUNTER:
            displayId = isMale ? 11671 : 1643;
            break;
        case CLASS_ROGUE:
            displayId = isMale ? 6549 : 10381;
            break;
        default:
            pPlayer->DeMorph();
    }
    pPlayer->SetDisplayId(displayId);

    ChatHandler(pPlayer).SendSysMessage("Fel Magic was never an option. This disguise will work until logout.");
    return false;
}

bool ItemUse_dryad_acorn(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (!pPlayer)
        return false;

    if (pPlayer->GetNativeDisplayId() != pPlayer->GetDisplayId()) {
        pPlayer->DeMorph();
        return false;
    }

    pPlayer->SetDisplayId(pPlayer->getGender() == GENDER_MALE ? 150 : 876);
    ChatHandler(pPlayer).SendSysMessage("Fear the fearsome fury of the forest fawn! This disguise will work until logout.");
    return false;
}

bool ItemUse_shop_morph_goblin(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (!pPlayer)
        return false;

    if (pPlayer->GetNativeDisplayId() != pPlayer->GetDisplayId())
    {
        pPlayer->DeMorph();
        return false;
    }
    
    int male[9] = { 7170, 7102, 8847, 7185, 7809, 15095, 15096, 15097, 7209 };
    int female[9] = { 9553, 15094, 10744, 15094, 11675, 15094, 7175, 11689, 10651};
    int modelid = rand() % 9;
    pPlayer->SetDisplayId(static_cast<uint32>((pPlayer->getGender() == GENDER_MALE) ? male[modelid] : female[modelid]));

    ChatHandler(pPlayer).SendSysMessage("Time is money, friend! This disguise will work until logout.");
    return false;
}

bool ItemUse_shop_morph_worgen(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (!pPlayer)
        return false;

    if (pPlayer->GetNativeDisplayId() != pPlayer->GetDisplayId()) 
    {
        pPlayer->DeMorph();
        return false;
    }

    int models[3] = { 522, 523, 524 };
    int modelid = rand() % 3;
    pPlayer->SetDisplayId(static_cast<uint32>(models[modelid]));

    ChatHandler(pPlayer).SendSysMessage("Gilneas will be reborn from the blood of our enemies. Use necklace to return to your normal appearance.");
    return false;
}

bool ItemUse_shop_morph_blood_elf(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (!pPlayer)
        return false;

    if (pPlayer->GetNativeDisplayId() != pPlayer->GetDisplayId())
    {
        pPlayer->DeMorph();
        return false;
    }

    int male[2] = { 6630, 7874 };
    int female[2] = { 6631, 7922 };
    int modelid = rand() % 2;
    pPlayer->SetDisplayId(static_cast<uint32>((pPlayer->getGender() == GENDER_MALE) ? male[modelid] : female[modelid]));
    
    ChatHandler(pPlayer).SendSysMessage("Glory to the Sin'dorei. This disguise will work until logout.");
    return false;
}

bool ItemUse_shop_morph_ghost(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (!pPlayer)
        return false;

    if (pPlayer->GetNativeDisplayId() != pPlayer->GetDisplayId())
    {
        pPlayer->DeMorph();
        return false;
    }

    pPlayer->SetDisplayId(14368);
    ChatHandler(pPlayer).SendSysMessage("Boo! This disguise will work until logout.");
    return false;
}

bool ItemUse_shop_morph_banshee(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (!pPlayer)
        return false;

    if (pPlayer->GetNativeDisplayId() != pPlayer->GetDisplayId())
    {
        pPlayer->DeMorph();
        return false;
    }

    int models[4] = { 8782, 10728, 10750, 10994 };
    int modelid = rand() % 4;
    pPlayer->SetDisplayId(static_cast<uint32>(models[modelid]));

    ChatHandler(pPlayer).SendSysMessage("Let your cries chill the living. This disguise will work until logout.");
    return false;
}

bool ItemUse_shop_morph_druid_fang(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (!pPlayer)
        return false;

    if (pPlayer->GetNativeDisplayId() != pPlayer->GetDisplayId())
    {
        pPlayer->DeMorph();
        return false;
    }

    int male[5] = { 4232, 4214, 4215, 4212, 4213 };
    int female[5] = { 4233, 4234, 4313, 4233, 4234 };
    int modelid = rand() % 5;
    pPlayer->SetDisplayId(static_cast<uint32>((pPlayer->getGender() == GENDER_MALE) ? male[modelid] : female[modelid]));

    ChatHandler(pPlayer).SendSysMessage("None can stand against the Serpent Lords! This disguise will work until logout.");
    return false;
}

bool ItemUse_shop_morph_succubus(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (!pPlayer)
        return false;

    if (pPlayer->GetNativeDisplayId() != pPlayer->GetDisplayId())
    {
        pPlayer->DeMorph();
        return false;
    }

    int models[4] = { 10923, 10924, 10925, 10926 };
    int modelid = rand() % 4;
    pPlayer->SetDisplayId(static_cast<uint32>(models[modelid]));

    ChatHandler(pPlayer).SendSysMessage("Next time, I'll be the master. This disguise will work until logout.");
    return false;
}

bool ItemUse_remove_rested(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    pPlayer->SetRestBonus(0);
    ChatHandler(pPlayer).SendSysMessage("You feel weary and exhausted as undead.");
    return false;
}

bool ItemUse_turtle_radio(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    pPlayer->SummonGameObject(1000055, pPlayer->GetPositionX(), pPlayer->GetPositionY(), pPlayer->GetPositionZ(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 600, true);
    return false;
}

bool ItemUse_turtle_party(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    pPlayer->AddAura(8067);
    return false;
}

// ------------------ TRANSMOGRIFICATION ------------------ //

#define TRANSMOGRIFICATION_SATCHEL 51216
#define TRANSMOGRIFICATION_TOKEN 51217

bool ItemUse_transmogrification(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    // There'll be lots of ugly and hacky code. 
    return false;
}

bool ItemUse_item_engie(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (!pPlayer)
        return false;

    if (pPlayer->GetNativeDisplayId() != pPlayer->GetDisplayId()) {
        pPlayer->DeMorph();
        return false;
    }

    uint32 displayid{ 0 };

    switch (pItem->GetEntry())
    {
    case 51246: // Sarah Sadwhistle 
        displayid = 15458;
        break;
    case 51247: // Chromie
        displayid = 10008;
        break;
    case 51055: // Tree Form
        displayid = 9591;
        break;
    case 51065: // Shadow
        displayid = 4629;
        break;
    case 51253: // Furbolg
        displayid = 6746;
        break;
    case 51209: // Rat
        displayid = 2176;
        break;
    default:
        break;
    }

    pPlayer->SetDisplayId(displayid);
    ChatHandler(pPlayer).SendSysMessage("This disguise will work until logout.");
    return false;
}

bool ItemUse_item_zeaus(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (!pPlayer)
        return false;

    if (pPlayer->GetNativeDisplayId() != pPlayer->GetDisplayId()) {
        pPlayer->DeMorph();
        return false;
    }

    uint32 displayid{ 0 };

    switch (pItem->GetEntry())
    {
        case 51066: // Flamewaker
            displayid = 12030;
            break;
        case 51067: // Bone Serpent
            displayid = 8053;
            break;
        default:
            break;
    }

    pPlayer->SetDisplayId(displayid);
    ChatHandler(pPlayer).SendSysMessage("This disguise will work until logout.");
    return false;
}

bool ItemUse_item_winter_tree(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    float dis{ 2.0F };
    float x, y, z;
    pPlayer->GetSafePosition(x, y, z);
    x += dis * cos(pPlayer->GetOrientation());
    y += dis * sin(pPlayer->GetOrientation());    

    pPlayer->SummonGameObject(1000070, x, y, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 300, true);
    pPlayer->SendSpellCooldown(31726, 1600000, pPlayer->GetObjectGuid());
    return false;
}

bool ItemUse_item_holy_strike_book(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (pPlayer->IsMoving())
        return false;

    if (!pPlayer->getClass() == CLASS_PALADIN)
        return false;

    switch (pItem->GetEntry())
    {
    case 51270:
        pPlayer->LearnSpell(678, false);
        break;
    case 51271:
        pPlayer->LearnSpell(1866, false);
        break;
    case 51272:
        pPlayer->LearnSpell(680, false);
        break;
    case 51273:
        pPlayer->LearnSpell(2495, false);
        break;
    case 51274:
        pPlayer->LearnSpell(5569, false);
        break;
    case 51275:
        pPlayer->LearnSpell(10332, false);
        break;
    case 51276:
        pPlayer->LearnSpell(10333, false);
        break;
    }
    return false;
}

void AddSC_item_scripts()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "item_character_rename";
    newscript->pItemUse = &ItemUse_character_rename;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_roleplay_hub";
    newscript->pItemUse = &ItemUse_portable_meeting_stone;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_wormhole_generator";
    newscript->pItemUse = &ItemUse_portable_wormhole_generator;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_scaler";
    newscript->pItemUse = &ItemUse_alice_wonderland_scale;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_summer_vestment";
    newscript->pItemUse = &ItemUse_summer_vestment;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_city_portal";
    newscript->pItemUse = &ItemUse_city_protector_scroll;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_portable_mailbox";
    newscript->pItemUse = &ItemUse_remote_mail_terminal;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_sword_of_truth";
    newscript->pItemUse = &ItemUse_sword_of_truth;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_hairdye";
    newscript->pItemUse = &ItemUse_hairdye;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_skin_change";
    newscript->pItemUse = &ItemUse_skin_changer;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_survival_kit";
    newscript->pItemUse = &ItemUse_survival_kit;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_survival_tent";
    newscript->pItemUse = &ItemUse_survival_tent;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_survival_boat";
    newscript->pItemUse = &ItemUse_survival_boat;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_bg_tabard";
    newscript->pItemUse = &ItemUse_bg_tabard;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_morph_goblin";
    newscript->pItemUse = &ItemUse_shop_morph_goblin;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_morph_worgen";
    newscript->pItemUse = &ItemUse_shop_morph_worgen;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_morph_bloodelf";
    newscript->pItemUse = &ItemUse_shop_morph_blood_elf;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_morph_highelf";
    newscript->pItemUse = &ItemUse_highborne_soul_mirror;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_morph_dryad";
    newscript->pItemUse = &ItemUse_dryad_acorn;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_morph_ghost";
    newscript->pItemUse = &ItemUse_shop_morph_ghost;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_morph_banshee";
    newscript->pItemUse = &ItemUse_shop_morph_banshee;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_morph_serpentlord";
    newscript->pItemUse = &ItemUse_shop_morph_druid_fang;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_morph_succubus";
    newscript->pItemUse = &ItemUse_shop_morph_succubus;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_exhaustion_glyph";
    newscript->pItemUse = &ItemUse_remove_rested;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_radio";
    newscript->pItemUse = &ItemUse_turtle_radio;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_schnapps";
    newscript->pItemUse = &ItemUse_turtle_party;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_transmog";
    newscript->pItemUse = &ItemUse_transmogrification;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_player_engie";
    newscript->pItemUse = &ItemUse_item_engie;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_player_zeaus";
    newscript->pItemUse = &ItemUse_item_zeaus;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_winter_tree";
    newscript->pItemUse = &ItemUse_item_winter_tree;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_holystrike_libram";
    newscript->pItemUse = &ItemUse_item_holy_strike_book;
    newscript->RegisterSelf();
}
