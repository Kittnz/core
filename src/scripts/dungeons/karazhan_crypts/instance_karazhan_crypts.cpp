#include "scriptPCH.h"

#define KARAZHAN_CRYPT_KEY 51356
#define KARAZHAN_GATE_RESET 1

bool GOHello_karazhan_crypt_gate(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->HasItemCount(KARAZHAN_CRYPT_KEY, 1))
    {
        pGo->UseDoorOrButton();
        pPlayer->HandleEmote(EMOTE_ONESHOT_KNEEL);

        if (GameObjectAI* gAI = pGo->AI())
            gAI->SetData(KARAZHAN_GATE_RESET, 1);
    }
    else
        pPlayer->GetSession()->SendNotification("Requires Karazhan Crypt Key.");

    return true;
}

struct karazhan_crypt_gate : public GameObjectAI
{
    explicit karazhan_crypt_gate(GameObject* pGo) : GameObjectAI(pGo) {}
    uint32 BackTimer = 0;

    virtual void UpdateAI(uint32 const uiDiff) override
    {
        if (BackTimer != 0)
        {
            if (BackTimer < uiDiff)
            {
                BackTimer = 0;
                me->ResetDoorOrButton();
            }
            else
            {
                BackTimer -= uiDiff;
                if (BackTimer == 0)
                {
                    me->ResetDoorOrButton();
                }
            }
        }
    }

    virtual void SetData(uint32 id, uint32 value) override
    {
        if (id == KARAZHAN_GATE_RESET)
            BackTimer = 25 * IN_MILLISECONDS;
        GameObjectAI::SetData(id, value);
    }
};

GameObjectAI* GetAI_karazhan_crypt_gate(GameObject* Obj) { return new karazhan_crypt_gate(Obj); }

struct karazhan_crypt_portal : public GameObjectAI
{
    explicit karazhan_crypt_portal(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_uiUpdateTimer = 1000;
    }

    uint32 m_uiUpdateTimer;

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_uiUpdateTimer < uiDiff)
        {
            std::list<Player*> players;
            MaNGOS::AnyPlayerInObjectRangeCheck check(me, 1.0f, true, false);
            MaNGOS::PlayerListSearcher<MaNGOS::AnyPlayerInObjectRangeCheck> searcher(players, check);

            Cell::VisitWorldObjects(me, searcher, 1.0f);

            for (Player* pPlayer : players)
            {
                if (!pPlayer->IsAlive())
                {
                    pPlayer->ResurrectPlayer(0.5f);
                    pPlayer->SpawnCorpseBones();
                }
                if (me->GetEntry() == 181580) // Entrance
                    pPlayer->TeleportTo(800, -11085.0F, -1788.2F, 52.7F, 5.3F);
                if (me->GetEntry() == 181581) // Exit
                    pPlayer->TeleportTo(0, -11068.9F, -1828.6F, 60.26F, 3.1F);
            }
            m_uiUpdateTimer = 1000;
        }
        else
        {
            m_uiUpdateTimer -= uiDiff;
        }
    }
};

GameObjectAI* GetAI_karazhan_crypt_portal(GameObject* gameobject) { return new karazhan_crypt_portal(gameobject); }

void AddSC_instance_karazhan_crypt()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "karazhan_crypt_gate";
    newscript->pGOHello = &GOHello_karazhan_crypt_gate;
    newscript->GOGetAI = &GetAI_karazhan_crypt_gate;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "karazhan_crypt_portal";
    newscript->GOGetAI = &GetAI_karazhan_crypt_portal;
    newscript->RegisterSelf();
}