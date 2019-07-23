/* Copyright (C) 2006 - 2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */


#include "scriptPCH.h"

struct instance_caverns_of_time : public ScriptedInstance
{
    instance_caverns_of_time(Map* pMap) : ScriptedInstance(pMap)
    {
        Initialize();
    };

    void Initialize()
    {
    }

    void OnCreatureCreate(Creature* pCreature)
    {
    }

    void OnCreatureDeath(Creature *who)
    {
    }

    void OnObjectCreate(GameObject* pGo)
    {
    }

    void OnPlayerEnter(Player* pPlayer)
    {
        if (!pPlayer)
            return;

        uint32 displayId;
        bool isMale = pPlayer->getGender() == GENDER_MALE;
        switch (pPlayer->getClass())
        {
            case CLASS_WARRIOR:
                displayId = isMale ? 4446 : 3591;
                break;
            case CLASS_MAGE:
            case CLASS_PRIEST:
                displayId = isMale ? 3348 : 3347;
                break;
            case CLASS_WARLOCK:
                displayId = isMale ? 4461 : 4462;
                break;
            case CLASS_PALADIN:
                displayId = isMale ? 3372 : 3289;
                break;
            case CLASS_DRUID:
            case CLASS_ROGUE:
                displayId = isMale ? 4276 : 4419;
                break;
            case CLASS_SHAMAN:
            case CLASS_HUNTER:
                displayId = isMale ? 4125 : 4393;
                break;
            default:
                displayId = isMale ? 1541 : 4888;
        }
        pPlayer->SetDisplayId(displayId);
    }

    void OnPlayerLeave(Player* pPlayer)
    {
        if (!pPlayer)
            return;

        pPlayer->DeMorph();
    }

    //void SetData(uint32 uiType, uint32 uiData)
    //{

    //}

    //uint32 GetData(uint32 uiType)
    //{

    //}

    //uint64 GetData64(uint32 uiData)
    //{

    //}

    //void Update(uint32 uiDiff)
    //{

    //}
};

InstanceData* GetInstanceData_instance_caverns_of_time(Map* pMap)
{
    return new instance_caverns_of_time(pMap);
}

struct frostbitten_bronze_soldierAI : public ScriptedAI
{
    frostbitten_bronze_soldierAI(Creature *c) : ScriptedAI(c)
    {
        Reset();
    }

    bool hasBegged;

    void Reset()
    {
        hasBegged = false;
        m_creature->SetHealth(1);
        m_creature->addUnitState(UNIT_STAT_CAN_NOT_MOVE);
        m_creature->SetStandState(UNIT_STAND_STATE_DEAD);
    }

    void Aggro(Unit* pWho)
    {
        DoPlaySoundToSet(m_creature, 7);
        pWho->DealDamage(m_creature, m_creature->GetHealth(), nullptr, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, nullptr, false);
        m_creature->MonsterTextEmote("The body of the bronze soldier shatters as soon as you try to touch it.");
    }

    void MoveInLineOfSight(Unit* pWho) override
    {
        if (pWho && pWho->IsPlayer()) {
            if (Player* player = pWho->ToPlayer()) {
                if (!hasBegged && m_creature->IsWithinDistInMap(pWho, 12.0f)) {
                    switch (urand(0, 4))
                    {
                        case 0:
                            m_creature->MonsterSay("Please, I can't handle this, end with my life...");
                            break;
                        case 1:
                            m_creature->MonsterSay("AT LAST! Finally I can rest.");
                            break;
                        case 2:
                            m_creature->MonsterSay("Careful... Careful with the drake. I just want to... sleep.");
                            break;
                        case 3:
                            m_creature->MonsterSay("This is suicide! End with my suffering, please, strangers...");
                            break;
                        case 4:
                            m_creature->MonsterSay("I can't handle this suffering anymore...");
                            break;
                    }
                    DoPlaySoundToSet(m_creature, 6931);
                    hasBegged = true;
                }
            }
        }
    }
};

CreatureAI* GetAI_frostbitten_bronze_soldier(Creature *_Creature)
{
    return new frostbitten_bronze_soldierAI(_Creature);
}

void AddSC_instance_caverns_of_time()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "instance_caverns_of_time";
    newscript->GetInstanceData = &GetInstanceData_instance_caverns_of_time;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "frostbitten_bronze_soldier";
    newscript->GetAI = &GetAI_frostbitten_bronze_soldier;
    newscript->RegisterSelf();
}
