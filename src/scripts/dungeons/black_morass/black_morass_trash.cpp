/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "scriptPCH.h"
#include "black_morass.h"
#include "black_morass_trash.hpp"


class npc_frostbitten_bronze_soldierAI : public ScriptedAI
{
public:
    explicit npc_frostbitten_bronze_soldierAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_frostbitten_bronze_soldierAI::Reset();
    }

private:


public:
    void Reset() override
    {

    }

    void UpdateAI(const std::uint32_t uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_frostbitten_bronze_soldier(Creature* pCreature)
{
    return new npc_frostbitten_bronze_soldierAI(pCreature);
}


class npc_infinite_dragonspawnAI : public ScriptedAI
{
public:
    explicit npc_infinite_dragonspawnAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_infinite_dragonspawnAI::Reset();
    }

private:


public:
    void Reset() override
    {

    }

    void UpdateAI(const std::uint32_t uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_infinite_dragonspawn(Creature* pCreature)
{
    return new npc_infinite_dragonspawnAI(pCreature);
}


class npc_infinite_riftguardAI : public ScriptedAI
{
public:
    explicit npc_infinite_riftguardAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_infinite_riftguardAI::Reset();
    }

private:


public:
    void Reset() override
    {

    }

    void UpdateAI(const std::uint32_t uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_infinite_riftguard(Creature* pCreature)
{
    return new npc_infinite_riftguardAI(pCreature);
}


class npc_infinite_riftweaverAI : public ScriptedAI
{
public:
    explicit npc_infinite_riftweaverAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_infinite_riftweaverAI::Reset();
    }

private:


public:
    void Reset() override
    {

    }

    void UpdateAI(const std::uint32_t uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_infinite_riftweaver(Creature* pCreature)
{
    return new npc_infinite_riftweaverAI(pCreature);
}


class npc_infinite_whelpAI : public ScriptedAI
{
public:
    explicit npc_infinite_whelpAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_infinite_whelpAI::Reset();
    }

private:


public:
    void Reset() override
    {

    }

    void UpdateAI(const std::uint32_t uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_infinite_whelp(Creature* pCreature)
{
    return new npc_infinite_whelpAI(pCreature);
}


class npc_infinite_timeripperAI : public ScriptedAI
{
public:
    explicit npc_infinite_timeripperAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_infinite_timeripperAI::Reset();
    }

private:


public:
    void Reset() override
    {

    }

    void UpdateAI(const std::uint32_t uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_infinite_timeripper(Creature* pCreature)
{
    return new npc_infinite_timeripperAI(pCreature);
}


class npc_infinite_riftlordAI : public ScriptedAI
{
public:
    explicit npc_infinite_riftlordAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_infinite_riftlordAI::Reset();
    }

private:


public:
    void Reset() override
    {

    }

    void UpdateAI(const std::uint32_t uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_infinite_riftlord(Creature* pCreature)
{
    return new npc_infinite_riftlordAI(pCreature);
}


class npc_aqir_addAI : public ScriptedAI
{
public:
    explicit npc_aqir_addAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_aqir_addAI::Reset();
    }

private:


public:
    void Reset() override
    {

    }

    void UpdateAI(const std::uint32_t uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_aqir_add(Creature* pCreature)
{
    return new npc_aqir_addAI(pCreature);
}


void AddSC_black_morass_trash()
{
    Script* pNewscript{};

    pNewscript = new Script;
    pNewscript->Name = "npc_frostbitten_bronze_soldier";
    pNewscript->GetAI = &GetAI_npc_frostbitten_bronze_soldier;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_infinite_dragonspawn";
    pNewscript->GetAI = &GetAI_npc_infinite_dragonspawn;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_infinite_riftguard";
    pNewscript->GetAI = &GetAI_npc_infinite_riftguard;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_infinite_riftweaver";
    pNewscript->GetAI = &GetAI_npc_infinite_riftweaver;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_infinite_whelp";
    pNewscript->GetAI = &GetAI_npc_infinite_whelp;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_infinite_timeripper";
    pNewscript->GetAI = &GetAI_npc_infinite_timeripper;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_infinite_riftlord";
    pNewscript->GetAI = &GetAI_npc_infinite_riftlord;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_aqir_add";
    pNewscript->GetAI = &GetAI_npc_aqir_add;
    pNewscript->RegisterSelf();
}
