/*
 * Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
 * Copyright (C) 2009-2011 MaNGOSZero <https://github.com/mangos/zero>
 * Copyright (C) 2011-2016 Nostalrius <https://nostalrius.org>
 * Copyright (C) 2016-2017 Elysium Project <https://github.com/elysium-project>
 *
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

#include "Common.h"
#include "Database/DatabaseEnv.h"
#include "Database/DatabaseImpl.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "World.h"
#include "ObjectMgr.h"
#include "AccountMgr.h"
#include "SpellMgr.h"
#include "Player.h"
#include "Opcodes.h"
#include "GameObject.h"
#include "Chat.h"
#include "Log.h"
#include "Guild.h"
#include "GuildMgr.h"
#include "ObjectAccessor.h"
#include "MapManager.h"
#include "MassMailMgr.h"
#include "ScriptMgr.h"
#include "Language.h"
#include "GridNotifiersImpl.h"
#include "CellImpl.h"
#include "Weather.h"
#include "PointMovementGenerator.h"
#include "TargetedMovementGenerator.h"
#include "SystemConfig.h"
#include "Config/Config.h"
#include "Mail.h"
#include "Util.h"
#include "ItemEnchantmentMgr.h"
#include "BattleGroundMgr.h"
#include "MapPersistentStateMgr.h"
#include "InstanceData.h"
#include "DBCStores.h"
#include "CreatureEventAIMgr.h"
#include "QuestDef.h"
#include "Anticheat.h"
#include "AsyncCommandHandlers.h"
#include "TemporarySummon.h"
#include "HardcodedEvents.h"

bool ChatHandler::HandleReloadMangosStringCommand(char* /*args*/)
{
    sObjectMgr.LoadMangosStrings();
    SendSysMessage("DB table `mangos_string` reloaded.");
    return true;
}

bool ChatHandler::HandleReloadConfigCommand(char* /*args*/)
{
    sWorld.LoadConfigSettings(true);
    SendSysMessage("World config settings reloaded.");
    return true;
}

bool ChatHandler::HandleReloadQuestTemplateCommand(char* /*args*/)
{
    sObjectMgr.LoadQuests();
    SendSysMessage("DB table `quest_template` (quest definitions) reloaded.");

    /// dependent also from `gameobject` but this table not reloaded anyway
    sObjectMgr.LoadGameObjectForQuests();
    SendSysMessage("Data GameObjects for quests reloaded.");
    return true;
}

bool ChatHandler::HandleAccountSetGmLevelCommand(char* args)
{
    char* accountStr = ExtractOptNotLastArg(&args);

    std::string targetAccountName;
    Player* targetPlayer = NULL;
    uint32 targetAccountId = ExtractAccountId(&accountStr, &targetAccountName, &targetPlayer);
    if (!targetAccountId)
        return false;

    /// only target player different from self allowed
    if (GetAccountId() == targetAccountId)
        return false;

    int32 gm;
    if (!ExtractInt32(&args, gm))
        return false;

    if (gm < SEC_PLAYER || gm > SEC_ADMINISTRATOR)
    {
        SendSysMessage(LANG_BAD_VALUE);
        SetSentErrorMessage(true);
        return false;
    }

    /// can set security level only for target with less security and to less security that we have
    /// This is also reject self apply in fact
    if (HasLowerSecurityAccount(NULL, targetAccountId, true))
        return false;

    /// account can't set security to same or grater level, need more power GM or console
    AccountTypes plSecurity = GetAccessLevel();
    if (AccountTypes(gm) > plSecurity)
    {
        SendSysMessage(LANG_YOURS_SECURITY_IS_LOW);
        SetSentErrorMessage(true);
        return false;
    }

    if (targetPlayer)
    {
        ChatHandler(targetPlayer).PSendSysMessage(LANG_YOURS_SECURITY_CHANGED, GetNameLink().c_str(), gm);
        targetPlayer->GetSession()->SetSecurity(AccountTypes(gm));
    }

    PSendSysMessage(LANG_YOU_CHANGE_SECURITY, targetAccountName.c_str(), gm);
    sAccountMgr.SetSecurity(targetAccountId, AccountTypes(gm));

    return true;
}

/// Set password for account
bool ChatHandler::HandleAccountSetPasswordCommand(char* args)
{
    ///- Get the command line arguments
    std::string account_name;
    uint32 targetAccountId = ExtractAccountId(&args, &account_name);
    if (!targetAccountId)
        return false;

    // allow or quoted string with possible spaces or literal without spaces
    char *szPassword1 = ExtractQuotedOrLiteralArg(&args);
    char *szPassword2 = ExtractQuotedOrLiteralArg(&args);
    if (!szPassword1 || !szPassword2)
        return false;

    /// can set password only for target with less security
    /// This is also reject self apply in fact
    if (HasLowerSecurityAccount(NULL, targetAccountId, true))
        return false;

    if (strcmp(szPassword1, szPassword2))
    {
        SendSysMessage(LANG_NEW_PASSWORDS_NOT_MATCH);
        SetSentErrorMessage(true);
        return false;
    }

    AccountOpResult result = sAccountMgr.ChangePassword(targetAccountId, szPassword1);

    switch (result)
    {
        case AOR_OK:
            SendSysMessage(LANG_COMMAND_PASSWORD);
            break;
        case AOR_NAME_NOT_EXIST:
            PSendSysMessage(LANG_ACCOUNT_NOT_EXIST, account_name.c_str());
            SetSentErrorMessage(true);
            return false;
        case AOR_PASS_TOO_LONG:
            SendSysMessage(LANG_PASSWORD_TOO_LONG);
            SetSentErrorMessage(true);
            return false;
        default:
            SendSysMessage(LANG_COMMAND_NOTCHANGEPASSWORD);
            SetSentErrorMessage(true);
            return false;
    }

    return true;
}

