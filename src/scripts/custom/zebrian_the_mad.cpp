#include "scriptPCH.h"

enum
{

};

struct zebrian_the_madAI : public ScriptedAI
{
    zebrian_the_madAI(Creature *c) : ScriptedAI(c)
    {
        // unused
    }


    void Aggro(Unit *who)
    {
        m_creature->MonsterYell("Don't touch my Zebra! I won it to a drunken goblin!");
    }

    void Reset()
    {
        // unused
    }

    void JustRespawned()
    {
        // unused
    }

    void KilledUnit(Unit* victim)
    {
        m_creature->MonsterYell("Looser!");
    }

    void JustDied(Unit* /*pKiller*/)
    {
        m_creature->MonsterSay("I knew this day would come...");
    }

    void MoveInLineOfSight(Unit* pWho) override
    {
        if (pWho && pWho->IsPlayer()) {
            if (Player* player = pWho->ToPlayer()) {
                if (!player->HasItemCount(18662) && !player->HasAura(8067)) { // Heavy Leather Ball and Party Fever
                    player->AddAura(8067);
                    m_creature->CastSpell(player, 23135, true);
                    m_creature->HandleEmoteCommand(EMOTE_ONESHOT_LAUGH);
                    m_creature->MonsterTextEmote("Zebrian the Mad throws you a smelly ball. And laughs at you.", player);
                }
            }
        }
    }

    void UpdateAI(const uint32 diff)
    {
        //Return since we have no target
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        DoMeleeAttackIfReady();
    }

};

CreatureAI* GetAI_zebrian_the_mad(Creature *_Creature)
{
    return new zebrian_the_madAI(_Creature);
}

void AddSC_zebrian_the_mad()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "zebrian_the_mad";
    newscript->GetAI = &GetAI_zebrian_the_mad;
    newscript->RegisterSelf();
}