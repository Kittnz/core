/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "boss_ardaeus.hpp"

/*
    TODO-List
    - Everything :(
*/

class boss_ardaeusAI : public ScriptedAI
{
public:
    explicit boss_ardaeusAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<ScriptedInstance*>(pCreature->GetInstanceData());
        Reset();
    }

private:
    uint32 m_uiSunGuid{};

    ScriptedInstance* m_pInstance{};

public:
    void Reset() override
    {
        m_uiSunGuid = 0;
    }

    void Aggro(Unit* /*pWho*/) override
    {
        if (!m_pInstance)
            return;

        SpawnSun();

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_ARDAEUS, IN_PROGRESS);
        m_creature->SetInCombatWithZone();
    }

    void JustReachedHome() override
    {
        if (!m_pInstance)
            return;
        
        DespawnSun();

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_ARDAEUS, FAIL);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        if (!m_pInstance)
            return;
    
        DespawnSun();

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_ARDAEUS, DONE);
    }

    void SpawnSun()
    {
        if (Creature const* pSun{ m_creature->SummonCreature(nsArdaeus::NPC_SUN,
            nsArdaeus::vfSunMovePoints[0].m_fX,
            nsArdaeus::vfSunMovePoints[0].m_fX,
            nsArdaeus::vfSunMovePoints[0].m_fZ,
            nsArdaeus::vfSunMovePoints[0].m_fO,
            TEMPSUMMON_MANUAL_DESPAWN) })
        {
            m_uiSunGuid = pSun->GetObjectGuid();
        }
    }

    void DespawnSun()
    {
        if (!m_uiSunGuid)
            return;

        if (const auto map{ m_creature->GetMap() })
        {
            if (Creature* pCreature{ map->GetCreature(m_uiSunGuid) })
            {
                if (TemporarySummon* tmpSumm{ static_cast<TemporarySummon*>(pCreature) })
                {
                    tmpSumm->UnSummon();
                    m_uiSunGuid = 0;
                }
            }
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_ardaeus(Creature* pCreature)
{
    return new boss_ardaeusAI(pCreature);
}


struct npc_sun : public ScriptedAI
{
    explicit npc_sun(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_sun::Reset();
    }

    float m_uiSpeed{};

    void Reset() override
    {
        m_uiSpeed = 0.f;
        m_creature->GetMotionMaster()->Clear();
    }

    void StartMovement()
    {
        m_creature->GetMotionMaster()->MovePoint(0,
            nsArdaeus::vfSunMovePoints[1].m_fX,
            nsArdaeus::vfSunMovePoints[1].m_fY,
            nsArdaeus::vfSunMovePoints[1].m_fZ,
            MOVE_FLY_MODE, m_uiSpeed);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        StartMovement();
    }
};

CreatureAI* GetAI_npc_sun(Creature* pCreature)
{
    return new npc_sun(pCreature);
}


struct npc_invar_onearm : public ScriptedAI
{
    explicit npc_invar_onearm(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_invar_onearm::Reset();
    }

    void Reset() override
    {

    }

    void UpdateAI(const uint32 uiDiff) override
    {

    }
};

CreatureAI* GetAI_npc_invar_onearm(Creature* pCreature)
{
    return new npc_invar_onearm(pCreature);
}


struct npc_arellas_fireleaf : public ScriptedAI
{
    explicit npc_arellas_fireleaf(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_arellas_fireleaf::Reset();
    }

    void Reset() override
    {

    }

    void UpdateAI(const uint32 uiDiff) override
    {

    }
};

CreatureAI* GetAI_npc_arellas_fireleaf(Creature* pCreature)
{
    return new npc_arellas_fireleaf(pCreature);
}


struct npc_holia_sunshield : public ScriptedAI
{
    explicit npc_holia_sunshield(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_holia_sunshield::Reset();
    }

    void Reset() override
    {

    }

    void UpdateAI(const uint32 uiDiff) override
    {

    }
};

CreatureAI* GetAI_npc_holia_sunshield(Creature* pCreature)
{
    return new npc_holia_sunshield(pCreature);
}


struct npc_ferren_marcus : public ScriptedAI
{
    explicit npc_ferren_marcus(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_ferren_marcus::Reset();
    }

    void Reset() override
    {

    }

    void UpdateAI(const uint32 uiDiff) override
    {

    }
};

CreatureAI* GetAI_npc_ferren_marcus(Creature* pCreature)
{
    return new npc_ferren_marcus(pCreature);
}


struct npc_yana_bloodspear : public ScriptedAI
{
    explicit npc_yana_bloodspear(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_yana_bloodspear::Reset();
    }

    void Reset() override
    {

    }

    void UpdateAI(const uint32 uiDiff) override
    {

    }
};

CreatureAI* GetAI_npc_yana_bloodspear(Creature* pCreature)
{
    return new npc_yana_bloodspear(pCreature);
}


struct npc_orman_stromgarde : public ScriptedAI
{
    explicit npc_orman_stromgarde(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_orman_stromgarde::Reset();
    }

    void Reset() override
    {

    }

    void UpdateAI(const uint32 uiDiff) override
    {

    }
};

CreatureAI* GetAI_npc_orman_stromgarde(Creature* pCreature)
{
    return new npc_orman_stromgarde(pCreature);
}


struct npc_fellari_swiftarrow : public ScriptedAI
{
    explicit npc_fellari_swiftarrow(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_fellari_swiftarrow::Reset();
    }

    void Reset() override
    {

    }

    void UpdateAI(const uint32 uiDiff) override
    {

    }
};

CreatureAI* GetAI_npc_fellari_swiftarrow(Creature* pCreature)
{
    return new npc_fellari_swiftarrow(pCreature);
}


struct npc_dorgar_stoenbrow : public ScriptedAI
{
    explicit npc_dorgar_stoenbrow(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_dorgar_stoenbrow::Reset();
    }

    void Reset() override
    {

    }

    void UpdateAI(const uint32 uiDiff) override
    {

    }
};

CreatureAI* GetAI_npc_dorgar_stoenbrow(Creature* pCreature)
{
    return new npc_dorgar_stoenbrow(pCreature);
}


struct npc_valea_twinblades : public ScriptedAI
{
    explicit npc_valea_twinblades(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_valea_twinblades::Reset();
    }

    void Reset() override
    {

    }

    void UpdateAI(const uint32 uiDiff) override
    {

    }
};

CreatureAI* GetAI_npc_valea_twinblades(Creature* pCreature)
{
    return new npc_valea_twinblades(pCreature);
}


struct npc_harthal_truesight : public ScriptedAI
{
    explicit npc_harthal_truesight(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_harthal_truesight::Reset();
    }

    void Reset() override
    {

    }

    void UpdateAI(const uint32 uiDiff) override
    {

    }
};

CreatureAI* GetAI_npc_harthal_truesight(Creature* pCreature)
{
    return new npc_harthal_truesight(pCreature);
}


struct npc_admiral_barean_westwind : public ScriptedAI
{
    explicit npc_admiral_barean_westwind(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_admiral_barean_westwind::Reset();
    }

    void Reset() override
    {

    }

    void UpdateAI(const uint32 uiDiff) override
    {

    }
};

CreatureAI* GetAI_npc_admiral_barean_westwind(Creature* pCreature)
{
    return new npc_admiral_barean_westwind(pCreature);
}


void AddSC_boss_ardaeus()
{
    Script *pNewscript;
    pNewscript = new Script;
    pNewscript->Name = "boss_ardaeus";
    pNewscript->GetAI = &GetAI_boss_ardaeus;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_sun";
    pNewscript->GetAI = &GetAI_npc_sun;
    pNewscript->RegisterSelf();

    // Adds
    pNewscript = new Script;
    pNewscript->Name = "npc_invar_onearm";
    pNewscript->GetAI = &GetAI_npc_invar_onearm;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_arellas_fireleaf";
    pNewscript->GetAI = &GetAI_npc_arellas_fireleaf;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_holia_sunshield";
    pNewscript->GetAI = &GetAI_npc_holia_sunshield;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_ferren_marcus";
    pNewscript->GetAI = &GetAI_npc_ferren_marcus;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_yana_bloodspear";
    pNewscript->GetAI = &GetAI_npc_yana_bloodspear;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_orman_stromgarde";
    pNewscript->GetAI = &GetAI_npc_orman_stromgarde;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_fellari_swiftarrow";
    pNewscript->GetAI = &GetAI_npc_fellari_swiftarrow;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_dorgar_stoenbrow";
    pNewscript->GetAI = &GetAI_npc_dorgar_stoenbrow;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_valea_twinblades";
    pNewscript->GetAI = &GetAI_npc_valea_twinblades;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_harthal_truesight";
    pNewscript->GetAI = &GetAI_npc_harthal_truesight;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_admiral_barean_westwind";
    pNewscript->GetAI = &GetAI_npc_admiral_barean_westwind;
    pNewscript->RegisterSelf();
}
