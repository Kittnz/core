#include "scriptPCH.h"

using namespace std;

struct boss_thamgrarrAI final : ScriptedAI {
    explicit boss_thamgrarrAI(Creature *creature) : ScriptedAI(creature) {
        boss_thamgrarrAI::Reset();
    }

    void Reset() override {
        // TODO This is for debugging. SQL Patch required to fix NPC.
        me->SetMaxPower(POWER_MANA, 50000);
        me->SetPower(POWER_MANA, 50000);
    }

    void Aggro(Unit *) override {
        _lastUpdateTick = 0;
        _rainOfFirePhase = eRainOfFirePhases::PhaseOne;
        _slamPhase = eSlamPhases::PhaseOne;

        _lastSpellEventProcessedAt = 0;
        _spellEventQueue.Reset();
        _spellEventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellEvents::RainOfFire), Milliseconds(400));
        _spellEventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellEvents::Fireball), Seconds(10), Seconds(20));
        _spellEventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellEvents::Slam), Milliseconds(400));
        _spellEventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellEvents::IceBlock), Milliseconds(400));

        _lastTextEventProcessedAt = 0;
        _textEventQueue.Reset();
        _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::AggroTham), Milliseconds(0));
        _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::AggroGrarr), Milliseconds(0));
    }

    void UpdateAI(const uint32_t diff) override {
        _lastUpdateTick += diff;

        if (!me->SelectHostileTarget() || !me->GetVictim()) {
            return;
        }

        _spellEventQueue.Update(diff);

        switch (const auto nextEvent = PopSpellEvent(); nextEvent) {
            case eSpellEvents::EventNone:
                DoMeleeAttackIfReady();
                break;
            case eSpellEvents::RainOfFire:
                if (!SpellEventRainOfFirePredicate()) {
                    _spellEventQueue.Repeat(Milliseconds(400));
                    break;
                }

                SpellEventRainOfFireHandler();
                break;
            case eSpellEvents::Fireball:
                if (!SpellEventFireballPredicate()) {
                    _spellEventQueue.Repeat(Milliseconds(400));
                    break;
                }

                SpellEventFireballHandler();
                break;
            case eSpellEvents::Slam:
                if (!SpellEventSlamPredicate()) {
                    _spellEventQueue.Repeat(Milliseconds(400));
                    break;
                }

                SpellEventSlamHandler();
                break;
            case eSpellEvents::IceBlock:
                if (!SpellEventIceBlockPredicate()) {
                    _spellEventQueue.Repeat(Milliseconds(400));
                    break;
                }

                SpellEventIceBlockHandler();
                break;
        }

        // We update the text event queue after spell event processing, because spell events may want to queue up text events.
        _textEventQueue.Update(diff);

        switch (const auto nextEvent = PopTextEvent(); nextEvent) {
            case eTextEvents::EventNone:
                break;
            case eTextEvents::AggroTham:
                me->MonsterSendTextToZone("Finally, something to amuse me.", CHAT_MSG_MONSTER_SAY, LANG_UNIVERSAL, nullptr, _nameTham);
                break;
            case eTextEvents::AggroGrarr:
                me->MonsterSendTextToZone("Kill them, kill them all!", CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL, nullptr, _nameGrarr);
                break;
            case eTextEvents::RainOfFirePhaseOneTham:
                me->MonsterSendTextToZone("Death comes from above.", CHAT_MSG_MONSTER_SAY, LANG_UNIVERSAL, nullptr, _nameTham);
                break;
            case eTextEvents::RainOfFirePhaseOneGrarr:
                me->MonsterSendTextToZone("Burn, burn!", CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL, nullptr, _nameGrarr);
                break;
            case eTextEvents::RainOfFirePhaseTwoTham:
                me->MonsterSendTextToZone("You cannot escape the flames of Tham.", CHAT_MSG_MONSTER_SAY, LANG_UNIVERSAL, nullptr, _nameTham);
                break;
            case eTextEvents::RainOfFirePhaseTwoGrarr:
                me->MonsterSendTextToZone("Grarr sees puny people dance! Dance more for Grarr!", CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL, nullptr, _nameGrarr);
                break;
            case eTextEvents::RainOfFirePhaseThreeTham:
                me->MonsterSendTextToZone("Your end is near, I will burn you to a crisp!", CHAT_MSG_MONSTER_SAY, LANG_UNIVERSAL, nullptr, _nameTham);
                break;
            case eTextEvents::RainOfFirePhaseThreeGrarr:
                me->MonsterSendTextToZone("Puny people boring, time to go!", CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL, nullptr, _nameGrarr);
                break;
            case eTextEvents::SlamPhaseOneTham:
                me->MonsterSendTextToZone("You're making me angry!", CHAT_MSG_MONSTER_SAY, LANG_UNIVERSAL, nullptr, _nameTham);
                break;
            case eTextEvents::SlamPhaseOneGrarr:
                me->MonsterSendTextToZone("Back, stay back!", CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL, nullptr, _nameGrarr);
                break;
            case eTextEvents::SlamPhaseTwoTham:
                me->MonsterSendTextToZone("Away, you ugly abomination!", CHAT_MSG_MONSTER_SAY, LANG_UNIVERSAL, nullptr, _nameTham);
                break;
            case eTextEvents::SlamPhaseTwoGrarr:
                me->MonsterSendTextToZone("Yes, ugly!", CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL, nullptr, _nameGrarr);
                break;
            case eTextEvents::SlamPhaseThreeTham:
                me->MonsterSendTextToZone("No, stay away!", CHAT_MSG_MONSTER_SAY, LANG_UNIVERSAL, nullptr, _nameTham);
                break;
            case eTextEvents::SlamPhaseThreeGrarr:
                me->MonsterSendTextToZone("Leave us alone!", CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL, nullptr, _nameGrarr);
                break;
            case eTextEvents::IceBlockTham:
                me->MonsterSendTextToZone("I will not fail!", CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL, nullptr, _nameTham);
                break;
            case eTextEvents::IceBlockGrarr:
                me->MonsterSendTextToZone("Grarr starting to feel cold...", CHAT_MSG_MONSTER_SAY, LANG_UNIVERSAL, nullptr, _nameGrarr);
                break;
            case eTextEvents::DeathTham:
                me->MonsterSendTextToZone("Defeated by mongrels...", CHAT_MSG_MONSTER_SAY, LANG_UNIVERSAL, nullptr, _nameTham);
                break;
            case eTextEvents::DeathGrarr:
                me->MonsterSendTextToZone("Tham, Grarr not feel so good...", CHAT_MSG_MONSTER_SAY, LANG_UNIVERSAL, nullptr, _nameGrarr);
                break;
        }
    }

