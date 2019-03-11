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
}