
#include "scriptPCH.h"

enum GardenObjects
{
    LIFESPAN_PLANTER       = 60 * MINUTE * IN_MILLISECONDS, 
    LIFESPAN_GROWING       = 10 * MINUTE * IN_MILLISECONDS, 
    LIFESPAN_GROWING_TICK  =  1 * MINUTE * IN_MILLISECONDS, // 1 minute for test. Set it to 9.
    LIFESPAN_BUTTON        =  5 * MINUTE * IN_MILLISECONDS, 
    LIFESPAN_SPLASH        =  1,

    PUMPKIN_SEEDS = 51706,
    BERRY_SEEDS = 51707,
    WATERMELON_SEEDS = 51708,

    REFRESHING_SPRING_WATER = 159,
    UNGORO_SOIL = 11018,

    WOODEN_PLANTER = 1000334,
    PLANTER_EARTH = 1000335,

    PUMPKIN_SPROUTLING = 1000336,
    PUMPKIN_SPROUTLING_ACTIVE = 1000337,
    PUMPKIN_SMALL = 1000338,
    PUMPKIN_SMALL_ACTIVE = 1000339,
    PUMPKIN_MEDIUM = 1000340,
    PUMPKIN_MEDIUM_ACTIVE = 1000341,
    PUMPKIN_HARVEST = 1000342,

    BERRY_SPROUTLING = 1000343,
    BERRY_SPROUTLING_ACTIVE = 1000344,
    BERRY_SMALL = 1000345,
    BERRY_SMALL_ACTIVE = 1000346,
    BERRY_MEDIUM = 1000347,
    BERRY_MEDIUM_ACTIVE = 1000348,
    BERRY_HARVEST = 1000349,

    WATERMELON_SPROUTLING = 1000350,
    WATERMELON_SPROUTLING_ACTIVE = 1000351,
    WATERMELON_SMALL = 1000352,
    WATERMELON_SMALL_ACTIVE = 1000353,
    WATERMELON_MEDIUM = 1000354,
    WATERMELON_MEDIUM_ACTIVE = 1000355,
    WATERMELON_HARVEST = 1000356,

    WATER_SPLASH = 1000357
};

bool ItemUseSpell_item_wooden_planter(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    if (pPlayer->isInCombat() || pPlayer->IsBeingTeleported() || (pPlayer->getDeathState() == CORPSE) || pPlayer->IsMoving())
        return false;

    float dis{ 2.0F };
    float x, y, z;
    pPlayer->GetSafePosition(x, y, z);
    x += dis * cos(pPlayer->GetOrientation());
    y += dis * sin(pPlayer->GetOrientation());

    float  p_r, o_r;
    p_r = pPlayer->GetOrientation();
    o_r = remainderf(p_r + M_PI, M_PI * 2.0f);
    float rot2 = sin(o_r / 2);
    float rot3 = cos(o_r / 2);

    pPlayer->SummonGameObject(WOODEN_PLANTER, x, y, z - 0.1F, o_r, 0.0f, 0.0f, rot2, rot3, LIFESPAN_PLANTER, true);
    pPlayer->SummonGameObject(PLANTER_EARTH, x, y, z - 0.05F, o_r + 1.6F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_PLANTER, true);
    return true;
}

bool GOHello_go_simple_wooden_planter(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->HasItemCount(PUMPKIN_SEEDS, 1)) 
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Plant Country Pumpkin Seeds.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
    if (pPlayer->HasItemCount(BERRY_SEEDS, 1)) 
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Plant Mountain Berries Seeds.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
    if (pPlayer->HasItemCount(WATERMELON_SEEDS, 1)) 
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Plant Stripped Melon Seeds.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);  

    pPlayer->SEND_GOSSIP_MENU(90351, pGo->GetGUID());
    return true;
}

