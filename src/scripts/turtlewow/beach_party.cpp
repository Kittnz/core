
#include "scriptPCH.h"

bool ItemUseSpell_item_picnic_umbrella(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    float dis{ 2.0F };
    float x, y, z;
    pPlayer->GetSafePosition(x, y, z);
    x += dis * cos(pPlayer->GetOrientation());
    y += dis * sin(pPlayer->GetOrientation());

    pPlayer->SummonGameObject(2004896, x, y, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 300, true);
    pPlayer->SummonGameObject(2004895, x + 0.5, y + 0.5, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 300, true);
    return false;
}

void AddSC_beach_party()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "item_picnic_umbrella";
    newscript->pItemUseSpell = &ItemUseSpell_item_picnic_umbrella;
    newscript->RegisterSelf();
}


