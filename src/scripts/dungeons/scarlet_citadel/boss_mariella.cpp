/*
 * Copyright (C) 2021-2022 Nolin (nolin.nolin.nolin.nolin@gmail.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of Nolin.
 */

#include "boss_mariella.hpp"

/*
    TODO-List
    - Rewrite sacrifice mechanic, so that the player has to do suicide instad of getting killed by others (spawn a static voidzone to instakill?)
    - Find a better spawn destination for felhounds (random positions preferably)
    - Add gossip menu conversation to start boss fight
    - Add more visuals
*/

struct boss_mariellaAI : public ScriptedAI
{
    explicit boss_mariellaAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = static_cast<ScriptedInstance*>(pCreature->GetInstanceData());
        SetCombatMovement(false);
        boss_mariellaAI::Reset();
    }

    void Reset() override
    {
        // Sacrifice
        nsSacrificePhase::m_uiSacrificePhase = 0;
        nsSacrificePhase::m_bIsSacrificePhase = false;
        nsSacrificePhase::m_uiIncreaseHealth_Timer = nsSacrificePhase::INCREASE_HEALTH_TIMER;
        nsSacrificePhase::m_vPossibleVictim.clear();

        // Void Zone
        nsVoidZone::m_uiVoidZoneSpawn_Timer = nsVoidZone::VOIDZONE_SPAWN_FIRST_TIMER;
        nsVoidZone::m_bVoidZonesAlreadyAnnounced = false;

        // Felhounds
        nsFelhounds::m_uiFelhoundSpawn_Timer = nsFelhounds::FELHOUND_SPAWN_FIRST_TIMER;
        nsFelhounds::m_bFelhoundsAlreadyAnnounced = false;

        // Shadow Volley
        m_uiShadowVolley_Timer = SHADOWVOLLEY_REPEAT_TIMER;

        // Void Bolt
        m_uiVoidBolt_Timer = VOIDBOLT_REPEAT_TIMER;

        // Enrage
        m_uiEnrage_Timer = TIME_UNTIL_ENRAGE;
        m_bEnrage = false;

        // Boss shouldn't move
        m_creature->AddUnitState(UNIT_STAT_ROOT);
        m_creature->SetRooted(true);
    }

    void Aggro(Unit* /*pWho*/) override
    {
        if (!m_pInstance)
            return;

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_MARIELLA, IN_PROGRESS);
        m_creature->SetInCombatWithZone();
    }

    void EnterEvadeMode() override
    {
        m_creature->SetRooted(false);
        m_creature->ClearUnitState(UNIT_STAT_ROOT);
    }

    void JustReachedHome() override
    {
        if (!m_pInstance)
            return;
        
        DespawnVoidZones();
        DespawnFelhounds();

        m_creature->MonsterSay(CombatNotification(CombatNotifications::RAIDWIPE), LANG_UNIVERSAL);
        m_creature->HandleEmote(EMOTE_ONESHOT_LAUGH);

        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_MARIELLA, FAIL);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        if (!m_pInstance)
            return;

        m_creature->MonsterSay(CombatNotification(CombatNotifications::RAIDWIPE), LANG_UNIVERSAL);

        DespawnVoidZones();
        DespawnFelhounds();
    
        m_pInstance->SetData(ScarletCitadelEncounter::TYPE_MARIELLA, DONE);
    }

    void KilledUnit(Unit* /*pVictim*/) override
    {
        m_creature->MonsterSay(SayOnPlayersDeath(urand(0, 3)), LANG_UNIVERSAL);
    }

    void BeginScraficePhase()
    {
        Map::PlayerList const& PlayerList{ m_creature->GetMap()->GetPlayers() };
        if (PlayerList.isEmpty())
            return;

        SetSacrificePhaseActive(true);

        for (const auto& itr : PlayerList)
        {
            Player* pPlayer{ itr.getSource() };
            if (!pPlayer)
                continue;

            if ((m_creature->GetDistance3dToCenter(pPlayer) < ROOM_DIAGONAL) && pPlayer->IsAlive() && !pPlayer->IsGameMaster())
            {
                nsSacrificePhase::m_vPossibleVictim.push_back(pPlayer->GetObjectGuid());
                // pPlayer->SetFFAPvP(true); // Not gonna work like this.. Client related?
            }
        }
    }

    void EndScraficePhase()
    {
        if (nsSacrificePhase::m_vPossibleVictim.empty())
            return;

/*
        for (const auto& guid : nsSacrificePhase::m_vPossibleVictim)
        {
            if (Player* pPlayer{ ObjectAccessor::FindPlayer(guid) })
            {
                pPlayer->SetFFAPvP(false); // Make the raid members non attackable
            }
        }
*/

        m_creature->MonsterYell(CombatNotification(CombatNotifications::SACRIFICE_ENDED), LANG_UNIVERSAL);

        nsSacrificePhase::m_vPossibleVictim.clear(); // Erase list data
        SetSacrificePhaseActive(false);              // We reached the end of sacrifice phase
        ++nsSacrificePhase::m_uiSacrificePhase;      // Increase Sacrifice Phase counter for the next event
    }

    void CheckForSacraficePhase(const uint32& uiDiff)
    {
        if (m_creature->HealthBelowPct(75) && nsSacrificePhase::m_uiSacrificePhase == 0)
        {
            m_creature->MonsterSay(CombatNotification(CombatNotifications::SACRIFICE_75_PERCENT), LANG_UNIVERSAL);
        }
        else if (m_creature->HealthBelowPct(50) && nsSacrificePhase::m_uiSacrificePhase == 1)
        {
            m_creature->MonsterYell(CombatNotification(CombatNotifications::SACRIFICE_50_PERCENT), LANG_UNIVERSAL);
        }
        else if (m_creature->HealthBelowPct(25) && nsSacrificePhase::m_uiSacrificePhase == 2)
        {
            m_creature->MonsterSay(CombatNotification(CombatNotifications::SACRIFICE_25_PERCENT), LANG_UNIVERSAL);
        }
        else
        {
            return;
        }

        BeginScraficePhase();
    }

    void CastShadowVolley(const uint32& uiDiff)
    {
        if (m_uiShadowVolley_Timer < uiDiff)
        {
            DoCast(m_creature, MariellaSpells::SPELL_SHADOWVOLLEY); // Hits every player within range of 100 yd for 800-1000 damage (Ignores LoS)

            if (m_bEnrage)
                m_uiShadowVolley_Timer = SHADOWVOLLEY_ENRAGE_REPEAT_TIMER;
            else
                m_uiShadowVolley_Timer = SHADOWVOLLEY_REPEAT_TIMER;
        }
        else
            m_uiShadowVolley_Timer -= uiDiff;
    }

    void CastVoidBolt(const uint32& uiDiff)
    {
        if (m_uiVoidBolt_Timer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->GetVictim(), MariellaSpells::SPELL_VOIDBOLT) == CAST_OK) // Cast only on the player with aggro, deals >= 3000 shadow damage
                m_uiVoidBolt_Timer = VOIDBOLT_REPEAT_TIMER;
        }
        else
            m_uiVoidBolt_Timer -= uiDiff;
    }

    void SpawnVoidZones(const uint32& uiDiff)
    {
        if (nsVoidZone::m_uiVoidZoneSpawn_Timer < uiDiff)
        {
            ThreatList const& tList{ m_creature->GetThreatManager().getThreatList() };
            if (tList.size() < nsVoidZone::NUMBEROFSUMMONERS)
                return;

            std::list<Player*> lPotentialSummoner;
            ThreatList::const_iterator itr{ tList.begin() };
            for (++itr; itr != tList.end(); ++itr)
            {
                Player const* pPlayer{ m_creature->GetMap()->GetPlayer((*itr)->getUnitGuid()) };
                if (!pPlayer)
                    continue;

                if (pPlayer->IsAlive() && !pPlayer->IsGameMaster() && (m_creature->GetDistance3dToCenter(pPlayer) < ROOM_DIAGONAL))
                {
                    lPotentialSummoner.push_back(m_creature->GetMap()->GetPlayer((*itr)->getUnitGuid()));
                }
            }

            for (auto i{ 0 }; i <= nsVoidZone::NUMBEROFSUMMONERS; ++i)
            {
                if (lPotentialSummoner.empty())
                    break;

                auto summonerItr{ lPotentialSummoner.begin() };

                if (lPotentialSummoner.size() >= nsVoidZone::NUMBEROFSUMMONERS)
                    std::advance(summonerItr, urand(0, (lPotentialSummoner.size() - 1)));

                Player const* pPlayer{ *summonerItr };
                summonerItr = lPotentialSummoner.erase(summonerItr);

                if (Creature const* pVoidZone{ m_creature->SummonCreature(nsVoidZone::NPC_VOIDZONE,
                    pPlayer->GetPositionX(),
                    pPlayer->GetPositionY(),
                    pPlayer->GetPositionZ(), 0.f, TEMPSUMMON_MANUAL_DESPAWN) })
                {
                    if (!nsVoidZone::m_bVoidZonesAlreadyAnnounced)
                    {
                        m_creature->MonsterYell(CombatNotification(CombatNotifications::VOIDZONES_SPAWN), LANG_UNIVERSAL);
                        nsVoidZone::m_bVoidZonesAlreadyAnnounced = true;
                    }

                    nsVoidZone::m_vVoidZones.push_back(pVoidZone->GetObjectGuid());
                }
            }

            nsVoidZone::m_uiVoidZoneSpawn_Timer = nsVoidZone::VOIDZONE_SPAWN_REPEAT_TIMER;
        }
        else
            nsVoidZone::m_uiVoidZoneSpawn_Timer -= uiDiff;
    }

    void DespawnVoidZones()
    {
        if (!nsVoidZone::m_vVoidZones.empty())
        {
            if (const auto map{ m_creature->GetMap() })
            {
                for (const auto& guid : nsVoidZone::m_vVoidZones)
                {
                    if (Creature* pCreature{ map->GetCreature(guid) })
                    {
                        if (TemporarySummon* tmpSumm{ static_cast<TemporarySummon*>(pCreature) })
                        {
                            tmpSumm->UnSummon();
                        }
                    }
                }

                nsVoidZone::m_vVoidZones.clear();
            }
        }
    }

    void SpawnFelhounds(const uint32& uiDiff)
    {
        if (nsFelhounds::m_uiFelhoundSpawn_Timer < uiDiff)
        {
            if (nsFelhounds::m_vFelhounds.size() < nsFelhounds::MAX_FELHOUNDS_SPAWNED) // Set a limit in case a condition is broken and we get an overflow here ...
            {
                Map::PlayerList const& PlayerList{ m_creature->GetMap()->GetPlayers() };
                for (const auto& itr : PlayerList)
                {
                    if (Player* pPlayer{ itr.getSource() })
                    {
                        if (pPlayer && pPlayer->IsAlive() && !pPlayer->IsGameMaster() && (pPlayer->GetPowerType() == POWER_MANA))
                        {
                            if (Creature* pFelhound{ m_creature->SummonCreature(nsFelhounds::NPC_FELHOUND,
                                m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ(), 0.f, TEMPSUMMON_MANUAL_DESPAWN) })
                            {
                                pFelhound->CastSpell(pFelhound, nsFelhounds::VISUALSPELL_SUMMON_FELOUND, true);
                                pFelhound->AI()->AttackStart(pPlayer);
                                pFelhound->AddThreat(pPlayer, 1000000.f); // Hack: Assign very high amount of threat to the player to lock felhounds target

                                if (!nsFelhounds::m_bFelhoundsAlreadyAnnounced)
                                {
                                    m_creature->MonsterYell(CombatNotification(CombatNotifications::FELHOUNDS_SPAWN), LANG_UNIVERSAL);
                                    nsFelhounds::m_bFelhoundsAlreadyAnnounced = true;
                                }

                                nsFelhounds::m_vFelhounds.push_back(pFelhound->GetObjectGuid());
                            }
                        }
                    }
                }
            }

            nsFelhounds::m_uiFelhoundSpawn_Timer = nsFelhounds::FELHOUND_SPAWN_REPEAT_TIMER;
        }
        else
            nsFelhounds::m_uiFelhoundSpawn_Timer -= uiDiff;
    }

    void DespawnFelhounds()
    {
        if (!nsFelhounds::m_vFelhounds.empty())
        {
            if (const auto map{ m_creature->GetMap() })
            {
                for (const auto& guid : nsFelhounds::m_vFelhounds)
                {
                    if (Creature* pCreature{ map->GetCreature(guid) })
                    {
                        if (TemporarySummon* tmpSumm{ static_cast<TemporarySummon*>(pCreature) })
                        {
                            tmpSumm->UnSummon();
                        }
                    }
                }

                nsFelhounds::m_vFelhounds.clear();
            }
        }
    }

    void EnrageTimer(const uint32& uiDiff)
    {
        if (m_uiEnrage_Timer < uiDiff)
        {
            m_creature->MonsterYell(CombatNotification(CombatNotifications::ENRAGE), LANG_UNIVERSAL);
            m_bEnrage = true;
        }
        else
            m_uiEnrage_Timer -= uiDiff;
    }

    void CheckIfPlayerDied()
    {
        if (!nsSacrificePhase::m_vPossibleVictim.empty())
        {
            for (const auto& guid : nsSacrificePhase::m_vPossibleVictim)
            {
                if (Player const* pPlayer{ ObjectAccessor::FindPlayer(guid) })
                {
                    if (pPlayer->IsDead())
                    {
                        EndScraficePhase();
                    }
                }
            }
        }
    }

    void RegenerateBossHealth(const uint32& uiDiff)
    {
        if (nsSacrificePhase::m_uiIncreaseHealth_Timer < uiDiff)
        {
            if (m_creature->GetHealthPercent() < 100.f) // Is this necessary?
                m_creature->SetHealthPercent((m_creature->GetHealthPercent() + nsSacrificePhase::REGENERATE_HEALTH_PERCENTAGE));

            nsSacrificePhase::m_uiIncreaseHealth_Timer = nsSacrificePhase::INCREASE_HEALTH_TIMER;
        }
        else
        {
            nsSacrificePhase::m_uiIncreaseHealth_Timer -= uiDiff;
            return;
        }
    }

    bool IsSacrificePhaseActive()
    {
        return nsSacrificePhase::m_bIsSacrificePhase;
    }

    void SetSacrificePhaseActive(const bool& bActive)
    {
        nsSacrificePhase::m_bIsSacrificePhase = bActive;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->GetVictim())
            return;

        EnrageTimer(uiDiff);
        SpawnVoidZones(uiDiff);
        SpawnFelhounds(uiDiff);

        if (IsSacrificePhaseActive())
        {
            RegenerateBossHealth(uiDiff);
            CheckIfPlayerDied();
        }
        else
        {
            CastVoidBolt(uiDiff);
            CastShadowVolley(uiDiff);
            CheckForSacraficePhase(uiDiff);
        }
    }
};