bool GOSelect_go_simple_wooden_planter(Player* pPlayer, GameObject* pGo, uint32 sender, uint32 action)
{
    float x, y, z;
    pGo->GetSafePosition(x, y, z);

    if (action == GOSSIP_ACTION_INFO_DEF + 1)
    {
        pPlayer->RemoveItemCurrency(PUMPKIN_SEEDS, 1);
        pPlayer->SummonGameObject(PUMPKIN_SPROUTLING, x, y, z + 0.2F, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_GROWING, true);
    }

    if (action == GOSSIP_ACTION_INFO_DEF + 2)
    {
        pPlayer->RemoveItemCurrency(BERRY_SEEDS, 1);
        pPlayer->SummonGameObject(BERRY_SPROUTLING, x, y, z + 0.2F, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_GROWING, true);
    }

    if (action == GOSSIP_ACTION_INFO_DEF + 3)
    {
        pPlayer->RemoveItemCurrency(WATERMELON_SEEDS, 1);
        pPlayer->SummonGameObject(WATERMELON_SPROUTLING, x, y, z + 0.2F, 1.6F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_GROWING, true);
    }

    pGo->ResetDoorOrButton();
    pPlayer->CLOSE_GOSSIP_MENU();
    return true;
}

struct go_farm_vegetable_growing_stage : public GameObjectAI
{
    explicit go_farm_vegetable_growing_stage(GameObject* pGo) : GameObjectAI(pGo)
    {
        m_bUsed = false;
        m_uiJustUsedTimer = 1;
        m_uiUpdateTimer = LIFESPAN_GROWING_TICK;
    }

    bool m_bUsed;
    uint32 m_uiJustUsedTimer;
    uint32 m_uiUpdateTimer;

    void UpdateAI(uint32 const uiDiff) override
    {
        if (m_uiJustUsedTimer < uiDiff)
        {
            if (m_uiUpdateTimer < uiDiff)
            {
                float x, y, z;
                me->GetSafePosition(x, y, z);

                switch (me->GetEntry())
                {
                case PUMPKIN_SPROUTLING:    me->SummonGameObject(PUMPKIN_SPROUTLING_ACTIVE, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_BUTTON, true); break;
                case PUMPKIN_SMALL:         me->SummonGameObject(PUMPKIN_SMALL_ACTIVE, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_BUTTON, true); break;
                case PUMPKIN_MEDIUM:        me->SummonGameObject(PUMPKIN_MEDIUM_ACTIVE, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_BUTTON, true); break;

                case BERRY_SPROUTLING:      me->SummonGameObject(BERRY_SPROUTLING_ACTIVE, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_BUTTON, true); break;
                case BERRY_SMALL:           me->SummonGameObject(BERRY_SMALL_ACTIVE, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_BUTTON, true); break;
                case BERRY_MEDIUM:          me->SummonGameObject(BERRY_MEDIUM_ACTIVE, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_BUTTON, true); break;

                case WATERMELON_SPROUTLING: me->SummonGameObject(WATERMELON_SPROUTLING_ACTIVE, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_BUTTON, true); break;
                case WATERMELON_SMALL:      me->SummonGameObject(WATERMELON_SMALL_ACTIVE, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_BUTTON, true); break;
                case WATERMELON_MEDIUM:     me->SummonGameObject(WATERMELON_MEDIUM_ACTIVE, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_BUTTON, true); break;
                }

                me->Despawn(); 
                me->UpdateObjectVisibility();
                m_uiUpdateTimer = LIFESPAN_GROWING_TICK;
            }
            else
            {
                m_uiUpdateTimer -= uiDiff;
            }
            m_bUsed = true;
        }
        else
        {
            m_uiJustUsedTimer -= uiDiff;
        }
    }
};

GameObjectAI* GetAI_go_farm_vegetable_growing_stage(GameObject* gameobject)
{
    return new go_farm_vegetable_growing_stage(gameobject);
}

