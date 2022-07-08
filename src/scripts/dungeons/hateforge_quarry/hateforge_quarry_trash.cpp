
#include "scriptPCH.h"


namespace nsCleric
{
    static constexpr std::uint32_t SPELL_SHADOW_WORD_PAIN{ 10894 };
    static constexpr std::uint32_t SPELL_GREATER_HEAL{ 10965 };
    static constexpr std::uint32_t SPELL_IMMOLATE{ 11668 };
};

class mob_hateforge_clericAI : public ScriptedAI
{
public:
    explicit mob_hateforge_clericAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        mob_hateforge_clericAI::Reset();
    }

private:
    bool m_bShadowWordPainAlreadyCastedOnce{};
    std::uint32_t m_uiHealNearbyAllies_Timer{};

public:
    void Reset() override
    {
        m_bShadowWordPainAlreadyCastedOnce = false;
        m_uiHealNearbyAllies_Timer = 4000;
    }

    void CheckIfNearbyAllyNeedsHealing(const uint32& uiDiff)
    {
        if (m_uiHealNearbyAllies_Timer < uiDiff)
        {
            if (Unit* pFriendlyTarget{ m_creature->FindLowestHpFriendlyUnit(40.f) })
            {
                if (DoCastSpellIfCan(pFriendlyTarget, nsCleric::SPELL_GREATER_HEAL) == CanCastResult::CAST_OK)
                {
                    m_uiHealNearbyAllies_Timer = urand(8000, 10000);
                }
            }
        }
        else
        {
            m_uiHealNearbyAllies_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!m_bShadowWordPainAlreadyCastedOnce)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), nsCleric::SPELL_IMMOLATE) == CanCastResult::CAST_OK)
            {
                m_bShadowWordPainAlreadyCastedOnce = true;
            }
        }

        CheckIfNearbyAllyNeedsHealing(uiDiff);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_mob_hateforge_clericAI(Creature* pCreature)
{
    return new mob_hateforge_clericAI(pCreature);
}


namespace nsTaskMaster
{
    static constexpr std::uint32_t SPELL{ 56522 };
};

class mob_hateforge_taskmasterAI : public ScriptedAI
{
public:
    explicit mob_hateforge_taskmasterAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        mob_hateforge_taskmasterAI::Reset();
    }

private:
    std::uint32_t m_uiSpell_Timer{};

public:
    void Reset() override
    {
        m_uiSpell_Timer = 1000;
    }

    void CastSpell(const uint32& uiDiff)
    {
        if (m_uiSpell_Timer < uiDiff)
        {
            if (Unit* pFriendlyTarget{ m_creature->SelectRandomFriendlyTarget(nullptr, 40.f) })
            {
                if (DoCastSpellIfCan(pFriendlyTarget, nsTaskMaster::SPELL) == CanCastResult::CAST_OK)
                {
                    m_uiSpell_Timer = 30000;
                }
            }
        }
        else
        {
            m_uiSpell_Timer -= uiDiff;
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_mob_hateforge_taskmasterAI(Creature* pCreature)
{
    return new mob_hateforge_taskmasterAI(pCreature);
}


namespace nsFireblade
{
    static constexpr std::uint32_t SPELL{ 56524 };
};

class mob_twilight_firebladeAI : public ScriptedAI
{
public:
    explicit mob_twilight_firebladeAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        mob_twilight_firebladeAI::Reset();
    }
    
private:
    bool m_bSpellAlreadyCastedOnce{};

public:
    void Reset() override
    {
        m_bSpellAlreadyCastedOnce = false;
    }

    void CastSpell()
    {
        if (Unit* pFriendlyTarget{ m_creature->SelectRandomFriendlyTarget(nullptr, 40.f) })
        {
            if (DoCastSpellIfCan(pFriendlyTarget, nsFireblade::SPELL) == CanCastResult::CAST_OK)
            {
                m_bSpellAlreadyCastedOnce = true;
            }
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        if (!m_bSpellAlreadyCastedOnce)
        {
            CastSpell();
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_mob_twilight_firebladeAI(Creature* pCreature)
{
    return new mob_twilight_firebladeAI(pCreature);
}


void AddSC_trash_mobs_hateforge_quarry()
{
    Script* pNewscript;

    pNewscript = new Script;
    pNewscript->Name = "mob_hateforge_cleric";
    pNewscript->GetAI = &GetAI_mob_hateforge_clericAI;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "mob_hateforge_taskmaster";
    pNewscript->GetAI = &GetAI_mob_hateforge_taskmasterAI;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "mob_twilight_fireblade";
    pNewscript->GetAI = &GetAI_mob_twilight_firebladeAI;
    pNewscript->RegisterSelf();
}
