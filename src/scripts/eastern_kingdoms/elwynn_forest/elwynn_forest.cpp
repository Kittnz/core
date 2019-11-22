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

/* ScriptData
SDName: Elwynn_Forest
SD%Complete: 50
SDComment: Quest support: 1786
SDCategory: Elwynn Forest
EndScriptData */

/* ContentData
npc_henze_faulk
EndContentData */

#include "scriptPCH.h"

/*######
## npc_henze_faulk
######*/

#define SAY_HEAL    -1000187

struct npc_henze_faulkAI : public ScriptedAI
{
    uint32 lifeTimer;
    bool spellHit;

    npc_henze_faulkAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        Reset();
    }

    void Reset()
    {
        lifeTimer = 120000;
        m_creature->SetUInt32Value(UNIT_DYNAMIC_FLAGS, UNIT_DYNFLAG_DEAD);
        m_creature->SetStandState(UNIT_STAND_STATE_DEAD);   // lay down
        spellHit = false;
    }

    void MoveInLineOfSight(Unit *who) { }

    void UpdateAI(const uint32 diff)
    {
        if (m_creature->IsStandingUp())
        {
            if (lifeTimer < diff)
                m_creature->AI()->EnterEvadeMode();
            else
                lifeTimer -= diff;
        }
    }

    void SpellHit(Unit *Hitter, const SpellEntry *Spellkind)
    {
        if (Spellkind->Id == 8593 && !spellHit)
        {
            DoCastSpellIfCan(m_creature, 32343);
            m_creature->SetStandState(UNIT_STAND_STATE_STAND);
            m_creature->SetUInt32Value(UNIT_DYNAMIC_FLAGS, 0);
            //m_creature->RemoveAllAuras();
            DoScriptText(SAY_HEAL, m_creature, Hitter);
            spellHit = true;
        }
    }

};
CreatureAI* GetAI_npc_henze_faulk(Creature* pCreature)
{
    return new npc_henze_faulkAI(pCreature);
}
enum
{
//guid 12609 entry 177673 Serpant statue
    NPC_SPIRIT                  = 2044,
    QUEST_STALVANS_LEGEND       = 75

};
struct go_marshal_haggards_chestAI: public GameObjectAI
{
    go_marshal_haggards_chestAI(GameObject* pGo) : GameObjectAI(pGo)
    {
        timer = 0;
        state = 0;
        guid_spirit = 0;
    }
    uint64 guid_spirit;
    uint32 timer;
    bool state;//0 = usual, can launch. //1 = in use, cannot launch

    void UpdateAI(const uint32 uiDiff)
    {
        if (state)
        {
            if (timer < uiDiff)
                state = 0;
            else
                timer -= uiDiff;
        }
    }
    bool CheckCanStartEvent()
    {
        if (!state && !me->GetMap()->GetCreature(guid_spirit))
            return true;
        return false;
    }

    void SetInUse(Creature* spirit)
    {
        guid_spirit = spirit->GetGUID();
        state = 1;
        timer = 60000;
    }
};
GameObjectAI* GetAIgo_marshal_haggards_chest(GameObject *pGo)
{
    return new go_marshal_haggards_chestAI(pGo);
}
bool GOHello_go_marshal_haggards_chest(Player* pPlayer, GameObject* pGo)
{
    if (go_marshal_haggards_chestAI* pMarkAI = dynamic_cast<go_marshal_haggards_chestAI*>(pGo->AI()))
    {
        if (pMarkAI->CheckCanStartEvent())
        {
            if (pPlayer->GetQuestStatus(QUEST_STALVANS_LEGEND) == QUEST_STATUS_INCOMPLETE)
            {
                if (Creature* spirit = pGo->SummonCreature(NPC_SPIRIT, -9552.67f, -1431.93f, 62.3f, 5.03f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 300000))
                {
                    pMarkAI->SetInUse(spirit);
                    spirit->AI()->AttackStart(pPlayer);
                }
            }
        }
    }
    return true;
}

#define ONCE_UPON_A_SHEEP        60005
#define LOST_FARM_SHEEP_ITEM     51220
#define DELICIOUS_ELWYNN_TRUFFLE 51218
#define WOOL_WILL_WORL           60008
#define FLOCK_OF_WOOL            51223

bool GossipHello_npc_lost_farm_sheep(Player* pPlayer, Creature* pCreature)
{
    if (pPlayer->GetQuestStatus(ONCE_UPON_A_SHEEP) == QUEST_STATUS_INCOMPLETE)
        if (pPlayer->HasItemCount(DELICIOUS_ELWYNN_TRUFFLE, 0))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Come with me, if you want to live!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
        else
        {
            pCreature->MonsterSay("Ba-a-a-h! Ba-a-a-h!");
            pCreature->GetMotionMaster()->MoveConfused();
        }
    if (pPlayer->GetQuestStatus(WOOL_WILL_WORL) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Attempt to gather some wool.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    }
    
    pPlayer->SEND_GOSSIP_MENU(90310, pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_lost_farm_sheep(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
    {
        if (!pPlayer)
            return false;

        pCreature->MonsterSay("Ba-a-a-h!");
        pCreature->MonsterTextEmote("Sheep quickly eats this truffle and starting to jump around your bags, in case if you want to share more!");
        pCreature->ForcedDespawn();    
        pPlayer->AddItem(LOST_FARM_SHEEP_ITEM);
        pPlayer->RemoveItemCurrency(DELICIOUS_ELWYNN_TRUFFLE, 1);
    }      

    if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
    {
        if (!pPlayer)
            return false;

        int chance_array[100];

        for (int i = 0; i < 100; i++) 
        {
            int chance_array = i;
        }

        int chance_rand = rand() % 100;

        if (chance_rand[chance_array] >= 80)
        {
            pCreature->MonsterSay("Ba-a-a-h?");
            pPlayer->AddItem(FLOCK_OF_WOOL, 1);
        }
        else
        {
            pCreature->MonsterSay("Ba-a-a-h! Ba-a-a-h!");
            pCreature->GetMotionMaster()->MoveFleeing(pPlayer, 100);
            pPlayer->KnockBack(2.0F, 3.0F, 3.0F);
        }

    }

    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}


void AddSC_elwynn_forest()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_henze_faulk";
    newscript->GetAI = &GetAI_npc_henze_faulk;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_marshal_haggards_chest";
    newscript->GOGetAI = &GetAIgo_marshal_haggards_chest;
    newscript->pGOHello = &GOHello_go_marshal_haggards_chest;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "npc_lost_farm_sheep";
    newscript->pGossipHello = &GossipHello_npc_lost_farm_sheep;
    newscript->pGossipSelect = &GossipSelect_npc_lost_farm_sheep;
    newscript->RegisterSelf();

}