bool GOHello_go_farm_grow_activate(Player* pPlayer, GameObject* pGo)
{
    float x, y, z;
    pGo->GetSafePosition(x, y, z);

    switch (pGo->GetEntry())
    {
    case PUMPKIN_SPROUTLING_ACTIVE:
        if (!pPlayer->HasItemCount(REFRESHING_SPRING_WATER, 1))
            ChatHandler(pPlayer).PSendSysMessage("Use Refreshing Spring Water to water it!");
        pPlayer->RemoveItemCurrency(REFRESHING_SPRING_WATER, 1);
        pPlayer->SummonGameObject(PUMPKIN_SMALL, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_GROWING, true);
        break;
    case PUMPKIN_SMALL_ACTIVE:
        if (!pPlayer->HasItemCount(UNGORO_SOIL, 1))
            ChatHandler(pPlayer).PSendSysMessage("Use Ungoro Soil to fertilize it!");
        pPlayer->RemoveItemCurrency(UNGORO_SOIL, 1);
        pPlayer->SummonGameObject(PUMPKIN_MEDIUM, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_GROWING, true);
        break;
    case PUMPKIN_MEDIUM_ACTIVE:
        if (!pPlayer->HasItemCount(REFRESHING_SPRING_WATER, 1))
            ChatHandler(pPlayer).PSendSysMessage("Use Refreshing Spring Water to water it!");
        pPlayer->RemoveItemCurrency(REFRESHING_SPRING_WATER, 1);
        pPlayer->SummonGameObject(PUMPKIN_HARVEST, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_BUTTON, true);
        break;

    case BERRY_SPROUTLING_ACTIVE:
        if (!pPlayer->HasItemCount(REFRESHING_SPRING_WATER, 1))
            ChatHandler(pPlayer).PSendSysMessage("Use Refreshing Spring Water to water it!");
        pPlayer->RemoveItemCurrency(REFRESHING_SPRING_WATER, 1);
        pPlayer->SummonGameObject(BERRY_SMALL, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_GROWING, true);
        break;
    case BERRY_SMALL_ACTIVE:
        if (!pPlayer->HasItemCount(UNGORO_SOIL, 1))
            ChatHandler(pPlayer).PSendSysMessage("Use Ungoro Soil to fertilize it!");
        pPlayer->RemoveItemCurrency(UNGORO_SOIL, 1);
        pPlayer->SummonGameObject(BERRY_MEDIUM, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_GROWING, true);
        break;
    case BERRY_MEDIUM_ACTIVE:
        if (!pPlayer->HasItemCount(REFRESHING_SPRING_WATER, 1))
            ChatHandler(pPlayer).PSendSysMessage("Use Refreshing Spring Water to water it!");
        pPlayer->RemoveItemCurrency(REFRESHING_SPRING_WATER, 1);
        pPlayer->SummonGameObject(BERRY_HARVEST, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_BUTTON, true);
        break;

    case WATERMELON_SPROUTLING_ACTIVE:
        if (!pPlayer->HasItemCount(REFRESHING_SPRING_WATER, 1))
            ChatHandler(pPlayer).PSendSysMessage("Use Refreshing Spring Water to water it!");
        pPlayer->RemoveItemCurrency(REFRESHING_SPRING_WATER, 1);
        pPlayer->SummonGameObject(WATERMELON_SMALL, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_GROWING, true);
        break;
    case WATERMELON_SMALL_ACTIVE:
        if (!pPlayer->HasItemCount(UNGORO_SOIL, 1))
            ChatHandler(pPlayer).PSendSysMessage("Use Ungoro Soil to fertilize it!");
        pPlayer->RemoveItemCurrency(UNGORO_SOIL, 1);
        pPlayer->SummonGameObject(WATERMELON_MEDIUM, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_GROWING, true);
        break;
    case WATERMELON_MEDIUM_ACTIVE:
        if (!pPlayer->HasItemCount(REFRESHING_SPRING_WATER, 1))
            ChatHandler(pPlayer).PSendSysMessage("Use Refreshing Spring Water to water it!");
        pPlayer->RemoveItemCurrency(REFRESHING_SPRING_WATER, 1);
        pPlayer->SummonGameObject(WATERMELON_HARVEST, x, y, z, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_BUTTON, true);
        break;
    }

    pPlayer->SummonGameObject(WATER_SPLASH, x, y, z-0.1F, 0.0F, 0.0f, 0.0f, 0.0f, 0.0f, LIFESPAN_SPLASH, true);
    pGo->Despawn();
    pGo->UpdateObjectVisibility();
    return true;
}

void AddSC_gardening()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "go_farm_grow_activate";
    newscript->pGOHello = &GOHello_go_farm_grow_activate;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_farm_vegetable_growing_stage";
    newscript->GOGetAI = &GetAI_go_farm_vegetable_growing_stage;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_simple_wooden_planter";
    newscript->pGOHello = &GOHello_go_simple_wooden_planter;
    newscript->pGOGossipSelect = &GOSelect_go_simple_wooden_planter;
    newscript->RegisterSelf();
	
	newscript = new Script;
    newscript->Name = "item_wooden_planter";
    newscript->pItemUseSpell = &ItemUseSpell_item_wooden_planter;
    newscript->RegisterSelf();
}


