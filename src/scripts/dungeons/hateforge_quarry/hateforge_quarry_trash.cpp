
#include "hateforge_quarry.h"


struct mob_hateforge_clericAI : public ScriptedAI
{
    explicit mob_hateforge_clericAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        mob_hateforge_clericAI::Reset();
    }

    uint32 m_uiHealNearbyAllies_Timer{};

    bool m_bShadowWordPainAlreadyCastedOnce{};


    void Reset() override
    {
        m_uiHealNearbyAllies_Timer = 4000;

        m_bShadowWordPainAlreadyCastedOnce = false;
    }

    void CheckIfNearbyAllyNeedsHealing(const uint32& uiDiff)
    {
        if (m_uiHealNearbyAllies_Timer < uiDiff)
        {
            if (Unit* pTarget{ m_creature->FindLowestHpFriendlyUnit(40.f) })
            {
                if (DoCastSpellIfCan(pTarget, SPELL_GREATER_HEAL) == CanCastResult::CAST_OK)
                {
                    m_uiHealNearbyAllies_Timer = urand(8000, 10000);
                }
            }
        }
        else
            m_uiHealNearbyAllies_Timer -= uiDiff;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!m_bShadowWordPainAlreadyCastedOnce)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_IMMOLATE) == CanCastResult::CAST_OK)
                m_bShadowWordPainAlreadyCastedOnce = true;
        }

        CheckIfNearbyAllyNeedsHealing(uiDiff);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_mob_hateforge_clericAI(Creature* pCreature)
{
    return new mob_hateforge_clericAI(pCreature);
}


void AddSC_trash_mobs_hateforge_quarry()
{
    Script* pNewscript;
    pNewscript = new Script;
    pNewscript->Name = "mob_hateforge_cleric";
    pNewscript->GetAI = &GetAI_mob_hateforge_clericAI;
    pNewscript->RegisterSelf();
}
