#include "scriptPCH.h"

enum
{
    SPELL_PURPLE_PARTICLES_VISUAL = 28126,
    SPELL_AOE_SLEEP = 20669,
    SPELL_LIGHTNING_CLOUD = 23105,
    SPELL_KNOCKBACK = 10689,
    SPELL_ARCANE_EXPLOSION = 30096,
    SPELL_TWIN_TELEPORT_VISUAL = 26638,
    SPELL_GREEN_CHANNELING = 13540,
    SPELL_PARTICLES_GREEN = 18951,

    CREATURE_CHRONORMU = 50117,

    SOUND_BODY_OF_KATHUNE = 8674

};

bool isFriendly = false;

struct boss_chromieAI : public ScriptedAI
{
    boss_chromieAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    ObjectGuid m_uiChronormuGuid;

    uint32 m_uiTeleportTimer;
    uint32 m_uiAoESleepTimer;
    uint32 m_uiLightningCloudTimer;

    uint32 m_uiChronormuTimer;
    uint32 m_uiChronormuCombatStartTimer;

    bool chronormuSummoned = false;
    bool chronormuCombatStarted = false;
    bool stopCasting = false;

    uint32 m_uiSecondPhaseDialog1;
    bool saidDialog1 = false;
    uint32 m_uiSecondPhaseDialog2;
    bool saidDialog2 = false;
    uint32 m_uiSecondPhaseDialog3;
    bool saidDialog3 = false;

    float old_x;
    float old_y;
    float old_z;

    void Reset() override
    {
        m_uiTeleportTimer = 6000;
        m_uiAoESleepTimer = 12000;
        m_uiLightningCloudTimer = 8000;

        m_uiChronormuTimer = 3000;
        m_uiChronormuCombatStartTimer = 46000;

        m_uiSecondPhaseDialog1 = 8000;
        m_uiSecondPhaseDialog2 = 24000;
        m_uiSecondPhaseDialog3 = 40000;

        m_uiChronormuGuid = 0;
    }

    void JustRespawned() override
    {
        Reset();
        m_creature->SetFactionTemplateId(35);
        saidDialog1 = false;
        saidDialog2 = false;
        saidDialog3 = false;
        chronormuSummoned = false;
        chronormuCombatStarted = false;
        stopCasting = false;
        isFriendly = false;
    }

    void Aggro(Unit *who) override
    {
        m_creature->AddAura(SPELL_PURPLE_PARTICLES_VISUAL);
    }

    void KilledUnit(Unit* victim) override
    {

    }

    void JustDied(Unit* /*pKiller*/) override
    {

    }

    void LeaveCombat()
    {
        m_creature->ClearTarget();
        m_creature->ClearInCombat();
        m_creature->CombatStop(true);
        m_creature->UpdateCombatState(false);
        m_creature->UpdateCombatWithZoneState(false);
    }

    void JustSummoned(Creature* summoned) override
    {
        if (summoned->GetEntry() == CREATURE_CHRONORMU)
        {
            m_uiChronormuGuid = summoned->GetObjectGuid();

            summoned->SetFactionTemplateId(35);
            summoned->ClearTarget();
            summoned->AI()->SetCombatMovement(false);
            summoned->CastSpell(summoned, SPELL_TWIN_TELEPORT_VISUAL, true);
            m_creature->SetFacingTo(m_creature->GetAngle(old_x, old_y));

            summoned->PMonsterYell("You have failed me, my puppet!");

            chronormuSummoned = true;
        }
    }