bool ChatHandler::HandleMaxSkillCommand(char* /*args*/)
{
    Player* SelectedPlayer = GetSelectedPlayer();
    if (!SelectedPlayer)
    {
        SendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    // each skills that have max skill value dependent from level seted to current level max skill value
    SelectedPlayer->UpdateSkillsToMaxSkillsForLevel();
    return true;
}

bool ChatHandler::HandleSetSkillCommand(char* args)
{
    Player * target = GetSelectedPlayer();
    if (!target)
    {
        SendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    // number or [name] Shift-click form |color|Hskill:skill_id|h[name]|h|r
    char* skill_p = ExtractKeyFromLink(&args, "Hskill");
    if (!skill_p)
        return false;

    int32 skill;
    if (!ExtractInt32(&skill_p, skill))
        return false;

    int32 level;
    if (!ExtractInt32(&args, level))
        return false;

    int32 maxskill;
    if (!ExtractOptInt32(&args, maxskill, target->GetSkillMaxPure(skill)))
        return false;

    if (skill <= 0)
    {
        PSendSysMessage(LANG_INVALID_SKILL_ID, skill);
        SetSentErrorMessage(true);
        return false;
    }

    SkillLineEntry const* sl = sSkillLineStore.LookupEntry(skill);
    if (!sl)
    {
        PSendSysMessage(LANG_INVALID_SKILL_ID, skill);
        SetSentErrorMessage(true);
        return false;
    }

    std::string tNameLink = GetNameLink(target);

    if (!target->GetSkillValue(skill))
    {
        PSendSysMessage(LANG_SET_SKILL_ERROR, tNameLink.c_str(), skill, sl->name[GetSessionDbcLocale()]);
        SetSentErrorMessage(true);
        return false;
    }

    if (level <= 0 || level > maxskill || maxskill <= 0)
        return false;

    target->SetSkill(skill, level, maxskill);
    PSendSysMessage(LANG_SET_SKILL, skill, sl->name[GetSessionDbcLocale()], tNameLink.c_str(), level, maxskill);

    return true;
}

bool ChatHandler::HandleUnLearnCommand(char* args)
{
    if (!*args)
        return false;

    // number or [name] Shift-click form |color|Hspell:spell_id|h[name]|h|r
    uint32 spell_id = ExtractSpellIdFromLink(&args);
    if (!spell_id)
        return false;

    bool allRanks = ExtractLiteralArg(&args, "all") != NULL;
    if (!allRanks && *args)                                 // can be fail also at syntax error
        return false;

    Player* target = GetSelectedPlayer();
    if (!target)
    {
        SendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    if (allRanks)
        spell_id = sSpellMgr.GetFirstSpellInChain(spell_id);

    if (target->HasSpell(spell_id))
        target->RemoveSpell(spell_id, false, !allRanks);
    else
        SendSysMessage(LANG_FORGET_SPELL);

    return true;
}

bool ChatHandler::HandleCooldownCommand(char* args)
{
    Unit* target = GetSelectedUnit();
    if (!target)
    {
        SendSysMessage(LANG_PLAYER_NOT_FOUND);
        SetSentErrorMessage(true);
        return false;
    }

    std::string tNameLink = target->ToPlayer() ? GetNameLink(target->ToPlayer()) : target->GetName();

    if (!*args)
    {
        target->RemoveAllSpellCooldown();
        PSendSysMessage(LANG_REMOVEALL_COOLDOWN, tNameLink.c_str());
    }
    else
    {
        // number or [name] Shift-click form |color|Hspell:spell_id|h[name]|h|r or Htalent form
        uint32 spell_id = ExtractSpellIdFromLink(&args);
        if (!spell_id)
            return false;

        if (!sSpellMgr.GetSpellEntry(spell_id))
        {
            PSendSysMessage(LANG_UNKNOWN_SPELL, target == m_session->GetPlayer() ? GetMangosString(LANG_YOU) : tNameLink.c_str());
            SetSentErrorMessage(true);
            return false;
        }

        target->RemoveSpellCooldown(spell_id, true);
        PSendSysMessage(LANG_REMOVE_COOLDOWN, spell_id, target == m_session->GetPlayer() ? GetMangosString(LANG_YOU) : tNameLink.c_str());
    }
    return true;
}

bool ChatHandler::HandleLearnAllMySpellsCommand(char* /*args*/)
{
    ChrClassesEntry const* clsEntry = sChrClassesStore.LookupEntry(m_session->GetPlayer()->getClass());
    if (!clsEntry)
        return true;
    uint32 family = clsEntry->spellfamily;

    for (uint32 i = 0; i < sObjectMgr.GetMaxSkillLineAbilityId(); ++i)
    {
        SkillLineAbilityEntry const *entry = sObjectMgr.GetSkillLineAbility(i);
        if (!entry)
            continue;

        SpellEntry const *spellInfo = sSpellMgr.GetSpellEntry(entry->spellId);
        if (!spellInfo)
            continue;

        // skip server-side/triggered spells
        if (spellInfo->spellLevel == 0)
            continue;

        // skip wrong class/race skills
        if (!m_session->GetPlayer()->IsSpellFitByClassAndRace(spellInfo->Id))
            continue;

        // skip other spell families
        if (spellInfo->SpellFamilyName != family)
            continue;

        // skip spells with first rank learned as talent (and all talents then also)
        uint32 first_rank = sSpellMgr.GetFirstSpellInChain(spellInfo->Id);
        if (GetTalentSpellCost(first_rank) > 0)
            continue;

        // skip broken spells
        if (!SpellMgr::IsSpellValid(spellInfo, m_session->GetPlayer(), false))
            continue;

        m_session->GetPlayer()->LearnSpell(spellInfo->Id, false);
    }

    SendSysMessage(LANG_COMMAND_LEARN_CLASS_SPELLS);
    return true;
}

bool ChatHandler::HandleLearnCommand(char* args)
{
    Player* targetPlayer = GetSelectedPlayer();

    if (!targetPlayer)
    {
        SendSysMessage(LANG_PLAYER_NOT_FOUND);
        SetSentErrorMessage(true);
        return false;
    }

    // number or [name] Shift-click form |color|Hspell:spell_id|h[name]|h|r or Htalent form
    uint32 spell = ExtractSpellIdFromLink(&args);
    if (!spell || !sSpellMgr.GetSpellEntry(spell))
        return false;

    bool allRanks = ExtractLiteralArg(&args, "all") != NULL;
    if (!allRanks && *args)                                 // can be fail also at syntax error
        return false;

    SpellEntry const* spellInfo = sSpellMgr.GetSpellEntry(spell);
    if (!spellInfo || !SpellMgr::IsSpellValid(spellInfo, m_session->GetPlayer()))
    {
        PSendSysMessage(LANG_COMMAND_SPELL_BROKEN, spell);
        SetSentErrorMessage(true);
        return false;
    }

    if (!allRanks && targetPlayer->HasSpell(spell))
    {
        if (targetPlayer == m_session->GetPlayer())
            SendSysMessage(LANG_YOU_KNOWN_SPELL);
        else
            PSendSysMessage(LANG_TARGET_KNOWN_SPELL, targetPlayer->GetName());
        SetSentErrorMessage(true);
        return false;
    }

    if (allRanks)
        targetPlayer->LearnSpellHighRank(spell);
    else
        targetPlayer->LearnSpell(spell, false);

    return true;
}

bool ChatHandler::HandleAddItemCommand(char* args)
{
    char* cId = ExtractKeyFromLink(&args, "Hitem");
    if (!cId)
        return false;

    uint32 itemId = 0;
    if (!ExtractUInt32(&cId, itemId))                       // [name] manual form
    {
        std::string itemName = cId;
        WorldDatabase.escape_string(itemName);
        QueryResult *result = WorldDatabase.PQuery("SELECT entry FROM item_template WHERE name = '%s'", itemName.c_str());
        if (!result)
        {
            PSendSysMessage(LANG_COMMAND_COULDNOTFIND, cId);
            SetSentErrorMessage(true);
            return false;
        }
        itemId = result->Fetch()->GetUInt16();
        delete result;
    }

    int32 count;
    if (!ExtractOptInt32(&args, count, 1))
        return false;

    Player* pl = m_session->GetPlayer();
    Player* plTarget = GetSelectedPlayer();
    if (!plTarget)
        plTarget = pl;

    DETAIL_LOG(GetMangosString(LANG_ADDITEM), itemId, count);

    ItemPrototype const *pProto = ObjectMgr::GetItemPrototype(itemId);
    if (!pProto)
    {
        PSendSysMessage(LANG_COMMAND_ITEMIDINVALID, itemId);
        SetSentErrorMessage(true);
        return false;
    }

    //Subtract
    if (count < 0)
    {
        // Is the item actually?
        if (!plTarget->HasItemCount(itemId, -count, true))
        {
            PSendSysMessage("Le joueur a l'objet %ux%u. Ne peut en retirer %u. Banque inclue.", itemId, plTarget->GetItemCount(itemId, true), -count);
            SetSentErrorMessage(true);
            return false;
        }
        plTarget->DestroyItemCount(itemId, -count, true, false);
        PSendSysMessage(LANG_REMOVEITEM, itemId, -count, GetNameLink(plTarget).c_str());
        return true;
    }

    //Adding items
    uint32 noSpaceForCount = 0;

    // check space and find places
    ItemPosCountVec dest;
    uint8 msg = plTarget->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, itemId, count, &noSpaceForCount);
    if (msg != EQUIP_ERR_OK)                                // convert to possible store amount
        count -= noSpaceForCount;

    if (count == 0 || dest.empty())                         // can't add any
    {
        PSendSysMessage(LANG_ITEM_CANNOT_CREATE, itemId, noSpaceForCount);
        SetSentErrorMessage(true);
        return false;
    }

    Item* item = plTarget->StoreNewItem(dest, itemId, true, Item::GenerateItemRandomPropertyId(itemId));

    // remove binding (let GM give it to another player later)
    if (pl == plTarget)
        for (ItemPosCountVec::const_iterator itr = dest.begin(); itr != dest.end(); ++itr)
            if (Item* item1 = pl->GetItemByPos(itr->pos))
                item1->SetBinding(false);

    if (count > 0 && item)
    {
        pl->SendNewItem(item, count, false, true);
        if (pl != plTarget)
            plTarget->SendNewItem(item, count, true, false);
    }

    if (noSpaceForCount > 0)
        PSendSysMessage(LANG_ITEM_CANNOT_CREATE, itemId, noSpaceForCount);

    return true;
}

bool ChatHandler::HandleDeleteItemCommand(char* args)
{
    char* cId = ExtractKeyFromLink(&args, "Hitem");

    if (!cId)
    {
        return false;
    }

    uint32 itemId = 0;

    if (!ExtractUInt32(&cId, itemId))
    {
        std::string itemName = cId;
        WorldDatabase.escape_string(itemName);

        std::unique_ptr<QueryResult> result(WorldDatabase.PQuery("SELECT entry FROM item_template WHERE name = '%s'", itemName.c_str()));

        if (!result)
        {
            PSendSysMessage(LANG_COMMAND_COULDNOTFIND, cId);
            SetSentErrorMessage(true);
            return false;
        }

        itemId = result->Fetch()->GetUInt16();
    }

    uint32 count;

    if (!ExtractOptUInt32(&args, count, 1))
    {
        return false;
    }

    Player* player;
    ObjectGuid target_guid;
    std::string target_name;

    if (!ExtractPlayerTarget(&args, &player, &target_guid, &target_name))
    {
        return false;
    }

    DETAIL_LOG(GetMangosString(LANG_REMOVEITEM), itemId, count);

    if (player)
    {
        if (!player->HasItemCount(itemId, count, true))
        {
            PSendSysMessage("Cannot remove %u instances of %u - maximum value is %u", count, itemId, player->GetItemCount(itemId, true));
            SetSentErrorMessage(true);
            return false;
        }

        player->DestroyItemCount(itemId, count, true, false, true);
        player->SaveInventoryAndGoldToDB();
    }
    else
    {
        std::unique_ptr<QueryResult> result(CharacterDatabase.PQuery(
            "SELECT SUM(count) AS item_count FROM item_instance ii WHERE itemEntry = %u and owner_guid = %u",
            itemId, target_guid.GetCounter()
        ));

        uint32 maxItemCount = 0;

        if (result)
        {
            auto fields = result->Fetch();
            maxItemCount = fields[0].GetUInt32();
        }

        if (count > maxItemCount)
        {
            PSendSysMessage("Cannot remove %u instances of %u - maximum value is %u", count, itemId, maxItemCount);
            SetSentErrorMessage(true);
            return false;
        }

        while (count)
        {
            result.reset(CharacterDatabase.PQuery(
                "SELECT guid, count FROM item_instance ii WHERE itemEntry = %u and owner_guid = %u ORDER BY count DESC",
                itemId, target_guid.GetCounter()
            ));

            if (!result)
            {
                SendSysMessage("Encountered an error while attempting to locate items to remove - race condition?");
                SetSentErrorMessage(true);
                return false;
            }

            auto fields = result->Fetch();
            auto guid = fields[0].GetUInt32();
            auto stackCount = fields[1].GetUInt32();

            if (stackCount > count) // make sure we don't delete more than requested
            {
                if (!CharacterDatabase.PExecute("UPDATE item_instance SET count = %u WHERE guid = %u",
                    stackCount - count, guid))
                {
                    SendSysMessage("Encountered an error while attempting to adjust item stack count");
                    SetSentErrorMessage(true);
                    return false;
                }

                break;
            }
            else
            {
                if (!CharacterDatabase.DirectPExecute("DELETE FROM item_instance WHERE guid = %u", guid))
                {
                    SendSysMessage("Encountered an error while attempting to remove item instance");
                    SetSentErrorMessage(true);
                    return false;
                }
                
                if (!CharacterDatabase.DirectPExecute("DELETE FROM character_inventory WHERE item = %u", guid))
                {
                    SendSysMessage("Encountered an error while attempting to remove item from inventory");
                    SetSentErrorMessage(true);
                    return false;
                }

                if (!CharacterDatabase.DirectPExecute("DELETE FROM character_gifts WHERE item_guid = %u", guid))
                {
                    SendSysMessage("Encountered an error while attempting to remove item from gifts");
                    SetSentErrorMessage(true);
                    return false;
                }

                if (!CharacterDatabase.DirectPExecute("DELETE FROM mail_items WHERE item_guid = %u", guid))
                {
                    SendSysMessage("Encountered an error while attempting to remove item from mail");
                    SetSentErrorMessage(true);
                    return false;
                }

                count -= stackCount;
            }
        }
    }

    PSendSysMessage(LANG_REMOVEITEM, itemId, count, target_name.c_str());
    return true;
}

bool ChatHandler::HandleAddItemSetCommand(char* args)
{
    uint32 itemsetId;
    if (!ExtractUint32KeyFromLink(&args, "Hitemset", itemsetId))
        return false;

    // prevent generation all items with itemset field value '0'
    if (itemsetId == 0)
    {
        PSendSysMessage(LANG_NO_ITEMS_FROM_ITEMSET_FOUND, itemsetId);
        SetSentErrorMessage(true);
        return false;
    }

    Player* pl = m_session->GetPlayer();
    Player* plTarget = GetSelectedPlayer();
    if (!plTarget)
        plTarget = pl;

    DETAIL_LOG(GetMangosString(LANG_ADDITEMSET), itemsetId);

    bool found = false;
    for (uint32 id = 0; id < sItemStorage.GetMaxEntry(); id++)
    {
        ItemPrototype const *pProto = sItemStorage.LookupEntry<ItemPrototype>(id);
        if (!pProto)
            continue;

        if (pProto->ItemSet == itemsetId)
        {
            found = true;
            ItemPosCountVec dest;
            InventoryResult msg = plTarget->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, pProto->ItemId, 1);
            if (msg == EQUIP_ERR_OK)
            {
                Item* item = plTarget->StoreNewItem(dest, pProto->ItemId, true);

                // remove binding (let GM give it to another player later)
                if (pl == plTarget)
                    item->SetBinding(false);

                pl->SendNewItem(item, 1, false, true);
                if (pl != plTarget)
                    plTarget->SendNewItem(item, 1, true, false);
            }
            else
            {
                pl->SendEquipError(msg, NULL, NULL, pProto->ItemId);
                PSendSysMessage(LANG_ITEM_CANNOT_CREATE, pProto->ItemId, 1);
            }
        }
    }

    if (!found)
    {
        PSendSysMessage(LANG_NO_ITEMS_FROM_ITEMSET_FOUND, itemsetId);

        SetSentErrorMessage(true);
        return false;
    }

    return true;
}

void ChatHandler::ShowItemListHelper(uint32 itemId, int loc_idx, Player* target /*=NULL*/)
{
    ItemPrototype const *itemProto = sItemStorage.LookupEntry<ItemPrototype >(itemId);
    if (!itemProto)
        return;

    std::string name;

    if (ItemLocale const *il = loc_idx >= 0 ? sObjectMgr.GetItemLocale(itemProto->ItemId) : NULL)
        name = il->Name[loc_idx];

    if (name.empty())
        name = itemProto->Name1;

    char const* usableStr = "";

    if (target)
    {
        if (target->CanUseItem(itemProto))
            usableStr = GetMangosString(LANG_COMMAND_ITEM_USABLE);
    }

    if (m_session)
        PSendSysMessage(LANG_ITEM_LIST_CHAT, itemId, itemId, name.c_str(), usableStr);
    else
        PSendSysMessage(LANG_ITEM_LIST_CONSOLE, itemId, name.c_str(), usableStr);
}

bool ChatHandler::HandleLookupItemCommand(char* args)
{
    if (!*args)
        return false;

    std::string namepart = args;
    std::wstring wnamepart;

    // converting string that we try to find to lower case
    if (!Utf8toWStr(namepart, wnamepart))
        return false;

    wstrToLower(wnamepart);

    Player* pl = m_session ? m_session->GetPlayer() : NULL;

    uint32 counter = 0;

    // Search in `item_template`
    for (uint32 id = 0; id < sItemStorage.GetMaxEntry(); id++)
    {
        ItemPrototype const *pProto = sItemStorage.LookupEntry<ItemPrototype >(id);
        if (!pProto)
            continue;

        int loc_idx = GetSessionDbLocaleIndex();
        if (loc_idx >= 0)
        {
            ItemLocale const *il = sObjectMgr.GetItemLocale(pProto->ItemId);
            if (il)
            {
                if ((int32)il->Name.size() > loc_idx && !il->Name[loc_idx].empty())
                {
                    std::string name = il->Name[loc_idx];

                    if (Utf8FitTo(name, wnamepart))
                    {
                        ShowItemListHelper(pProto->ItemId, loc_idx, pl);
                        ++counter;
                        continue;
                    }
                }
            }
        }

        std::string name = pProto->Name1;
        if (name.empty())
            continue;

        if (Utf8FitTo(name, wnamepart))
        {
            ShowItemListHelper(pProto->ItemId, -1, pl);
            ++counter;
        }
    }

    if (counter == 0)
        SendSysMessage(LANG_COMMAND_NOITEMFOUND);

    return true;
}

bool ChatHandler::HandleLookupSkillCommand(char* args)
{
    if (!*args)
        return false;

    // can be NULL in console call
    Player* target = GetSelectedPlayer();

    std::string namepart = args;
    std::wstring wnamepart;

    if (!Utf8toWStr(namepart, wnamepart))
        return false;

    // converting string that we try to find to lower case
    wstrToLower(wnamepart);

    uint32 counter = 0;                                     // Counter for figure out that we found smth.

    // Search in SkillLine.dbc
    for (uint32 id = 0; id < sSkillLineStore.GetNumRows(); id++)
    {
        SkillLineEntry const *skillInfo = sSkillLineStore.LookupEntry(id);
        if (skillInfo)
        {
            int loc = GetSessionDbcLocale();
            std::string name = skillInfo->name[loc];
            if (name.empty())
                continue;

            if (!Utf8FitTo(name, wnamepart))
            {
                loc = 0;
                for (; loc < MAX_DBC_LOCALE; ++loc)
                {
                    if (loc == GetSessionDbcLocale())
                        continue;

                    name = skillInfo->name[loc];
                    if (name.empty())
                        continue;

                    if (Utf8FitTo(name, wnamepart))
                        break;
                }
            }

            if (loc < MAX_DBC_LOCALE)
            {
                char valStr[50] = "";
                char const* knownStr = "";
                if (target && target->HasSkill(id))
                {
                    knownStr = GetMangosString(LANG_KNOWN);
                    uint32 curValue = target->GetSkillValuePure(id);
                    uint32 maxValue  = target->GetSkillMaxPure(id);
                    uint32 permValue = target->GetSkillBonusPermanent(id);
                    uint32 tempValue = target->GetSkillBonusTemporary(id);

                    char const* valFormat = GetMangosString(LANG_SKILL_VALUES);
                    snprintf(valStr, 50, valFormat, curValue, maxValue, permValue, tempValue);
                }

                // send skill in "id - [namedlink locale]" format
                if (m_session)
                    PSendSysMessage(LANG_SKILL_LIST_CHAT, id, id, name.c_str(), localeNames[loc], knownStr, valStr);
                else
                    PSendSysMessage(LANG_SKILL_LIST_CONSOLE, id, name.c_str(), localeNames[loc], knownStr, valStr);

                ++counter;
            }
        }
    }
    if (counter == 0)                                       // if counter == 0 then we found nth
        SendSysMessage(LANG_COMMAND_NOSKILLFOUND);
    return true;
}

void ChatHandler::ShowSpellListHelper(Player* target, SpellEntry const* spellInfo, LocaleConstant loc)
{
    uint32 id = spellInfo->Id;

    bool known = target && target->HasSpell(id);
    bool learn = (spellInfo->Effect[EFFECT_INDEX_0] == SPELL_EFFECT_LEARN_SPELL);

    uint32 talentCost = GetTalentSpellCost(id);

    bool talent = (talentCost > 0);
    bool passive = IsPassiveSpell(spellInfo);
    bool active = target && target->HasAura(id);

    // unit32 used to prevent interpreting uint8 as char at output
    // find rank of learned spell for learning spell, or talent rank
    uint32 rank = talentCost ? talentCost : sSpellMgr.GetSpellRank(learn ? spellInfo->EffectTriggerSpell[EFFECT_INDEX_0] : id);

    // send spell in "id - [name, rank N] [talent] [passive] [learn] [known]" format
    std::ostringstream ss;
    if (m_session)
        ss << id << " - |cffffffff|Hspell:" << id << "|h[" << spellInfo->SpellName[loc];
    else
        ss << id << " - " << spellInfo->SpellName[loc];

    // include rank in link name
    if (rank)
        ss << GetMangosString(LANG_SPELL_RANK) << rank;

    if (m_session)
        ss << " " << localeNames[loc] << "]|h|r";
    else
        ss << " " << localeNames[loc];

    if (talent)
        ss << GetMangosString(LANG_TALENT);
    if (passive)
        ss << GetMangosString(LANG_PASSIVE);
    if (learn)
        ss << GetMangosString(LANG_LEARN);
    if (known)
        ss << GetMangosString(LANG_KNOWN);
    if (active)
        ss << GetMangosString(LANG_ACTIVE);

    SendSysMessage(ss.str().c_str());
}

bool ChatHandler::HandleLookupSpellCommand(char* args)
{
    if (!*args)
        return false;

    // can be NULL at console call
    Player* target = GetSelectedPlayer();

    std::string namepart = args;
    std::wstring wnamepart;

    if (!Utf8toWStr(namepart, wnamepart))
        return false;

    // converting string that we try to find to lower case
    wstrToLower(wnamepart);

    uint32 counter = 0;                                     // Counter for figure out that we found smth.

    // Search in Spell.dbc
    for (uint32 id = 0; id < sSpellMgr.GetMaxSpellId(); id++)
    {
        SpellEntry const *spellInfo = sSpellMgr.GetSpellEntry(id);
        if (spellInfo)
        {
            int loc = GetSessionDbcLocale();
            std::string name = spellInfo->SpellName[loc];
            if (name.empty())
                continue;

            if (!Utf8FitTo(name, wnamepart))
            {
                loc = 0;
                for (; loc < MAX_DBC_LOCALE; ++loc)
                {
                    if (loc == GetSessionDbcLocale())
                        continue;

                    name = spellInfo->SpellName[loc];
                    if (name.empty())
                        continue;

                    if (Utf8FitTo(name, wnamepart))
                        break;
                }
            }

            if (loc < MAX_DBC_LOCALE)
            {
                ShowSpellListHelper(target, spellInfo, LocaleConstant(loc));
                ++counter;
            }
        }
    }
    if (counter == 0)                                       // if counter == 0 then we found nth
        SendSysMessage(LANG_COMMAND_NOSPELLFOUND);
    return true;
}

bool ChatHandler::HandleLookupItemSetCommand(char* args)
{
    if (!*args)
        return false;

    std::string namepart = args;
    std::wstring wnamepart;

    if (!Utf8toWStr(namepart, wnamepart))
        return false;

    // converting string that we try to find to lower case
    wstrToLower(wnamepart);

    uint32 counter = 0;                                     // Counter for figure out that we found smth.

    // Search in ItemSet.dbc
    for (uint32 id = 0; id < sItemSetStore.GetNumRows(); id++)
    {
        ItemSetEntry const* set = sItemSetStore.LookupEntry(id);
        if (set)
        {
            int loc = GetSessionDbcLocale();
            std::string name = set->name[loc];
            if (name.empty())
                continue;

            if (!Utf8FitTo(name, wnamepart))
            {
                loc = 0;
                for (; loc < MAX_DBC_LOCALE; ++loc)
                {
                    if (loc == GetSessionDbcLocale())
                        continue;

                    name = set->name[loc];
                    if (name.empty())
                        continue;

                    if (Utf8FitTo(name, wnamepart))
                        break;
                }
            }

            if (loc < MAX_DBC_LOCALE)
            {
                // send item set in "id - [namedlink locale]" format
                if (m_session)
                    PSendSysMessage(LANG_ITEMSET_LIST_CHAT, id, id, name.c_str(), localeNames[loc]);
                else
                    PSendSysMessage(LANG_ITEMSET_LIST_CONSOLE, id, name.c_str(), localeNames[loc]);
                ++counter;
            }
        }
    }
    if (counter == 0)                                       // if counter == 0 then we found nth
        SendSysMessage(LANG_COMMAND_NOITEMSETFOUND);
    return true;
}

bool ChatHandler::HandleLookupEventCommand(char* args)
{
    if (!*args)
        return false;

    std::string namepart = args;
    std::wstring wnamepart;

    // converting string that we try to find to lower case
    if (!Utf8toWStr(namepart, wnamepart))
        return false;

    wstrToLower(wnamepart);

    uint32 counter = 0;

    GameEventMgr::GameEventDataMap const& events = sGameEventMgr.GetEventMap();

    for (uint32 id = 1; id < events.size(); ++id)
    {
        if (!sGameEventMgr.IsValidEvent(id))
            continue;

        GameEventData const& eventData = events[id];

        std::string descr = eventData.description;
        if (descr.empty())
            continue;

        if (Utf8FitTo(descr, wnamepart))
        {
            char const* active = sGameEventMgr.IsActiveEvent(id) ? GetMangosString(LANG_ACTIVE) : "";

            if (m_session)
                PSendSysMessage(LANG_EVENT_ENTRY_LIST_CHAT, id, id, eventData.description.c_str(), active);
            else
                PSendSysMessage(LANG_EVENT_ENTRY_LIST_CONSOLE, id, eventData.description.c_str(), active);

            ++counter;
        }
    }

    if (counter == 0)
        SendSysMessage(LANG_NOEVENTFOUND);

    return true;
}

bool ChatHandler::HandleLookupGuildCommand(char* args)
{
    if (!args || !*args)
        return false;

    char* name = ExtractQuotedArg(&args);
    if (!name)
        return false;

    std::string nameStr(name);
    Guild* guild = sGuildMgr.GetGuildByName(nameStr);
    if (!guild)
    {
        SendSysMessage(LANG_GUILD_NOT_FOUND);
        SetSentErrorMessage(true);
        return false;
    }

    PSendSysMessage("Guild %s (ID %u):", guild->GetName().c_str(), guild->GetId());
    std::string leaderName;
    sObjectMgr.GetPlayerNameByGUID(guild->GetLeaderGuid(), leaderName);
    PSendSysMessage("- Leader: %s, created: %u-%u-%u", leaderName.c_str(),
                    guild->GetCreatedYear(), guild->GetCreatedMonth(),
                    guild->GetCreatedDay());
    PSendSysMessage("- Members: %u (%u accounts)", guild->GetMemberSize(), guild->GetAccountsNumber());
    PSendSysMessage("- MOTD: %s", guild->GetMOTD().c_str());
    PSendSysMessage("- INFO: %s", guild->GetGINFO().c_str());

    return true;
}

void ChatHandler::ShowQuestListHelper(uint32 questId, int32 loc_idx, Player* target /*= NULL*/)
{
    Quest const* qinfo = sObjectMgr.GetQuestTemplate(questId);
    if (!qinfo)
        return;

    std::string title;

    if (QuestLocale const *il = loc_idx >= 0 ? sObjectMgr.GetQuestLocale(qinfo->GetQuestId()) : NULL)
        title = il->Title[loc_idx];

    if (title.empty())
        title = qinfo->GetTitle();

    char const* statusStr = "";

    if (target)
    {
        QuestStatus status = target->GetQuestStatus(qinfo->GetQuestId());

        if (status == QUEST_STATUS_COMPLETE)
        {
            if (target->GetQuestRewardStatus(qinfo->GetQuestId()))
                statusStr = GetMangosString(LANG_COMMAND_QUEST_REWARDED);
            else
                statusStr = GetMangosString(LANG_COMMAND_QUEST_COMPLETE);
        }
        else if (status == QUEST_STATUS_INCOMPLETE)
            statusStr = GetMangosString(LANG_COMMAND_QUEST_ACTIVE);
    }

    if (m_session)
        PSendSysMessage(LANG_QUEST_LIST_CHAT, qinfo->GetQuestId(), qinfo->GetQuestId(), qinfo->GetQuestLevel(), title.c_str(), statusStr);
    else
        PSendSysMessage(LANG_QUEST_LIST_CONSOLE, qinfo->GetQuestId(), title.c_str(), statusStr);
}

bool ChatHandler::HandleLookupQuestCommand(char* args)
{
    if (!*args)
        return false;

    // can be NULL at console call
    Player* target = GetSelectedPlayer();

    std::string namepart = args;
    std::wstring wnamepart;

    // converting string that we try to find to lower case
    if (!Utf8toWStr(namepart, wnamepart))
        return false;

    wstrToLower(wnamepart);

    uint32 counter = 0 ;

    ObjectMgr::QuestMap const& qTemplates = sObjectMgr.GetQuestTemplates();
    for (ObjectMgr::QuestMap::const_iterator iter = qTemplates.begin(); iter != qTemplates.end(); ++iter)
    {
        const auto& qinfo = iter->second;

        int loc_idx = GetSessionDbLocaleIndex();
        if (loc_idx >= 0)
        {
            QuestLocale const *il = sObjectMgr.GetQuestLocale(qinfo->GetQuestId());
            if (il)
            {
                if ((int32)il->Title.size() > loc_idx && !il->Title[loc_idx].empty())
                {
                    std::string title = il->Title[loc_idx];

                    if (Utf8FitTo(title, wnamepart))
                    {
                        ShowQuestListHelper(qinfo->GetQuestId(), loc_idx, target);
                        ++counter;
                        continue;
                    }
                }
            }
        }

        std::string title = qinfo->GetTitle();
        if (title.empty())
            continue;

        if (Utf8FitTo(title, wnamepart))
        {
            ShowQuestListHelper(qinfo->GetQuestId(), -1, target);
            ++counter;
        }
    }

    if (counter == 0)
        SendSysMessage(LANG_COMMAND_NOQUESTFOUND);

    return true;
}

bool ChatHandler::HandleLookupCreatureCommand(char* args)
{
    if (!*args)
        return false;

    std::string namepart = args;
    std::wstring wnamepart;

    // converting string that we try to find to lower case
    if (!Utf8toWStr(namepart, wnamepart))
        return false;

    wstrToLower(wnamepart);

    uint32 counter = 0;

    for (uint32 id = 0; id < sCreatureStorage.GetMaxEntry(); ++id)
    {
        CreatureInfo const* cInfo = sCreatureStorage.LookupEntry<CreatureInfo> (id);
        if (!cInfo)
            continue;

        int loc_idx = GetSessionDbLocaleIndex();
        if (loc_idx >= 0)
        {
            CreatureLocale const *cl = sObjectMgr.GetCreatureLocale(id);
            if (cl)
            {
                if ((int32)cl->Name.size() > loc_idx && !cl->Name[loc_idx].empty())
                {
                    std::string name = cl->Name[loc_idx];

                    if (Utf8FitTo(name, wnamepart))
                    {
                        if (m_session)
                            PSendSysMessage(LANG_CREATURE_ENTRY_LIST_CHAT, id, id, name.c_str());
                        else
                            PSendSysMessage(LANG_CREATURE_ENTRY_LIST_CONSOLE, id, name.c_str());
                        ++counter;
                        continue;
                    }
                }
            }
        }

        std::string name = cInfo->name;
        if (name.empty())
            continue;

        if (Utf8FitTo(name, wnamepart))
        {
            if (m_session)
                PSendSysMessage(LANG_CREATURE_ENTRY_LIST_CHAT, id, id, name.c_str());
            else
                PSendSysMessage(LANG_CREATURE_ENTRY_LIST_CONSOLE, id, name.c_str());
            ++counter;
        }
    }

    if (counter == 0)
        SendSysMessage(LANG_COMMAND_NOCREATUREFOUND);

    return true;
}


bool ChatHandler::HandleLookupObjectCommand(char* args)
{
    if (!*args)
        return false;

    std::string namepart = args;
    std::wstring wnamepart;

    // converting string that we try to find to lower case
    if (!Utf8toWStr(namepart, wnamepart))
        return false;

    wstrToLower(wnamepart);

    uint32 counter = 0;

    for (auto itr = sGOStorage.begin<GameObjectInfo>(); itr < sGOStorage.end<GameObjectInfo>(); ++itr)
    {
        int loc_idx = GetSessionDbLocaleIndex();
        if (loc_idx >= 0)
        {
            GameObjectLocale const *gl = sObjectMgr.GetGameObjectLocale(itr->id);
            if (gl)
            {
                if ((int32)gl->Name.size() > loc_idx && !gl->Name[loc_idx].empty())
                {
                    std::string name = gl->Name[loc_idx];

                    if (Utf8FitTo(name, wnamepart))
                    {
                        if (m_session)
                            PSendSysMessage(LANG_GO_ENTRY_LIST_CHAT, itr->id, itr->id, name.c_str());
                        else
                            PSendSysMessage(LANG_GO_ENTRY_LIST_CONSOLE, itr->id, name.c_str());
                        ++counter;
                        continue;
                    }
                }
            }
        }

        std::string name = itr->name;
        if (name.empty())
            continue;

        if (Utf8FitTo(name, wnamepart))
        {
            if (m_session)
                PSendSysMessage(LANG_GO_ENTRY_LIST_CHAT, itr->id, itr->id, name.c_str());
            else
                PSendSysMessage(LANG_GO_ENTRY_LIST_CONSOLE, itr->id, name.c_str());
            ++counter;
        }
    }

    if (counter == 0)
        SendSysMessage(LANG_COMMAND_NOGAMEOBJECTFOUND);

    return true;
}

/** \brief GM command level 3 - Create a guild.
 *
 * This command allows a GM (level 3) to create a guild.
 *
 * The "args" parameter contains the name of the guild leader
 * and then the name of the guild.
 *
 */
bool ChatHandler::HandleGuildCreateCommand(char* args)
{
    // guildmaster name optional
    char* guildMasterStr = ExtractOptNotLastArg(&args);

    Player* target;
    if (!ExtractPlayerTarget(&guildMasterStr, &target))
        return false;

    char* guildStr = ExtractQuotedArg(&args);
    if (!guildStr)
        return false;

    std::string guildname = guildStr;

    if (target->GetGuildId())
    {
        SendSysMessage(LANG_PLAYER_IN_GUILD);
        return true;
    }

    Guild* guild = new Guild;
    if (!guild->Create(target, guildname))
    {
        delete guild;
        SendSysMessage(LANG_GUILD_NOT_CREATED);
        SetSentErrorMessage(true);
        return false;
    }

    sGuildMgr.AddGuild(guild);
    return true;
}

bool ChatHandler::HandleGuildInviteCommand(char *args)
{
    // player name optional
    char* nameStr = ExtractOptNotLastArg(&args);

    // if not guild name only (in "") then player name
    ObjectGuid target_guid;
    if (!ExtractPlayerTarget(&nameStr, NULL, &target_guid))
    {
        SendSysMessage(LANG_PLAYER_NOT_FOUND);
        SetSentErrorMessage(true);
        return false;
    }

    char* guildStr = ExtractQuotedArg(&args);
    if (!guildStr)
        return false;

    std::string glName = guildStr;
    Guild* targetGuild = sGuildMgr.GetGuildByName(glName);
    if (!targetGuild)
    {
        SendSysMessage(LANG_GUILD_NOT_FOUND);
        SetSentErrorMessage(true);
        return false;
    }

    // player's guild membership checked in AddMember before add
    auto status = targetGuild->AddMember(target_guid, targetGuild->GetLowestRank());

    if (status != GuildAddStatus::OK)
    {
        std::string error;

        switch (status) // bad
        {
            case GuildAddStatus::ALREADY_IN_GUILD:
                error = "Player is already in a guild.";
                break;
            case GuildAddStatus::GUILD_FULL:
                error = "The target guild is full.";
                break;
            case GuildAddStatus::PLAYER_DATA_ERROR:
                error = "Player data appears to be corrupt - tell an administrator.";
                break;
            case GuildAddStatus::UNKNOWN_PLAYER:
                error = "Unable to find target player.";
                break;
            default:
                error = "Unhandled guild invite error.";
        }

        SendSysMessage(error.c_str());
        SetSentErrorMessage(true);
        return false;
    }

    PSendSysMessage("Player added to %s.", glName.c_str());
    return true;
}

bool ChatHandler::HandleGuildUninviteCommand(char *args)
{
    Player* target;
    ObjectGuid target_guid;
    if (!ExtractPlayerTarget(&args, &target, &target_guid))
        return false;

    uint32 glId = target ? target->GetGuildId() : Player::GetGuildIdFromDB(target_guid);

    if (!glId)
        return false;

    Guild* targetGuild = sGuildMgr.GetGuildById(glId);
    if (!targetGuild)
    {
        SendSysMessage(LANG_GUILD_NOT_FOUND);
        SetSentErrorMessage(true);
        return false;
    }

    if (targetGuild->DelMember(target_guid))
    {
        targetGuild->Disband();
        delete targetGuild;
    }

    return true;
}

bool ChatHandler::HandleGuildRankCommand(char *args)
{
    char* nameStr = ExtractOptNotLastArg(&args);

    Player* target;
    ObjectGuid target_guid;
    std::string target_name;
    if (!ExtractPlayerTarget(&nameStr, &target, &target_guid, &target_name))
        return false;

    uint32 glId = target ? target->GetGuildId() : Player::GetGuildIdFromDB(target_guid);

    if (!glId)
    {
        SendSysMessage(LANG_GUILD_NOT_FOUND);
        SetSentErrorMessage(true);
        return false;
    }

    Guild* targetGuild = sGuildMgr.GetGuildById(glId);
    if (!targetGuild)
        return false;

    uint32 newrank;
    if (!ExtractUInt32(&args, newrank))
        return false;

    if (newrank > targetGuild->GetLowestRank())
        return false;

    MemberSlot* slot = targetGuild->GetMemberSlot(target_guid);
    if (!slot)
        return false;

    slot->ChangeRank(newrank);
    return true;
}

bool ChatHandler::HandleGuildDeleteCommand(char* args)
{
    if (!*args)
        return false;

    char* guildStr = ExtractQuotedArg(&args);
    if (!guildStr)
        return false;

    std::string gld = guildStr;

    Guild* targetGuild = sGuildMgr.GetGuildByName(gld);

    if (!targetGuild)
    {
        SendSysMessage(LANG_GUILD_NOT_FOUND);
        SetSentErrorMessage(true);
        return false;
    }

    targetGuild->Disband();
    delete targetGuild;

    return true;
}

/**
 * Renames a guild if a guild could be found with the specified name.
 * Usage: .guild rename "name" "new name"
 * It is not possible to rename a guild to a name that is already in use.
 */
bool ChatHandler::HandleGuildRenameCommand(char* args)
{
    if (!args || !*args)
        return false;

    char* currentName = ExtractQuotedArg(&args);
    if (!currentName)
        return false;

    std::string current(currentName);

    char* newName = ExtractQuotedArg(&args);
    if (!newName)
        return false;

    std::string newn(newName);

    Guild* target = sGuildMgr.GetGuildByName(currentName);
    if (!target)
    {
        SendSysMessage(LANG_GUILD_NOT_FOUND);
        SetSentErrorMessage(true);
        return false;
    }

    if (Guild* existing = sGuildMgr.GetGuildByName(newn))
    {
        PSendSysMessage("A guild with the name '%s' already exists", newName);
        SetSentErrorMessage(true);
        return false;
    }

    target->Rename(newn);
    PSendSysMessage("Guild '%s' successfully renamed to '%s'. Players must relog to see the changes", currentName, newName);
    return true;
}


bool ChatHandler::HandleGetDistanceCommand(char* args)
{
    WorldObject* obj = nullptr;

    if (*args)
    {
        if (ObjectGuid guid = ExtractGuidFromLink(&args))
            obj = (WorldObject*)m_session->GetPlayer()->GetObjectByTypeMask(guid, TYPEMASK_CREATURE_OR_GAMEOBJECT);

        if (!obj)
        {
            SendSysMessage(LANG_PLAYER_NOT_FOUND);
            SetSentErrorMessage(true);
            return false;
        }
    }
    else
    {
        obj = GetSelectedUnit();

        if (!obj)
        {
            SendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
            SetSentErrorMessage(true);
            return false;
        }
    }

    Player* player = m_session->GetPlayer();
    // Calculate point-to-point distance
    float dx, dy, dz;
    dx = player->GetPositionX() - obj->GetPositionX();
    dy = player->GetPositionY() - obj->GetPositionY();
    dz = player->GetPositionZ() - obj->GetPositionZ();

    PSendSysMessage(LANG_DISTANCE, player->GetDistance(obj), player->GetDistance2d(obj), sqrt(dx * dx + dy * dy + dz * dz));

    return true;
}

bool ChatHandler::HandleDieCommand(char* /*args*/)
{
    Unit* target = GetSelectedUnit();

    if (!target || !m_session->GetPlayer()->GetSelectionGuid())
    {
        SendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    if (target->GetTypeId() == TYPEID_PLAYER)
    {
        if (HasLowerSecurity((Player*)target, ObjectGuid(), false))
            return false;
    }

    if (target->isAlive())
    {
        if (sWorld.getConfig(CONFIG_BOOL_DIE_COMMAND_CREDIT))
            m_session->GetPlayer()->DealDamage(target, target->GetHealth(), NULL, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, NULL, false);
        else
        {
            Creature* targetCreature = target->ToCreature();
            if (targetCreature)
                targetCreature->SetLootRecipient(NULL);
            target->DealDamage(target, target->GetHealth(), NULL, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, NULL, false);
        }
    }

    return true;
}

bool ChatHandler::HandleFearCommand(char* /*args*/)
{
    Unit* target = GetSelectedUnit();

    if (!target || !m_session->GetPlayer()->GetSelectionGuid())
    {
        SendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    const uint32 fearID = 26641;

    SpellEntry const *spellInfo = sSpellMgr.GetSpellEntry(fearID);
    if (!spellInfo)
        return false;

    if (!IsSpellAppliesAura(spellInfo, (1 << EFFECT_INDEX_0) | (1 << EFFECT_INDEX_1) | (1 << EFFECT_INDEX_2)) &&
        !IsSpellHaveEffect(spellInfo, SPELL_EFFECT_PERSISTENT_AREA_AURA))
    {
        PSendSysMessage(LANG_SPELL_NO_HAVE_AURAS, fearID);
        SetSentErrorMessage(true);
        return false;
    }

    SpellAuraHolder *holder = CreateSpellAuraHolder(spellInfo, target, m_session->GetPlayer());

    for (uint32 i = 0; i < MAX_EFFECT_INDEX; ++i)
    {
        uint8 eff = spellInfo->Effect[i];
        if (eff >= TOTAL_SPELL_EFFECTS)
            continue;
        if (IsAreaAuraEffect(eff) ||
            eff == SPELL_EFFECT_APPLY_AURA ||
            eff == SPELL_EFFECT_PERSISTENT_AREA_AURA)
        {
            Aura *aur = CreateAura(spellInfo, SpellEffectIndex(i), NULL, holder, target);
            holder->AddAura(aur, SpellEffectIndex(i));
        }
    }

    if (!target->AddSpellAuraHolder(holder))
        holder = nullptr;

    return true;
}

bool ChatHandler::HandleDamageCommand(char* args)
{
    if (!*args)
        return false;

    Unit* target = GetSelectedUnit();

    if (!target || !m_session->GetPlayer()->GetSelectionGuid())
    {
        SendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    if (!target->isAlive())
        return true;

    int32 damage_int;
    if (!ExtractInt32(&args, damage_int))
        return false;

    if (damage_int <= 0)
        return true;

    uint32 damage = uint32(damage_int);

    // flat melee damage without resistence/etc reduction
    if (!*args)
    {
        m_session->GetPlayer()->DealDamage(target, damage, NULL, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, NULL, false);
        if (target != m_session->GetPlayer())
            m_session->GetPlayer()->SendAttackStateUpdate(HITINFO_NORMALSWING2, target, 1, SPELL_SCHOOL_MASK_NORMAL, damage, 0, 0, VICTIMSTATE_NORMAL, 0);
        return true;
    }

    uint32 school;
    if (!ExtractUInt32(&args, school))
        return false;

    if (school >= MAX_SPELL_SCHOOL)
        return false;

    SpellSchoolMask schoolmask = GetSchoolMask(school);

    if (schoolmask & SPELL_SCHOOL_MASK_NORMAL)
        damage = m_session->GetPlayer()->CalcArmorReducedDamage(target, damage);

    // melee damage by specific school
    if (!*args)
    {
        uint32 absorb = 0;
        int32 resist = 0;

        target->CalculateDamageAbsorbAndResist(m_session->GetPlayer(), schoolmask, SPELL_DIRECT_DAMAGE, damage, &absorb, &resist, NULL);

        const uint32 bonus = (resist < 0 ? uint32(std::abs(resist)) : 0);
        damage += bonus;
        const uint32 malus = (resist > 0 ? (absorb + uint32(resist)) : absorb);

        if (damage <= malus)
            return true;

        damage -= malus;

        m_session->GetPlayer()->DealDamageMods(target, damage, &absorb);
        m_session->GetPlayer()->DealDamage(target, damage, NULL, DIRECT_DAMAGE, schoolmask, NULL, false);
        m_session->GetPlayer()->SendAttackStateUpdate(HITINFO_NORMALSWING2, target, 1, schoolmask, damage, absorb, resist, VICTIMSTATE_NORMAL, 0);
        return true;
    }

    // non-melee damage

    // number or [name] Shift-click form |color|Hspell:spell_id|h[name]|h|r or Htalent form
    uint32 spellid = ExtractSpellIdFromLink(&args);
    if (!spellid || !sSpellMgr.GetSpellEntry(spellid))
        return false;

    m_session->GetPlayer()->SpellNonMeleeDamageLog(target, spellid, damage);
    return true;
}

bool ChatHandler::HandleReviveCommand(char* args)
{
    Player* target;
    ObjectGuid target_guid;
    if (!ExtractPlayerTarget(&args, &target, &target_guid))
        return false;

    if (target)
    {
        target->ResurrectPlayer(0.5f);
        target->SpawnCorpseBones();
        PSendSysMessage(LANG_CHARACTER_REVIVED_ONLINE, playerLink(target->GetName()).c_str());
    }
    else
    {
        // will resurrected at login without corpse
        sObjectAccessor.ConvertCorpseForPlayer(target_guid);
        std::string playername;
        sObjectMgr.GetPlayerNameByGUID(target_guid, playername);
        PSendSysMessage(LANG_CHARACTER_REVIVED_OFFLINE, playerLink(playername).c_str());
    }

    return true;
}

bool ChatHandler::HandleAuraCommand(char* args)
{
    Unit *target = GetSelectedUnit();
    if (!target)
    {
        SendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    // number or [name] Shift-click form |color|Hspell:spell_id|h[name]|h|r or Htalent form
    uint32 spellID = ExtractSpellIdFromLink(&args);

    SpellEntry const *spellInfo = sSpellMgr.GetSpellEntry(spellID);
    if (!spellInfo)
        return false;

    if (!IsSpellAppliesAura(spellInfo, (1 << EFFECT_INDEX_0) | (1 << EFFECT_INDEX_1) | (1 << EFFECT_INDEX_2)) &&
            !IsSpellHaveEffect(spellInfo, SPELL_EFFECT_PERSISTENT_AREA_AURA))
    {
        PSendSysMessage(LANG_SPELL_NO_HAVE_AURAS, spellID);
        SetSentErrorMessage(true);
        return false;
    }

    SpellAuraHolder *holder = CreateSpellAuraHolder(spellInfo, target, m_session->GetPlayer());

    // Aura duration in seconds
    int32 duration = 0;
    ExtractInt32(&args, duration);
    if (duration > 0)
        holder->SetAuraDuration(duration * IN_MILLISECONDS);

    for (uint32 i = 0; i < MAX_EFFECT_INDEX; ++i)
    {
        uint8 eff = spellInfo->Effect[i];
        if (eff >= TOTAL_SPELL_EFFECTS)
            continue;
        if (IsAreaAuraEffect(eff)           ||
                eff == SPELL_EFFECT_APPLY_AURA  ||
                eff == SPELL_EFFECT_PERSISTENT_AREA_AURA)
        {
            Aura *aur = CreateAura(spellInfo, SpellEffectIndex(i), NULL, holder, target);
            holder->AddAura(aur, SpellEffectIndex(i));
        }
    }
    if (!target->AddSpellAuraHolder(holder))
        holder = nullptr;

    return true;
}

bool ChatHandler::HandleUnAuraCommand(char* args)
{
    Unit *target = GetSelectedUnit();
    if (!target)
    {
        SendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    std::string argstr = args;
    if (argstr == "all")
    {
        target->RemoveAllAuras();
        return true;
    }

    // number or [name] Shift-click form |color|Hspell:spell_id|h[name]|h|r or Htalent form
    uint32 spellID = ExtractSpellIdFromLink(&args);
    if (!spellID)
        return false;

    target->RemoveAurasDueToSpell(spellID);

    return true;
}

bool ChatHandler::HandleLinkGraveCommand(char* args)
{
    uint32 g_id;
    if (!ExtractUInt32(&args, g_id))
        return false;

    char* teamStr = ExtractLiteralArg(&args);

    Team g_team;
    if (!teamStr)
        g_team = TEAM_NONE;
    else if (strncmp(teamStr, "horde", strlen(teamStr)) == 0)
        g_team = HORDE;
    else if (strncmp(teamStr, "alliance", strlen(teamStr)) == 0)
        g_team = ALLIANCE;
    else
        return false;

    WorldSafeLocsEntry const* graveyard =  sWorldSafeLocsStore.LookupEntry(g_id);

    if (!graveyard)
    {
        PSendSysMessage(LANG_COMMAND_GRAVEYARDNOEXIST, g_id);
        SetSentErrorMessage(true);
        return false;
    }

    Player* player = m_session->GetPlayer();

    uint32 zoneId = player->GetZoneId();

    const auto *areaEntry = AreaEntry::GetById(zoneId);
    if (!areaEntry || !areaEntry->IsZone())
    {
        PSendSysMessage(LANG_COMMAND_GRAVEYARDWRONGZONE, g_id, zoneId);
        SetSentErrorMessage(true);
        return false;
    }

    if (sObjectMgr.AddGraveYardLink(g_id, zoneId, g_team))
        PSendSysMessage(LANG_COMMAND_GRAVEYARDLINKED, g_id, zoneId);
    else
        PSendSysMessage(LANG_COMMAND_GRAVEYARDALRLINKED, g_id, zoneId);

    return true;
}

bool ChatHandler::HandleNearGraveCommand(char* args)
{
    Team g_team;

    size_t argslen = strlen(args);

    if (!*args)
        g_team = TEAM_NONE;
    else if (strncmp(args, "horde", argslen) == 0)
        g_team = HORDE;
    else if (strncmp(args, "alliance", argslen) == 0)
        g_team = ALLIANCE;
    else
        return false;

    Player* player = m_session->GetPlayer();
    uint32 zone_id = player->GetZoneId();

    WorldSafeLocsEntry const* graveyard = sObjectMgr.GetClosestGraveYard(
            player->GetPositionX(), player->GetPositionY(), player->GetPositionZ(), player->GetMapId(), g_team);

    if (graveyard)
    {
        uint32 g_id = graveyard->ID;

        GraveYardData const* data = sObjectMgr.FindGraveYardData(g_id, zone_id);
        if (!data)
        {
            PSendSysMessage(LANG_COMMAND_GRAVEYARDERROR, g_id);
            SetSentErrorMessage(true);
            return false;
        }

        g_team = data->team;

        std::string team_name = GetMangosString(LANG_COMMAND_GRAVEYARD_NOTEAM);

        if (g_team == 0)
            team_name = GetMangosString(LANG_COMMAND_GRAVEYARD_ANY);
        else if (g_team == HORDE)
            team_name = GetMangosString(LANG_COMMAND_GRAVEYARD_HORDE);
        else if (g_team == ALLIANCE)
            team_name = GetMangosString(LANG_COMMAND_GRAVEYARD_ALLIANCE);

        PSendSysMessage(LANG_COMMAND_GRAVEYARDNEAREST, g_id, team_name.c_str(), zone_id);
    }
    else
    {
        std::string team_name;

        if (g_team == 0)
            team_name = GetMangosString(LANG_COMMAND_GRAVEYARD_ANY);
        else if (g_team == HORDE)
            team_name = GetMangosString(LANG_COMMAND_GRAVEYARD_HORDE);
        else if (g_team == ALLIANCE)
            team_name = GetMangosString(LANG_COMMAND_GRAVEYARD_ALLIANCE);

        if (g_team == ~uint32(0))
            PSendSysMessage(LANG_COMMAND_ZONENOGRAVEYARDS, zone_id);
        else
            PSendSysMessage(LANG_COMMAND_ZONENOGRAFACTION, zone_id, team_name.c_str());
    }

    return true;
}

//-----------------------Npc Commands-----------------------

bool ChatHandler::HandleNpcAllowMovementCommand(char* /*args*/)
{
    if (sWorld.getAllowMovement())
    {
        sWorld.SetAllowMovement(false);
        SendSysMessage(LANG_CREATURE_MOVE_DISABLED);
    }
    else
    {
        sWorld.SetAllowMovement(true);
        SendSysMessage(LANG_CREATURE_MOVE_ENABLED);
    }
    return true;
}

bool ChatHandler::HandleNpcInfoCommand(char* /*args*/)
{
    Creature* target = GetSelectedCreature();

    if (!target)
    {
        SendSysMessage(LANG_SELECT_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    uint32 faction = target->getFaction();
    uint32 npcflags = target->GetUInt32Value(UNIT_NPC_FLAGS);
    uint32 displayid = target->GetDisplayId();
    uint32 nativeid = target->GetNativeDisplayId();
    uint32 Entry = target->GetEntry();
    CreatureInfo const* cInfo = target->GetCreatureInfo();

    time_t curRespawnDelay = target->GetRespawnTimeEx() - time(NULL);
    if (curRespawnDelay < 0)
        curRespawnDelay = 0;
    std::string curRespawnDelayStr = secsToTimeString(curRespawnDelay, true);
    std::string defRespawnDelayStr = secsToTimeString(target->GetRespawnDelay(), true);

    PSendSysMessage(LANG_NPCINFO_CHAR, target->GetGuidStr().c_str(), faction, npcflags, Entry, displayid, nativeid);
    PSendSysMessage(LANG_NPCINFO_LEVEL, target->getLevel());
    PSendSysMessage(LANG_NPCINFO_EQUIPMENT, target->GetCurrentEquipmentId());
    PSendSysMessage(LANG_NPCINFO_HEALTH, target->GetCreateHealth(), target->GetMaxHealth(), target->GetHealth());
    if (target->getPowerType() == POWER_MANA)
        PSendSysMessage(LANG_NPCINFO_MANA, target->GetCreateMana(), target->GetMaxPower(POWER_MANA), target->GetPower(POWER_MANA));
    PSendSysMessage(LANG_NPCINFO_INHABIT_TYPE, cInfo->inhabit_type);
    PSendSysMessage(LANG_NPCINFO_FLAGS, target->GetUInt32Value(UNIT_FIELD_FLAGS), target->GetUInt32Value(UNIT_DYNAMIC_FLAGS), target->getFaction());
    PSendSysMessage(LANG_COMMAND_RAWPAWNTIMES, defRespawnDelayStr.c_str(), curRespawnDelayStr.c_str());
    PSendSysMessage(LANG_NPCINFO_LOOT, cInfo->loot_id, cInfo->pickpocket_loot_id, cInfo->skinning_loot_id);
    PSendSysMessage(LANG_NPCINFO_ARMOR, target->GetArmor());
    PSendSysMessage(LANG_NPCINFO_DUNGEON_ID, target->GetInstanceId());
    PSendSysMessage(LANG_NPCINFO_POSITION, float(target->GetPositionX()), float(target->GetPositionY()), float(target->GetPositionZ()));
    PSendSysMessage(LANG_NPCINFO_AIINFO, target->GetAIName().c_str(), target->GetScriptName().c_str());
    PSendSysMessage(LANG_NPCINFO_ACTIVE_VISIBILITY, target->isActiveObject(), target->GetVisibilityModifier());

    if ((npcflags & UNIT_NPC_FLAG_VENDOR))
        SendSysMessage(LANG_NPCINFO_VENDOR);

    if ((npcflags & UNIT_NPC_FLAG_TRAINER))
        SendSysMessage(LANG_NPCINFO_TRAINER);

    ShowNpcOrGoSpawnInformation<Creature>(target->GetGUIDLow());
    return true;
}

//play npc emote
bool ChatHandler::HandleNpcPlayEmoteCommand(char* args)
{
    uint32 emote = atoi(args);

    Creature* target = GetSelectedCreature();
    if (!target)
    {
        SendSysMessage(LANG_SELECT_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    target->HandleEmote(emote);

    return true;
}

bool ChatHandler::HandleNpcAddWeaponCommand(char* args)
{
    Creature* pCreature = GetSelectedCreature();

    if (!pCreature)
    {
        SendSysMessage(LANG_SELECT_CREATURE);
        return true;
    }

    uint32 uiItemId = 0;

    if (!ExtractUInt32(&args, uiItemId))
        return false;

    uint32 uiSlotId = 0;

    if (!ExtractUInt32(&args, uiSlotId))
        return false;
    
    ItemPrototype const* pItemProto = ObjectMgr::GetItemPrototype(uiItemId);

    if (!pItemProto)
    {
        PSendSysMessage(LANG_ITEM_NOT_FOUND, uiItemId);
        return true;
    }

    if (uiSlotId > VIRTUAL_ITEM_SLOT_2)
    {
        PSendSysMessage(LANG_ITEM_SLOT_NOT_EXIST, uiSlotId);
        return true;
    }

    pCreature->SetVirtualItem(VirtualItemSlot(uiSlotId), uiItemId);
    PSendSysMessage(LANG_ITEM_ADDED_TO_SLOT, uiItemId, pItemProto->Name1, uiSlotId);

    return true;
}
//----------------------------------------------------------

bool ChatHandler::HandleExploreCheatCommand(char* args)
{
    if (!*args)
        return false;

    int flag = atoi(args);

    Player *chr = GetSelectedPlayer();
    if (chr == NULL)
    {
        SendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    if (flag != 0)
    {
        PSendSysMessage(LANG_YOU_SET_EXPLORE_ALL, GetNameLink(chr).c_str());
        if (needReportToTarget(chr))
            ChatHandler(chr).PSendSysMessage(LANG_YOURS_EXPLORE_SET_ALL, GetNameLink().c_str());
    }
    else
    {
        PSendSysMessage(LANG_YOU_SET_EXPLORE_NOTHING, GetNameLink(chr).c_str());
        if (needReportToTarget(chr))
            ChatHandler(chr).PSendSysMessage(LANG_YOURS_EXPLORE_SET_NOTHING, GetNameLink().c_str());
    }

    for (uint8 i = 0; i < PLAYER_EXPLORED_ZONES_SIZE; ++i)
    {
        if (flag != 0)
            m_session->GetPlayer()->SetFlag(PLAYER_EXPLORED_ZONES_1 + i, 0xFFFFFFFF);
        else
            m_session->GetPlayer()->SetFlag(PLAYER_EXPLORED_ZONES_1 + i, 0);
    }

    return true;
}

bool ChatHandler::HandleHoverCommand(char* args)
{
    uint32 flag;
    if (!ExtractOptUInt32(&args, flag, 1))
        return false;

    m_session->GetPlayer()->SetHover(flag);

    if (flag)
        SendSysMessage(LANG_HOVER_ENABLED);
    else
        SendSysMessage(LANG_HOVER_DISABLED);

    return true;
}

void ChatHandler::HandleCharacterLevel(Player* player, ObjectGuid player_guid, uint32 oldlevel, uint32 newlevel)
{
    if (player)
    {
        player->GiveLevel(newlevel);
        player->InitTalentForLevel();
        player->SetUInt32Value(PLAYER_XP, 0);

        if (needReportToTarget(player))
        {
            if (oldlevel == newlevel)
                ChatHandler(player).PSendSysMessage(LANG_YOURS_LEVEL_PROGRESS_RESET, GetNameLink().c_str());
            else if (oldlevel < newlevel)
                ChatHandler(player).PSendSysMessage(LANG_YOURS_LEVEL_UP, GetNameLink().c_str(), newlevel);
            else                                                // if(oldlevel > newlevel)
                ChatHandler(player).PSendSysMessage(LANG_YOURS_LEVEL_DOWN, GetNameLink().c_str(), newlevel);
        }
    }
    else
    {
        // update level and XP at level, all other will be updated at loading
        CharacterDatabase.PExecute("UPDATE characters SET level = '%u', xp = 0 WHERE guid = '%u'", newlevel, player_guid.GetCounter());
    }
}

bool ChatHandler::HandleLevelUpCommand(char* args)
{
    int32 addlevel = 1;
    char* nameStr = NULL;

    if (*args)
    {
        nameStr = ExtractOptNotLastArg(&args);

        // exception opt second arg: .levelup $name
        if (!ExtractInt32(&args, addlevel))
        {
            if (!nameStr)
                nameStr = ExtractArg(&args);
            else
                return false;
        }
    }

    if (Creature* pCreature = GetSelectedCreature())
    {
        int32 newlevel = pCreature->getLevel() + addlevel;

        if (newlevel < 1)
            newlevel = 1;

        if (newlevel > STRONG_MAX_LEVEL)
            newlevel = STRONG_MAX_LEVEL;

        if (pCreature->IsPet())
            ((Pet*)pCreature)->GivePetLevel(newlevel);
        else
            pCreature->SetLevel(newlevel);

        PSendSysMessage(LANG_YOU_CHANGE_LVL, pCreature->GetName(), newlevel);
    }
    else
    {
        Player* target;
        ObjectGuid target_guid;
        std::string target_name;
        if (!ExtractPlayerTarget(&nameStr, &target, &target_guid, &target_name))
            return false;

        int32 oldlevel = target ? target->getLevel() : Player::GetLevelFromDB(target_guid);
        int32 newlevel = oldlevel + addlevel;

        if (newlevel < 1)
            newlevel = 1;

        if (newlevel > STRONG_MAX_LEVEL)                        // hardcoded maximum level
            newlevel = STRONG_MAX_LEVEL;

        HandleCharacterLevel(target, target_guid, oldlevel, newlevel);

        if (!m_session || m_session->GetPlayer() != target)     // including chr==NULL
        {
            std::string nameLink = playerLink(target_name);
            PSendSysMessage(LANG_YOU_CHANGE_LVL, nameLink.c_str(), newlevel);
        }
    }

    return true;
}

bool ChatHandler::HandleShowAreaCommand(char* args)
{
    if (!*args)
        return false;

    Player *chr = GetSelectedPlayer();
    if (chr == NULL)
    {
        SendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    int area = AreaEntry::GetFlagById(atoi(args));
    int offset = area / 32;
    uint32 val = (uint32)(1 << (area % 32));

    if (area < 0 || offset >= PLAYER_EXPLORED_ZONES_SIZE)
    {
        SendSysMessage(LANG_BAD_VALUE);
        SetSentErrorMessage(true);
        return false;
    }

    uint32 currFields = chr->GetUInt32Value(PLAYER_EXPLORED_ZONES_1 + offset);
    chr->SetUInt32Value(PLAYER_EXPLORED_ZONES_1 + offset, (uint32)(currFields | val));

    SendSysMessage(LANG_EXPLORE_AREA);
    return true;
}

bool ChatHandler::HandleHideAreaCommand(char* args)
{
    if (!*args)
        return false;

    Player *chr = GetSelectedPlayer();
    if (chr == NULL)
    {
        SendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    int area = AreaEntry::GetFlagById(atoi(args));
    int offset = area / 32;
    uint32 val = (uint32)(1 << (area % 32));

    if (area < 0 || offset >= PLAYER_EXPLORED_ZONES_SIZE)
    {
        SendSysMessage(LANG_BAD_VALUE);
        SetSentErrorMessage(true);
        return false;
    }

    uint32 currFields = chr->GetUInt32Value(PLAYER_EXPLORED_ZONES_1 + offset);
    chr->SetUInt32Value(PLAYER_EXPLORED_ZONES_1 + offset, (uint32)(currFields ^ val));

    SendSysMessage(LANG_UNEXPLORE_AREA);
    return true;
}

bool ChatHandler::HandleBankCommand(char* /*args*/)
{
    m_session->SendShowBank(m_session->GetPlayer()->GetObjectGuid());

    return true;
}

bool ChatHandler::HandleChangeWeatherCommand(char* args)
{
    // Weather is OFF
    if (!sWorld.getConfig(CONFIG_BOOL_WEATHER))
    {
        SendSysMessage(LANG_WEATHER_DISABLED);
        SetSentErrorMessage(true);
        return false;
    }

    uint32 type;
    if (!ExtractUInt32(&args, type))
        return false;

    // see enum WeatherType
    if (!Weather::IsValidWeatherType(type))
        return false;

    float grade;
    if (!ExtractFloat(&args, grade))
        return false;

    // clamp grade from 0 to 1
    if (grade < 0.0f)
        grade = 0.0f;
    else if (grade > 1.0f)
        grade = 1.0f;

    Player* player = m_session->GetPlayer();
    uint32 zoneId = player->GetZoneId();
    player->GetMap()->SetWeather(zoneId, (WeatherType)type, grade, false);
    return true;
}

bool ChatHandler::HandleTeleAddCommand(char* args)
{
    if (!*args)
        return false;

    Player *player = m_session->GetPlayer();
    if (!player)
        return false;

    std::string name = args;

    if (sObjectMgr.GetGameTele(name))
    {
        SendSysMessage(LANG_COMMAND_TP_ALREADYEXIST);
        SetSentErrorMessage(true);
        return false;
    }

    GameTele tele;
    tele.position_x  = player->GetPositionX();
    tele.position_y  = player->GetPositionY();
    tele.position_z  = player->GetPositionZ();
    tele.orientation = player->GetOrientation();
    tele.mapId       = player->GetMapId();
    tele.name        = name;

    if (sObjectMgr.AddGameTele(tele))
        SendSysMessage(LANG_COMMAND_TP_ADDED);
    else
    {
        SendSysMessage(LANG_COMMAND_TP_ADDEDERR);
        SetSentErrorMessage(true);
        return false;
    }

    return true;
}

bool ChatHandler::HandleTeleDelCommand(char* args)
{
    if (!*args)
        return false;

    std::string name = args;

    if (!sObjectMgr.DeleteGameTele(name))
    {
        SendSysMessage(LANG_COMMAND_TELE_NOTFOUND);
        SetSentErrorMessage(true);
        return false;
    }

    SendSysMessage(LANG_COMMAND_TP_DELETED);
    return true;
}

bool ChatHandler::HandleResetHonorCommand(char* args)
{
    Player* target;
    if (!ExtractPlayerTarget(&args, &target))
        return false;

    target->GetHonorMgr().Reset();
    return true;
}

static bool HandleResetStatsOrLevelHelper(Player* player)
{
    ChrClassesEntry const* cEntry = sChrClassesStore.LookupEntry(player->getClass());
    if (!cEntry)
    {
        sLog.outError("Class %u not found in DBC (Wrong DBC files?)", player->getClass());
        return false;
    }

    uint8 powertype = cEntry->powerType;

    // reset m_form if no aura
    if (!player->HasAuraType(SPELL_AURA_MOD_SHAPESHIFT))
        player->SetShapeshiftForm(FORM_NONE);

    player->SetFloatValue(UNIT_FIELD_BOUNDINGRADIUS, DEFAULT_WORLD_OBJECT_SIZE);
    player->SetFloatValue(UNIT_FIELD_COMBATREACH, 1.5f);

    player->SetFactionForRace(player->getRace());

    player->SetByteValue(UNIT_FIELD_BYTES_0, 3, powertype);

    // reset only if player not in some form;
    if (player->GetShapeshiftForm() == FORM_NONE)
        player->InitPlayerDisplayIds();

    // is it need, only in pre-2.x used and field byte removed later?
    if (powertype == POWER_RAGE || powertype == POWER_MANA)
        player->SetByteValue(UNIT_FIELD_BYTES_1, 1, 0xEE);

    player->SetByteValue(UNIT_FIELD_BYTES_2, 1, UNIT_BYTE2_FLAG_UNK3 | UNIT_BYTE2_FLAG_UNK5);

    player->SetUInt32Value(UNIT_FIELD_FLAGS, UNIT_FLAG_PLAYER_CONTROLLED);

    //-1 is default value
    player->SetInt32Value(PLAYER_FIELD_WATCHED_FACTION_INDEX, -1);

    //player->SetUInt32Value(PLAYER_FIELD_BYTES, 0xEEE00000 );
    return true;
}

bool ChatHandler::HandleResetLevelCommand(char* args)
{
    Player* target;
    if (!ExtractPlayerTarget(&args, &target))
        return false;

    if (!HandleResetStatsOrLevelHelper(target))
        return false;

    // set starting level
    uint32 start_level = sWorld.getConfig(CONFIG_UINT32_START_PLAYER_LEVEL);

    target->SetLevel(start_level);
    target->InitStatsForLevel(true);
    target->InitTaxiNodes();
    target->InitTalentForLevel();
    target->SetUInt32Value(PLAYER_XP, 0);

    // reset level for pet
    if (Pet* pet = target->GetPet())
        pet->SynchronizeLevelWithOwner();

    return true;
}

bool ChatHandler::HandleResetStatsCommand(char* args)
{
    Player* target;
    if (!ExtractPlayerTarget(&args, &target))
        return false;

    if (!HandleResetStatsOrLevelHelper(target))
        return false;

    target->InitStatsForLevel(true);
    target->InitTalentForLevel();

    return true;
}

bool ChatHandler::HandleResetSpellsCommand(char* args)
{
    Player* target;
    ObjectGuid target_guid;
    std::string target_name;
    if (!ExtractPlayerTarget(&args, &target, &target_guid, &target_name))
        return false;

    if (target)
    {
        target->ResetSpells();

        ChatHandler(target).SendSysMessage(LANG_RESET_SPELLS);
        if (!m_session || m_session->GetPlayer() != target)
            PSendSysMessage(LANG_RESET_SPELLS_ONLINE, GetNameLink(target).c_str());
    }
    else
    {
        CharacterDatabase.PExecute("UPDATE characters SET at_login = at_login | '%u' WHERE guid = '%u'", uint32(AT_LOGIN_RESET_SPELLS), target_guid.GetCounter());
        PSendSysMessage(LANG_RESET_SPELLS_OFFLINE, target_name.c_str());
    }

    return true;
}

bool ChatHandler::HandleResetTalentsCommand(char* args)
{
    Player* target;
    ObjectGuid target_guid;
    std::string target_name;
    if (!ExtractPlayerTarget(&args, &target, &target_guid, &target_name))
        return false;

    if (target)
    {
        target->ResetTalents(true);

        ChatHandler(target).SendSysMessage(LANG_RESET_TALENTS);
        if (!m_session || m_session->GetPlayer() != target)
            PSendSysMessage(LANG_RESET_TALENTS_ONLINE, GetNameLink(target).c_str());
    }
    else if (target_guid)
    {
        uint32 at_flags = AT_LOGIN_RESET_TALENTS;
        CharacterDatabase.PExecute("UPDATE characters SET at_login = at_login | '%u' WHERE guid = '%u'", at_flags, target_guid.GetCounter());
        std::string nameLink = playerLink(target_name);
        PSendSysMessage(LANG_RESET_TALENTS_OFFLINE, nameLink.c_str());
    }

    return true;
}

bool ChatHandler::HandleResetAllCommand(char* args)
{
    if (!*args)
        return false;

    std::string casename = args;

    AtLoginFlags atLogin;

    // Command specially created as single command to prevent using short case names
    if (casename == "spells")
    {
        atLogin = AT_LOGIN_RESET_SPELLS;
        sWorld.SendWorldText(LANG_RESETALL_SPELLS);
        if (!m_session)
            SendSysMessage(LANG_RESETALL_SPELLS);
    }
    else if (casename == "talents")
    {
        atLogin = AT_LOGIN_RESET_TALENTS;
        sWorld.SendWorldText(LANG_RESETALL_TALENTS);
        if (!m_session)
            SendSysMessage(LANG_RESETALL_TALENTS);
    }
    else
    {
        PSendSysMessage(LANG_RESETALL_UNKNOWN_CASE, args);
        SetSentErrorMessage(true);
        return false;
    }

    CharacterDatabase.PExecute("UPDATE characters SET at_login = at_login | '%u' WHERE (at_login & '%u') = '0'", atLogin, atLogin);
    HashMapHolder<Player>::MapType const& plist = sObjectAccessor.GetPlayers();
    for (HashMapHolder<Player>::MapType::const_iterator itr = plist.begin(); itr != plist.end(); ++itr)
        itr->second->SetAtLoginFlag(atLogin);

    return true;
}

bool ChatHandler::HandleServerShutDownCancelCommand(char* /*args*/)
{
    sWorld.ShutdownCancel();
    return true;
}

bool ChatHandler::HandleServerShutDownCommand(char* args)
{
    uint32 delay;
    if (!ExtractUInt32(&args, delay))
        return false;

    uint32 exitcode;
    if (!ExtractOptUInt32(&args, exitcode, SHUTDOWN_EXIT_CODE))
        return false;

    // Exit code should be in range of 0-125, 126-255 is used
    // in many shells for their own return codes and code > 255
    // is not supported in many others
    if (exitcode > 125)
        return false;

    sWorld.ShutdownServ(delay, 0, exitcode);
    return true;
}

bool ChatHandler::HandleServerRestartCommand(char* args)
{
    uint32 delay;
    if (!ExtractUInt32(&args, delay))
        return false;

    uint32 exitcode;
    if (!ExtractOptUInt32(&args, exitcode, RESTART_EXIT_CODE))
        return false;

    // Exit code should be in range of 0-125, 126-255 is used
    // in many shells for their own return codes and code > 255
    // is not supported in many others
    if (exitcode > 125)
        return false;

    sWorld.ShutdownServ(delay, SHUTDOWN_MASK_RESTART, exitcode);
    return true;
}

bool ChatHandler::HandleServerIdleRestartCommand(char* args)
{
    uint32 delay;
    if (!ExtractUInt32(&args, delay))
        return false;

    uint32 exitcode;
    if (!ExtractOptUInt32(&args, exitcode, RESTART_EXIT_CODE))
        return false;

    // Exit code should be in range of 0-125, 126-255 is used
    // in many shells for their own return codes and code > 255
    // is not supported in many others
    if (exitcode > 125)
        return false;

    sWorld.ShutdownServ(delay, SHUTDOWN_MASK_RESTART | SHUTDOWN_MASK_IDLE, exitcode);
    return true;
}

bool ChatHandler::HandleServerIdleShutDownCommand(char* args)
{
    uint32 delay;
    if (!ExtractUInt32(&args, delay))
        return false;

    uint32 exitcode;
    if (!ExtractOptUInt32(&args, exitcode, SHUTDOWN_EXIT_CODE))
        return false;

    // Exit code should be in range of 0-125, 126-255 is used
    // in many shells for their own return codes and code > 255
    // is not supported in many others
    if (exitcode > 125)
        return false;

    sWorld.ShutdownServ(delay, SHUTDOWN_MASK_IDLE, exitcode);
    return true;
}

bool ChatHandler::HandleQuestAddCommand(char* args)
{
    // .addquest #entry'
    // number or [name] Shift-click form |color|Hquest:quest_id:quest_level|h[name]|h|r
    uint32 entry;
    if (!ExtractUint32KeyFromLink(&args, "Hquest", entry))
        return false;

    Player* player;
    if (!ExtractPlayerTarget(&args, &player, NULL, NULL))
        return false;

    Quest const* pQuest = sObjectMgr.GetQuestTemplate(entry);
    if (!pQuest)
    {
        PSendSysMessage(LANG_COMMAND_QUEST_NOTFOUND, entry);
        SetSentErrorMessage(true);
        return false;
    }

    // check item starting quest (it can work incorrectly if added without item in inventory)
    for (uint32 id = 0; id < sItemStorage.GetMaxEntry(); ++id)
    {
        ItemPrototype const *pProto = sItemStorage.LookupEntry<ItemPrototype>(id);
        if (!pProto)
            continue;

        if (pProto->StartQuest == entry)
        {
            PSendSysMessage(LANG_COMMAND_QUEST_STARTFROMITEM, entry, pProto->ItemId);
            SetSentErrorMessage(true);
            return false;
        }
    }

    // ok, normal (creature/GO starting) quest
    if (player->CanAddQuest(pQuest, true))
    {
        player->AddQuest(pQuest, NULL);

        if (player->CanCompleteQuest(entry))
            player->CompleteQuest(entry);
    }

    PSendSysMessage("Quest %u added for %s.", entry, player->GetName());
    return true;
}

bool ChatHandler::HandleQuestRemoveCommand(char* args)
{
    // .removequest #entry'
    // number or [name] Shift-click form |color|Hquest:quest_id:quest_level|h[name]|h|r
    uint32 entry;
    if (!ExtractUint32KeyFromLink(&args, "Hquest", entry))
        return false;

    Player* player;
    if (!ExtractPlayerTarget(&args, &player, NULL, NULL))
        return false;

    Quest const* pQuest = sObjectMgr.GetQuestTemplate(entry);

    if (!pQuest)
    {
        PSendSysMessage(LANG_COMMAND_QUEST_NOTFOUND, entry);
        SetSentErrorMessage(true);
        return false;
    }

    player->RemoveQuest(entry);

    // set quest status to not started (will updated in DB at next save)
    player->SetQuestStatus(entry, QUEST_STATUS_NONE);

    // reset rewarded for restart repeatable quest
    player->getQuestStatusMap()[entry].m_rewarded = false;

    SendSysMessage(LANG_COMMAND_QUEST_REMOVED);
    return true;
}

// WTB std::optional
QuestStatusData HandleQuestStatusCommandHelper(uint32 quest_id, const Player* player,
    const ObjectGuid* guid)
{
    QuestStatusData data;
    data.m_status = QuestStatus::QUEST_STATUS_NONE;

    if (player)
    {
        auto tmpQuestData = player->GetQuestStatusData(quest_id);

        if (tmpQuestData)
        {
            data = *tmpQuestData;
        }
    }
    else
    {
        std::unique_ptr<QueryResult> result(CharacterDatabase.PQuery(
            "SELECT status, rewarded, reward_choice FROM character_queststatus WHERE guid = %u AND quest = %u",
            guid->GetCounter(), quest_id
        ));

        if (!result || result->GetRowCount() == 0)
        {
            return data;
        }

        auto fields = result->Fetch();
        data.m_status = QuestStatus(fields[0].GetUInt32());
        data.m_rewarded = fields[1].GetBool();
        data.m_reward_choice = fields[2].GetUInt32();
    }

    return data;
}

bool ChatHandler::HandleQuestStatusCommand(char* args)
{
    // .quest complete #entry
    // number or [name] Shift-click form |color|Hquest:quest_id:quest_level|h[name]|h|r
    uint32 entry;
    if (!ExtractUint32KeyFromLink(&args, "Hquest", entry))
        return false;

    Player* player;
    std::string name;
    ObjectGuid guid;

    if (!ExtractPlayerTarget(&args, &player, &guid, &name))
        return false;

    Quest const* quest = sObjectMgr.GetQuestTemplate(entry);

    if (!quest)
    {
        PSendSysMessage(LANG_COMMAND_QUEST_NOTFOUND, entry);
        SetSentErrorMessage(true);
        return false;
    }

    QuestStatusData questData = HandleQuestStatusCommandHelper(entry, player, &guid);

    std::stringstream rewardInfo;

    if (questData.m_rewarded && questData.m_reward_choice)
    {
        rewardInfo << "item: " << questData.m_reward_choice << " ";

        const auto itemProto = sItemStorage.LookupEntry<ItemPrototype>(questData.m_reward_choice);

        if (itemProto)
        {
            rewardInfo << "[" << itemProto->Name1 << "]";
        }
        else
        {
            rewardInfo << "[invalid item entry?]";
        }
    }
    else
    {
        rewardInfo << "no reward data recorded";
    }

    PSendSysMessage("Quest ID: %u - [%s] - Rewarded: %s (%s)", entry, QuestStatusToString(questData.m_status),
        questData.m_rewarded? "Yes" : "No", rewardInfo.str().c_str());

    Quest const* prevQuest = quest;

    uint8 pos = 1;
    while (prevQuest->GetPrevQuestId())
    {
        if (Quest const* quest = sObjectMgr.GetQuestTemplate(prevQuest->GetPrevQuestId()))
        {
            questData = HandleQuestStatusCommandHelper(quest->GetQuestId(), player, &guid);

            if (quest->GetNextQuestInChain() == prevQuest->GetQuestId())
            {
                uint32 id = quest->GetQuestId();
                PSendSysMessage("%u. [PreventInChain] Quest ID: %u - [%s]", pos, id, QuestStatusToString(questData.m_status));
                prevQuest = quest;
            }
            else
            {
                uint32 id = quest->GetQuestId();
                PSendSysMessage("%u. [Prevent] Quest ID: %u - [%s]", pos, id, QuestStatusToString(questData.m_status));
                prevQuest = quest;
            }
        } else break;
        ++pos;
    }
    return true;
}

bool ChatHandler::HandleQuestCompleteCommand(char* args)
{
    // .quest complete #entry
    // number or [name] Shift-click form |color|Hquest:quest_id:quest_level|h[name]|h|r
    uint32 entry;
    if (!ExtractUint32KeyFromLink(&args, "Hquest", entry))
        return false;

    Player* player;
    if (!ExtractPlayerTarget(&args, &player, NULL, NULL))
        return false;

    Quest const* pQuest = sObjectMgr.GetQuestTemplate(entry);

    // If player doesn't have the quest
    if (!pQuest || player->GetQuestStatus(entry) == QUEST_STATUS_NONE)
    {
        PSendSysMessage(LANG_COMMAND_QUEST_NOTFOUND, entry);
        SetSentErrorMessage(true);
        return false;
    }
    player->FullQuestComplete(entry);

    PSendSysMessage("Quest %u completed for %s.", entry, player->GetName());
    return true;
}


bool ChatHandler::HandleBanAccountCommand(char* args)
{
    return HandleBanHelper(BAN_ACCOUNT, args);
}

bool ChatHandler::HandleBanCharacterCommand(char* args)
{
    return HandleBanHelper(BAN_CHARACTER, args);
}

bool ChatHandler::HandleBanIPCommand(char* args)
{
    return HandleBanHelper(BAN_IP, args);
}

bool ChatHandler::HandleBanAllIPCommand(char* args)
{
    char* ipStr = ExtractQuotedOrLiteralArg(&args);
    if (!ipStr)
        return false;

    char* reason = ExtractQuotedOrLiteralArg(&args);
    if (!reason)
        reason = "<no reason given>";

    uint32 maxLevel = 10;
    uint32 minId = GetAccessLevel() < SEC_ADMINISTRATOR ? 100 : 0; // Don't show GM accounts

    std::string ip = ipStr;
    LoginDatabase.escape_string(ip);
    QueryResult* result = LoginDatabase.PQuery("SELECT id, username FROM account WHERE id >= %u AND last_ip " _LIKE_ " " _CONCAT2_("'%s'", "'%%'"), minId, ip.c_str());
    if (!result)
    {
        PSendSysMessage("No account found on IP '%s'", ip.c_str());
        SetSentErrorMessage(true);
        return false;
    }
    std::set<uint32> accountsToBan;
    std::map<uint32, std::string> accountsIdToName;
    std::stringstream allAccounts;
    do
    {
        Field* fields = result->Fetch();
        if (allAccounts.str() != "")
            allAccounts << ",";
        allAccounts << fields[0].GetUInt32();
        accountsToBan.insert(fields[0].GetUInt32());
        accountsIdToName[fields[0].GetUInt32()] = fields[1].GetCppString();
    } while (result->NextRow());

    delete result;
    if (result = CharacterDatabase.PQuery("SELECT account FROM characters WHERE account IN (%s) AND level > %u GROUP BY account", allAccounts.str().c_str(), maxLevel))
    {
        do
        {
            Field* fields = result->Fetch();
            accountsToBan.erase(fields[0].GetUInt32());
        } while (result->NextRow());
        delete result;
    }

    uint32 bannedCount = 0;
    for (std::set<uint32>::const_iterator it = accountsToBan.begin(); it != accountsToBan.end(); ++it)
    {
        if (sAccountMgr.IsAccountBanned(*it))
            continue;
        sWorld.BanAccount(BAN_ACCOUNT, accountsIdToName[*it], 0, reason, m_session ? m_session->GetPlayerName() : "");
        PSendSysMessage("Account '%s' permanently banned.", accountsIdToName[*it].c_str(), reason);
        ++bannedCount;
    }
    PSendSysMessage("%u accounts banned for %s (%u on this IP)", bannedCount, reason, accountsIdToName.size());
    return true;
}

bool ChatHandler::HandleBanHelper(BanMode mode, char* args)
{
    if (!*args)
        return false;

    char* cnameOrIP = ExtractArg(&args);
    if (!cnameOrIP)
        return false;

    std::string nameOrIP = cnameOrIP;

    char* duration = ExtractArg(&args);                     // time string
    if (!duration)
        return false;

    uint32 duration_secs = TimeStringToSecs(duration);

    char* cReason = ExtractArg(&args);
    if (!cReason)
        return false;

    std::string reason(cReason);

    switch (mode)
    {
        case BAN_ACCOUNT:
            if (!AccountMgr::normalizeString(nameOrIP))
            {
                PSendSysMessage(LANG_ACCOUNT_NOT_EXIST, nameOrIP.c_str());
                SetSentErrorMessage(true);
                return false;
            }
            break;
        case BAN_CHARACTER:
            if (!normalizePlayerName(nameOrIP))
            {
                SendSysMessage(LANG_PLAYER_NOT_FOUND);
                SetSentErrorMessage(true);
                return false;
            }
            break;
        case BAN_IP:
            if (!IsIPAddress(nameOrIP.c_str()))
                return false;
            break;
    }

    sWorld.BanAccount(mode, nameOrIP, duration_secs, reason, m_session ? m_session->GetPlayerName() : "");

    return true;
}

void ChatHandler::SendBanResult(BanMode mode, BanReturn result, std::string& banTarget, uint32 duration_secs, std::string& reason)
{
    switch (result)
    {
        case BAN_SUCCESS:
            if (duration_secs > 0)
                PSendSysMessage(LANG_BAN_YOUBANNED, banTarget.c_str(), secsToTimeString(duration_secs, true).c_str(), reason.c_str());
            else
                PSendSysMessage(LANG_BAN_YOUPERMBANNED, banTarget.c_str(), reason.c_str());
            break;
        case BAN_SYNTAX_ERROR:
            return;
        case BAN_NOTFOUND:
            switch (mode)
            {
            default:
                PSendSysMessage(LANG_BAN_NOTFOUND, "account", banTarget.c_str());
                break;
            case BAN_CHARACTER:
                PSendSysMessage(LANG_BAN_NOTFOUND, "character", banTarget.c_str());
                break;
            case BAN_IP:
                PSendSysMessage(LANG_BAN_NOTFOUND, "ip", banTarget.c_str());
                break;
            }
            SetSentErrorMessage(true);
            return;
    }
}

bool ChatHandler::HandleUnBanAccountCommand(char* args)
{
    return HandleUnBanHelper(BAN_ACCOUNT, args);
}

bool ChatHandler::HandleUnBanCharacterCommand(char* args)
{
    return HandleUnBanHelper(BAN_CHARACTER, args);
}

bool ChatHandler::HandleUnBanIPCommand(char* args)
{
    return HandleUnBanHelper(BAN_IP, args);
}

bool ChatHandler::HandleUnBanHelper(BanMode mode, char* args)
{
    if (!*args)
        return false;

    char* cnameOrIP = ExtractArg(&args);
    if (!cnameOrIP)
        return false;

    std::string nameOrIP = cnameOrIP;

    char* message = ExtractQuotedOrLiteralArg(&args);
    if (!message)
        return false;

    std::string unbanMessage(message);

    switch (mode)
    {
        case BAN_ACCOUNT:
            if (!AccountMgr::normalizeString(nameOrIP))
            {
                PSendSysMessage(LANG_ACCOUNT_NOT_EXIST, nameOrIP.c_str());
                SetSentErrorMessage(true);
                return false;
            }
            break;
        case BAN_CHARACTER:
            if (!normalizePlayerName(nameOrIP))
            {
                SendSysMessage(LANG_PLAYER_NOT_FOUND);
                SetSentErrorMessage(true);
                return false;
            }
            break;
        case BAN_IP:
            if (!IsIPAddress(nameOrIP.c_str()))
                return false;
            break;
    }

    std::string source = m_session ? m_session->GetPlayerName() : "CONSOLE";

    if (sWorld.RemoveBanAccount(mode, source, unbanMessage, nameOrIP))
        PSendSysMessage(LANG_UNBAN_UNBANNED, nameOrIP.c_str(), unbanMessage.c_str());
    else
        PSendSysMessage(LANG_UNBAN_ERROR, nameOrIP.c_str());

    return true;
}

bool ChatHandler::HandleBanInfoAccountCommand(char* args)
{
    if (!*args)
        return false;

    std::string account_name;
    uint32 accountid = ExtractAccountId(&args, &account_name);
    if (!accountid)
        return false;

    return HandleBanInfoHelper(accountid, account_name.c_str());
}

bool ChatHandler::HandleBanInfoCharacterCommand(char* args)
{
    Player* target;
    ObjectGuid target_guid;
    if (!ExtractPlayerTarget(&args, &target, &target_guid,NULL,true))
        return false;

    uint32 accountid = target ? target->GetSession()->GetAccountId() : sObjectMgr.GetPlayerAccountIdByGUID(target_guid);

    std::string accountname;
    if (!sAccountMgr.GetName(accountid, accountname))
    {
        PSendSysMessage(LANG_BANINFO_NOCHARACTER);
        return true;
    }

    return HandleBanInfoHelper(accountid, accountname.c_str());
}

bool ChatHandler::HandleBanInfoHelper(uint32 accountid, char const* accountname)
{
    QueryResult *result = LoginDatabase.PQuery(
    "SELECT FROM_UNIXTIME(bandate), unbandate-bandate, active, unbandate,banreason,bannedby,COALESCE(name, \"NoRealm\") , gmlevel "
    "FROM account_banned LEFT JOIN realmlist ON realmlist.id = realm "
    "WHERE account_banned.id = '%u' ORDER BY bandate ASC", accountid);
    if (!result)
    {
        PSendSysMessage(LANG_BANINFO_NOACCOUNTBAN, accountname);
        return true;
    }

    PSendSysMessage(LANG_BANINFO_BANHISTORY, accountname);
    do
    {
        Field* fields = result->Fetch();

        time_t unbandate = time_t(fields[3].GetUInt64());
        bool active = false;
        if (fields[2].GetBool() && (fields[1].GetUInt64() == (uint64)0 || unbandate >= time(NULL)))
            active = true;
        bool permanent = (fields[1].GetUInt64() == (uint64)0);
        uint32 reqGmLevel = fields[6].GetUInt8();
        std::string banreason = fields[4].GetString();
        if (reqGmLevel > uint8(GetAccessLevel()))
            banreason = "<hidden>";

        std::string authorName = fields[5].GetCppString() + " (" + fields[6].GetCppString() + ")";
        std::string bantime = permanent ? GetMangosString(LANG_BANINFO_INFINITE) : secsToTimeString(fields[1].GetUInt64(), true);
        PSendSysMessage(LANG_BANINFO_HISTORYENTRY,
                        fields[0].GetString(), bantime.c_str(), active ? GetMangosString(LANG_BANINFO_YES) : GetMangosString(LANG_BANINFO_NO), banreason.c_str(), authorName.c_str());
    }
    while (result->NextRow());

    delete result;
    return true;
}

bool ChatHandler::HandleBanInfoIPCommand(char* args)
{
    if (!*args)
        return false;

    char* cIP = ExtractQuotedOrLiteralArg(&args);
    if (!cIP)
        return false;

    if (!IsIPAddress(cIP))
        return false;

    std::string IP = cIP;

    LoginDatabase.escape_string(IP);
    QueryResult *result = LoginDatabase.PQuery("SELECT ip, FROM_UNIXTIME(bandate), FROM_UNIXTIME(unbandate), unbandate-UNIX_TIMESTAMP(), banreason,bannedby,unbandate-bandate FROM ip_banned WHERE ip = '%s'", IP.c_str());
    if (!result)
    {
        PSendSysMessage(LANG_BANINFO_NOIP);
        return true;
    }

    Field *fields = result->Fetch();
    bool permanent = !fields[6].GetUInt64();
    PSendSysMessage(LANG_BANINFO_IPENTRY,
                    fields[0].GetString(), fields[1].GetString(), permanent ? GetMangosString(LANG_BANINFO_NEVER) : fields[2].GetString(),
                    permanent ? GetMangosString(LANG_BANINFO_INFINITE) : secsToTimeString(fields[3].GetUInt64(), true).c_str(), fields[4].GetString(), fields[5].GetString());
    delete result;
    return true;
}

bool ChatHandler::HandleBanListCharacterCommand(char* args)
{
    LoginDatabase.Execute("DELETE FROM ip_banned WHERE unbandate<=UNIX_TIMESTAMP() AND unbandate<>bandate");

    char* cFilter = ExtractLiteralArg(&args);
    if (!cFilter)
        return false;

    std::string filter = cFilter;
    CharacterDatabase.escape_string(filter);
    QueryResult* result = CharacterDatabase.PQuery("SELECT account FROM characters WHERE name " _LIKE_ " " _CONCAT2_("'%s'", "'%%'"), filter.c_str());
    if (!result)
    {
        PSendSysMessage(LANG_BANLIST_NOCHARACTER);
        return true;
    }

    return HandleBanListHelper(result);
}

bool ChatHandler::HandleBanListAccountCommand(char* args)
{
    LoginDatabase.Execute("DELETE FROM ip_banned WHERE unbandate<=UNIX_TIMESTAMP() AND unbandate<>bandate");

    char* cFilter = ExtractLiteralArg(&args);
    std::string filter = cFilter ? cFilter : "";
    LoginDatabase.escape_string(filter);

    QueryResult* result;

    if (filter.empty())
    {
        result = LoginDatabase.Query("SELECT account.id, username FROM account, account_banned"
                                     " WHERE account.id = account_banned.id AND active = 1 GROUP BY account.id");
    }
    else
    {
        result = LoginDatabase.PQuery("SELECT account.id, username FROM account, account_banned"
                                      " WHERE account.id = account_banned.id AND active = 1 AND username " _LIKE_ " " _CONCAT2_("'%s'", "'%%'") " GROUP BY account.id",
                                      filter.c_str());
    }

    if (!result)
    {
        PSendSysMessage(LANG_BANLIST_NOACCOUNT);
        return true;
    }

    return HandleBanListHelper(result);
}

bool ChatHandler::HandleBanListHelper(QueryResult* result)
{
    PSendSysMessage(LANG_BANLIST_MATCHINGACCOUNT);

    // Chat short output
    if (m_session)
    {
        do
        {
            Field* fields = result->Fetch();
            uint32 accountid = fields[0].GetUInt32();

            QueryResult* banresult = LoginDatabase.PQuery("SELECT account.username FROM account,account_banned WHERE account_banned.id='%u' AND account_banned.id=account.id", accountid);
            if (banresult)
            {
                Field* fields2 = banresult->Fetch();
                PSendSysMessage("%s", fields2[0].GetString());
                delete banresult;
            }
        }
        while (result->NextRow());
    }
    // Console wide output
    else
    {
        SendSysMessage(LANG_BANLIST_ACCOUNTS);
        SendSysMessage("===============================================================================");
        SendSysMessage(LANG_BANLIST_ACCOUNTS_HEADER);
        do
        {
            SendSysMessage("-------------------------------------------------------------------------------");
            Field *fields = result->Fetch();
            uint32 account_id = fields[0].GetUInt32();

            std::string account_name;

            // "account" case, name can be get in same query
            if (result->GetFieldCount() > 1)
                account_name = fields[1].GetCppString();
            // "character" case, name need extract from another DB
            else
                sAccountMgr.GetName(account_id, account_name);

            // No SQL injection. id is uint32.
            QueryResult *banInfo = LoginDatabase.PQuery("SELECT bandate,unbandate,bannedby,banreason FROM account_banned WHERE id = %u ORDER BY unbandate", account_id);
            if (banInfo)
            {
                Field *fields2 = banInfo->Fetch();
                do
                {
                    time_t t_ban = fields2[0].GetUInt64();
                    tm* aTm_ban = localtime(&t_ban);

                    if (fields2[0].GetUInt64() == fields2[1].GetUInt64())
                    {
                        PSendSysMessage("|%-15.15s|%02d-%02d-%02d %02d:%02d|   permanent  |%-15.15s|%-15.15s|",
                                        account_name.c_str(), aTm_ban->tm_year % 100, aTm_ban->tm_mon + 1, aTm_ban->tm_mday, aTm_ban->tm_hour, aTm_ban->tm_min,
                                        fields2[2].GetString(), fields2[3].GetString());
                    }
                    else
                    {
                        time_t t_unban = fields2[1].GetUInt64();
                        tm* aTm_unban = localtime(&t_unban);
                        PSendSysMessage("|%-15.15s|%02d-%02d-%02d %02d:%02d|%02d-%02d-%02d %02d:%02d|%-15.15s|%-15.15s|",
                                        account_name.c_str(), aTm_ban->tm_year % 100, aTm_ban->tm_mon + 1, aTm_ban->tm_mday, aTm_ban->tm_hour, aTm_ban->tm_min,
                                        aTm_unban->tm_year % 100, aTm_unban->tm_mon + 1, aTm_unban->tm_mday, aTm_unban->tm_hour, aTm_unban->tm_min,
                                        fields2[2].GetString(), fields2[3].GetString());
                    }
                }
                while (banInfo->NextRow());
                delete banInfo;
            }
        }
        while (result->NextRow());
        SendSysMessage("===============================================================================");
    }

    delete result;
    return true;
}

bool ChatHandler::HandleBanListIPCommand(char* args)
{
    LoginDatabase.Execute("DELETE FROM ip_banned WHERE unbandate<=UNIX_TIMESTAMP() AND unbandate<>bandate");

    char* cFilter = ExtractLiteralArg(&args);
    std::string filter = cFilter ? cFilter : "";
    LoginDatabase.escape_string(filter);

    QueryResult* result;

    if (filter.empty())
    {
        result = LoginDatabase.Query("SELECT ip,bandate,unbandate,bannedby,banreason FROM ip_banned"
                                     " WHERE (bandate=unbandate OR unbandate>UNIX_TIMESTAMP())"
                                     " ORDER BY unbandate");
    }
    else
    {
        result = LoginDatabase.PQuery("SELECT ip,bandate,unbandate,bannedby,banreason FROM ip_banned"
                                      " WHERE (bandate=unbandate OR unbandate>UNIX_TIMESTAMP()) AND ip " _LIKE_ " " _CONCAT2_("'%s'", "'%%'")
                                      " ORDER BY unbandate", filter.c_str());
    }

    if (!result)
    {
        PSendSysMessage(LANG_BANLIST_NOIP);
        return true;
    }

    PSendSysMessage(LANG_BANLIST_MATCHINGIP);
    // Chat short output
    if (m_session)
    {
        do
        {
            Field* fields = result->Fetch();
            PSendSysMessage("%s", fields[0].GetString());
        }
        while (result->NextRow());
    }
    // Console wide output
    else
    {
        SendSysMessage(LANG_BANLIST_IPS);
        SendSysMessage("===============================================================================");
        SendSysMessage(LANG_BANLIST_IPS_HEADER);
        do
        {
            SendSysMessage("-------------------------------------------------------------------------------");
            Field *fields = result->Fetch();
            time_t t_ban = fields[1].GetUInt64();
            tm* aTm_ban = localtime(&t_ban);
            if (fields[1].GetUInt64() == fields[2].GetUInt64())
            {
                PSendSysMessage("|%-15.15s|%02d-%02d-%02d %02d:%02d|   permanent  |%-15.15s|%-15.15s|",
                                fields[0].GetString(), aTm_ban->tm_year % 100, aTm_ban->tm_mon + 1, aTm_ban->tm_mday, aTm_ban->tm_hour, aTm_ban->tm_min,
                                fields[3].GetString(), fields[4].GetString());
            }
            else
            {
                time_t t_unban = fields[2].GetUInt64();
                tm* aTm_unban = localtime(&t_unban);
                PSendSysMessage("|%-15.15s|%02d-%02d-%02d %02d:%02d|%02d-%02d-%02d %02d:%02d|%-15.15s|%-15.15s|",
                                fields[0].GetString(), aTm_ban->tm_year % 100, aTm_ban->tm_mon + 1, aTm_ban->tm_mday, aTm_ban->tm_hour, aTm_ban->tm_min,
                                aTm_unban->tm_year % 100, aTm_unban->tm_mon + 1, aTm_unban->tm_mday, aTm_unban->tm_hour, aTm_unban->tm_min,
                                fields[3].GetString(), fields[4].GetString());
            }
        }
        while (result->NextRow());
        SendSysMessage("===============================================================================");
    }

    delete result;
    return true;
}

bool ChatHandler::HandleRespawnCommand(char* /*args*/)
{
    Player* pl = m_session->GetPlayer();

    // accept only explicitly selected target (not implicitly self targeting case)
    Unit* target = GetSelectedUnit();
    if (pl->GetSelectionGuid() && target)
    {
        if (target->GetTypeId() != TYPEID_UNIT)
        {
            SendSysMessage(LANG_SELECT_CREATURE);
            SetSentErrorMessage(true);
            return false;
        }

        if (target->isDead())
            ((Creature*)target)->Respawn();
        return true;
    }

    MaNGOS::RespawnDo u_do;
    MaNGOS::WorldObjectWorker<MaNGOS::RespawnDo> worker(u_do);
    Cell::VisitGridObjects(pl, worker, pl->GetMap()->GetVisibilityDistance());
    return true;
}

bool ChatHandler::HandleMovegensCommand(char* /*args*/)
{
    Unit* unit = GetSelectedUnit();
    if (!unit)
    {
        SendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    PSendSysMessage(LANG_MOVEGENS_LIST, (unit->GetTypeId() == TYPEID_PLAYER ? "Player" : "Creature"), unit->GetGUIDLow());

    MotionMaster* mm = unit->GetMotionMaster();
    float x, y, z;
    mm->GetDestination(x, y, z);
    for (MotionMaster::const_iterator itr = mm->begin(); itr != mm->end(); ++itr)
    {
        switch ((*itr)->GetMovementGeneratorType())
        {
            case IDLE_MOTION_TYPE:
                SendSysMessage(LANG_MOVEGENS_IDLE);
                break;
            case RANDOM_MOTION_TYPE:
                SendSysMessage(LANG_MOVEGENS_RANDOM);
                break;
            case WAYPOINT_MOTION_TYPE:
                SendSysMessage(LANG_MOVEGENS_WAYPOINT);
                break;
            case CONFUSED_MOTION_TYPE:
                SendSysMessage(LANG_MOVEGENS_CONFUSED);
                break;

            case CHASE_MOTION_TYPE:
            {
                Unit* target = NULL;
                if (unit->GetTypeId() == TYPEID_PLAYER)
                    target = static_cast<ChaseMovementGenerator<Player> const*>(*itr)->GetTarget();
                else
                    target = static_cast<ChaseMovementGenerator<Creature> const*>(*itr)->GetTarget();

                if (!target)
                    SendSysMessage(LANG_MOVEGENS_CHASE_NULL);
                else if (target->GetTypeId() == TYPEID_PLAYER)
                    PSendSysMessage(LANG_MOVEGENS_CHASE_PLAYER, target->GetName(), target->GetGUIDLow());
                else
                    PSendSysMessage(LANG_MOVEGENS_CHASE_CREATURE, target->GetName(), target->GetGUIDLow());
                break;
            }
            case FOLLOW_MOTION_TYPE:
            {
                Unit* target = NULL;
                if (unit->GetTypeId() == TYPEID_PLAYER)
                    target = static_cast<FollowMovementGenerator<Player> const*>(*itr)->GetTarget();
                else
                    target = static_cast<FollowMovementGenerator<Creature> const*>(*itr)->GetTarget();

                if (!target)
                    SendSysMessage(LANG_MOVEGENS_FOLLOW_NULL);
                else if (target->GetTypeId() == TYPEID_PLAYER)
                    PSendSysMessage(LANG_MOVEGENS_FOLLOW_PLAYER, target->GetName(), target->GetGUIDLow());
                else
                    PSendSysMessage(LANG_MOVEGENS_FOLLOW_CREATURE, target->GetName(), target->GetGUIDLow());
                break;
            }
            case HOME_MOTION_TYPE:
                if (unit->GetTypeId() == TYPEID_UNIT)
                    PSendSysMessage(LANG_MOVEGENS_HOME_CREATURE, x, y, z);
                else
                    SendSysMessage(LANG_MOVEGENS_HOME_PLAYER);
                break;
            case FLIGHT_MOTION_TYPE:
                SendSysMessage(LANG_MOVEGENS_FLIGHT);
                break;
            case POINT_MOTION_TYPE:
            {
                PSendSysMessage(LANG_MOVEGENS_POINT, x, y, z);
                break;
            }
            case FLEEING_MOTION_TYPE:
                SendSysMessage(LANG_MOVEGENS_FEAR);
                break;
            case DISTRACT_MOTION_TYPE:
                SendSysMessage(LANG_MOVEGENS_DISTRACT);
                break;
            default:
                PSendSysMessage(LANG_MOVEGENS_UNKNOWN, (*itr)->GetMovementGeneratorType());
                break;
        }
    }
    return true;
}

bool ChatHandler::HandleCastCommand(char* args)
{
    if (!*args)
        return false;

    Unit* target = GetSelectedUnit();

    if (!target)
    {
        SendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    // number or [name] Shift-click form |color|Hspell:spell_id|h[name]|h|r or Htalent form
    uint32 spell = ExtractSpellIdFromLink(&args);
    if (!spell)
        return false;

    SpellEntry const* spellInfo = sSpellMgr.GetSpellEntry(spell);
    if (!spellInfo)
        return false;

    if (!SpellMgr::IsSpellValid(spellInfo, m_session->GetPlayer()))
    {
        PSendSysMessage(LANG_COMMAND_SPELL_BROKEN, spell);
        SetSentErrorMessage(true);
        return false;
    }

    bool triggered = ExtractLiteralArg(&args, "triggered") != NULL;
    if (!triggered && *args)                                // can be fail also at syntax error
        return false;

    m_session->GetPlayer()->CastSpell(target, spell, triggered);

    return true;
}

bool ChatHandler::HandleCastTargetCommand(char* args)
{
    Creature* caster = GetSelectedCreature();

    if (!caster)
    {
        SendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    if (!caster->getVictim())
    {
        SendSysMessage(LANG_SELECTED_TARGET_NOT_HAVE_VICTIM);
        SetSentErrorMessage(true);
        return false;
    }

    // number or [name] Shift-click form |color|Hspell:spell_id|h[name]|h|r or Htalent form
    uint32 spell = ExtractSpellIdFromLink(&args);
    if (!spell || !sSpellMgr.GetSpellEntry(spell))
        return false;

    bool triggered = ExtractLiteralArg(&args, "triggered") != NULL;
    if (!triggered && *args)                                // can be fail also at syntax error
        return false;

    caster->SetFacingToObject(m_session->GetPlayer());

    caster->CastSpell(caster->getVictim(), spell, triggered);

    return true;
}

/*
ComeToMe command REQUIRED for 3rd party scripting library to have access to PointMovementGenerator
Without this function 3rd party scripting library will get linking errors (unresolved external)
when attempting to use the PointMovementGenerator
*/
bool ChatHandler::HandleComeToMeCommand(char *args)
{
    Creature* caster = GetSelectedCreature();

    if (!caster)
    {
        SendSysMessage(LANG_SELECT_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    Player* pl = m_session->GetPlayer();

    caster->GetMotionMaster()->MovePoint(0, pl->GetPositionX(), pl->GetPositionY(), pl->GetPositionZ(), true);
    return true;
}

bool ChatHandler::HandleCastSelfCommand(char* args)
{
    if (!*args)
        return false;

    Unit* target = GetSelectedUnit();

    if (!target)
    {
        SendSysMessage(LANG_SELECT_CHAR_OR_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    // number or [name] Shift-click form |color|Hspell:spell_id|h[name]|h|r or Htalent form
    uint32 spell = ExtractSpellIdFromLink(&args);
    if (!spell)
        return false;

    SpellEntry const* spellInfo = sSpellMgr.GetSpellEntry(spell);
    if (!spellInfo)
        return false;

    if (!SpellMgr::IsSpellValid(spellInfo, m_session->GetPlayer()))
    {
        PSendSysMessage(LANG_COMMAND_SPELL_BROKEN, spell);
        SetSentErrorMessage(true);
        return false;
    }

    bool triggered = ExtractLiteralArg(&args, "triggered") != NULL;
    if (!triggered && *args)                                // can be fail also at syntax error
        return false;

    target->CastSpell(target, spell, triggered);

    return true;
}

bool ChatHandler::HandleInstanceListBindsCommand(char* /*args*/)
{
    Player* player = GetSelectedPlayer();
    if (!player) player = m_session->GetPlayer();
    uint32 counter = 0;

    Player::BoundInstancesMap &binds = player->GetBoundInstances();
    for (Player::BoundInstancesMap::const_iterator itr = binds.begin(); itr != binds.end(); ++itr)
    {
        DungeonPersistentState *state = itr->second.state;
        std::string timeleft = "";
        if (!itr->second.perm)
            timeleft = secsToTimeString(state->GetResetTime() - time(nullptr), true);
        else
            timeleft = secsToTimeString(sMapPersistentStateMgr.GetScheduler().GetResetTimeFor(itr->first) - time(nullptr));

        if (const MapEntry* entry = sMapStorage.LookupEntry<MapEntry>(itr->first))
        {
            PSendSysMessage("map: %d (%s) inst: %d perm: %s canReset: %s TTR: %s",
                            itr->first, entry->name, state->GetInstanceId(), itr->second.perm ? "yes" : "no",
                            state->CanReset() ? "yes" : "no", timeleft.c_str());
        }
        else
            PSendSysMessage("bound for a nonexistent map %u", itr->first);
        counter++;
    }

    PSendSysMessage("player binds: %d", counter);
    counter = 0;

    if (Group *group = player->GetGroup())
    {
        Group::BoundInstancesMap &binds = group->GetBoundInstances();
        for (Group::BoundInstancesMap::const_iterator itr = binds.begin(); itr != binds.end(); ++itr)
        {
            DungeonPersistentState *state = itr->second.state;
            std::string timeleft = "";
            if (!itr->second.perm)
                timeleft = secsToTimeString(state->GetResetTime() - time(nullptr), true);
            else
                timeleft = secsToTimeString(sMapPersistentStateMgr.GetScheduler().GetResetTimeFor(itr->first) - time(nullptr));

            if (const MapEntry* entry = sMapStorage.LookupEntry<MapEntry>(itr->first))
            {
                PSendSysMessage("map: %d (%s) inst: %d perm: %s canReset: %s TTR: %s",
                                itr->first, entry->name, state->GetInstanceId(), itr->second.perm ? "yes" : "no",
                                state->CanReset() ? "yes" : "no", timeleft.c_str());
            }
            else
                PSendSysMessage("bound for a nonexistent map %u", itr->first);
            counter++;
        }
    }
    PSendSysMessage("group binds: %d", counter);

    return true;
}

bool ChatHandler::HandleInstanceUnbindCommand(char* args)
{
    if (!*args)
        return false;

    Player* player = GetSelectedPlayer();

    uint32 counter = 0;
    uint32 mapid = 0;
    bool got_map = false;

    if (strncmp(args, "all", strlen(args)) != 0)
    {
        if (!isNumeric(args[0]))
            return false;

        got_map = true;
        mapid = atoi(args);
    }

    Player::BoundInstancesMap &binds = player->GetBoundInstances();
    for (Player::BoundInstancesMap::iterator itr = binds.begin(); itr != binds.end();)
    {
        if (got_map && mapid != itr->first)
        {
            ++itr;
            continue;
        }
        if (itr->first != player->GetMapId())
        {
            DungeonPersistentState *save = itr->second.state;
            std::string timeleft = secsToTimeString(save->GetResetTime() - time(NULL), true);

            if (const MapEntry* entry = sMapStorage.LookupEntry<MapEntry>(itr->first))
            {
                PSendSysMessage("unbinding map: %d (%s) inst: %d perm: %s canReset: %s TTR: %s",
                                itr->first, entry->name, save->GetInstanceId(), itr->second.perm ? "yes" : "no",
                                save->CanReset() ? "yes" : "no", timeleft.c_str());
            }
            else
                PSendSysMessage("bound for a nonexistent map %u", itr->first);
            player->UnbindInstance(itr);
            counter++;
        }
        else
            ++itr;
    }
    PSendSysMessage("instances unbound: %d", counter);

    return true;
}

bool ChatHandler::HandleInstanceStatsCommand(char* /*args*/)
{
    PSendSysMessage("instances loaded: %d", sMapMgr.GetNumInstances());
    PSendSysMessage("players in instances: %d", sMapMgr.GetNumPlayersInInstances());

    uint32 numSaves, numBoundPlayers, numBoundGroups;
    sMapPersistentStateMgr.GetStatistics(numSaves, numBoundPlayers, numBoundGroups);
    PSendSysMessage("instance saves: %d", numSaves);
    PSendSysMessage("players bound: %d", numBoundPlayers);
    PSendSysMessage("groups bound: %d", numBoundGroups);
    return true;
}

/// Display the list of GMs
bool ChatHandler::HandleGMListFullCommand(char* /*args*/)
{
    ///- Get the accounts with GM Level >0
    QueryResult *result = LoginDatabase.PQuery("SELECT username, account_access.gmlevel FROM account, account_access "
                          "WHERE account_access.id = account.id AND account_access.gmlevel > 0 AND RealmID=%u", realmID);
    if (result)
    {
        SendSysMessage(LANG_GMLIST);
        SendSysMessage("========================");
        SendSysMessage(LANG_GMLIST_HEADER);
        SendSysMessage("========================");

        ///- Circle through them. Display username and GM level
        do
        {
            Field *fields = result->Fetch();
            PSendSysMessage("|%15s|%6s|", fields[0].GetString(), fields[1].GetString());
        }
        while (result->NextRow());

        PSendSysMessage("========================");
        delete result;
    }
    else
        PSendSysMessage(LANG_GMLIST_EMPTY);
    return true;
}

/// Output list of character for account
bool ChatHandler::HandleAccountCharactersCommand(char* args)
{
    ///- Get the command line arguments
    std::string account_name;
    Player* target = NULL;                                  // only for triggering use targeted player account
    uint32 account_id = ExtractAccountId(&args, &account_name, &target);
    if (!account_id)
        return false;

    ///- Get the characters for account id
    CharacterDatabase.AsyncPQuery(&PlayerSearchHandler::HandlePlayerCharacterLookupResult,
        GetAccountId(), 100u,
        "SELECT guid, name, race, class, level FROM characters WHERE account = %u",
        account_id);

    return true;
}

bool ChatHandler::HandleSendMailHelper(MailDraft& draft, char* args)
{
    // format: "subject text" "mail text"
    char* msgSubject = ExtractQuotedArg(&args);
    if (!msgSubject)
        return false;

    char* msgText = ExtractQuotedArg(&args);
    if (!msgText)
        return false;

    // msgSubject, msgText isn't NUL after prev. check
    draft.SetSubjectAndBody(msgSubject, msgText);

    return true;
}



bool ChatHandler::HandleSendItemsHelper(MailDraft& draft, char* args)
{
    // format: "subject text" "mail text" item1[:count1] item2[:count2] ... item12[:count12]
    char* msgSubject = ExtractQuotedArg(&args);
    if (!msgSubject)
        return false;

    char* msgText = ExtractQuotedArg(&args);
    if (!msgText)
        return false;

    // extract items
    typedef std::pair<uint32, uint32> ItemPair;
    typedef std::list< ItemPair > ItemPairs;
    ItemPairs items;

    // get from tail next item str
    while (char* itemStr = ExtractArg(&args))
    {
        // parse item str
        uint32 item_id = 0;
        uint32 item_count = 1;
        if (sscanf(itemStr, "%u:%u", &item_id, &item_count) != 2)
            if (sscanf(itemStr, "%u", &item_id) != 1)
                return false;

        if (!item_id)
        {
            PSendSysMessage(LANG_COMMAND_ITEMIDINVALID, item_id);
            SetSentErrorMessage(true);
            return false;
        }

        ItemPrototype const* item_proto = ObjectMgr::GetItemPrototype(item_id);
        if (!item_proto)
        {
            PSendSysMessage(LANG_COMMAND_ITEMIDINVALID, item_id);
            SetSentErrorMessage(true);
            return false;
        }

        if (item_count < 1 || (item_proto->MaxCount > 0 && item_count > uint32(item_proto->MaxCount)))
        {
            PSendSysMessage(LANG_COMMAND_INVALID_ITEM_COUNT, item_count, item_id);
            SetSentErrorMessage(true);
            return false;
        }

        while (item_count > item_proto->GetMaxStackSize())
        {
            items.push_back(ItemPair(item_id, item_proto->GetMaxStackSize()));
            item_count -= item_proto->GetMaxStackSize();
        }

        items.push_back(ItemPair(item_id, item_count));

        if (items.size() > MAX_MAIL_ITEMS)
        {
            PSendSysMessage(LANG_COMMAND_MAIL_ITEMS_LIMIT, MAX_MAIL_ITEMS);
            SetSentErrorMessage(true);
            return false;
        }
    }

    // fill mail
    draft.SetSubjectAndBody(msgSubject, msgText);

    for (ItemPairs::const_iterator itr = items.begin(); itr != items.end(); ++itr)
    {
        if (Item* item = Item::CreateItem(itr->first, itr->second, m_session ? m_session->GetPlayer() : 0))
        {
            item->SaveToDB();                               // save for prevent lost at next mail load, if send fail then item will deleted
            draft.AddItem(item);
        }
    }

    return true;
}

bool ChatHandler::HandleSendItemsCommand(char* args)
{
    // format: name "subject text" "mail text" item1[:count1] item2[:count2] ... item12[:count12]
    Player* receiver;
    ObjectGuid receiver_guid;
    std::string receiver_name;
    if (!ExtractPlayerTarget(&args, &receiver, &receiver_guid, &receiver_name))
        return false;

    MailDraft draft;

    // fill mail
    if (!HandleSendItemsHelper(draft, args))
        return false;

    // from console show nonexistent sender
    MailSender sender(MAIL_NORMAL, m_session ? m_session->GetPlayer()->GetObjectGuid().GetCounter() : 0, MAIL_STATIONERY_GM);

    draft.SendMailTo(MailReceiver(receiver, receiver_guid), sender);

    std::string nameLink = playerLink(receiver_name);
    PSendSysMessage(LANG_MAIL_SENT, nameLink.c_str());
    return true;
}


bool ChatHandler::HandleSendMoneyHelper(MailDraft& draft, char* args)
{
    /// format: "subject text" "mail text" money

    char* msgSubject = ExtractQuotedArg(&args);
    if (!msgSubject)
        return false;

    char* msgText = ExtractQuotedArg(&args);
    if (!msgText)
        return false;

    uint32 money;
    if (!ExtractUInt32(&args, money))
        return false;

    if (money <= 0)
        return false;

    // msgSubject, msgText isn't NUL after prev. check
    draft.SetSubjectAndBody(msgSubject, msgText).SetMoney(money);

    return true;
}

bool ChatHandler::HandleSendMoneyCommand(char* args)
{
    /// format: name "subject text" "mail text" money

    Player* receiver;
    ObjectGuid receiver_guid;
    std::string receiver_name;
    if (!ExtractPlayerTarget(&args, &receiver, &receiver_guid, &receiver_name))
        return false;

    MailDraft draft;

    // fill mail
    if (!HandleSendMoneyHelper(draft, args))
        return false;

    // from console show nonexistent sender
    MailSender sender(MAIL_NORMAL, m_session ? m_session->GetPlayer()->GetObjectGuid().GetCounter() : 0, MAIL_STATIONERY_GM);

    draft.SendMailTo(MailReceiver(receiver, receiver_guid), sender);

    std::string nameLink = playerLink(receiver_name);
    PSendSysMessage(LANG_MAIL_SENT, nameLink.c_str());
    return true;
}


/// Send a message to a player in game
bool ChatHandler::HandleSendMessageCommand(char* args)
{
    ///- Find the player
    Player *rPlayer;
    if (!ExtractPlayerTarget(&args, &rPlayer))
        return false;

    ///- message
    if (!*args)
        return false;

    ///- Check that he is not logging out.
    if (rPlayer->GetSession()->isLogingOut())
    {
        SendSysMessage(LANG_PLAYER_NOT_FOUND);
        SetSentErrorMessage(true);
        return false;
    }

    ///- Send the message
    //Use SendAreaTriggerMessage for fastest delivery.
    rPlayer->GetSession()->SendAreaTriggerMessage("%s", args);
    rPlayer->GetSession()->SendAreaTriggerMessage("|cffff0000[Message from administrator]:|r");

    //Confirmation message
    std::string nameLink = GetNameLink(rPlayer);
    PSendSysMessage(LANG_SENDMESSAGE, nameLink.c_str(), args);
    return true;
}

enum ServiceDeleteFlags
{
    SDF_NONE            = 0x00,
    SDF_MAX_LEVEL       = 0x01,
    SDF_MAX_MONEY       = 0x02,
    SDF_MAX_ITEMS       = 0x04,
    SDF_MAX_PLAYED_TIME = 0x08,
    SDF_PERM_BANNED     = 0x10,
    SDF_LAST_LOGIN      = 0x20,
    SDF_GM              = 0x40
};

bool ChatHandler::HandleServiceDeleteCharacters(char* args)
{
    uint32 flags = 0;
    if (!ExtractUInt32(&args, flags))
        return false;

    Tokens tokens = StrSplit(sConfig.GetStringDefault("LoginDatabase.Info", ""), ";");

    std::string dblogon;
    auto i = 0;
    for (auto& token : tokens)
    {
        if (i == 4)
        {
            dblogon = token;
            break;
        }
        else
            ++i;
    }

    std::ostringstream s;

    if (flags & SDF_PERM_BANNED)
    {
        s << "SELECT `guid`, `account` FROM `characters` WHERE `account` IN (SELECT `id` FROM `" << dblogon << "`.`account_banned` WHERE `bandate` = `unbandate` AND `active` = 1) ";

        uint32 maxLevel = 0;
        if (ExtractUInt32(&args, maxLevel))
            s << "AND `level` <= " << maxLevel << " ";
    }
    else if (flags & SDF_GM)
    {
        s << "SELECT `guid`, `account` FROM `characters` WHERE `account` IN (SELECT `id` FROM `" << dblogon << "`.`account` WHERE `gmlevel` > 0)";
    }
    else
    {
        s << "SELECT `characters`.`guid`,"
             "    `characters`.`account`,"
             "    `characters`.`level` AS `level`,"
             "    `characters`.`money` AS `money`,"
             "    `characters`.`totaltime` AS `totaltime`,"
             "    COUNT(`characters`.`guid`) AS `items`,"
             "    `characters`.`logout_time` AS `logout_time` "
             "FROM `characters` "
             "INNER JOIN `character_inventory` USING(`guid`) "
             "GROUP BY `characters`.`guid` HAVING ";

        bool _and = false;
        if (flags & SDF_MAX_LEVEL)
        {
            uint32 maxLevel = 0;
            if (!ExtractUInt32(&args, maxLevel))
                return false;

            s << (_and ? "AND " : "") << "`level` <= " << maxLevel << " ";
            _and = true;
        }

        if (flags & SDF_MAX_MONEY)
        {
            uint32 maxMoney = 0;
            if (!ExtractUInt32(&args, maxMoney))
                return false;

            s << (_and ? "AND " : "") << "`money` <= " << maxMoney << " ";
            _and = true;
        }

        if (flags & SDF_MAX_ITEMS)
        {
            uint32 maxItems = 0;
            if (!ExtractUInt32(&args, maxItems))
                return false;

            s << (_and ? "AND " : "") << "`items` <= " << maxItems << " ";
            _and = true;
        }

        if (flags & SDF_MAX_PLAYED_TIME)
        {
            uint32 maxPlayedTime = 0;
            if (!ExtractUInt32(&args, maxPlayedTime))
                return false;

            s << (_and ? "AND " : "") << "`totaltime` <= " << maxPlayedTime << " ";
            _and = true;
        }

        if (flags & SDF_LAST_LOGIN)
        {
            uint32 logoutTime = 0;
            if (!ExtractUInt32(&args, logoutTime))
                return false;

            s << (_and ? "AND " : "") << "`logout_time` <= " << logoutTime << " ";
            _and = true;
        }
    }

    QueryResult* result = CharacterDatabase.Query(s.str().c_str());
    uint32 count = 0;
    if (result)
    {
        count = result->GetRowCount();
        do
        {
            Field* fields = result->Fetch();
            uint32 lowGuid = fields[0].GetUInt32();
            uint32 accountId = fields[1].GetUInt32();

            ObjectGuid guid = ObjectGuid(HIGHGUID_PLAYER, lowGuid);

            Player::DeleteFromDB(guid, accountId, true, true);
        } while (result->NextRow());

        delete result;
    }

    sLog.outString("Service: Removed %u characters", count);
    return true;
}
