#include "scriptPCH.h"

enum BlackBrideSpells
{
    SPELL_DEMORALIZING_SHOUT = 19778,
    SPELL_WEIL_OF_THE_BANSHEE = 10890,
    SPELL_LICH_SLAP = 28873
};

enum BlackBrideEvents
{
    EVENT_SPELL_DEMORALIZING_SHOUT,
    EVENT_SPELL_WEIL_OF_THE_BANSHEE,
    EVENT_SPELL_LICH_SLAP
};

struct SpellEventHolder
{
    SpellEventHolder() : me(nullptr) {}
    std::unordered_map<uint32, uint32> currentStep; // used for execution
    Creature* me;
    std::unordered_map<uint32, uint32> nextStep; // used for filling of containers

    uint32 GetNextStep(uint32 spellId)
    {
        return ++nextStep[spellId];
    }
};

enum class InteractType
{
    Say,
    Yell
};

enum class SpellTarget
{
    Me,
    Victim
};

struct SpellEventData
{
    uint32 step;
    float healthPercentage;
    InteractType interactType;
    SpellTarget spellTargetType;
    std::string text;
};

using SpellEventDataMap = std::unordered_multimap<uint32, SpellEventData>;

bool ExecuteSpellEventData(SpellEventDataMap& eventData, SpellEventHolder& eventHolder, uint32 spellId)
{
    auto me = eventHolder.me;
    auto itrPair = eventData.equal_range(spellId);
    while (itrPair.first++ != itrPair.second)
    {
        auto& elem = *itrPair.first;
        if (elem.second.healthPercentage <= me->GetHealthPercent() && elem.second.step > eventHolder.currentStep[spellId])
        {
            //increase step and execute the spell and interaction.
            ++eventHolder.currentStep[spellId];

            switch (elem.second.interactType)
            {
            case InteractType::Say: // say
                me->MonsterSay(elem.second.text.c_str());
                break;

            case InteractType::Yell:
                me->MonsterYell(elem.second.text.c_str());
                break;

            default:
                break;
            }

            Unit* target = nullptr;

            switch (elem.second.spellTargetType)
            {
            case SpellTarget::Me:
                target = me;
                break;

            case SpellTarget::Victim:
                target = me->getVictim();
                break;

            default:
                break;
            }

            if (target && !me->IsNonMeleeSpellCasted(false))
            {
                me->CastSpell(target, spellId, false);
            }
            return true;
        }
    }
    return false;
}

struct boss_black_brideAI : public ScriptedAI
{
    boss_black_brideAI(Creature* c) : ScriptedAI(c)
    {
        Reset();
    }


    void Reset() override
    {
        m_events.Reset();

        m_events.ScheduleEvent(EVENT_SPELL_DEMORALIZING_SHOUT, Seconds(10));
        m_weilCount = 0;
        m_lichSlapCount = 0;
    }

    void Aggro(Unit* target) override
    {
        me->MonsterSay("Come and meet your end.");
    }

    void JustDied(Unit* killer) override
    {
        me->MonsterSay("D-Damien, my.. my love.");
    }

    void UpdateAI(uint32 diff) override
    {
        m_events.Update(diff);
        
        if (!me->SelectHostileTarget() || !me->getVictim())
            return;

        while (uint32 eventId = m_events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_SPELL_DEMORALIZING_SHOUT:
                {
                    me->MonsterYell("Infidels!");
                    DoCast(me->getVictim(), SPELL_DEMORALIZING_SHOUT);
                    m_events.Repeat(Seconds(140), Seconds(160));
                }break;

                case EVENT_SPELL_WEIL_OF_THE_BANSHEE:
                {
                    if (m_weilCount == 1)
                        me->MonsterYell("You betrayed my trust!");
                    else if (m_weilCount == 2)
                        me->MonsterSay("I would\'ve done anything for your love.");
                    else if (m_weilCount == 3)
                        me->MonsterSay("I still feel the cold steel of your dagger in my back.");
                    DoCast(me->getVictim(), SPELL_WEIL_OF_THE_BANSHEE);
                }break;

                case EVENT_SPELL_LICH_SLAP:
                {
                    if (m_lichSlapCount == 1)
                        me->MonsterYell("No, stay away!");
                    else if (m_lichSlapCount == 2)
                        me->MonsterYell("Your touch defiles me, I am only his!");
                    else if (m_lichSlapCount == 3)
                        me->MonsterYell("I have to see him again!");
                    DoCast(me->getVictim(), SPELL_LICH_SLAP);
                }break;
            }
        }

        auto procWeil = [this]()
        {
            ++m_weilCount;
            m_events.ScheduleEvent(EVENT_SPELL_WEIL_OF_THE_BANSHEE, Milliseconds(50));
        };