    void UpdateAI(const uint32 diff) override
    {
        if (m_creature->GetHealthPercent() <= 25 && !isFriendly)
        {
            isFriendly = true;

            m_creature->AddUnitState(UNIT_STAT_ROOT);
            m_creature->SetFactionTemplateId(35);
            LeaveCombat();
            m_creature->RemoveAllAuras();
            m_creature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);

            m_creature->PMonsterYell("STOP! What is this? I tried to convince her, I mean, me, I mean...");

            old_x = m_creature->GetPositionX() + 1;
            old_y = m_creature->GetPositionY() - 1;
            old_z = m_creature->GetPositionZ();

            Unit *pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_FARTHEST, 0, nullptr, SELECT_FLAG_NOT_IN_MELEE_RANGE);
            if (!pTarget)
                pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_FARTHEST, 0, nullptr, SELECT_FLAG_PLAYER);
            DoCastSpellIfCan(m_creature, SPELL_TWIN_TELEPORT_VISUAL, CF_FORCE_CAST);
            m_creature->NearTeleportTo(pTarget->GetPositionX() + 1, pTarget->GetPositionY() - 1, pTarget->GetPositionZ(),
                                       m_creature->GetOrientation());
            DoPlaySoundToSet(m_creature, SOUND_BODY_OF_KATHUNE);
        }

        if (isFriendly)
        {
            if (m_creature->SelectHostileTarget() || m_creature->GetVictim())
                LeaveCombat();

            if (m_uiChronormuTimer < diff && !chronormuSummoned)
            {
                m_creature->SummonCreature(CREATURE_CHRONORMU, old_x, old_y, old_z, 0,
                        TEMPSUMMON_CORPSE_TIMED_DESPAWN, 300000);

            }
            else
                m_uiChronormuTimer -= diff;

            if (chronormuSummoned)
            {
                if (m_uiSecondPhaseDialog1 < diff && !saidDialog1)
                {
                    if (Creature* chronormu = m_creature->GetMap()->GetCreature(m_uiChronormuGuid))
                    {
                        saidDialog1 = true;
                        chronormu->SetFacingToObject(m_creature);
                        chronormu->PMonsterSay("Your time here has come to an end, mortals. The dragonflights won't tolerate living in a world inhabited by such evil, greedy and cynical beings. I ask you again, \"Chromie\", why don't you join me? Why don't you join your wiser self?");
                    }
                }
                else
                    m_uiSecondPhaseDialog1 -= diff;

                if (m_uiSecondPhaseDialog2 < diff && !saidDialog2)
                {
                    saidDialog2 = true;
                    m_creature->PMonsterSay("NEVER! You are set on a final road, one ending timeline, while my hearth still throbs with the hopes of tomorrow. The Sands of Time flows different, shifting day by day, with every choice, yet yours is an never ending sea of still sand. These mortals, with every choice and every action they do they give birth to another future, I rather part of theirs than wither away with you.");
                }
                    else m_uiSecondPhaseDialog2 -= diff;

                if (m_uiSecondPhaseDialog3 < diff && !saidDialog3)
                {
                    if (Creature* chronormu = m_creature->GetMap()->GetCreature(m_uiChronormuGuid))
                    {
                        saidDialog3 = true;
                        chronormu->PMonsterYell("How pitful... I truly believed you'd understand. Come then, mortals, witness your own demise. WITNESS THE CREATION OF A NEW ORCISH ARMY!");
                    }
                }
                else
                    m_uiSecondPhaseDialog3 -= diff;

                if (m_uiChronormuCombatStartTimer < diff && !chronormuCombatStarted)
                {
                    if (Creature* chronormu = m_creature->GetMap()->GetCreature(m_uiChronormuGuid))
                    {
                        m_creature->PMonsterYell("Now, heroes! Attack now! I'll contain Chronormu's strength!");

                        chronormuCombatStarted = true;
                        m_creature->RemoveAllAuras();

                        DoCast(m_creature, SPELL_GREEN_CHANNELING, true);
                        chronormu->SetObjectScale(0.75);
                        chronormu->AddAura(SPELL_PARTICLES_GREEN);

                        chronormu->SetFactionTemplateId(38);
                        chronormu->AI()->SetCombatMovement(true);
                    }
                } 
                else
                    m_uiChronormuCombatStartTimer -= diff;
            }
        }

        if (!isFriendly)
        {
            //Return since we have no target
            if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
                return;

            if (m_creature->GetHealthPercent() <= 30 && !stopCasting)
                stopCasting = true;

            if (!stopCasting)
            {
                // Teleport + Arcane explosion + Knockback
                if (m_uiTeleportTimer < diff)
                {
                    if (Unit *pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
                    {
                        m_creature->NearTeleportTo(pTarget->GetPositionX(), pTarget->GetPositionY(),pTarget->GetPositionZ(), m_creature->GetOrientation());
                        DoCastSpellIfCan(pTarget, SPELL_ARCANE_EXPLOSION, CF_TRIGGERED);
                        DoCastSpellIfCan(pTarget, SPELL_KNOCKBACK, CF_TRIGGERED);
                    }

                    m_uiTeleportTimer = urand(8000, 12000);
                }
                else
                    m_uiTeleportTimer -= diff;

                // Lightning Cloud
                if (m_uiLightningCloudTimer < diff)
                {
                    if (Unit *pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr, SELECT_FLAG_PLAYER))
                        DoCastSpellIfCan(pTarget, SPELL_LIGHTNING_CLOUD, CF_TRIGGERED);

                    m_uiLightningCloudTimer = 16000;
                }
                else
                    m_uiLightningCloudTimer -= diff;

                // Sleep AoE
                if (m_uiAoESleepTimer < diff)
                {
                    DoCastAOE(SPELL_AOE_SLEEP, CF_FORCE_CAST);

                    m_uiAoESleepTimer = 20000;
                }
                else
                    m_uiAoESleepTimer -= diff;
            }

            DoMeleeAttackIfReady();
        }
    }

};

CreatureAI* GetAI_boss_chromie(Creature *_Creature)
{
    return new boss_chromieAI(_Creature);
}

bool GossipHello_chromie(Player* pPlayer, Creature* pCreature)
{
    if (!isFriendly)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Chromie? What are you doing here? What is happening?", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
        pPlayer->SEND_GOSSIP_MENU(100004, pCreature->GetGUID());
        return true;
    }

    return false;
}

bool GossipSelect_chromie(Player* player, Creature* creature, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF)
    {
        creature->SetFactionTemplateId(38);
        creature->SetInCombatWith(player);
        creature->Attack(player, true);
        creature->UpdateCombatState(true);
        creature->UpdateCombatWithZoneState(true);
    }

    player->CLOSE_GOSSIP_MENU();
    return true;
}

void AddSC_boss_chromie()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "boss_chromie";
    newscript->GetAI = &GetAI_boss_chromie;
    newscript->pGossipHello = &GossipHello_chromie;
    newscript->pGossipSelect = &GossipSelect_chromie;
    newscript->RegisterSelf();
}
