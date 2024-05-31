#pragma once
#include <AI/AbilityTimer.h>
#include "defines.h"

struct npc_shadow_priestess_shai : ScriptedAI
{
private:
    AbilityTimer m_gcdTimer = AbilityTimer(0, 1500, 1500, 0);
    // These cooldown values are arbitrary and not based on any specific data. Feel free to adjust.
    AbilityTimer m_mindBlastTimer = AbilityTimer(17194, 6000, 10000, 2000);
    // We do an aura check before casting this, so it's ok to have a low cooldown
    AbilityTimer m_shadowWordPainTimer = AbilityTimer(17146, 2000, 5000, 500);
public:
    npc_shadow_priestess_shai(Creature* creature) : ScriptedAI(creature)
    {
        npc_shadow_priestess_shai::Reset();
    }

    void Reset() override
    {
        m_gcdTimer.reset();
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        auto myTarget = m_creature->GetVictim();
        if (!myTarget)
        {
            // We're not targeting anything
            // Target the Hive-Killer if it's alive and fightable
            if (const auto hiveRegalHunterKiller = m_creature->FindNearestCreature(Silithus::CreatureEntries::HIVEREGAL_HUNTERKILLER, 100.f))
            {
                if (hiveRegalHunterKiller->IsAlive() && m_creature->IsValidAttackTarget(hiveRegalHunterKiller))
                {
                    m_creature->EnterCombatWithTarget(hiveRegalHunterKiller);
                }
            }
        }

        myTarget = m_creature->GetVictim();

        // We still don't have a target so stop updating
        if (!m_creature->SelectHostileTarget() || !myTarget)
        {
            return;
        }

        // Don't cast spells if we're already casting a non-melee spell
        if (m_creature->IsNonMeleeSpellCasted(false))
        {
            return;
        }

        m_gcdTimer.update(uiDiff);
        m_mindBlastTimer.update(uiDiff);

        // Only tick SW:P if target doesn't have it
        if (!myTarget->HasAura(m_shadowWordPainTimer.spell_id()))
        {
            m_shadowWordPainTimer.update(uiDiff);
            if (m_shadowWordPainTimer.is_ready() && m_gcdTimer.is_ready())
            {
                if (DoCastSpellIfCan(myTarget, m_shadowWordPainTimer.spell_id()) == CAST_OK)
                {
                    m_shadowWordPainTimer.reset();
                    m_gcdTimer.reset();
                    m_creature->ResetAttackTimer();
                }
            }
        }

        if (m_mindBlastTimer.is_ready() && m_gcdTimer.is_ready())
        {
            if (DoCastSpellIfCan(myTarget, m_mindBlastTimer.spell_id()) == CAST_OK)
            {
                m_mindBlastTimer.reset();
                m_gcdTimer.reset();
                m_creature->ResetAttackTimer();
            }
        }

        DoMeleeAttackIfReady();
    }

    static CreatureAI* GetAI(Creature* creature)
    {
        return new npc_shadow_priestess_shai(creature);
    }

    static void register_script()
    {
        const auto script = new Script();
        script->Name = "npc_shadow_priestess_shai";
        script->GetAI = &npc_shadow_priestess_shai::GetAI;
        script->RegisterSelf();
    }
};