private:
    enum eSpellIds {
        SpellRainOfFire = 11678,
        SpellFireball = 25306,
        SpellSlam = 27862,
        SpellIceBlock = 11958,
    };

    enum class eSpellEvents {
        EventNone,
        RainOfFire,
        Fireball,
        Slam,
        IceBlock,
    };

    enum class eTextEvents {
        EventNone,
        AggroTham,
        AggroGrarr,
        RainOfFirePhaseOneTham,
        RainOfFirePhaseOneGrarr,
        RainOfFirePhaseTwoTham,
        RainOfFirePhaseTwoGrarr,
        RainOfFirePhaseThreeTham,
        RainOfFirePhaseThreeGrarr,
        SlamPhaseOneTham,
        SlamPhaseOneGrarr,
        SlamPhaseTwoTham,
        SlamPhaseTwoGrarr,
        SlamPhaseThreeTham,
        SlamPhaseThreeGrarr,
        IceBlockTham,
        IceBlockGrarr,
        DeathTham,
        DeathGrarr,
    };

    enum class eRainOfFirePhases {
        PhaseOne,
        PhaseTwo,
        PhaseThree,
        Finished,
    };

    enum class eSlamPhases {
        PhaseOne,
        PhaseTwo,
        PhaseThree,
        Finished,
    };

    enum class eIceBlockPhases {
        PhaseOne,
        Finished
    };

    EventMap _spellEventQueue;
    EventMap _textEventQueue;
    uint32_t _lastUpdateTick = 0;
    uint32_t _lastSpellEventProcessedAt = 0;
    uint32_t _lastTextEventProcessedAt = 0;
    const uint32_t _minimumTicksBetweenSpellEvents = 4000;
    const uint32_t _minimumTicksBetweenTextEvents = 1250;
    const char *_nameTham = "Tham";
    const char *_nameGrarr = "Grarr";
    eRainOfFirePhases _rainOfFirePhase = eRainOfFirePhases::PhaseOne;
    eSlamPhases _slamPhase = eSlamPhases::PhaseOne;
    eIceBlockPhases _iceBlockPhase = eIceBlockPhases::PhaseOne;

    /**
     * \brief Attempts to pop an event from the spell event queue.
     * \return The event to execute, or EventNone if no action should be taken.
     */
    [[nodiscard]]
    eSpellEvents PopSpellEvent() {
        // If we're popping events too quickly, return EventNone.
        if (_lastUpdateTick - _lastSpellEventProcessedAt < _minimumTicksBetweenSpellEvents) {
            return eSpellEvents::EventNone;
        }

        const auto poppedEvent = static_cast<eSpellEvents>(_spellEventQueue.ExecuteEvent());
        // If we successfully popped an event, update the tick counter.
        if (poppedEvent != eSpellEvents::EventNone) {
            _lastSpellEventProcessedAt = _lastUpdateTick;
        }
        return poppedEvent;
    }

    /**
     * \brief Attempts to pop an event from the text event queue.
     * \return The event to execute, or EventNone if no action should be taken.
     */
    [[nodiscard]]
    eTextEvents PopTextEvent() {
        // If we're popping events too quickly, return EventNone.
        if (_lastUpdateTick - _lastTextEventProcessedAt < _minimumTicksBetweenTextEvents) {
            return eTextEvents::EventNone;
        }

        const auto poppedEvent = static_cast<eTextEvents>(_textEventQueue.ExecuteEvent());
        // If we successfully popped an event, update the tick counter.
        if (poppedEvent != eTextEvents::EventNone) {
            _lastTextEventProcessedAt = _lastUpdateTick;
        }
        return poppedEvent;
    }

    /**
     * \brief Predicate for the RainOfFire spell event.
     * \return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool SpellEventRainOfFirePredicate() const {
        if (me->IsNonMeleeSpellCasted()) {
            return false;
        }

        switch (_rainOfFirePhase) {
            case eRainOfFirePhases::PhaseOne:
                return me->GetHealthPercent() <= 85;
            case eRainOfFirePhases::PhaseTwo:
                return me->GetHealthPercent() <= 65;
            case eRainOfFirePhases::PhaseThree:
                return me->GetHealthPercent() <= 45;
            case eRainOfFirePhases::Finished:
                return false;
        }

        return false;
    }

    /**
     * \brief Event handler for the RainOfFire spell event.
     */
    void SpellEventRainOfFireHandler() {
        DoCast(me->GetVictim(), SpellRainOfFire);
        switch (_rainOfFirePhase) {
            case eRainOfFirePhases::PhaseOne:
                _rainOfFirePhase = eRainOfFirePhases::PhaseTwo;
                _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::RainOfFirePhaseOneTham), Milliseconds(0));
                _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::RainOfFirePhaseOneGrarr), Milliseconds(0));
                break;
            case eRainOfFirePhases::PhaseTwo:
                _rainOfFirePhase = eRainOfFirePhases::PhaseThree;
                _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::RainOfFirePhaseTwoTham), Milliseconds(0));
                _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::RainOfFirePhaseTwoGrarr), Milliseconds(0));
                break;
            case eRainOfFirePhases::PhaseThree:
                _rainOfFirePhase = eRainOfFirePhases::Finished;
                _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::RainOfFirePhaseThreeTham), Milliseconds(0));
                _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::RainOfFirePhaseThreeGrarr), Milliseconds(0));
                break;
            case eRainOfFirePhases::Finished:
                break;
        }

        if (_rainOfFirePhase != eRainOfFirePhases::Finished) {
            _spellEventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellEvents::RainOfFire), Milliseconds(400));
        }
    }

    /**
     * \brief Predicate for the Fireball spell event.
     * \return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool SpellEventFireballPredicate() const {
        return !me->IsNonMeleeSpellCasted();
    }

    /**
     * \brief Event handler for the Fireball spell event.
     */
    void SpellEventFireballHandler() {
        DoCast(me->GetVictim(), SpellFireball);
        _spellEventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellEvents::Fireball), Seconds(40), Seconds(60));
    }

    /**
     * \brief Predicate for the Slam spell event.
     * \return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool SpellEventSlamPredicate() const {
        if (me->IsNonMeleeSpellCasted()) {
            return false;
        }

        switch (_slamPhase) {
            case eSlamPhases::PhaseOne:
                return me->GetHealthPercent() <= 70;
            case eSlamPhases::PhaseTwo:
                return me->GetHealthPercent() <= 40;
            case eSlamPhases::PhaseThree:
                return me->GetHealthPercent() <= 10;
            case eSlamPhases::Finished:
                return false;
        }

        return false;
    }

    /**
     * \brief Event handler for the Slam spell event.
     */
    void SpellEventSlamHandler() {
        DoCast(me->GetVictim(), SpellSlam);
        switch (_slamPhase) {
            case eSlamPhases::PhaseOne:
                _slamPhase = eSlamPhases::PhaseTwo;
                _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::SlamPhaseOneTham), Milliseconds(0));
                _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::SlamPhaseOneGrarr), Milliseconds(0));
                break;
            case eSlamPhases::PhaseTwo:
                _slamPhase = eSlamPhases::PhaseThree;
                _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::SlamPhaseTwoTham), Milliseconds(0));
                _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::SlamPhaseTwoGrarr), Milliseconds(0));
                break;
            case eSlamPhases::PhaseThree:
                _slamPhase = eSlamPhases::Finished;
                _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::SlamPhaseThreeTham), Milliseconds(0));
                _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::SlamPhaseThreeGrarr), Milliseconds(0));
                break;
            case eSlamPhases::Finished:
                break;
        }

        if (_slamPhase != eSlamPhases::Finished) {
            _spellEventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellEvents::Slam), Milliseconds(400));
        }
    }

    /**
     * \brief Predicate for the IceBlock spell event.
     * \return True if the event handler should fire, false if we should requeue the event.
     */
    bool SpellEventIceBlockPredicate() const {
        if (me->IsNonMeleeSpellCasted()) {
            return false;
        }

        switch (_iceBlockPhase) {
            case eIceBlockPhases::PhaseOne:
                return me->GetHealthPercent() <= 5;
            case eIceBlockPhases::Finished:
                return false;
        }

        return false;
    }

    /**
     * \brief Event handler for the IceBlock spell event.
     */
    void SpellEventIceBlockHandler() {
        DoCast(me, SpellIceBlock);
        switch (_iceBlockPhase) {
            case eIceBlockPhases::PhaseOne:
                _iceBlockPhase = eIceBlockPhases::Finished;
                _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::IceBlockTham), Milliseconds(0));
                _textEventQueue.ScheduleEvent(static_cast<uint32_t>(eTextEvents::IceBlockGrarr), Milliseconds(0));
                break;
            case eIceBlockPhases::Finished:
                break;
        }

        // Right now this won't fire, as we only have one phase, but this makes it easier to modify in future.
        if (_iceBlockPhase != eIceBlockPhases::Finished) {
            _spellEventQueue.ScheduleEvent(static_cast<uint32_t>(eSpellEvents::IceBlock), Milliseconds(400));
        }
    }
};

CreatureAI *GetAI_boss_thamgrarr(Creature *creature) {
    return new boss_thamgrarrAI(creature);
}

void AddSC_boss_thamgrarr() {
    Script *newscript = new Script;
    newscript->Name = "boss_thamgrarr";
    newscript->GetAI = &GetAI_boss_thamgrarr;
    newscript->RegisterSelf();
}
