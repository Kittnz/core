/*
SDName: Sunnyglade
SD%Complete:
SDComment:
SDCategory: BG
EndScriptData */

#include "scriptPCH.h"

enum SV_Spells
{
    /*human leader*/
    SPELL_HOLY_STRIKE = 17284,
    SPELL_HAMMER_OF_JUSTICE = 24239,
    /*orc_leader*/
    SPELL_CLEAVE = 26350,
    /*human_footman*/
    /*human_archer*/
    SPELL_AUTOSHOT = 75,
    /*human_conjurer*/
    SPELL_SUMMON_WATER_ELEMENTAL = 0,
    /*human_cleric*/
    /*orc_grunt*/
    /*orc_spearman*/
    /*orc_warlock*/
    /*orc_necrolyte*/
};

enum SV_Events
{
    /*human leader*/
    EVENT_HOLY_STRIKE,
    EVENT_HAMMER_OF_JUSTICE,
    /*orc_leader*/
    EVENT_CLEAVE,
    /*human_footman*/
    /*human_archer*/
    EVENT_SHOOT,
    /*human_conjurer*/
    EVENT_SUMMON_WATER_ELEMENTAL,
    /*human_cleric*/
    EVENT_HEAL,
    /*orc_grunt*/
    /*orc_spearman*/
    /*orc_warlock*/
    /*orc_necrolyte*/
};

struct SV_human_leaderAI : public ScriptedAI
{
    SV_human_leaderAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        me->SetVirtualItem(VIRTUAL_ITEM_SLOT_0, 13049);
        Reset();
    }

    EventMap m_events;

    void Reset() override
    {
        m_events.Reset();
    }

    void Aggro(Unit* pWho) override
    {
        m_events.ScheduleEvent(EVENT_HOLY_STRIKE, Seconds(urand(8, 15)));
        m_events.ScheduleEvent(EVENT_HAMMER_OF_JUSTICE, Seconds(urand(20, 45)));
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        m_events.Update(uiDiff);
        while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_HOLY_STRIKE:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HOLY_STRIKE) == CAST_OK)
                        m_events.Repeat(Seconds(20));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_HAMMER_OF_JUSTICE:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HAMMER_OF_JUSTICE) == CAST_OK)
                        m_events.Repeat(Seconds(30));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

struct SV_orc_leaderAI : public ScriptedAI
{
    SV_orc_leaderAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        me->SetVirtualItem(VIRTUAL_ITEM_SLOT_0, 15260);
        Reset();
    }

    EventMap m_events;

    void Reset() override
    {
        m_events.Reset();
    }

    void Aggro(Unit* pWho) override
    {
        m_events.ScheduleEvent(EVENT_CLEAVE, Seconds(urand(8, 15)));
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        m_events.Update(uiDiff);
        while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_CLEAVE:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_CLEAVE) == CAST_OK)
                        m_events.Repeat(Seconds(15));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

struct SV_human_footmanAI : public ScriptedAI
{
    SV_human_footmanAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        me->SetVirtualItem(VIRTUAL_ITEM_SLOT_0, 15211);
        me->SetVirtualItem(VIRTUAL_ITEM_SLOT_1, 7188);
        Reset();
    }

    EventMap m_events;

    void Reset() override
    {
        m_events.Reset();
    }

    void Aggro(Unit* pWho) override
    {
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        m_events.Update(uiDiff);
        /*while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_HOLY_STRIKE:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HOLY_STRIKE) == CAST_OK)
                        m_events.Repeat(Seconds(20));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_HAMMER_OF_JUSTICE:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HAMMER_OF_JUSTICE, CF_FORCE_CAST) == CAST_OK)
                        m_events.Repeat(Seconds(30));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }*/

        DoMeleeAttackIfReady();
    }
};

