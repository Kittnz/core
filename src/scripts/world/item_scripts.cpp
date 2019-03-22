// This will run an additional script each time we cast the spell of the item. 
// Set up cooldown and charges directly for item_template in the database: spellid_1, spellcharges_1, spellcooldown_1. 
// If you make a new item, use visual effects only, make it doesn't share spell cooldown with anything important.

#include "scriptPCH.h"

bool ItemUse_character_rename(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    ChatHandler(pPlayer).PSendSysMessage("Please logout and enter a new name for this character.");
    pPlayer->SetAtLoginFlag(AT_LOGIN_RENAME);
    return false;
}

bool ItemUse_highborne_soul_mirror(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    int male_models[10] = { 7874, 7010, 6630, 11669, 11671, 6994, 6779, 6549, 6546, 6385 };
    int female_models[6] = { 7872, 7922, 11672, 6782, 6548, 6547 };
    int modelid = rand() % 6; //TODO: More female models.
    pPlayer->SetDisplayId((pPlayer->getGender() == GENDER_MALE) ? male_models[modelid] : female_models[modelid]);
    return false;
}

#define ALICE_GROW_LBOUNDARY 1.05f
#define ALICE_GROW_RBOUNDARY 1.15f
#define ALICE_BELITTLE_LBOUNDARY 0.85f
#define ALICE_BELITTLE_RBOUNDARY 0.95f
bool ItemUse_alice_wonderland_scale(Player* pPlayer, Item* pItem, const SpellCastTargets&) {
    float scale;
    if (pItem->GetEntry() == 30092) { // Strange Bottle
        if (pPlayer->GetObjectScale() == ALICE_BELITTLE_LBOUNDARY) {
            ChatHandler(pPlayer).PSendSysMessage("|cffff8040You can't be smaller!|r");
            return true;
        }
        scale = frand(ALICE_BELITTLE_LBOUNDARY, pPlayer->GetObjectScale() == 1 ?
                                                ALICE_BELITTLE_RBOUNDARY : pPlayer->GetObjectScale());
    } else {
        if (pPlayer->GetObjectScale() == ALICE_GROW_RBOUNDARY) {
            ChatHandler(pPlayer).PSendSysMessage("|cffff8040You can't grow more!|r");
            return true;
        }
        scale = frand(pPlayer->GetObjectScale() == 1 ?
                      ALICE_GROW_LBOUNDARY : pPlayer->GetObjectScale(), ALICE_GROW_RBOUNDARY);
    }
    pPlayer->SetObjectScale(static_cast<float>(floor((scale * 100) + 0.5) / 100));
    return false;
}

class DanceAfterTime : public BasicEvent {
public:
    explicit DanceAfterTime(uint64 player_guid) : BasicEvent(), player_guid(player_guid) {}

    bool Execute(uint64 e_time, uint32 p_time) override {
        Player* player = ObjectAccessor::FindPlayer(player_guid);
        if (player) {
            player->HandleEmoteCommand(EMOTE_ONESHOT_DANCE);
        }
        return false;
    }

private:
    uint64 player_guid;
};

bool ItemUse_summer_vestment(Player* pPlayer, Item* pItem, const SpellCastTargets&) 
{
    pPlayer->m_Events.AddEvent(new DanceAfterTime(pPlayer->GetGUID()), pPlayer->m_Events.CalculateTime(1500));
    return false;
}

bool ItemUse_remote_mail_terminal(Player* pPlayer, Item* pItem, const SpellCastTargets&)
{
    pPlayer->SummonGameObject(144112, pPlayer->GetPositionX() + 2.0f, pPlayer->GetPositionY() + 2.0f, pPlayer->GetPositionZ(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 180, true);
    return false;
}

void AddSC_item_scripts()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "character_rename";
    newscript->pItemUse = &ItemUse_character_rename;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "highborne_soul_mirror";
    newscript->pItemUse = &ItemUse_highborne_soul_mirror;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_alice_wonderland_scale";
    newscript->pItemUse = &ItemUse_alice_wonderland_scale;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "item_summer_vestment";
    newscript->pItemUse = &ItemUse_summer_vestment;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "remote_mail_terminal";
    newscript->pItemUse = &ItemUse_remote_mail_terminal;
    newscript->RegisterSelf();
}