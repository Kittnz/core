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
        pPlayer->TeleportTo((pPlayer->GetTeam() == ALLIANCE) ? WorldLocation(0, -8607.52f, 382.006f, 110.173f, 2.24265f) : WorldLocation(1, -397.356f, -2654.94f, 96.2232f, 2.25183f));
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
    if (pItem->GetEntry() == 30092) { // Strange Bottle
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
}