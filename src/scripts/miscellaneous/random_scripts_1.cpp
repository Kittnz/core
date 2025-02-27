#include "scriptPCH.h"
#include "Utilities/EventProcessor.h"
#include <algorithm>

template <typename EntityT, typename Functor>
void DoAfterTime(EntityT* entity, uint32 p_time, Functor&& function)
{
    entity->m_Events.AddEvent(new LambdaBasicEvent<Functor>(std::move(function)), entity->m_Events.CalculateTime(p_time));
}

bool ItemUseSpell_item_supercharged_chronoboon_displacer(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (!pPlayer) 
        return false;	

    if (!pPlayer->RestoreSuspendedWorldBuffs())
    { 
        if (SpellEntry const* spellInfo = sSpellMgr.GetSpellEntry(pItem->GetProto()->Spells[0].SpellId))
        {
            DoAfterTime(pPlayer, 1500, [player = pPlayer, spellId = spellInfo->Id]()
            {
                if (SpellEntry const* pSpellEntry = sSpellMgr.GetSpellEntry(spellId))
                    player->RemoveSpellCooldown(*pSpellEntry, true);
            });
        }
    }
	
    return true;
}

bool ItemUseSpell_item_chronoboon_displacer(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (!pPlayer) 
        return false;

    if (!pPlayer->SuspendWorldBuffs())
    {
        if (SpellEntry const* spellInfo = sSpellMgr.GetSpellEntry(pItem->GetProto()->Spells[0].SpellId))
        {
            DoAfterTime(pPlayer, 1500, [player = pPlayer, spellId = spellInfo->Id]()
            {
                if (SpellEntry const* pSpellEntry = sSpellMgr.GetSpellEntry(spellId))
                    player->RemoveSpellCooldown(*pSpellEntry, true);
            }
            );
        }
    }

    return true;
}

void AddSC_random_scripts_1()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "item_supercharged_chronoboon_displacer";
    newscript->pItemUseSpell = &ItemUseSpell_item_supercharged_chronoboon_displacer;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_chronoboon_displacer";
    newscript->pItemUseSpell = &ItemUseSpell_item_chronoboon_displacer;
    newscript->RegisterSelf();
}