struct SV_human_archerAI : public ScriptedAI
{
    SV_human_archerAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        me->SetVirtualItem(VIRTUAL_ITEM_SLOT_2, 15807);
        Reset();
    }

    EventMap m_events;

    void Reset() override
    {
        m_events.Reset();
    }

    void Aggro(Unit* pWho) override
    {
        m_events.ScheduleEvent(EVENT_SHOOT, Seconds(2));
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        m_events.Update(uiDiff);
        while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_SHOOT:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_AUTOSHOT) == CAST_OK)
                        m_events.Repeat(Seconds(2));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }
    }
};

struct SV_human_conjurerAI : public ScriptedAI
{
    SV_human_conjurerAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    EventMap m_events;

    void Reset() override
    {
        m_events.Reset();
    }

    void Aggro(Unit* pWho) override
    {
        m_events.ScheduleEvent(EVENT_SUMMON_WATER_ELEMENTAL, Seconds(5));
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        m_events.Update(uiDiff);
        while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_SUMMON_WATER_ELEMENTAL:
                {
                    m_events.CancelEvent(EVENT_SUMMON_WATER_ELEMENTAL);
                    DoCastSpellIfCan(m_creature, SPELL_SUMMON_WATER_ELEMENTAL);
                    break;
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

struct SV_human_clericAI : public ScriptedAI
{
    SV_human_clericAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        me->SetVirtualItem(VIRTUAL_ITEM_SLOT_0, 13049);
        Reset();
    }

    EventMap m_events;

    void Reset() override
    {
        m_events.Reset();
    }

    void Aggro(Unit* pWho) override
    {
        //m_events.ScheduleEvent(EVENT_HEAL, Seconds(urand(8, 15)));
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        m_events.Update(uiDiff);
        /*while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_HEAL:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HOLY_STRIKE) == CAST_OK)
                        m_events.Repeat(Seconds(20));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }*/

        DoMeleeAttackIfReady();
    }
};

struct SV_orc_gruntAI : public ScriptedAI
{
    SV_orc_gruntAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        me->SetVirtualItem(VIRTUAL_ITEM_SLOT_0, 4562);
        Reset();
    }

    EventMap m_events;

    void Reset() override
    {
        m_events.Reset();
    }

    void Aggro(Unit* pWho) override
    {
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        m_events.Update(uiDiff);
        /*while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_HOLY_STRIKE:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HOLY_STRIKE) == CAST_OK)
                        m_events.Repeat(Seconds(20));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_HAMMER_OF_JUSTICE:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HAMMER_OF_JUSTICE, CF_FORCE_CAST) == CAST_OK)
                        m_events.Repeat(Seconds(30));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }*/

        DoMeleeAttackIfReady();
    }
};

struct SV_orc_spearmanAI : public ScriptedAI
{
    SV_orc_spearmanAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        me->SetVirtualItem(VIRTUAL_ITEM_SLOT_0, 2023);
        Reset();
    }

    EventMap m_events;

    void Reset() override
    {
        m_events.Reset();
    }

    void Aggro(Unit* pWho) override
    {
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        m_events.Update(uiDiff);
        /*while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_HOLY_STRIKE:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HOLY_STRIKE) == CAST_OK)
                        m_events.Repeat(Seconds(20));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_HAMMER_OF_JUSTICE:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HAMMER_OF_JUSTICE, CF_FORCE_CAST) == CAST_OK)
                        m_events.Repeat(Seconds(30));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }*/

        DoMeleeAttackIfReady();
    }
};

struct SV_orc_warlockAI : public ScriptedAI
{
    SV_orc_warlockAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        me->SetVirtualItem(VIRTUAL_ITEM_SLOT_0, 13078);
        Reset();
    }

    EventMap m_events;

    void Reset() override
    {
        m_events.Reset();
    }

    void Aggro(Unit* pWho) override
    {
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        m_events.Update(uiDiff);
        /*while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_HOLY_STRIKE:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HOLY_STRIKE) == CAST_OK)
                        m_events.Repeat(Seconds(20));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_HAMMER_OF_JUSTICE:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HAMMER_OF_JUSTICE, CF_FORCE_CAST) == CAST_OK)
                        m_events.Repeat(Seconds(30));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }*/

        DoMeleeAttackIfReady();
    }
};

