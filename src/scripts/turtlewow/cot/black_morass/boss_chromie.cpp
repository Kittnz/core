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

    CREATURE_CHRONORMU = 50117

};

bool isFriendly = false;

struct boss_chromieAI : public ScriptedAI
{
    boss_chromieAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    uint32 m_uiTeleportTimer;
    uint32 m_uiAoESleepTimer;
    uint32 m_uiLightningCloudTimer;

    uint32 m_uiChronormuTimer;
    uint32 m_uiChronormuCombatStartTimer;

    Creature* chronormu;
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

    void Reset()
    {
        m_uiTeleportTimer = 6000;
        m_uiAoESleepTimer = 12000;
        m_uiLightningCloudTimer = 8000;

        m_uiChronormuTimer = 5000;
        m_uiChronormuCombatStartTimer = 22500;

        m_uiSecondPhaseDialog1 = 6500;
        m_uiSecondPhaseDialog2 = 14000;
        m_uiSecondPhaseDialog3 = 20000;
    }

    void JustRespawned()
    {
        Reset();
        m_creature->setFaction(35);
        saidDialog1 = false;
        saidDialog2 = false;
        saidDialog3 = false;
        chronormuSummoned = false;
        chronormuCombatStarted = false;
        stopCasting = false;
        isFriendly = false;
        if (chronormu) {
            chronormu->DespawnOrUnsummon();
            chronormu->ForcedDespawn();
            chronormu = nullptr;
        }
    }

    void Aggro(Unit *who)
    {
        m_creature->AddAura(SPELL_PURPLE_PARTICLES_VISUAL);
    }

    void KilledUnit(Unit* victim)
    {

    }

    void JustDied(Unit* /*pKiller*/)
    {

    }

    void UpdateAI(const uint32 diff) {
        if (m_creature->GetHealthPercent() <= 25 && !isFriendly) {
            isFriendly = true;

            m_creature->addUnitState(UNIT_STAT_ROOT);
            m_creature->ClearTarget();
            m_creature->ClearInCombat();
            m_creature->InterruptNonMeleeSpells(false);
            m_creature->CombatStop(true);
            m_creature->UpdateCombatState(false);
            m_creature->UpdateCombatWithZoneState(false);
            m_creature->setFaction(35);
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
        }

        if (isFriendly) {
            if (m_uiChronormuTimer < diff && !chronormuSummoned) {
                chronormuSummoned = true;

                chronormu = m_creature->SummonCreature(CREATURE_CHRONORMU, old_x, old_y,
                                                                 old_z, 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 60000);

                chronormu->setFaction(35);
                chronormu->CastSpell(chronormu, SPELL_TWIN_TELEPORT_VISUAL, true);
                m_creature->SetFacingTo(m_creature->GetAngle(old_x, old_y));

                chronormu->PMonsterYell("You have failed me, my puppet!");
            } else m_uiChronormuTimer -= diff;

            if (chronormuSummoned) {
                if (m_uiSecondPhaseDialog1 < diff && !saidDialog1) {
                    saidDialog1 = true;
                    chronormu->SetFacingToObject(m_creature);
                    chronormu->PMonsterSay("Your time here has come to an end, mortals. The dragonflights won't tolerate living in a world inhabited by such evil, greedy and cynical beings.");
                    chronormu->PMonsterSay("This world must be purged. We, the dragonflights, will rule with a firm and wise hand.");
                    chronormu->PMonsterSay("I ask you again, \"Chromie\", why don't you join me? Why don't you join your wiser self?");
                } else m_uiSecondPhaseDialog1 -= diff;

                if (m_uiSecondPhaseDialog2 < diff && !saidDialog2) {
                    saidDialog2 = true;
                    m_creature->PMonsterYell("NEVER!");
                    m_creature->PMonsterSay("You are only seeing one side of the coin. These mortals you mention may have committed, "
                                           "and will commit, acts of doubtful honor. But these people, will all of their imperfections, "
                                           "can also be one of the most lovely beings ever created. You only talk about wisdom and punishment, "
                                           "but have you ever tried to understand the love these creatures can also irradiate?");
                    m_creature->PMonsterSay("We must live with them, protect them, teach them, but also learn from them.");
                    m_creature->PMonsterSay("I won't ever let you corrupt me or play magic tricks with me again.");
                } else m_uiSecondPhaseDialog2 -= diff;

                if (m_uiSecondPhaseDialog3 < diff && !saidDialog3) {
                    saidDialog3 = true;
                    chronormu->PMonsterSay("Don't make me laugh, little one. You speak about corruption but have you ever considered how corrupted is your pure heart by those mortals you seek to protect?");
                    chronormu->PMonsterYell("Get out of my way! Let me carry on with my plans! Let me build my army! I want those orcs!");
                    m_creature->PMonsterYell("Now, heroes! Attack now! I'll contain his strength!");
                } else m_uiSecondPhaseDialog3 -= diff;

                if (m_uiChronormuCombatStartTimer < diff && !chronormuCombatStarted) {
                    chronormuCombatStarted = true;
                    m_creature->RemoveAllAuras();

                    DoCastSpellIfCan(m_creature, SPELL_GREEN_CHANNELING, CF_FORCE_CAST);
                    chronormu->SetObjectScale(0.5);
                    chronormu->AddAura(SPELL_PARTICLES_GREEN);

                    chronormu->setFaction(38);
                } else m_uiChronormuCombatStartTimer -= diff;
            }
        }

        if (!isFriendly) {
            //Return since we have no target
            if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
                return;

            if (m_creature->GetHealthPercent() <= 30 and !stopCasting)
                stopCasting = true;

            if (!stopCasting) {
                // Teleport + Arcane explosion + Knockback
                if (m_uiTeleportTimer < diff) {
                    if (Unit *pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr,
                                                                          SELECT_FLAG_PLAYER)) {
                        m_creature->NearTeleportTo(pTarget->GetPositionX(), pTarget->GetPositionY(),
                                                   pTarget->GetPositionZ(), m_creature->GetOrientation());
                        DoCastSpellIfCan(pTarget, SPELL_ARCANE_EXPLOSION, CF_TRIGGERED);
                        DoCastSpellIfCan(pTarget, SPELL_KNOCKBACK, CF_TRIGGERED);
                    }

                    m_uiTeleportTimer = urand(8000, 12000);
                } else m_uiTeleportTimer -= diff;

                // Lightning Cloud
                if (m_uiLightningCloudTimer < diff) {
                    if (Unit *pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, nullptr,
                                                                          SELECT_FLAG_PLAYER)) {
                        DoCastSpellIfCan(pTarget, SPELL_LIGHTNING_CLOUD, CF_TRIGGERED);
                    }

                    m_uiLightningCloudTimer = 16000;
                } else m_uiLightningCloudTimer -= diff;

                // Sleep AoE
                if (m_uiAoESleepTimer < diff) {
                    DoCastAOE(SPELL_AOE_SLEEP, CF_FORCE_CAST);

                    m_uiAoESleepTimer = 20000;
                } else m_uiAoESleepTimer -= diff;
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
    if (!isFriendly) {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Chromie? What are you doing here? What is happening?",
                                 GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
        pPlayer->SEND_GOSSIP_MENU(100004, pCreature->GetGUID());
        return true;
    }
    return false;
}

bool GossipSelect_chromie(Player* player, Creature* creature, uint32 sender, uint32 action)
{
    if (action == GOSSIP_ACTION_INFO_DEF)
    {
        creature->setFaction(38);
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