CreatureAI* GetAI_boss_mariella(Creature* pCreature)
{
    return new boss_mariellaAI(pCreature);
}

struct npc_voidzone : public ScriptedAI
{
    explicit npc_voidzone(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_voidzone::Reset();
        SetCombatMovement(false);
    }

    void Reset() override
    {
        // Void Zone damage timer
        nsVoidZone::m_uiDamage_Timer = nsVoidZone::VOIDZONE_DAMAGE_REPEAT_TIMER;

        // Void Zone shouldn't move
        m_creature->AddUnitState(UNIT_STAT_ROOT);
        m_creature->SetRooted(true);
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
    }

    void DamageTimer(const uint32& uiDiff)
    {
        Map::PlayerList const& PlayerList{ m_creature->GetMap()->GetPlayers() };
        if (PlayerList.isEmpty())
            return;

        if (nsVoidZone::m_uiDamage_Timer < uiDiff)
        {
            for (const auto& itr : PlayerList)
            {
                Player* pPlayer{ itr.getSource() };
                if (!pPlayer)
                    continue;

                if ((m_creature->GetDistance3dToCenter(pPlayer) < nsVoidZone::VOIDZONE_DIAMETER) && pPlayer->IsAlive())
                {
                    m_creature->DealDamage(pPlayer, nsVoidZone::VOIDZONE_DAMAGE, nullptr, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, nullptr, false);
                }
            }

            nsVoidZone::m_uiDamage_Timer = nsVoidZone::VOIDZONE_DAMAGE_REPEAT_TIMER;
        }
        else
            nsVoidZone::m_uiDamage_Timer -= uiDiff;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        DamageTimer(uiDiff);
    }
};