struct SV_orc_necrolyteAI : public ScriptedAI
{
    SV_orc_necrolyteAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        me->SetVirtualItem(VIRTUAL_ITEM_SLOT_0, 19214);
        Reset();
    }

    EventMap m_events;

    void Reset() override
    {
        m_events.Reset();
    }

    void Aggro(Unit* pWho) override
    {
        m_events.ScheduleEvent(EVENT_HOLY_STRIKE, Seconds(urand(8, 15)));
        m_events.ScheduleEvent(EVENT_HAMMER_OF_JUSTICE, Seconds(urand(20, 45)));
    }

    void UpdateAI(uint32 const uiDiff)  override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        m_events.Update(uiDiff);
        /*while (auto l_EventId = m_events.ExecuteEvent())
        {
            switch (l_EventId)
            {
                case EVENT_HOLY_STRIKE:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HOLY_STRIKE) == CAST_OK)
                        m_events.Repeat(Seconds(20));
                    else
                        m_events.Repeat(100);

                    break;
                }
                case EVENT_HAMMER_OF_JUSTICE:
                {
                    if (DoCastSpellIfCan(m_creature->GetVictim(), SPELL_HAMMER_OF_JUSTICE, CF_FORCE_CAST) == CAST_OK)
                        m_events.Repeat(Seconds(30));
                    else
                        m_events.Repeat(100);

                    break;
                }
            }
        }*/

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_SV_human_leader(Creature* pCreature)
{
    return new SV_human_leaderAI(pCreature);
}

CreatureAI* GetAI_SV_orc_leader(Creature* pCreature)
{
    return new SV_orc_leaderAI(pCreature);
}

CreatureAI* GetAI_SV_human_footman(Creature* pCreature)
{
    return new SV_human_footmanAI(pCreature);
}

CreatureAI* GetAI_SV_human_archer(Creature* pCreature)
{
    return new SV_human_archerAI(pCreature);
}

CreatureAI* GetAI_SV_human_conjurer(Creature* pCreature)
{
    return new SV_human_conjurerAI(pCreature);
}

CreatureAI* GetAI_SV_human_cleric(Creature* pCreature)
{
    return new SV_human_clericAI(pCreature);
}

CreatureAI* GetAI_SV_orc_grunt(Creature* pCreature)
{
    return new SV_orc_gruntAI(pCreature);
}

CreatureAI* GetAI_SV_orc_spearman(Creature* pCreature)
{
    return new SV_orc_spearmanAI(pCreature);
}

CreatureAI* GetAI_SV_orc_warlock(Creature* pCreature)
{
    return new SV_orc_warlockAI(pCreature);
}

CreatureAI* GetAI_SV_orc_necrolyte(Creature* pCreature)
{
    return new SV_orc_necrolyteAI(pCreature);
}

void AddSC_bg_sunnyglade()
{
    Script* newscript;
    newscript = new Script;
    newscript->Name = "SV_human_leader";
    newscript->GetAI = &GetAI_SV_human_leader;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "SV_orc_leader";
    newscript->GetAI = &GetAI_SV_orc_leader;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "SV_human_footman";
    newscript->GetAI = &GetAI_SV_human_footman;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "SV_human_archer";
    newscript->GetAI = &GetAI_SV_human_archer;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "SV_human_conjurer";
    newscript->GetAI = &GetAI_SV_human_conjurer;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "SV_human_cleric";
    newscript->GetAI = &GetAI_SV_human_cleric;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "SV_orc_grunt";
    newscript->GetAI = &GetAI_SV_orc_grunt;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "SV_orc_spearman";
    newscript->GetAI = &GetAI_SV_orc_spearman;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "SV_orc_warlock";
    newscript->GetAI = &GetAI_SV_orc_warlock;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "SV_orc_necrolyte";
    newscript->GetAI = &GetAI_SV_orc_necrolyte;
    newscript->RegisterSelf();
}