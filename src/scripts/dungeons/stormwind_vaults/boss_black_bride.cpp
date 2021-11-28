#include "scriptPCH.h"

using namespace std;

struct boss_black_brideAI final : ScriptedAI {
    explicit boss_black_brideAI(Creature *c) : ScriptedAI(c) {
        boss_black_brideAI::Reset();
    }

    void Reset() override {
    }

    void Aggro(Unit *target) override {
        _bansheesWailPhase = eBansheesWailPhases::PhaseOne;
        _lichSlapPhase = eLichSlapPhases::PhaseOne;
        _lastUpdateTick = 0;
        _lastEventProcessedAt = 0;

        _eventQueue.Reset();
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eBlackBrideEvents::EventCastDemoralizingShout), Seconds(4), Seconds(6));
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eBlackBrideEvents::EventCastLichSlap), Seconds(10), Seconds(15));
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eBlackBrideEvents::EventCastBansheesWail), Seconds(30));
        me->MonsterSendTextToZone("Come and meet your end.", CHAT_MSG_MONSTER_YELL);
    }

    void JustDied(Unit *killer) override {
        me->MonsterSendTextToZone("D-Damien, my.. my love.", CHAT_MSG_MONSTER_SAY);
    }

    void UpdateAI(uint32 diff) override {
        _lastUpdateTick += diff;

        if (!me->SelectHostileTarget() || !me->GetVictim()) {
            return;
        }

        _eventQueue.Update(diff);

        switch (const auto nextEvent = PopEvent(); nextEvent) {
            case eBlackBrideEvents::EventCastDemoralizingShout: {
                HandleEventCastDemoralizingShout();
                break;
            }
            case eBlackBrideEvents::EventCastBansheesWail: {
                if (!EventCastBansheesWailPredicate()) {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastBansheesWailHandler();
                break;
            }
            case eBlackBrideEvents::EventCastLichSlap: {
                if (!EventCastLichSlapPredicate()) {
                    _eventQueue.Repeat(Milliseconds(400));
                    break;
                }

                EventCastLichSlapHandler();
                break;
            }
            case eBlackBrideEvents::EventNone: {
                DoMeleeAttackIfReady();
                break;
            }
        }
    }

private:
    /**
     * \brief Contains all spell IDs for spells cast by the Black Bride.
     */
    enum eBlackBrideSpells {
        SpellDemoralizingShout = 19778,
        SpellBansheesWail = 10890,
        SpellLichSlap = 28873
    };

    /**
     * \brief Contains all script events for spell casts etc. for the Black Bride.
     */
    enum class eBlackBrideEvents {
        EventNone,
        EventCastDemoralizingShout,
        EventCastBansheesWail,
        EventCastLichSlap,
    };

    /**
     * \brief Contains all phases for the Banshee's Wail attack.
     */
    enum class eBansheesWailPhases {
        PhaseOne,
        PhaseTwo,
        PhaseThree,
        Finished
    };

    /**
     * \brief Contains all phases for the Lich Slap attack.
     */
    enum class eLichSlapPhases {
        PhaseOne,
        PhaseTwo,
        PhaseThree,
        Finished
    };

    EventMap _eventQueue;
    eBansheesWailPhases _bansheesWailPhase = eBansheesWailPhases::PhaseOne;
    eLichSlapPhases _lichSlapPhase = eLichSlapPhases::PhaseOne;
    uint32_t _lastUpdateTick = 0;
    uint32_t _lastEventProcessedAt = 0;
    const uint32_t _minimumTicksBetweenEvents = 2000;

    /**
     * \brief Attempts to pop an event from the event queue.
     * \return The event to execute, or EventNone if no action should be taken.
     */
    [[nodiscard]]
    eBlackBrideEvents PopEvent() {
        // If we're popping events too quickly, return EventNone.
        if (_lastUpdateTick - _lastEventProcessedAt < _minimumTicksBetweenEvents) {
            return eBlackBrideEvents::EventNone;
        }

        const auto poppedEvent = static_cast<eBlackBrideEvents>(_eventQueue.ExecuteEvent());
        // If we successfully popped an event, update the tick counter.
        if (poppedEvent != eBlackBrideEvents::EventNone) {
            _lastEventProcessedAt = _lastUpdateTick;
        }
        return poppedEvent;
    }

    /**
     * \brief Event handler for the EventCastDemoralizingShout event.
     */
    void HandleEventCastDemoralizingShout() {
        me->MonsterYell("Infidels!");
        DoCast(me->GetVictim(), SpellDemoralizingShout);
        _eventQueue.ScheduleEvent(static_cast<uint32_t>(eBlackBrideEvents::EventCastDemoralizingShout), Seconds(40), Seconds(60));
    }

    /**
     * \brief Predicate for the EventCastBansheesWail event.
     * \return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool EventCastBansheesWailPredicate() const {
        switch (_bansheesWailPhase) {
            case eBansheesWailPhases::PhaseOne:
                return me->GetHealthPercent() <= 75;
            case eBansheesWailPhases::PhaseTwo:
                return me->GetHealthPercent() <= 50;
            case eBansheesWailPhases::PhaseThree:
                return me->GetHealthPercent() <= 25;
            case eBansheesWailPhases::Finished:
                return false;
        }
        return false;
    }

    /**
     * \brief Event handler for the EventCastBansheesWail event.
     */
    void EventCastBansheesWailHandler() {
        DoCast(me->GetVictim(), SpellBansheesWail);
        switch (_bansheesWailPhase) {
            case eBansheesWailPhases::PhaseOne:
                _bansheesWailPhase = eBansheesWailPhases::PhaseTwo;
                me->MonsterSendTextToZone("You betrayed my trust!", CHAT_MSG_MONSTER_YELL);
                break;
            case eBansheesWailPhases::PhaseTwo:
                _bansheesWailPhase = eBansheesWailPhases::PhaseThree;
                me->MonsterSendTextToZone("I would've done anything for your love.", CHAT_MSG_MONSTER_YELL);
                break;
            case eBansheesWailPhases::PhaseThree:
                _bansheesWailPhase = eBansheesWailPhases::Finished;
                me->MonsterSendTextToZone("I still feel the cold steel of your dagger in my back.", CHAT_MSG_MONSTER_YELL);
                break;
            case eBansheesWailPhases::Finished:
                break;
        }

        if (_bansheesWailPhase != eBansheesWailPhases::Finished) {
            _eventQueue.ScheduleEvent(static_cast<uint32_t>(eBlackBrideEvents::EventCastBansheesWail), Seconds(30), Seconds(40));
        }
    }

    /**
     * \brief Predicate for the EventCastLichSlap event.
     * \return True if the event handler should fire, false if we should requeue the event.
     */
    [[nodiscard]]
    bool EventCastLichSlapPredicate() const {
        switch (_lichSlapPhase) {
            case eLichSlapPhases::PhaseOne:
                return me->GetHealthPercent() <= 70;
            case eLichSlapPhases::PhaseTwo:
                return me->GetHealthPercent() <= 50;
            case eLichSlapPhases::PhaseThree:
                return me->GetHealthPercent() <= 20;
            case eLichSlapPhases::Finished:
                return false;
        }
        return false;
    }

    /**
     * \brief Event handler for the EventCastLichSlap event.
     */
    void EventCastLichSlapHandler() {
        DoCast(me->GetVictim(), SpellLichSlap);
        switch (_lichSlapPhase) {
            case eLichSlapPhases::PhaseOne:
                _lichSlapPhase = eLichSlapPhases::PhaseTwo;
                me->MonsterSendTextToZone("No, stay away!", CHAT_MSG_MONSTER_YELL);
                break;
            case eLichSlapPhases::PhaseTwo:
                _lichSlapPhase = eLichSlapPhases::PhaseThree;
                me->MonsterSendTextToZone("Your touch defiles me, I am only his!", CHAT_MSG_MONSTER_YELL);
                break;
            case eLichSlapPhases::PhaseThree:
                _lichSlapPhase = eLichSlapPhases::Finished;
                me->MonsterSendTextToZone("I have to see him again!", CHAT_MSG_MONSTER_YELL);
                break;
            case eLichSlapPhases::Finished:
                break;
        }

        if (_lichSlapPhase != eLichSlapPhases::Finished) {
            _eventQueue.ScheduleEvent(static_cast<uint32_t>(eBlackBrideEvents::EventCastLichSlap), Milliseconds(400));
        }
    }
};

CreatureAI *GetAI_boss_black_bride(Creature *pCreature) {
    return new boss_black_brideAI(pCreature);
}

void AddSC_boss_black_bride() {
    Script *newscript = new Script;
    newscript->Name = "boss_black_bride";
    newscript->GetAI = &GetAI_boss_black_bride;
    newscript->RegisterSelf();
}