CreatureAI* GetAI_npc_voidzone(Creature* pCreature)
{
    return new npc_voidzone(pCreature);
}

struct npc_felhound : public ScriptedAI
{
    explicit npc_felhound(Creature* pCreature) : ScriptedAI(pCreature)
    {
        npc_felhound::Reset();
    }

    void Reset() override
    {
        nsFelhounds::m_uiManaDrain_Timer = nsFelhounds::FELHOUND_DRAIN_REPEAT_TIMER;
    }

    void ManaDrainTimer(const uint32& uiDiff)
    {
        if (nsFelhounds::m_uiManaDrain_Timer < uiDiff)
        {
            if (Unit* pTarget{ m_creature->SelectAttackingTarget(ATTACKING_TARGET_TOPAGGRO, 0) })
            {
                if ((pTarget->GetPowerType() == POWER_MANA) && m_creature->IsWithinDist(pTarget, 5.f))
                {
                    DoCast(m_creature->GetVictim(), nsFelhounds::VISUALSPELL_DRAINMANA); // Visual only
                    pTarget->ModifyPower(POWER_MANA, nsFelhounds::VALUE_DRAINMANA);
                }
            }

            nsFelhounds::m_uiManaDrain_Timer = nsFelhounds::FELHOUND_DRAIN_REPEAT_TIMER;
        }
        else
            nsFelhounds::m_uiManaDrain_Timer -= uiDiff;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || (!m_creature->GetVictim() && (m_creature->GetVictim()->GetPowerType() != POWER_MANA)))
            return;

        ManaDrainTimer(uiDiff);
    }
};

CreatureAI* GetAI_npc_felhound(Creature* pCreature)
{
    return new npc_felhound(pCreature);
}

void AddSC_boss_mariella()
{
    Script *pNewscript;

    pNewscript = new Script;
    pNewscript->Name = "boss_mariella";
    pNewscript->GetAI = &GetAI_boss_mariella;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_voidzone";
    pNewscript->GetAI = &GetAI_npc_voidzone;
    pNewscript->RegisterSelf();

    pNewscript = new Script;
    pNewscript->Name = "npc_felhound";
    pNewscript->GetAI = &GetAI_npc_felhound;
    pNewscript->RegisterSelf();
}
