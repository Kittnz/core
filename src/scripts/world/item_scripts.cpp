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

void AddSC_item_scripts()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "character_rename";
    newscript->pItemUse = &ItemUse_character_rename;
    newscript->RegisterSelf();
}