        auto procLichSlap = [this]()
        {
            ++m_lichSlapCount;
            m_events.ScheduleEvent(EVENT_SPELL_LICH_SLAP, Milliseconds(50));
        };

        if (m_weilCount == 0 && me->GetHealthPercent() <= 75)
        {
            procWeil();
        }
        else if (m_weilCount == 1 && me->GetHealthPercent() <= 50)
        {

            procWeil();
        }
        else if (m_weilCount == 2 && me->GetHealthPercent() <= 25)
        {
            procWeil();
        }


        if (m_lichSlapCount == 0 && me->GetHealthPercent() <= 70)
        {
            procLichSlap();
        }
        else if (m_lichSlapCount == 1 && me->GetHealthPercent() <= 50)
        {

            procLichSlap();
        }
        else if (m_lichSlapCount == 2 && me->GetHealthPercent() <= 20)
        {
            procLichSlap();
        }

        DoMeleeAttackIfReady();
    }

    EventMap m_events;
    uint32 m_weilCount;
    uint32 m_lichSlapCount;
};

CreatureAI* GetAI_boss_black_bride(Creature* pCreature)
{
    return new boss_black_brideAI(pCreature);
}



enum CruelBladeSpells
{
    SPELL_BLINK = 5499,
    SPELL_BLOODLUST = 23951,
    SPELL_THUNDERCLAP = 23931,
    SPELL_BLADESTORM = 9632
};

enum CruelBladeEvents
{
    EVENT_SPELL_BLINK,
    EVENT_CHECK_SPELLEVENTS,
    EVENT_SPELL_THUNDERCLAP,
    EVENT_SPELL_BLADESTORM
};


struct boss_volkan_cruelbladeAI : public ScriptedAI
{
    boss_volkan_cruelbladeAI(Creature* c) : ScriptedAI(c)
    {
        Reset();

        m_data = {
            {SPELL_BLOODLUST, {m_holder.GetNextStep(SPELL_BLOODLUST), 70.f, InteractType::Yell, SpellTarget::Me, "Feel the heat of the Burning Blade!"}},
            {SPELL_BLOODLUST, {m_holder.GetNextStep(SPELL_BLOODLUST), 40.f, InteractType::Yell, SpellTarget::Me, "I will see you fall! Trk’hsk!"}},
            {SPELL_BLOODLUST, {m_holder.GetNextStep(SPELL_BLOODLUST), 10.f, InteractType::Yell, SpellTarget::Me, "Lok’tar Ogar!"}},

            {SPELL_BLADESTORM, {m_holder.GetNextStep(SPELL_BLADESTORM), 5.f, InteractType::Yell, SpellTarget::Me, "Feel the wrath of the Cruelblade!"}}
        };
    }


    void Reset() override
    {
        m_events.Reset();
        m_holder.me = me;
    }

    void Aggro(Unit* target) override
    {
        me->MonsterYell("I will be a prisoner no longer!");
    }

    void JustDied(Unit* killer) override
    {
        me->MonsterSay("Lok’tar *whimpers* O-Ogar.");
    }

    void UpdateAI(uint32 diff) override
    {
        m_events.Update(diff);

        if (!me->SelectHostileTarget() || !me->getVictim())
            return;

        while (uint32 eventId = m_events.ExecuteEvent())
        {
            switch (eventId)
            {
            case EVENT_SPELL_BLINK:
            {
                me->MonsterYell("Behind you!");
                DoCast(me->getVictim(), SPELL_BLINK);
                DoResetThreat();
                m_events.Repeat(Seconds(70), Seconds(90));
            }break;


            case EVENT_SPELL_THUNDERCLAP:
            {
                DoCast(me->getVictim(), SPELL_THUNDERCLAP);
                m_events.Repeat(Seconds(110), Seconds(130));
            }break;

            case EVENT_CHECK_SPELLEVENTS:
            {
                ExecuteSpellEventData(m_data, m_holder, SPELL_BLOODLUST);
                m_events.Repeat(Seconds(1));
            }break;

            }
        }

        DoMeleeAttackIfReady();
    }

    EventMap m_events;
    SpellEventDataMap m_data;
    SpellEventHolder m_holder;
};

CreatureAI* GetAI_boss_volkan_cruelblade(Creature* pCreature)
{
    return new boss_volkan_cruelbladeAI(pCreature);
}

void AddSC_instance_stormwind_vaults()
{
    Script* newscript;
    newscript = new Script;
    newscript->Name = "boss_black_bride";
    newscript->GetAI = &GetAI_boss_black_bride;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "boss_volkan_cruelblade";
    newscript->GetAI = &GetAI_boss_volkan_cruelblade;
    newscript->RegisterSelf();
}