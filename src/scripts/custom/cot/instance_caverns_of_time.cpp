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

    void SetData(uint32 uiType, uint32 uiData)
    {

    }

    uint32 GetData(uint32 uiType)
    {

    }

    uint64 GetData64(uint32 uiData)
    {

    }

    void Update(uint32 uiDiff)
    {

    }
};

InstanceData* GetInstanceData_instance_caverns_of_time(Map* pMap)
{
    return new instance_caverns_of_time(pMap);
}

void AddSC_instance_caverns_of_time()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "instance_caverns_of_time";
    newscript->GetInstanceData = &GetInstanceData_instance_caverns_of_time;
    newscript->RegisterSelf();
}
