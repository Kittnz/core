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

#include "Chat.h"
#include "Language.h"
#include "Database/DatabaseEnv.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "Opcodes.h"
#include "Log.h"
#include "World.h"
#include "ObjectMgr.h"
#include "ObjectGuid.h"
#include "Player.h"
#include "UpdateMask.h"
#include "GridNotifiersImpl.h"
#include "CellImpl.h"
#include "AccountMgr.h"
#include "SpellMgr.h"
#include "PoolManager.h"
#include "GameEventMgr.h"
#include "HardcodedEvents.h"

// Supported shift-links (client generated and server side)
// |color|Harea:area_id|h[name]|h|r
// |color|Hareatrigger:id|h[name]|h|r
// |color|Hareatrigger_target:id|h[name]|h|r
// |color|Hcreature:creature_guid|h[name]|h|r
// |color|Hcreature_entry:creature_id|h[name]|h|r
// |color|Henchant:recipe_spell_id|h[prof_name: recipe_name]|h|r          - client, at shift click in recipes list dialog
// |color|Hgameevent:id|h[name]|h|r
// |color|Hgameobject:go_guid|h[name]|h|r
// |color|Hgameobject_entry:go_id|h[name]|h|r
// |color|Hitem:item_id:perm_ench_id:gem1:gem2:gem3:0:0:0:0|h[name]|h|r   - client, item icon shift click
// |color|Hitemset:itemset_id|h[name]|h|r
// |color|Hplayer:name|h[name]|h|r                                        - client, in some messages, at click copy only name instead link, so no way generate it in client string send to server
// |color|Hpool:pool_id|h[name]|h|r
// |color|Hquest:quest_id:quest_level|h[name]|h|r                         - client, quest list name shift-click
// |color|Hskill:skill_id|h[name]|h|r
// |color|Hspell:spell_id|h[name]|h|r                                     - client, spellbook spell icon shift-click
// |color|Htalent:talent_id,rank|h[name]|h|r                              - client, talent icon shift-click rank==-1 if shift-copy unlearned talent
// |color|Htaxinode:id|h[name]|h|r
// |color|Htele:id|h[name]|h|r

bool ChatHandler::load_command_table = true;

// Giperion Turtle - Please note that rank status is not more then a placeholder
// Actual rank is loaded from 'command' table

ChatCommand * ChatHandler::getCommandTable()
{
    static ChatCommand accountSetCommandTable[] =
    {
        { "password",       RANK_ADMIN,           true,  &ChatHandler::HandleAccountSetPasswordCommand,  "", nullptr },
        { nullptr,          0,                        false, nullptr,                                        "", nullptr }
    };

	static ChatCommand accountRankCommandTable[] =
	{
		{ "add",            RANK_ADMIN,           true,  &ChatHandler::HandleAccountRankAddCommand,  "", nullptr },
		{ "delete",         RANK_ADMIN,           true,  &ChatHandler::HandleAccountRankDeleteCommand,  "", nullptr },
		{ "query",          RANK_ADMIN,           true,  &ChatHandler::HandleAccountRankQueryCommand,  "", nullptr },
		{ nullptr,          0,                        false, nullptr,                                        "", nullptr }
	};

    static ChatCommand accountCommandTable[] =
    {
        { "characters",     RANK_ADMIN,         true,  &ChatHandler::HandleAccountCharactersCommand,   "", nullptr },
        { "create",         RANK_ADMIN,         true,  &ChatHandler::HandleAccountCreateCommand,       "", nullptr },
        { "delete",         RANK_CONSOLE,       true,  &ChatHandler::HandleAccountDeleteCommand,       "", nullptr },
        { "set",            RANK_ADMIN,         true,  nullptr,                                        "", accountSetCommandTable },
        { "rank",            RANK_ADMIN,         true,  nullptr,                                        "", accountRankCommandTable },
        { "password",       RANK_ADMIN,         true,  &ChatHandler::HandleAccountPasswordCommand,     "", nullptr },
        { "",               RANK_ADMIN,         true,  &ChatHandler::HandleAccountCommand,             "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand banCommandTable[] =
    {
        { "account",        RANK_ADMIN,     true,  &ChatHandler::HandleBanAccountCommand,          "", nullptr },
        { "allip",          RANK_ADMIN,  true,  &ChatHandler::HandleBanAllIPCommand,            "", nullptr },
        { "character",      RANK_ADMIN,     true,  &ChatHandler::HandleBanCharacterCommand,        "", nullptr },
        { "ip",             RANK_ADMIN,     true,  &ChatHandler::HandleBanIPCommand,               "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand baninfoCommandTable[] =
    {
        { "account",        RANK_ADMIN,  true,  &ChatHandler::HandleBanInfoAccountCommand,      "", nullptr },
        { "character",      RANK_ADMIN,  true,  &ChatHandler::HandleBanInfoCharacterCommand,    "", nullptr },
        { "ip",             RANK_ADMIN,      true,  &ChatHandler::HandleBanInfoIPCommand,           "", nullptr },
        { nullptr,          0,                   false, nullptr,                                        "", nullptr }
    };

    static ChatCommand banlistCommandTable[] =
    {
        { "account",        RANK_ADMIN,  true,  &ChatHandler::HandleBanListAccountCommand,      "", nullptr },
        { "character",      RANK_ADMIN,  true,  &ChatHandler::HandleBanListCharacterCommand,    "", nullptr },
        { "ip",             RANK_ADMIN,      true,  &ChatHandler::HandleBanListIPCommand,           "", nullptr },
        { nullptr,          0,                   false, nullptr,                                        "", nullptr }
    };

    static ChatCommand castCommandTable[] =
    {
        { "self",           RANK_ADMIN,  false, &ChatHandler::HandleCastSelfCommand,               "", nullptr },
        { "target",         RANK_ADMIN,  false, &ChatHandler::HandleCastTargetCommand,             "", nullptr },
        { "",               RANK_ADMIN,  false, &ChatHandler::HandleCastCommand,                   "", nullptr },
        { nullptr,          0,               false, nullptr,                                           "", nullptr }
    };

    static ChatCommand characterDeletedListCommandTable[] =
    {
        { "name",            RANK_ADMIN, true, &ChatHandler::HandleCharacterDeletedListNameCommand,    "", nullptr },
        { nullptr,           0,              false, nullptr,                                               "", nullptr }
    };

    static ChatCommand characterDeletedCommandTable[] =
    {
        { "list",           RANK_ADMIN,     true,  nullptr                                          ,  "", characterDeletedListCommandTable },
        { "restore",        RANK_ADMIN,    true,  &ChatHandler::HandleCharacterDeletedRestoreCommand, "", nullptr },
        { nullptr,          0,                  false, nullptr,                                            "", nullptr }
    };


    static ChatCommand characterCleanCommandTable[] =
    {
        { "todelete",       RANK_ADMIN,  true,  &ChatHandler::HandleCleanCharactersToDeleteCommand,     "", nullptr },
        { "items",          RANK_ADMIN,  true,  &ChatHandler::HandleCleanCharactersItemsCommand,        "", nullptr },
        { nullptr,          0,                  false, nullptr,                                                "", nullptr }
    };

    static ChatCommand characterCommandTable[] =
    {
        { "deleted",        RANK_ADMIN,     true, nullptr,                                          "", characterDeletedCommandTable},
        { "erase",          RANK_CONSOLE,        true,  &ChatHandler::HandleCharacterEraseCommand,      "", nullptr },
        { "rename",         RANK_ADMIN,     true,  &ChatHandler::HandleCharacterRenameCommand,     "", nullptr },
        { "reputation",     RANK_ADMIN,  true,  &ChatHandler::HandleCharacterReputationCommand, "", nullptr },
        { "hasitem",        RANK_ADMIN, true,  &ChatHandler::HandleCharacterHasItemCommand,    "", nullptr },
        { "fillflys",       RANK_ADMIN,     true,  &ChatHandler::HandleCharacterFillFlysCommand,   "", nullptr },
        { "clean",          RANK_ADMIN,  true,  nullptr,                                        "", characterCleanCommandTable },
        { nullptr,          0,                   false, nullptr,                                       "", nullptr }
    };


    static ChatCommand eventCommandTable[] =
    {
        { "list",           RANK_ADMIN,     true,  &ChatHandler::HandleEventListCommand,           "", nullptr },
        { "start",          RANK_ADMIN,    true,  &ChatHandler::HandleEventStartCommand,          "", nullptr },
        { "stop",           RANK_ADMIN,    true,  &ChatHandler::HandleEventStopCommand,           "", nullptr },
        { "enable",         RANK_ADMIN,     true,  &ChatHandler::HandleEventEnableCommand,         "", nullptr },
        { "disable",        RANK_ADMIN,     true,  &ChatHandler::HandleEventDisableCommand,        "", nullptr },
        { "",               RANK_ADMIN,     true,  &ChatHandler::HandleEventInfoCommand,           "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand gmCommandTable[] =
    {
        { "list",           RANK_ADMIN,  true,  &ChatHandler::HandleGMListFullCommand,          "", nullptr },
        { "ingame",         RANK_ADMIN,  true,  &ChatHandler::HandleGMOnlineListCommand,        "", nullptr },
        { "visible",        RANK_ADMIN, false, &ChatHandler::HandleGMVisibleCommand,           "", nullptr },
        { "options",        RANK_ADMIN,     false, &ChatHandler::HandleGMOptionsCommand,           "", nullptr },
        { "socials",        RANK_ADMIN,    false, &ChatHandler::HandleGMSocialsCommand,                "", nullptr},
        { "setview",        RANK_ADMIN, false, &ChatHandler::HandleSetViewCommand,             "", nullptr },
        { "chat",           RANK_ADMIN, false, &ChatHandler::HandleSetGMChatCommand,          "", nullptr},
        { "",               RANK_ADMIN, false, &ChatHandler::HandleGMCommand,                  "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand goCommandTable[] =
    {
        { "creature",       RANK_ADMIN, false, &ChatHandler::HandleGoCreatureCommand,          "", nullptr },
        { "object",         RANK_ADMIN, false, &ChatHandler::HandleGoObjectCommand,            "", nullptr },
        { "xyz",            RANK_ADMIN, false, &ChatHandler::HandleGoXYZCommand,               "", nullptr },
        { "corpse", RANK_ADMIN, false, &ChatHandler::HandleGoCorpseCommand, "Teleports the user to their corpse.", nullptr },
        // Nostalrius
        { "forward",        RANK_ADMIN, false, &ChatHandler::HandleGoForwardCommand,           "", nullptr },
        { "up",             RANK_ADMIN, false, &ChatHandler::HandleGoUpCommand,                "", nullptr },
        { "",               RANK_ADMIN, false, &ChatHandler::HandleGoCommand,                  "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand gobjectCommandTable[] =
    {
        { "add",            RANK_ADMIN,     false, &ChatHandler::HandleGameObjectAddCommand,       "", nullptr },
        { "tmpadd",         RANK_ADMIN,     false, &ChatHandler::HandleGameObjectTempAddCommand,   "", nullptr },
        { "delete",         RANK_ADMIN,     false, &ChatHandler::HandleGameObjectDeleteCommand,    "", nullptr },
        { "move",           RANK_ADMIN,     false, &ChatHandler::HandleGameObjectMoveCommand,      "", nullptr },
        { "rotate",         RANK_ADMIN,     false, &ChatHandler::HandleGameObjectRotateCommand,      "", nullptr },
        { "near",           RANK_ADMIN,     false, &ChatHandler::HandleGameObjectNearCommand,      "", nullptr },
        { "target",         RANK_ADMIN,     false, &ChatHandler::HandleGameObjectTargetCommand,    "", nullptr },
        { "turn",           RANK_ADMIN,     false, &ChatHandler::HandleGameObjectTurnCommand,      "", nullptr },
        { "scale",          RANK_ADMIN,     false, &ChatHandler::HandleGameObjectScaleCommand,      "", nullptr },
        { "info",           RANK_ADMIN,     false, &ChatHandler::HandleGameObjectInfoCommand,      "", nullptr },
        { "select",         RANK_ADMIN,     false, &ChatHandler::HandleGameObjectSelectCommand,    "", nullptr },
        { "despawn",        RANK_ADMIN,     false, &ChatHandler::HandleGameObjectDespawnCommand,   "", nullptr },
        { "toggle",         RANK_ADMIN,     false, &ChatHandler::HandleGameObjectToggleCommand,    "", nullptr },
        { "reset",          RANK_ADMIN,     false, &ChatHandler::HandleGameObjectResetCommand,     "", nullptr },
        { "respawn",        RANK_ADMIN,     false, &ChatHandler::HandleGameObjectRespawnCommand,   "", nullptr },
        { "customanim",     RANK_ADMIN,     false, &ChatHandler::HandleGameObjectSendCustomAnimCommand,"", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand guildCommandTable[] =
    {
        { "create",         RANK_ADMIN,     true,  &ChatHandler::HandleGuildCreateCommand,         "", nullptr },
        { "delete",         RANK_ADMIN,    true,  &ChatHandler::HandleGuildDeleteCommand,         "", nullptr },
        { "invite",         RANK_ADMIN,     true,  &ChatHandler::HandleGuildInviteCommand,         "", nullptr },
        { "uninvite",       RANK_ADMIN,     true,  &ChatHandler::HandleGuildUninviteCommand,       "", nullptr },
        { "rank",           RANK_ADMIN,     true,  &ChatHandler::HandleGuildRankCommand,           "", nullptr },
        { "rename",         RANK_ADMIN,    true,  &ChatHandler::HandleGuildRenameCommand,         "", nullptr },
        { "listen",         RANK_ADMIN, false, &ChatHandler::HandleGuildListenCommand, "", nullptr},
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand honorCommandTable[] =
    {
        { "show",           RANK_ADMIN, false, &ChatHandler::HandleHonorShow,                  "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand instanceCommandTable[] =
    {
        { "continents",     RANK_ADMIN,    true,  &ChatHandler::HandleInstanceContinentsCommand,  "", nullptr },
        { "listbinds",      RANK_ADMIN,     false, &ChatHandler::HandleInstanceListBindsCommand,   "", nullptr },
        { "unbind",         RANK_ADMIN,     false, &ChatHandler::HandleInstanceUnbindCommand,      "", nullptr },
        { "groupunbind",    RANK_ADMIN, false, &ChatHandler::HandleInstanceGroupUnbindCommand, "", nullptr },
        { "stats",          RANK_ADMIN,    true,  &ChatHandler::HandleInstanceStatsCommand,       "", nullptr },
        { "perfinfos",      RANK_ADMIN,    false, &ChatHandler::HandleInstancePerfInfosCommand,   "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand learnCommandTable[] =
    {
		{ "all_myspells",   RANK_ADMIN,     false, &ChatHandler::HandleLearnAllMySpellsCommand,    "", nullptr },
		{ "",               RANK_ADMIN,     false, &ChatHandler::HandleLearnCommand,               "", nullptr },
		{ nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand listCommandTable[] =
    {
        { "auras",          RANK_ADMIN,  false, &ChatHandler::HandleListAurasCommand,           "", nullptr },
        { "creature",       RANK_ADMIN,  true,  &ChatHandler::HandleListCreatureCommand,        "", nullptr },
        { "object",         RANK_ADMIN,  true,  &ChatHandler::HandleListObjectCommand,          "", nullptr },
        { nullptr,       0,                  false, nullptr,                                           "", nullptr }
    };


    // TODO: Add console output support to async player lookups
    static ChatCommand lookupPlayerCommandTable[] =
    {
        { "account",        RANK_ADMIN,     false,  &ChatHandler::HandleLookupPlayerAccountCommand,   "", nullptr },
        { "email",          RANK_ADMIN,    false,  &ChatHandler::HandleLookupPlayerEmailCommand,     "", nullptr },
        { "ip",             RANK_ADMIN,    false,  &ChatHandler::HandleLookupPlayerIpCommand,        "", nullptr },
        { "name",           RANK_ADMIN, false,  &ChatHandler::HandleLookupPlayerNameCommand,      "", nullptr },
        { "character",      RANK_ADMIN, false,  &ChatHandler::HandleLookupPlayerCharacterCommand, "", nullptr },
        { nullptr,          0,                  false,  nullptr,                                          "", nullptr }
    };

    static ChatCommand lookupCommandTable[] =
    {
		{ "creature",       RANK_ADMIN, true,  &ChatHandler::HandleLookupCreatureCommand,      "", nullptr },
		{ "faction",        RANK_ADMIN, true,  &ChatHandler::HandleLookupFactionCommand,       "", nullptr },
		{ "item",           RANK_ADMIN, true,  &ChatHandler::HandleLookupItemCommand,          "", nullptr },
		{ "object",         RANK_ADMIN, true,  &ChatHandler::HandleLookupObjectCommand,        "", nullptr },
		{ "quest",          RANK_ADMIN, true,  &ChatHandler::HandleLookupQuestCommand,         "", nullptr },
		{ "player",         RANK_ADMIN, true,  nullptr,                                        "", lookupPlayerCommandTable },
		{ "skill",          RANK_ADMIN, true,  &ChatHandler::HandleLookupSkillCommand,         "", nullptr },
		{ "spell",          RANK_ADMIN, true,  &ChatHandler::HandleLookupSpellCommand,         "", nullptr },
        { "itemset",        RANK_ADMIN, true,  &ChatHandler::HandleLookupItemSetCommand,       "", nullptr },
        { "event",          RANK_ADMIN, true,  &ChatHandler::HandleLookupEventCommand,         "", nullptr },
        { "guild",          RANK_ADMIN, true,  &ChatHandler::HandleLookupGuildCommand,         "", nullptr },
		{ nullptr,          0,                  false, nullptr,                                    "", nullptr }
    };

    static ChatCommand modifyCommandTable[] =
    {
        { "hp",             RANK_ADMIN,     false, &ChatHandler::HandleModifyHPCommand,            "", nullptr },
        { "mana",           RANK_ADMIN,     false, &ChatHandler::HandleModifyManaCommand,          "", nullptr },
        { "money",          RANK_ADMIN,     false, &ChatHandler::HandleModifyMoneyCommand,         "", nullptr },
        { "speed",          RANK_ADMIN, false, &ChatHandler::HandleModifyASpeedCommand,         "", nullptr },
        { "scale",          RANK_ADMIN,     false, &ChatHandler::HandleModifyScaleCommand,         "", nullptr },
        { "faction",        RANK_ADMIN,     false, &ChatHandler::HandleModifyFactionCommand,       "", nullptr },
        { "rep",            RANK_ADMIN,     false, &ChatHandler::HandleModifyRepCommand,           "", nullptr },
        { "drunk",          RANK_ADMIN,      false, &ChatHandler::HandleModifyDrunkCommand,         "", nullptr },
        { "morph",          RANK_ADMIN,     false, &ChatHandler::HandleModifyMorphCommand,         "", nullptr },
        { "gender",         RANK_ADMIN,     false, &ChatHandler::HandleModifyGenderCommand,        "", nullptr },
        { "ap",             RANK_ADMIN,    false, &ChatHandler::HandleModifyMeleeApCommand,       "", nullptr },
        { "spellpower",     RANK_ADMIN,    false, &ChatHandler::HandleModifySpellPowerCommand,    "", nullptr },
        { "honor",          RANK_ADMIN,    false, &ChatHandler::HandleModifyHonorCommand,         "", nullptr },
        // Turtle WoW
        { "xp",             RANK_ADMIN,    false, &ChatHandler::HandleModifyXpCommand,            "", nullptr },
        { "hairstyle",      RANK_ADMIN,    false, &ChatHandler::HandleModifyHairStyleCommand,     "", nullptr },
        { "haircolor",      RANK_ADMIN,    false, &ChatHandler::HandleModifyHairColorCommand,     "", nullptr },
        { "skincolor",      RANK_ADMIN,    false, &ChatHandler::HandleModifySkinColorCommand,     "", nullptr },
        { "face",           RANK_ADMIN,    false, &ChatHandler::HandleModifyFaceCommand,          "", nullptr },
        { "accessories",    RANK_ADMIN,    false, &ChatHandler::HandleModifyAccessoriesCommand,   "", nullptr },
        { "title",          RANK_ADMIN,    false, &ChatHandler::HandleModifyTitleCommand,         "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand creatureGroupsCommandTable[] =
    {
        { "add",            RANK_ADMIN,     false, &ChatHandler::HandleNpcGroupAddCommand,         "", nullptr },
        { "addrel",         RANK_ADMIN,     false, &ChatHandler::HandleNpcGroupAddRelCommand,      "", nullptr },
        { "del",            RANK_ADMIN,     false, &ChatHandler::HandleNpcGroupDelCommand,         "", nullptr },
        { "link",           RANK_ADMIN,     false, &ChatHandler::HandleNpcGroupLinkCommand,        "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand npcCommandTable[] =
    {
        { "add",            RANK_ADMIN,     false, &ChatHandler::HandleNpcAddCommand,              "", nullptr },
        { "additem",        RANK_ADMIN,     false, &ChatHandler::HandleNpcAddVendorItemCommand,    "", nullptr },
        { "scale",          RANK_ADMIN,     false, &ChatHandler::HandleNpcScaleCommand,    "", nullptr },
        { "addloot",        RANK_ADMIN,     false, &ChatHandler::HandleNpcAddLootCommand,    "", nullptr },
        { "addweapon",      RANK_ADMIN,     false, &ChatHandler::HandleNpcAddWeaponCommand,        "", nullptr },
        { "aiinfo",         RANK_ADMIN,      false, &ChatHandler::HandleNpcAIInfoCommand,           "", nullptr },
        { "wander",         RANK_ADMIN,     false, &ChatHandler::HandleNpcSetWanderDistanceCommand,    "", nullptr },
        { "delete",         RANK_ADMIN,     false, &ChatHandler::HandleNpcDeleteCommand,           "", nullptr },
        { "delitem",        RANK_ADMIN,     false, &ChatHandler::HandleNpcDelVendorItemCommand,    "", nullptr },
        { "factionid",      RANK_ADMIN,     false, &ChatHandler::HandleNpcFactionIdCommand,        "", nullptr },
        { "flag",           RANK_ADMIN,     false, &ChatHandler::HandleNpcFlagCommand,             "", nullptr },
        { "info",           RANK_ADMIN,      false, &ChatHandler::HandleNpcInfoCommand,             "", nullptr },
        { "move",           RANK_ADMIN,     false, &ChatHandler::HandleNpcMoveCommand,             "", nullptr },
        { "playemote",      RANK_ADMIN, false, &ChatHandler::HandleNpcPlayEmoteCommand,        "", nullptr },
        { "spawntime",      RANK_ADMIN,     false, &ChatHandler::HandleNpcSpawnTimeCommand,        "", nullptr },
        { "say",            RANK_ADMIN, false, &ChatHandler::HandleNpcSayCommand,              "", nullptr },
        { "speed",          RANK_ADMIN, false, &ChatHandler::HandleNpcSpeedCommand,              "", nullptr },
        { "textemote",      RANK_ADMIN, false, &ChatHandler::HandleNpcTextEmoteCommand,        "", nullptr },
        { "yell",           RANK_ADMIN, false, &ChatHandler::HandleNpcYellCommand,             "", nullptr },
        { "setdeathstate",  RANK_ADMIN,     false, &ChatHandler::HandleNpcSetDeathStateCommand,    "", nullptr },
        { "group",          RANK_ADMIN,     false, nullptr,                                        "", creatureGroupsCommandTable },

        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand questCommandTable[] =
    {
        { "add",            RANK_ADMIN, false, &ChatHandler::HandleQuestAddCommand,            "", nullptr },
        { "complete",       RANK_ADMIN, false, &ChatHandler::HandleQuestCompleteCommand,       "", nullptr },
        { "status",         RANK_ADMIN,  false, &ChatHandler::HandleQuestStatusCommand,         "", nullptr },
        { "remove",         RANK_ADMIN,  false, &ChatHandler::HandleQuestRemoveCommand,         "", nullptr },
        { "test",           RANK_ADMIN,  false, &ChatHandler::HandleQuestTestCommand,           "", nullptr },
        { nullptr,          0,               false, nullptr,                                        "", nullptr }
    };

    static ChatCommand petCommandTable[] =
    {
        { "list",           RANK_ADMIN,     true,  &ChatHandler::HandlePetListCommand,              "", nullptr },
        { "rename",         RANK_ADMIN,     true,  &ChatHandler::HandlePetRenameCommand,            "", nullptr },
        { "delete",         RANK_ADMIN,     true,  &ChatHandler::HandlePetDeleteCommand,            "", nullptr },
		{ "loyalty",        RANK_ADMIN,     true,  &ChatHandler::HandlePetLoyaltyCommand,            "", nullptr },
        { nullptr,          0,                  false, nullptr,                                         "", nullptr }
    };

    static ChatCommand reloadCommandTable[] =
    { 
        { "config",                       RANK_ADMIN,  true,  &ChatHandler::HandleReloadConfigCommand,        "", nullptr },
        { "quest_template",               RANK_ADMIN,    true,  &ChatHandler::HandleReloadQuestTemplateCommand,           "", nullptr },
        { "spell_disabled",               RANK_ADMIN,    true,  &ChatHandler::HandleReloadSpellDisabledCommand,           "", nullptr },
        { "autobroadcast",                RANK_ADMIN, true,  &ChatHandler::HandleReloadAutoBroadcastCommand,           "", nullptr },
        { "item_template",                RANK_ADMIN,    true,  &ChatHandler::HandleReloadItemTemplate,                   "", nullptr },
        { "variables",                    RANK_ADMIN,    true,  &ChatHandler::HandleReloadVariablesCommand,               "", nullptr },
        { "shop",                         RANK_ADMIN, true,  &ChatHandler::HandleReloadShopCommand,                    "", nullptr },
        { "mangos_string",                RANK_ADMIN,    true,  &ChatHandler::HandleReloadMangosStringCommand,            "", nullptr },
        { "bgplayers",                    RANK_ADMIN, true, &ChatHandler::HandleReloadBgAmounts,                      "", nullptr},
        { "gmlevels",                     RANK_ADMIN, true, &ChatHandler::HandleReloadGmLevelsCommand,                   "", nullptr},
        { "leasharea",                    RANK_ADMIN, true, &ChatHandler::HandleReloadLeashAreasCommand,                 "", nullptr},
        { nullptr,                       0,                 false, nullptr,                                                  "", nullptr }
    };

    static ChatCommand resetCommandTable[] =
    {
        { "honor",          RANK_ADMIN,     true,  &ChatHandler::HandleResetHonorCommand,          "", nullptr },
        { "level",          RANK_ADMIN,     true,  &ChatHandler::HandleResetLevelCommand,          "", nullptr },
        { "spells",         RANK_ADMIN,     true,  &ChatHandler::HandleResetSpellsCommand,         "", nullptr },
        { "stats",          RANK_ADMIN,     true,  &ChatHandler::HandleResetStatsCommand,          "", nullptr },
        { "talents",        RANK_ADMIN,        true,  &ChatHandler::HandleResetTalentsCommand,        "", nullptr },
        { "all",            RANK_CONSOLE,           true,  &ChatHandler::HandleResetAllCommand,            "", nullptr },
        { nullptr,          0,                     false, nullptr,                                        "", nullptr }
    };

    static ChatCommand sendCommandTable[] =
    {
        { "items",          RANK_ADMIN,  true,  &ChatHandler::HandleSendItemsCommand,           "", nullptr },
        { "mail",           RANK_ADMIN,      true,  &ChatHandler::HandleSendMailCommand,            "", nullptr },
        { "message",        RANK_ADMIN,  true,  &ChatHandler::HandleSendMessageCommand,         "", nullptr },
        { "money",          RANK_ADMIN,  true,  &ChatHandler::HandleSendMoneyCommand,           "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand serverIdleRestartCommandTable[] =
    {
        { "cancel",         RANK_ADMIN,  true,  &ChatHandler::HandleServerShutDownCancelCommand, "", nullptr },
        { ""   ,            RANK_ADMIN,  true,  &ChatHandler::HandleServerIdleRestartCommand,    "", nullptr },
        { nullptr,          0,                  false, nullptr,                                         "", nullptr }
    };

    static ChatCommand serverIdleShutdownCommandTable[] =
    {
        { "cancel",         RANK_ADMIN,  true,  &ChatHandler::HandleServerShutDownCancelCommand, "", nullptr },
        { ""   ,            RANK_ADMIN,  true,  &ChatHandler::HandleServerIdleShutDownCommand,   "", nullptr },
        { nullptr,          0,                  false, nullptr,                                         "", nullptr }
    };

    static ChatCommand serverRestartCommandTable[] =
    {
        { "cancel",         RANK_ADMIN,  true,  &ChatHandler::HandleServerShutDownCancelCommand, "", nullptr },
        { ""   ,            RANK_ADMIN,  true,  &ChatHandler::HandleServerRestartCommand,        "", nullptr },
        { nullptr,          0,                  false, nullptr,                                         "", nullptr }
    };

    static ChatCommand serverShutdownCommandTable[] =
    {
        { "cancel",         RANK_ADMIN,  true,  &ChatHandler::HandleServerShutDownCancelCommand, "", nullptr },
        { ""   ,            RANK_ADMIN,  true,  &ChatHandler::HandleServerShutDownCommand,       "", nullptr },
        { nullptr,          0,                  false, nullptr,                                         "", nullptr }
    };
       

    static ChatCommand serverCommandTable[] =
    {
        { "corpses",        RANK_ADMIN,  true,  &ChatHandler::HandleServerCorpsesCommand,     "", nullptr },
        { "exit",           RANK_CONSOLE,true,  &ChatHandler::HandleServerExitCommand,        "", nullptr },
        { "idlerestart",    RANK_ADMIN,  true,  nullptr,                                      "", serverIdleRestartCommandTable },
        { "idleshutdown",   RANK_ADMIN,  true,  nullptr,                                      "", serverIdleShutdownCommandTable },
        { "info",           RANK_ADMIN,  true,  &ChatHandler::HandleServerInfoCommand,        "", nullptr },
        { "resetallraids",  RANK_ADMIN,  true,  &ChatHandler::HandleServerResetAllRaidCommand, "", nullptr },
        { "restart",        RANK_ADMIN,  true,  nullptr,                                       "", serverRestartCommandTable },
        { "shutdown",       RANK_ADMIN,  true,  nullptr,                                       "", serverShutdownCommandTable },
        { nullptr,          0,                  false, nullptr,                                       "", nullptr }
    };

    static ChatCommand teleCommandTable[] =
    {
        { "add",            RANK_ADMIN,     false, &ChatHandler::HandleTeleAddCommand,             "", nullptr },
        { "del",            RANK_ADMIN,     true,  &ChatHandler::HandleTeleDelCommand,             "", nullptr },
        { "name",           RANK_ADMIN, true,  &ChatHandler::HandleTeleNameCommand,            "", nullptr },
        { "group",          RANK_ADMIN, false, &ChatHandler::HandleTeleGroupCommand,           "", nullptr },
        { "",               RANK_ADMIN, false, &ChatHandler::HandleTeleCommand,                "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand unbanCommandTable[] =
    {
        { "account",        RANK_ADMIN,  true,  &ChatHandler::HandleUnBanAccountCommand,      "", nullptr },
        { "character",      RANK_ADMIN,  true,  &ChatHandler::HandleUnBanCharacterCommand,    "", nullptr },
        { "ip",             RANK_ADMIN,  true,  &ChatHandler::HandleUnBanIPCommand,           "", nullptr },
        { nullptr,          0,                  false, nullptr,                                      "", nullptr }
    };

    static ChatCommand wpCommandTable[] =
    {
        { "show",           RANK_ADMIN, false, &ChatHandler::HandleWpShowCommand,              "", nullptr },
        { "add",            RANK_ADMIN,     false, &ChatHandler::HandleWpAddCommand,               "", nullptr },
        { "modify",         RANK_ADMIN,     false, &ChatHandler::HandleWpModifyCommand,            "", nullptr },
        { "export",         RANK_ADMIN,  false, &ChatHandler::HandleWpExportCommand,            "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand worldStateCommandTable[] =
    {
        { "test",              RANK_ADMIN,        false, &ChatHandler::HandleUpdateWorldStateCommand, "", nullptr},
        { nullptr,             0,                        false, nullptr,                                     "", nullptr}
    };
    static ChatCommand bgCommandTable[] =
    {
        { "status",            RANK_ADMIN,           false, &ChatHandler::HandleBGStatusCommand,         "", nullptr},
        { "start",             RANK_ADMIN,           false, &ChatHandler::HandleBGStartCommand,          "", nullptr},
        { "stop",              RANK_ADMIN,           false, &ChatHandler::HandleBGStopCommand,           "", nullptr},
        { nullptr,             0,                        false, nullptr,                                     "", nullptr}
    };

    static ChatCommand anticheatClientCommandTable[] =
    {
        { "find",           RANK_ADMIN,     true,  &ChatHandler::HandleClientSearchCommand,        "", nullptr },
        { "",               RANK_ADMIN,     true,  &ChatHandler::HandleClientInfosCommand,         "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand anticheatWardenCommandTable[] =
    {
        { "read",          RANK_ADMIN,    false, &ChatHandler::HandleWardenReadCommand,           "", nullptr },
        { "",              RANK_ADMIN,    true,  &ChatHandler::HandleWardenCommand,               "", nullptr },
        { nullptr,         0,                  false, nullptr,                                         "", nullptr }
    };

    static ChatCommand anticheatCommandTable[] =
    {
        { "server",         RANK_ADMIN,    true,  &ChatHandler::HandleAnticheatCommand,            "", nullptr },
        { "warden",         RANK_ADMIN,   true, nullptr,                                          "", anticheatWardenCommandTable },
        { "client",         RANK_ADMIN,    true, nullptr,                                          "", anticheatClientCommandTable },
        { nullptr,          0,                 false, nullptr,                                         "", nullptr }
    };
    static ChatCommand ticketCommandTable[] =
    {
        { "close",         RANK_ADMIN,  true,  &ChatHandler::HandleGMTicketCloseByIdCommand,        "", nullptr },
        { "list",          RANK_ADMIN,  true,  &ChatHandler::HandleGMTicketListCommand,             "", nullptr },
        { "onlinelist",    RANK_ADMIN,  true,  &ChatHandler::HandleGMTicketsOnlineListCommand,      "", nullptr},
        { "",              RANK_ADMIN,  true,  &ChatHandler::HandleGMTicketGetByIdOrNameCommand,    "", nullptr },
        { nullptr,         0,                   false, nullptr,                                             "", nullptr }
    };
    
    static ChatCommand serviceCommandTable[] =
    {
        { "del_characters",     RANK_ADMIN,    true,  &ChatHandler::HandleServiceDeleteCharacters,   "", nullptr },
        { nullptr,              0,                    false, nullptr,                                       "", nullptr }
    };

    static ChatCommand goldCommandTable[] =
    {
        { "remove",            RANK_ADMIN,        false, &ChatHandler::HandleGoldRemoval,               "", nullptr },
        { nullptr,             0,                     false, nullptr,                                        "", nullptr }
    };

    static ChatCommand shopCommandTable[] =
    {
        { "log",               RANK_ADMIN,        false, &ChatHandler::HandleGetShopLogs,               "", nullptr },
        { nullptr,             0,                     false, nullptr,                                        "", nullptr }
    };

    static ChatCommand pathCommandTable[] =
    {
        { "setup",             RANK_ADMIN,        false, &ChatHandler::HandleCreaturePathSetup,         "", nullptr },
        { "add",               RANK_ADMIN,        false, &ChatHandler::HandleCreaturePathAddPoint,      "", nullptr },
        { "start",             RANK_ADMIN,        false, &ChatHandler::HandleCreaturePathLaunch,        "", nullptr },
        { nullptr,             0,                     false, nullptr,                                       "", nullptr }
    };

    static ChatCommand anonymousCommandTable[] =
    {
        { "whispers",          RANK_ADMIN,       false, &ChatHandler::HandleAnonymousWhispers,         "", nullptr},
        { "mail",              RANK_ADMIN,       false, &ChatHandler::HandleAnonymousMail,         "", nullptr},
        { nullptr,             0,                     false, nullptr,                                       "", nullptr }
    };

    static ChatCommand commandTable[] =
    {
        { "account",        RANK_ADMIN,         true, nullptr,                                         "", accountCommandTable  },
        { "cast",           RANK_ADMIN,     false, nullptr,                                        "", castCommandTable     },
        { "character",      RANK_ADMIN, true, nullptr,                                         "", characterCommandTable},
        { "event",          RANK_ADMIN,     false, nullptr,                                        "", eventCommandTable    },
        { "gm",             RANK_ADMIN,         true, nullptr,                                         "", gmCommandTable       },
        { "honor",          RANK_ADMIN,     false, nullptr,                                        "", honorCommandTable    },
        { "go",             RANK_ADMIN, false, nullptr,                                        "", goCommandTable       },
        { "gobject",        RANK_ADMIN, false, nullptr,                                        "", gobjectCommandTable  },
        { "guild",          RANK_ADMIN,     true, nullptr,                                         "", guildCommandTable    },
        { "instance",       RANK_ADMIN,      true, nullptr,                                         "", instanceCommandTable },
        { "learn",          RANK_ADMIN,      false, nullptr,                                        "", learnCommandTable    },
        { "list",           RANK_ADMIN,  true, nullptr,                                           "", listCommandTable     },
        { "lookup",         RANK_ADMIN,      true, nullptr,                                         "", lookupCommandTable   },
        { "modify",         RANK_ADMIN,      false, nullptr,                                        "", modifyCommandTable   },
        { "npc",            RANK_ADMIN,      false, nullptr,                                        "", npcCommandTable      },
        { "quest",          RANK_ADMIN,     false, nullptr,                                        "", questCommandTable    },
        { "reload",         RANK_ADMIN,     true, nullptr,                                         "", reloadCommandTable   },
        { "reset",          RANK_ADMIN,     true, nullptr,                                         "", resetCommandTable    },
        { "server",         RANK_ADMIN,         true, nullptr,                                         "", serverCommandTable   },
        { "tele",           RANK_ADMIN, true, nullptr,                                         "", teleCommandTable     },
        { "wp",             RANK_ADMIN, false, nullptr,                                        "", wpCommandTable       },
        { "service",        RANK_ADMIN,  true, nullptr,                                         "", serviceCommandTable  },
        { "worldstate",     RANK_ADMIN,  false, nullptr,                                        "", worldStateCommandTable},
        { "bg",             RANK_ADMIN,     false, nullptr,                                        "", bgCommandTable},
        { "variable",       RANK_ADMIN,     true,  &ChatHandler::HandleVariableCommand,            "", nullptr},
        { "god",            RANK_ADMIN,     false, &ChatHandler::HandleGodCommand,                 "", nullptr },
        { "aura",           RANK_ADMIN,     false, &ChatHandler::HandleAuraCommand,                "", nullptr },
        { "unaura",         RANK_ADMIN,     false, &ChatHandler::HandleUnAuraCommand,              "", nullptr },
        { "announce",       RANK_ADMIN,    true,  &ChatHandler::HandleAnnounceCommand,            "", nullptr },
        { "notify",         RANK_ADMIN,    true,  &ChatHandler::HandleNotifyCommand,              "", nullptr },
        { "goname",         RANK_ADMIN, false, &ChatHandler::HandleGonameCommand,              "", nullptr },
        { "summon",         RANK_ADMIN, false, &ChatHandler::HandleSummonCommand,              "", nullptr },
        { "groupgo",        RANK_ADMIN, false, &ChatHandler::HandleGroupgoCommand,             "", nullptr },
        { "appear",         RANK_ADMIN, false, &ChatHandler::HandleGonameCommand,              "", nullptr },
        { "groupsummon",    RANK_ADMIN, false, &ChatHandler::HandleGroupgoCommand,             "", nullptr },
        { "commands",       RANK_ADMIN,         true,  &ChatHandler::HandleCommandsCommand,            "", nullptr },
        { "demorph",        RANK_ADMIN,     false, &ChatHandler::HandleDeMorphCommand,             "", nullptr },
        { "die",            RANK_ADMIN,     false, &ChatHandler::HandleDieCommand,                 "", nullptr },
        { "fear",           RANK_ADMIN,     false, &ChatHandler::HandleFearCommand,                "", nullptr },
        { "revive",         RANK_ADMIN,     true,  &ChatHandler::HandleReviveCommand,              "", nullptr },
        { "replenish",      RANK_ADMIN,     false, &ChatHandler::HandleReplenishCommand,           "", nullptr },
        { "dismount",       RANK_ADMIN,         false, &ChatHandler::HandleDismountCommand,            "", nullptr },
        { "gps",            RANK_ADMIN,      false, &ChatHandler::HandleGPSCommand,                 "", nullptr },
        { "help",           RANK_ADMIN,         true,  &ChatHandler::HandleHelpCommand,                "", nullptr },
        { "itemmove",       RANK_ADMIN,     false, &ChatHandler::HandleItemMoveCommand,            "", nullptr },
        { "cooldown",       RANK_ADMIN,     false, &ChatHandler::HandleCooldownCommand,            "", nullptr },
        { "unlearn",        RANK_ADMIN,     false, &ChatHandler::HandleUnLearnCommand,             "", nullptr },
        { "distance",       RANK_ADMIN,      false, &ChatHandler::HandleGetDistanceCommand,         "", nullptr },
        { "recall",         RANK_ADMIN,      false, &ChatHandler::HandleRecallCommand,              "", nullptr },
        { "save",           RANK_ADMIN,         false, &ChatHandler::HandleSaveCommand,                "", nullptr },
        { "wareffortget",   RANK_ADMIN,  true,  &ChatHandler::HandleGetWarEffortResource,       "", nullptr },
        { "wareffortset",   RANK_ADMIN,  true,  &ChatHandler::HandleSetWarEffortResource,       "", nullptr },
        { "saveall",        RANK_ADMIN,  true,  &ChatHandler::HandleSaveAllCommand,             "", nullptr },
        { "kick",           RANK_ADMIN, true,  &ChatHandler::HandleKickPlayerCommand,          "", nullptr },
        { "ban",            RANK_ADMIN, true, nullptr,                                         "", banCommandTable      },
        { "unban",          RANK_ADMIN,  true, nullptr,                                         "", unbanCommandTable    },
        { "baninfo",        RANK_ADMIN, false, nullptr,                                        "", baninfoCommandTable  },
        { "banlist",        RANK_ADMIN, true, nullptr,                                         "", banlistCommandTable  },
        { "start",          RANK_ADMIN,         false, &ChatHandler::HandleStartCommand,               "", nullptr },
        { "unstuck",        RANK_ADMIN,         false, &ChatHandler::HandleUnstuckCommand,             "", nullptr },
        { "taxicheat",      RANK_ADMIN,      false, &ChatHandler::HandleTaxiCheatCommand,           "", nullptr },
        { "linkgrave",      RANK_ADMIN,     false, &ChatHandler::HandleLinkGraveCommand,           "", nullptr },
        { "neargrave",      RANK_ADMIN, false, &ChatHandler::HandleNearGraveCommand,           "", nullptr },
        { "explorecheat",   RANK_ADMIN, false, &ChatHandler::HandleExploreCheatCommand,        "", nullptr },
        { "hover",          RANK_ADMIN, false, &ChatHandler::HandleHoverCommand,               "", nullptr },
        { "levelup",        RANK_ADMIN,     false, &ChatHandler::HandleLevelUpCommand,             "", nullptr },
        { "showarea",       RANK_ADMIN, false, &ChatHandler::HandleShowAreaCommand,            "", nullptr },
        { "hidearea",       RANK_ADMIN, false, &ChatHandler::HandleHideAreaCommand,            "", nullptr },
        { "additem",        RANK_ADMIN,     false, &ChatHandler::HandleAddItemCommand,             "", nullptr },
        { "deleteitem",     RANK_ADMIN,     false, &ChatHandler::HandleDeleteItemCommand,          "", nullptr },
        { "additemset",     RANK_ADMIN,     false, &ChatHandler::HandleAddItemSetCommand,          "", nullptr },
        { "bank",           RANK_ADMIN, false, &ChatHandler::HandleBankCommand,                "", nullptr },
        { "wchange",        RANK_ADMIN,    false, &ChatHandler::HandleChangeWeatherCommand,       "", nullptr },
        { "ticket",         RANK_ADMIN, true, nullptr,                                         "",ticketCommandTable },
        { "maxskill",       RANK_ADMIN,     false, &ChatHandler::HandleMaxSkillCommand,            "", nullptr },
        { "setskill",       RANK_ADMIN,     false, &ChatHandler::HandleSetSkillCommand,            "", nullptr },
        { "whispers",       RANK_ADMIN,      false, &ChatHandler::HandleWhispersCommand,            "", nullptr },
        { "pinfo",          RANK_ADMIN,     false, &ChatHandler::HandlePInfoCommand,               "", nullptr },
        { "groupinfo",      RANK_ADMIN,     true,  &ChatHandler::HandleGroupInfoCommand,           "", nullptr },
        { "addons",         RANK_ADMIN,     false, &ChatHandler::HandleListAddonsCommand,          "", nullptr },
        { "respawn",        RANK_ADMIN,    false, &ChatHandler::HandleRespawnCommand,             "", nullptr },
        { "send",           RANK_ADMIN,      true, nullptr,                                         "", sendCommandTable     },
        { "mute",           RANK_ADMIN,      true,  &ChatHandler::HandleMuteCommand,                "", nullptr },
        { "unmute",         RANK_ADMIN, true,  &ChatHandler::HandleUnmuteCommand,              "", nullptr },
        { "movegens",       RANK_ADMIN, false, &ChatHandler::HandleMovegensCommand,            "", nullptr },
        { "cometome",       RANK_ADMIN,     false, &ChatHandler::HandleComeToMeCommand,            "", nullptr },
        { "damage",         RANK_ADMIN,     false, &ChatHandler::HandleDamageCommand,              "", nullptr },
        { "combatstop",     RANK_ADMIN,     false, &ChatHandler::HandleCombatStopCommand,          "", nullptr },
        { "repairitems",    RANK_ADMIN,     true,  &ChatHandler::HandleRepairitemsCommand,         "", nullptr },
        { "waterwalk",      RANK_ADMIN,     false, &ChatHandler::HandleWaterwalkCommand,           "", nullptr },
        { "quit",           RANK_CONSOLE,        true,  &ChatHandler::HandleQuitCommand,                "", nullptr },
        { "freeze",         RANK_ADMIN, false, &ChatHandler::HandleFreezeCommand,              "", nullptr },
        { "unfreeze",       RANK_ADMIN, false, &ChatHandler::HandleUnfreezeCommand,            "", nullptr },
        { "anticheat",      RANK_ADMIN,     false, nullptr,                                        "", anticheatCommandTable },
        { "pet",            RANK_ADMIN,     true, nullptr,                                         "", petCommandTable},
        { "gold",           RANK_ADMIN,    true, nullptr,                                         "", goldCommandTable },
            // Turtle WoW
        { "balance",        RANK_ADMIN,    true,  &ChatHandler::HandleBalanceCommand,             "", nullptr },
       // {"sendmails", RANK_ADMIN, true, &ChatHandler::HandleSendMailsCommand, "", nullptr},
        { "mailbox",         RANK_ADMIN,     false,  &ChatHandler::HandleMailboxCommand,           "", nullptr },
        { "sale",           RANK_ADMIN,    true,  &ChatHandler::HandleSaleCommand,                "", nullptr },
        { "mount",          RANK_ADMIN,     false, &ChatHandler::HandleMountCommand,               "", nullptr },
        { "transfer",       RANK_ADMIN,     false, &ChatHandler::HandleTransferCommand,                 "", nullptr },
        { "bgtest",         RANK_ADMIN,  false, &ChatHandler::HandleBgTestCommand,                 "", nullptr },
        { "cinematic",      RANK_ADMIN,  false, &ChatHandler::HandleTurtleCinematic,                 "", nullptr },
        { "dbghard",        RANK_ADMIN,  false,  &ChatHandler::HandleFastDebugCommand,                  "", nullptr },
        { "debugloot",      RANK_ADMIN,  true,   &ChatHandler::HandleDebugLootTableCommand, "", nullptr },
        { "copy",           RANK_ADMIN,         false,  &ChatHandler::HandleCopyCommand,                  "", nullptr },
        { "sendpacket",     RANK_ADMIN,  false,  &ChatHandler::HandleSendPacketCommand,                  "", nullptr },
        { "shop",           RANK_ADMIN,     true,  nullptr,                                         "", shopCommandTable },
        { "path",           RANK_ADMIN,     true,  nullptr,                                         "", pathCommandTable },
        { "xp",             RANK_ADMIN,         false, &ChatHandler::HandleXPCommand,                     "", nullptr },
        { "hcinvite",       RANK_ADMIN,         false, &ChatHandler::HandleHCInviteCommand,                     "", nullptr },
        { "settime",        RANK_ADMIN,     false, &ChatHandler::HandleSetTimeCommand, "", nullptr},
        { "play",           RANK_ADMIN,     false, &ChatHandler::HandlePlayCommand, "", nullptr},
        { "getskillvalue",  RANK_ADMIN,     false, &ChatHandler::HandleGetSkillValueCommand, "", nullptr},
        { "anonymous",      RANK_ADMIN,     false, nullptr,                                       "", anonymousCommandTable},

        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    if (load_command_table)
    {
        load_command_table = false;

        // check hardcoded part integrity
        //CheckIntegrity(commandTable, nullptr);
        FillFullCommandsName(commandTable, "");

        QueryResult *result = WorldDatabase.Query("SELECT `name`, `rank` FROM `command`");
        if (result)
        {
            do
            {
                Field *fields = result->Fetch();
                std::string name = fields[0].GetCppString();
                std::string RankName = fields[1].GetCppString();
                strToLower(RankName);
                uint32 RankValue = sAccountMgr.GetRankValue(RankName);

                SetDataForCommandInTable(commandTable, name.c_str(), RankValue);

            }
            while (result->NextRow());

            delete result;
        }
    }

    return commandTable;
}

ChatHandler::ChatHandler(WorldSession* session) :
    m_session(session), sentErrorMessage(false)
{
}

ChatHandler::ChatHandler(Player* player) : ChatHandler(player->GetSession()) {}

ChatHandler::~ChatHandler() {}

const char *ChatHandler::GetMangosString(int32 entry) const
{
    return m_session->GetMangosString(entry);
}

const char *ChatHandler::GetOnOffStr(bool value) const
{
    return value ?  GetMangosString(LANG_ON) : GetMangosString(LANG_OFF);
}

uint32 ChatHandler::GetAccountId() const
{
    return m_session->GetAccountId();
}

uint32 ChatHandler::GetAccessLevel() const
{
    return m_session->GetSecurity();
}

bool ChatHandler::isAvailable(ChatCommand const& cmd) const
{
    // check security level only for simple  command (without child commands)
    uint32 Rank = GetAccessLevel();
    if (Rank & RANK_ADMIN)
    {
        return true;
    }

    if (Rank & RANK_CONSOLE)
    {
        return true;
    }
    return Rank & cmd.RequiredRank;
}

std::string ChatHandler::GetNameLink() const
{
    return GetNameLink(m_session->GetPlayer());
}

bool ChatHandler::hasStringAbbr(const char* name, const char* part)
{
    // non "" command
    if (*name)
    {
        // "" part from non-"" command
        if (!*part)
            return false;

        for (;;)
        {
            if (!*part)
                return true;
            else if (!*name)
                return false;
            else if (tolower(*name) != tolower(*part))
                return false;
            ++name;
            ++part;
        }
    }
    // allow with any for ""

    return true;
}

void ChatHandler::SendSysMessage(const char *str)
{
    WorldPacket data;

    // need copy to prevent corruption by strtok call in LineFromMessage original string
    char* buf = mangos_strdup(str);
    char* pos = buf;

    while (char* line = LineFromMessage(pos))
    {
        ChatHandler::BuildChatPacket(data, CHAT_MSG_SYSTEM, line);
        m_session->SendPacket(&data);
    }

    delete [] buf;
    SetSentErrorMessage(true);
}

void ChatHandler::SendGlobalSysMessage(const char *str)
{
    // Chat output
    WorldPacket data;

    // need copy to prevent corruption by strtok call in LineFromMessage original string
    char* buf = mangos_strdup(str);
    char* pos = buf;

    while (char* line = LineFromMessage(pos))
    {
        ChatHandler::BuildChatPacket(data, CHAT_MSG_SYSTEM, line);
        sWorld.SendGlobalMessage(&data);
    }

    delete [] buf;
}

void ChatHandler::SendSysMessage(int32 entry)
{
    SendSysMessage(GetMangosString(entry));
}

void ChatHandler::PSendSysMessage(int32 entry, ...)
{
    const char *format = GetMangosString(entry);
    va_list ap;
    char str [2048];
    va_start(ap, entry);
    vsnprintf(str, 2048, format, ap);
    va_end(ap);
    SendSysMessage(str);
}

void ChatHandler::PSendSysMessage(const char *format, ...)
{
    va_list ap;
    char str [2048];
    va_start(ap, format);
    vsnprintf(str, 2048, format, ap);
    va_end(ap);
    SendSysMessage(str);
}

std::string ChatHandler::PGetParseString(int32 entry, ...)
{
    const char *format = GetMangosString(entry);
    va_list ap;
    char str [2048];
    va_start(ap, entry);
    vsnprintf(str, 2048, format, ap);
    va_end(ap);
    return std::string(str);
}

void ChatHandler::FillFullCommandsName(ChatCommand* table, std::string prefix)
{
    for (uint32 i = 0; table[i].Name != nullptr; ++i)
    {
        std::string newPrefix = prefix;
        if (!newPrefix.empty())
            newPrefix += " ";

        newPrefix += table[i].Name;
        table[i].FullName = newPrefix;

        if (table[i].ChildCommands)
            FillFullCommandsName(table[i].ChildCommands, newPrefix);

    }
}

void ChatHandler::CheckIntegrity(ChatCommand *table, ChatCommand *parentCommand)
{
    for (uint32 i = 0; table[i].Name != nullptr; ++i)
    {
        ChatCommand* command = &table[i];

        if (parentCommand && command->RequiredRank < parentCommand->RequiredRank)
            sLog.outError("Subcommand '%s' of command '%s' have less access level (%hhu) that parent (%hhu)",
                          command->Name, parentCommand->Name, command->RequiredRank, parentCommand->RequiredRank);

        if (!parentCommand && strlen(command->Name) == 0)
            sLog.outError("Subcommand '' at top level");

        if (command->ChildCommands)
        {
            if (command->Handler)
            {
                if (parentCommand)
                    sLog.outError("Subcommand '%s' of command '%s' have handler and subcommands in same time, must be used '' subcommand for handler instead.",
                                  command->Name, parentCommand->Name);
                else
                    sLog.outError("First level command '%s' have handler and subcommands in same time, must be used '' subcommand for handler instead.",
                                  command->Name);
            }

            if (parentCommand && strlen(command->Name) == 0)
                sLog.outError("Subcommand '' of command '%s' have subcommands", parentCommand->Name);

            CheckIntegrity(command->ChildCommands, command);
        }
        else if (!command->Handler)
        {
            if (parentCommand)
                sLog.outError("Subcommand '%s' of command '%s' not have handler and subcommands in same time. Must have some from its!",
                              command->Name, parentCommand->Name);
            else
                sLog.outError("First level command '%s' not have handler and subcommands in same time. Must have some from its!",
                              command->Name);
        }
    }
}

/**
 * Search (sub)command for command line available for chat handler access level
 *
 * @param text  Command line string that will parsed for (sub)command search
 *
 * @return Pointer to found command structure or nullptr if appropriate command not found
 */
ChatCommand const* ChatHandler::FindCommand(char const* text)
{
    ChatCommand* command = nullptr;
    char const* textPtr = text;

    return FindCommand(getCommandTable(), textPtr, command) == CHAT_COMMAND_OK ? command : nullptr;
}

/**
 * Search (sub)command for command line available for chat handler access level with options and fail case additional info
 *
 * @param table         Pointer to command C-style array first level command where will be searched
 * @param text          Command line string that will parsed for (sub)command search,
 *                      it modified at return from function and pointed to not parsed tail
 * @param command       At success this is found command, at other cases this is last found parent command
 *                      before subcommand search fail
 * @param parentCommand Output arg for optional return parent command for command arg.
 * @param cmdNamePtr    Output arg for optional return last parsed command name.
 * @param allAvailable  Optional arg (with false default value) control use command access level checks while command search.
 * @param exactlyName   Optional arg (with false default value) control use exactly name in checks while command search.
 *
 * @return one from enum value of ChatCommandSearchResult. Output args return values highly dependent from this return result:
 *
 *      CHAT_COMMAND_OK       - Command found!
 *                              text point to non parsed tail with possible command specific data, command store found command pointer,
 *                              parentCommand have parent of found command or nullptr if command found in table array directly
 *                              cmdNamePtr store found command name in original form from command line
 *      CHAT_COMMAND_UNKNOWN  - Command not found in table directly
 *                              text only skip possible whitespaces,
 *                              command is nullptr
 *                              parentCommand is nullptr
 *                              cmdNamePtr store command name that not found as it extracted from command line
 *      CHAT_COMMAND_UNKNOWN_SUBCOMMAND - Subcommand not found in some deed subcomand lists
 *                              text point to non parsed tail including not found command name in command line,
 *                              command store last found parent command if any
 *                              parentCommand have parent of command in command arg or nullptr
 *                              cmdNamePtr store command name that not found as it extracted from command line
 */
ChatCommandSearchResult ChatHandler::FindCommand(ChatCommand* table, char const* &text, ChatCommand*& command, ChatCommand** parentCommand /*= nullptr*/, std::string* cmdNamePtr /*= nullptr*/, bool allAvailable /*= false*/, bool exactlyName /*= false*/)
{
    std::string cmd;

    // skip whitespaces
    while (*text != ' ' && *text != '\0')
    {
        cmd += *text;
        ++text;
    }

    while (*text == ' ') ++text;

    // search first level command in table
    for (uint32 i = 0; table[i].Name != nullptr; ++i)
    {
        if (exactlyName)
        {
            size_t len = strlen(table[i].Name);
            if (strncmp(table[i].Name, cmd.c_str(), len + 1) != 0)
                continue;
        }
        else
        {
            if (!hasStringAbbr(table[i].Name, cmd.c_str()))
                continue;
        }
        // select subcommand from child commands list
        if (table[i].ChildCommands != nullptr)
        {
            char const* oldchildtext = text;
            ChatCommand* parentSubcommand = nullptr;
            ChatCommandSearchResult res = FindCommand(table[i].ChildCommands, text, command, &parentSubcommand, cmdNamePtr, allAvailable, exactlyName);

            switch (res)
            {
                case CHAT_COMMAND_OK:
                {
                    // if subcommand success search not return parent command, then this parent command is owner of child commands
                    if (parentCommand)
                        *parentCommand = parentSubcommand ? parentSubcommand : &table[i];

                    // Name == "" is special case: restore original command text for next level "" (where parentSubcommand==nullptr)
                    if (strlen(command->Name) == 0 && !parentSubcommand)
                        text = oldchildtext;

                    return CHAT_COMMAND_OK;
                }
                case CHAT_COMMAND_UNKNOWN:
                {
                    // command not found directly in child command list, return child command list owner
                    command = &table[i];
                    if (parentCommand)
                        *parentCommand = nullptr;              // we don't known parent of table list at this point

                    text = oldchildtext;                    // restore text to stated just after parse found parent command
                    return CHAT_COMMAND_UNKNOWN_SUBCOMMAND; // we not found subcommand for table[i]
                }
                case CHAT_COMMAND_UNKNOWN_SUBCOMMAND:
                default:
                {
                    // some deep subcommand not found, if this second level subcommand then parentCommand can be nullptr, use known value for it
                    if (parentCommand)
                        *parentCommand = parentSubcommand ? parentSubcommand : &table[i];
                    return res;
                }
            }
        }

        // must be available (not checked for subcommands case because parent command expected have most low access that all subcommands always
        if (!allAvailable && !isAvailable(table[i]))
            continue;

        // must be have handler is explicitly selected
        if (!table[i].Handler)
            continue;

        // command found directly in to table
        command = &table[i];

        // unknown table owner at this point
        if (parentCommand)
            *parentCommand = nullptr;

        if (cmdNamePtr)
            *cmdNamePtr = cmd;

        return CHAT_COMMAND_OK;
    }

    // command not found in table directly
    command = nullptr;

    // unknown table owner at this point
    if (parentCommand)
        *parentCommand = nullptr;

    if (cmdNamePtr)
        *cmdNamePtr = cmd;

    return CHAT_COMMAND_UNKNOWN;
}

/**
 * Execute (sub)command available for chat handler access level with options in command line string
 *
 * @param text  Command line string that will parsed for (sub)command search and command specific data
 *
 * Command output and errors in command execution will send to chat handler.
 */
void ChatHandler::ExecuteCommand(const char* text)
{
    std::string fullcmd = text;                             // original `text` can't be used. It content destroyed in command code processing.

    ChatCommand* command = nullptr;
    ChatCommand* parentCommand = nullptr;

    ChatCommandSearchResult res = FindCommand(getCommandTable(), text, command, &parentCommand);

    switch (res)
    {
        case CHAT_COMMAND_OK:
        {
            std::string realCommandFull = command->FullName;

            if (text[0])
            {
                realCommandFull += " ";
                realCommandFull += text;
            }
            if (m_session && command->Flags & COMMAND_FLAGS_ONLY_ON_SELF)
            {
                ObjectGuid selGuid = m_session->GetPlayer()->GetSelectionGuid();
                if (!selGuid.IsEmpty() && selGuid != m_session->GetPlayer()->GetObjectGuid())
                {
                    PSendSysMessage("|cFF8DE2FFYou can use the command [%s] only on yourself|r", command->FullName.c_str());
                    return;
                }
            }
            SetSentErrorMessage(false);

            // Always log GM commands, regardless of success
            if (command->RequiredRank > SEC_PLAYER)
            {
                // chat case
                if (m_session && m_session->GetPlayer())
                {
                    Player* p = m_session->GetPlayer();
                    ObjectGuid sel_guid = p->GetSelectionGuid();
                    sLog.outCommand(GetAccountId(), "Command: %s [Player: %s (Group Leader \"%s\", Account: %u) X: %f Y: %f Z: %f O: %f Map: %u Selected: %s]",
                        realCommandFull.c_str(), p->GetName(), p->GetGroup() ? p->GetGroup()->GetLeaderGuid().GetString().c_str() : "NULL", GetAccountId(), p->GetPositionX(), p->GetPositionY(), p->GetPositionZ(), p->GetOrientation(), p->GetMapId(),
                        sel_guid.GetString().c_str());
                }
                else                                        // 0 account -> console
                {
                    sLog.outCommand(GetAccountId(), "Command: %s [Account: %u from %s]",
                        realCommandFull.c_str(), GetAccountId(), GetAccountId() ? "RA-connection" : "Console");
                }
            }

            if ((this->*(command->Handler))((char*)text))   // text content destroyed at call
            {
                if (m_session && command->Flags & COMMAND_FLAGS_CRITICAL)
                {
                    if (Unit* target = GetSelectedUnit())
                        sLog.out(LOG_GM_CRITICAL, "%s: %s. Selected %s. Map %u", m_session->GetUsername().c_str(), realCommandFull.c_str(), target->GetObjectGuid().GetString().c_str(), target->GetMapId());
                    else
                        sLog.out(LOG_GM_CRITICAL, "%s: %s.", m_session->GetUsername().c_str(), realCommandFull.c_str());
                }
            }
            // some commands have custom error messages. Don't send the default one in these cases.
            else if (!HasSentErrorMessage())
            {
                if (!command->Help.empty())
                    SendSysMessage(command->Help.c_str());
                else
                    SendSysMessage(LANG_CMD_SYNTAX);

                if (ChatCommand* showCommand = (strlen(command->Name) == 0 && parentCommand ? parentCommand : command))
                    if (ChatCommand* childs = showCommand->ChildCommands)
                        ShowHelpForSubCommands(childs, showCommand->Name);

                SetSentErrorMessage(true);
            }
            break;
        }
        case CHAT_COMMAND_UNKNOWN_SUBCOMMAND:
        {
            SendSysMessage(LANG_NO_SUBCMD);
            ShowHelpForCommand(command->ChildCommands, text);
            SetSentErrorMessage(true);
            break;
        }
        case CHAT_COMMAND_UNKNOWN:
        {
            SendSysMessage(LANG_NO_CMD);
            SetSentErrorMessage(true);
            break;
        }
    }
}

bool ChatHandler::IsAdmin(Player* player) const
{
    if (player == nullptr)
    {
        return false;
    }

    if (WorldSession* PlayerSession = player->GetSession())
    {
        return PlayerSession->GetSecurity() & RANK_ADMIN;
    }
    else
    {
        return IsAdmin(player->GetObjectGuid());
    }

    return false;
}

bool ChatHandler::IsAdmin(ObjectGuid ObjPlayer) const
{
    uint32 AccountId = sObjectMgr.GetPlayerAccountIdByGUID(ObjPlayer);
    return IsAdmin(AccountId);
}

bool ChatHandler::IsAdmin(uint32 AccountId) const
{
    uint32 Ranks = sAccountMgr.GetSecurityRanks(AccountId);
    return Ranks & RANK_ADMIN;
}

/**
 * Function find appropriate command and update command security level and help text
 *
 * @param commandTable  Table for first level command search
 * @param text          Command line string that will parsed for (sub)command search
 * @param security      New security level for command
 * @param help          New help text  for command
 *
 * @return true if command has been found, and false in other case
 *
 * All problems found while command search and updated output as to DB errors log
 */
bool ChatHandler::SetDataForCommandInTable(ChatCommand *table, const char* text, uint32 security)
{
    std::string fullcommand = text;                         // original `text` can't be used. It content destroyed in command code processing.

    ChatCommand* command = nullptr;
    std::string cmdName;

    ChatCommandSearchResult res = FindCommand(table, text, command, nullptr, &cmdName, true, true);

    switch (res)
    {
        case CHAT_COMMAND_OK:
        {
            if (command->RequiredRank != security)
                DETAIL_LOG("Table `command` overwrite for command '%s' default security (%hhu) by %hhu",
                           fullcommand.c_str(), command->RequiredRank, security);

            command->RequiredRank = security;
            command->Help          = "";
            command->Flags         = 0;
            return true;
        }
        case CHAT_COMMAND_UNKNOWN_SUBCOMMAND:
        {
            // command have subcommands, but not '' subcommand and then any data in `command` useless for it.
            if (cmdName.empty())
                sLog.outErrorDb("Table `command` have command '%s' that only used with some subcommand selection, it can't have help or overwritten access level, skip.", cmdName.c_str());
            else
                sLog.outErrorDb("Table `command` have unexpected subcommand '%s' in command '%s', skip.", cmdName.c_str(), fullcommand.c_str());
            return false;
        }
        case CHAT_COMMAND_UNKNOWN:
        {
            sLog.outErrorDb("Table `command` have nonexistent command '%s', skip.", cmdName.c_str());
            return false;
        }
    }

    return false;
}

bool ChatHandler::ParseCommands(const char* text)
{
    MANGOS_ASSERT(text);
    MANGOS_ASSERT(*text);

    /// chat case (.command or !command format)
    if (m_session)
    {
        if (text[0] != '!' && text[0] != '.')
            return false;

        /// ignore single . and ! in line
        if (strlen(text) < 2)
            return false;

        if (m_session->GetSecurity() == SEC_PLAYER && !sWorld.getConfig(CONFIG_BOOL_PLAYER_COMMANDS))
            return false;
    }

    /// ignore messages staring from many dots.
    if ((text[0] == '.' && text[1] == '.') || (text[0] == '!' && text[1] == '!'))
        return false;

    /// skip first . or ! (in console allowed use command with . and ! and without its)
    if (text[0] == '!' || text[0] == '.')
        ++text;

    ExecuteCommand(text);

    return true;
}

bool ChatHandler::ShowHelpForSubCommands(ChatCommand *table, char const* cmd)
{
    std::string list;
    for (uint32 i = 0; table[i].Name != nullptr; ++i)
    {
        // must be available (ignore handler existence for show command with possible available subcommands
        if (!isAvailable(table[i]))
            continue;

        if (m_session)
            list += "\n    ";
        else
            list += "\n\r    ";

        list += table[i].Name;

        if (table[i].ChildCommands)
            list += " ...";
    }

    if (list.empty())
        return false;

    if (table == getCommandTable())
    {
        SendSysMessage(LANG_AVIABLE_CMD);
        SendSysMessage(list.c_str());
    }
    else
    {
        PSendSysMessage(LANG_SUBCMDS_LIST, cmd);
        SendSysMessage(list.c_str());
    }
    return true;
}

bool ChatHandler::ShowHelpForCommand(ChatCommand *table, const char* cmd)
{
    char const* oldCmd = cmd;
    ChatCommand* command = nullptr;
    ChatCommand* parentCommand = nullptr;

    ChatCommand* showCommand = nullptr;
    ChatCommand* childCommands = nullptr;

    ChatCommandSearchResult res = FindCommand(table, cmd, command, &parentCommand);

    switch (res)
    {
        case CHAT_COMMAND_OK:
        {
            // for "" subcommand use parent command if any for subcommands list output
            if (strlen(command->Name) == 0 && parentCommand)
                showCommand = parentCommand;
            else
                showCommand = command;

            childCommands = showCommand->ChildCommands;
            break;
        }
        case CHAT_COMMAND_UNKNOWN_SUBCOMMAND:
            showCommand = command;
            childCommands = showCommand->ChildCommands;
            break;
        case CHAT_COMMAND_UNKNOWN:
            // not show command list at error in first level command find fail
            childCommands = table != getCommandTable() || strlen(oldCmd) == 0 ? table : nullptr;
            command = nullptr;
            break;
    }

    if (command && !command->Help.empty())
        SendSysMessage(command->Help.c_str());

    if (childCommands)
        if (ShowHelpForSubCommands(childCommands, showCommand ? showCommand->Name : ""))
            return true;

    if (command && command->Help.empty())
        SendSysMessage(LANG_NO_HELP_CMD);

    return command || childCommands;
}

bool ChatHandler::isValidChatMessage(const char* message)
{
    /*

    valid examples:
    |cffa335ee|Hitem:812:0:0:0:0:0:0:0:70|h[Glowing Brightwood Staff]|h|r
    |cff808080|Hquest:2278:47|h[The Platinum Discs]|h|r
    |cff4e96f7|Htalent:2232:-1|h[Taste for Blood]|h|r
    |cff71d5ff|Hspell:21563|h[Command]|h|r
    |cffffd000|Henchant:3919|h[Engineering: Rough Dynamite]|h|r

    | will be escaped to ||
    */

    if (strlen(message) > 255)
        return false;

    const char validSequence[6] = "cHhhr";
    const char* validSequenceIterator = validSequence;

    // more simple checks
    if (sWorld.getConfig(CONFIG_UINT32_CHAT_STRICT_LINK_CHECKING_SEVERITY) < 3)
    {
        const std::string validCommands = "cHhr|";

        while (*message)
        {
            // find next pipe command
            message = strchr(message, '|');

            if (!message)
                return true;

            ++message;
            char commandChar = *message;
            if (validCommands.find(commandChar) == std::string::npos)
                return false;

            ++message;
            // validate sequence
            if (sWorld.getConfig(CONFIG_UINT32_CHAT_STRICT_LINK_CHECKING_SEVERITY) == 2)
            {
                if (commandChar == *validSequenceIterator)
                {
                    if (validSequenceIterator == validSequence + 4)
                        validSequenceIterator = validSequence;
                    else
                        ++validSequenceIterator;
                }
                else if (commandChar != '|')
                    return false;
            }
        }
        return true;
    }

    std::istringstream reader(message);
    char buffer[256];

    uint32 color = 0;

    ItemPrototype const* linkedItem = nullptr;
    const SpellEntry* linkedSpell = nullptr;

    std::list<int> properties;

    while (!reader.eof())
    {
        if (validSequence == validSequenceIterator)
        {
            linkedItem = nullptr;

            reader.ignore(255, '|');
        }
        else if (reader.get() != '|')
        {
            DEBUG_LOG("ChatHandler::isValidChatMessage sequence aborted unexpectedly");
            return false;
        }

        // pipe has always to be followed by at least one char
        if (reader.peek() == '\0')
        {
            DEBUG_LOG("ChatHandler::isValidChatMessage pipe followed by \\0");
            return false;
        }

        // no further pipe commands
        if (reader.eof())
            break;

        char commandChar;
        reader >> std::noskipws >> commandChar;

        // | in normal messages is escaped by ||
        if (commandChar != '|')
        {
            if (commandChar == *validSequenceIterator)
            {
                if (validSequenceIterator == validSequence + 4)
                    validSequenceIterator = validSequence;
                else
                    ++validSequenceIterator;
            }
            else
            {
                DEBUG_LOG("ChatHandler::isValidChatMessage invalid sequence, expected %c but got %c", *validSequenceIterator, commandChar);
                return false;
            }
        }
        else if (validSequence != validSequenceIterator)
        {
            // no escaped pipes in sequences
            DEBUG_LOG("ChatHandler::isValidChatMessage got escaped pipe in sequence");
            return false;
        }

        switch (commandChar)
        {
            case 'c':
                color = 0;
                // validate color, expect 8 hex chars
                for (int i = 0; i < 8; i++)
                {
                    char c;
                    reader >> c;
                    if (!c)
                    {
                        DEBUG_LOG("ChatHandler::isValidChatMessage got \\0 while reading color in |c command");
                        return false;
                    }

                    color <<= 4;
                    // check for hex char
                    if (c >= '0' && c <= '9')
                    {
                        color |= c - '0';
                        continue;
                    }
                    if (c >= 'a' && c <= 'f')
                    {
                        color |= 10 + c - 'a';
                        continue;
                    }
                    DEBUG_LOG("ChatHandler::isValidChatMessage got non hex char '%c' while reading color", c);
                    return false;
                }
                break;
            case 'H':
                // read chars up to colon  = link type
                reader.getline(buffer, 256, ':');
                if (reader.eof())                           // : must be
                    return false;

                if (strcmp(buffer, "item") == 0)
                {
                    // read item entry
                    reader.getline(buffer, 256, ':');
                    if (reader.eof())                       // : must be
                        return false;

                    linkedItem = ObjectMgr::GetItemPrototype(atoi(buffer));
                    if (!linkedItem)
                    {
                        DEBUG_LOG("ChatHandler::isValidChatMessage got invalid itemID %u in |item command", atoi(buffer));
                        return false;
                    }

                    if (color != ItemQualityColors[linkedItem->Quality])
                    {
                        DEBUG_LOG("ChatHandler::isValidChatMessage linked item has color %u, but user claims %u", ItemQualityColors[linkedItem->Quality],
                                  color);
                        return false;
                    }

                    // the itementry is followed by several integers which describe an instance of this item
                    int32 propertyId = 0, propCount = 0;
                    bool negativeNumber = false;
                    char c = 0;
                    while (reader.peek() != '|' && !reader.eof() && propCount < 3)
                    {
                        c = reader.get();

                        // Reset at the property switch
                        if (c == ':')
                        {
                            if (negativeNumber)
                                propertyId *= -1;

                            ++propCount;
                            // Only check if it's a non-zero prop
                            if (propertyId > 0)
                                properties.push_back(propertyId);

                            propertyId = 0;
                            negativeNumber = false;

                            continue;
                        }

                        if (c >= '0' && c <= '9')
                        {
                            propertyId *= 10;
                            propertyId += c - '0';
                        }
                        else if (c == '-')
                            negativeNumber = true;
                        else
                            return false;
                    }

                    // ignore other integers
                    c = reader.peek();
                    while (((c >= '0' && c <= '9') || c == ':') && c != '|' && !reader.eof())
                    {
                        reader.ignore(1);
                        c = reader.peek();
                    }
                }
                else if (strcmp(buffer, "enchant") == 0)
                {
                    if (color != CHAT_LINK_COLOR_ENCHANT)
                        return false;

                    uint32 spellid = 0;
                    // read spell entry
                    char c = reader.peek();
                    while (c >= '0' && c <= '9')
                    {
                        reader.ignore(1);
                        spellid *= 10;
                        spellid += c - '0';
                        c = reader.peek();
                    }
                    linkedSpell = sSpellMgr.GetSpellEntry(spellid);
                    if (!linkedSpell)
                        return false;
                }
                else
                {
                    DEBUG_LOG("ChatHandler::isValidChatMessage user sent unsupported link type '%s'", buffer);
                    return false;
                }
                break;
            case 'h':
                // if h is next element in sequence, this one must contain the linked text :)
                if (*validSequenceIterator == 'h')
                {
                    // links start with '['
                    if (reader.get() != '[')
                    {
                        DEBUG_LOG("ChatHandler::isValidChatMessage link caption doesn't start with '['");
                        return false;
                    }
                    reader.getline(buffer, 256, ']');
                    if (reader.eof())                       // ] must be
                        return false;

                    // verify the link name
                    if (linkedSpell)
                    {
                        bool foundName = false;
                        for (uint8 i = 0; i < MAX_DBC_LOCALE; ++i)
                        {
                            if (!linkedSpell->SpellName[i].empty() && strcmp(linkedSpell->SpellName[i].c_str(), buffer) == 0)
                            {
                                foundName = true;
                                break;
                            }
                        }
                        if (!foundName)
                            return false;
                    }
                    else if (linkedItem)
                    {
                        bool hasValidRandomProperty = false;
                        bool hasRandomProperty = linkedItem->RandomProperty > 0;
                        int enchantCount = 0;

                        // Item has no random property. All properties must be enchants, of which
                        // there can only be two. One permanent, one temporary
                        if (!hasRandomProperty && properties.size() > 2)
                            return false;

                        const ItemRandomPropertiesEntry* iProp = nullptr;
                        for (const auto prop : properties)
                        {
                            iProp = nullptr;

                            if (!hasRandomProperty)
                            {
                                if (sSpellItemEnchantmentStore.LookupEntry(prop))
                                    ++enchantCount;
                                else
                                    return false;
                            }
                            else
                            {
                                // This is tricky - some enchants and random properties share IDs!
                                // do we just compare all of the names?
                                if (!hasValidRandomProperty)
                                    iProp = sItemRandomPropertiesStore.LookupEntry(prop);

                                // Check if we have a valid random property with this prop...
                                if (iProp)
                                {
                                    // Compare the name. If the name isn't correct, maybe it's an enchantment instead.
                                    for (int localeIndex = DB_LOCALE_enUS; localeIndex <= DB_LOCALE_ruRU; ++localeIndex)
                                    {
                                        std::string expectedName = linkedItem->Name1;
                                        Item::GetLocalizedNameWithSuffix(expectedName, linkedItem, iProp, localeIndex, GetDbcLocaleFromDbLocale(DBLocaleConstant(localeIndex)));
                                        if (expectedName == buffer)
                                        {
                                            hasValidRandomProperty = true;
                                            break;
                                        }
                                    }
                                }

                                // Still don't have a valid random prop. If it's an enchantment, inc count.
                                // Else this property is entirely invalid.
                                if (!hasValidRandomProperty)
                                {
                                    if (sSpellItemEnchantmentStore.LookupEntry(prop))
                                        ++enchantCount;
                                    else
                                        return false;
                                }
                            }

                            if (enchantCount > 2)
                                return false;
                        }

                        if (hasRandomProperty && !hasValidRandomProperty)
                            return false;
                        else if (!hasRandomProperty)
                        {
                            // Finally compare base name
                            bool validName = false;
                            for (int localeIndex = DB_LOCALE_enUS; localeIndex <= DB_LOCALE_ruRU; ++localeIndex)
                            {
                                std::string expectedName = linkedItem->Name1;
                                Item::GetLocalizedNameWithSuffix(expectedName, linkedItem, nullptr, localeIndex, GetDbcLocaleFromDbLocale(DBLocaleConstant(localeIndex)));
                                if (expectedName == buffer)
                                {
                                    validName = true;
                                    break;
                                }
                            }
                            if (!validName)
                                return false;
                        }
                    }
                    // that place should never be reached - if nothing linked has been set in |H
                    // it will return false before
                    else
                        return false;
                }
                break;
            case 'r':
            case '|':
                // no further payload
                break;
            default:
                DEBUG_LOG("ChatHandler::isValidChatMessage got invalid command |%c", commandChar);
                return false;
        }
    }

    // check if every opened sequence was also closed properly
    if (validSequence != validSequenceIterator)
        DEBUG_LOG("ChatHandler::isValidChatMessage EOF in active sequence");

    return validSequence == validSequenceIterator;
}

void ChatHandler::BuildChatPacket(WorldPacket& data, ChatMsg msgtype, const std::string& message, Language language /*= LANG_UNIVERSAL*/, uint32 chatTag /*= CHAT_TAG_NONE*/,
                                  ObjectGuid const& senderGuid /*= ObjectGuid()*/, char const* senderName /*= nullptr*/,
                                  ObjectGuid const& targetGuid /*= ObjectGuid()*/, char const* targetName /*= nullptr*/,
                                  char const* channelName /*= nullptr*/, uint8 playerRank /*= 0*/)
{
    data.Initialize(SMSG_MESSAGECHAT);
    data << uint8(msgtype);
    data << uint32(language);

    switch (msgtype)
    {
        case CHAT_MSG_MONSTER_WHISPER:
        //case CHAT_MSG_RAID_BOSS_WHISPER:
        case CHAT_MSG_RAID_BOSS_EMOTE:
        case CHAT_MSG_MONSTER_EMOTE:
            MANGOS_ASSERT(senderName);
            data << uint32(strlen(senderName) + 1);
            data << senderName;
            data << ObjectGuid(targetGuid);
            break;

        case CHAT_MSG_SAY:
        case CHAT_MSG_PARTY:
        case CHAT_MSG_YELL:
            data << ObjectGuid(senderGuid);
            data << ObjectGuid(senderGuid);
            break;

        case CHAT_MSG_MONSTER_SAY:
        case CHAT_MSG_MONSTER_YELL:
            MANGOS_ASSERT(senderName);
            data << ObjectGuid(senderGuid);
            data << uint32(strlen(senderName) + 1);
            data << senderName;
            data << ObjectGuid(targetGuid);
            break;

        case CHAT_MSG_CHANNEL:
            MANGOS_ASSERT(channelName);
            data << channelName;
            data << uint32(playerRank);
            data << ObjectGuid(senderGuid);
            break;

        default:
            data << ObjectGuid(senderGuid);
            break;
    }

    if (message.empty())
        return;

    data << uint32(message.length() + 1);
    data << message;
    data << uint8(chatTag);
}

Player * ChatHandler::GetSelectedPlayer()
{
    if (!m_session)
        return nullptr;

    ObjectGuid guid  = m_session->GetPlayer()->GetSelectionGuid();

    if (!guid)
        return m_session->GetPlayer();

    return sObjectMgr.GetPlayer(guid);
}

Unit* ChatHandler::GetSelectedUnit()
{
    if (!m_session)
        return nullptr;

    ObjectGuid guid = m_session->GetPlayer()->GetSelectionGuid();

    if (!guid)
        return m_session->GetPlayer();

    // can be selected player at another map
    return ObjectAccessor::GetUnit(*m_session->GetPlayer(), guid);
}

Creature* ChatHandler::GetSelectedCreature()
{
    if (!m_session)
        return nullptr;

    return m_session->GetPlayer()->GetMap()->GetAnyTypeCreature(m_session->GetPlayer()->GetSelectionGuid());
}

Pet* ChatHandler::GetSelectedPet()
{
    if (!m_session)
        return nullptr;

    return m_session->GetPlayer()->GetMap()->GetPet(m_session->GetPlayer()->GetSelectionGuid());
}

/**
 * Function skip all whitespaces in args string
 *
 * @param args variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 *             allowed nullptr string pointer stored in *args
 */
void ChatHandler::SkipWhiteSpaces(char** args)
{
    if (!*args)
        return;

    while (isWhiteSpace(**args))
        ++(*args);
}

/**
 * Function extract to val arg signed integer value or fail
 *
 * @param args variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 * @param val  return extracted value if function success, in fail case original value unmodified
 * @return     true if value extraction successful
 */
bool  ChatHandler::ExtractInt32(char** args, int32& val)
{
    if (!*args || !**args)
        return false;

    char* tail = *args;

    long valRaw = strtol(*args, &tail, 10);

    if (tail != *args && isWhiteSpace(*tail))
        *(tail++) = '\0';
    else if (tail && *tail)                                 // some not whitespace symbol
        return false;                                       // args not modified and can be re-parsed

    if (valRaw < std::numeric_limits<int32>::min() || valRaw > std::numeric_limits<int32>::max())
        return false;

    // value successfully extracted
    val = int32(valRaw);
    *args = tail;
    return true;
}

/**
 * Function extract to val arg optional signed integer value or use default value. Fail if extracted not signed integer.
 *
 * @param args    variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 * @param val     return extracted value if function success, in fail case original value unmodified
 * @param defVal  default value used if no data for extraction in args
 * @return        true if value extraction successful
 */
bool  ChatHandler::ExtractOptInt32(char** args, int32& val, int32 defVal)
{
    if (!*args || !**args)
    {
        val = defVal;
        return true;
    }

    return ExtractInt32(args, val);
}

/**
 * Function extract to val arg unsigned integer value or fail
 *
 * @param args variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 * @param val  return extracted value if function success, in fail case original value unmodified
 * @param base set used base for extracted value format (10 for decimal, 16 for hex, etc), 0 let auto select by system internal function
 * @return     true if value extraction successful
 */
bool  ChatHandler::ExtractUInt32Base(char** args, uint32& val, uint32 base)
{
    if (!*args || !**args)
        return false;

    char* tail = *args;

    unsigned long valRaw = strtoul(*args, &tail, base);

    if (tail != *args && isWhiteSpace(*tail))
        *(tail++) = '\0';
    else if (tail && *tail)                                 // some not whitespace symbol
        return false;                                       // args not modified and can be re-parsed

    if (valRaw > std::numeric_limits<uint32>::max())
        return false;

    // value successfully extracted
    val = uint32(valRaw);
    *args = tail;

    SkipWhiteSpaces(args);
    return true;
}

/**
 * Function extract to val arg optional unsigned integer value or use default value. Fail if extracted not unsigned integer.
 *
 * @param args    variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 * @param val     return extracted value if function success, in fail case original value unmodified
 * @param defVal  default value used if no data for extraction in args
 * @return        true if value extraction successful
 */
bool  ChatHandler::ExtractOptUInt32(char** args, uint32& val, uint32 defVal)
{
    if (!*args || !**args)
    {
        val = defVal;
        return true;
    }

    return ExtractUInt32(args, val);
}

/**
 * Function extract to val arg float value or fail
 *
 * @param args variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 * @param val  return extracted value if function success, in fail case original value unmodified
 * @return     true if value extraction successful
 */
bool  ChatHandler::ExtractFloat(char** args, float& val)
{
    if (!*args || !**args)
        return false;

    char* tail = *args;

    double valRaw = strtod(*args, &tail);

    if (tail != *args && isWhiteSpace(*tail))
        *(tail++) = '\0';
    else if (tail && *tail)                                 // some not whitespace symbol
        return false;                                       // args not modified and can be re-parsed

    // value successfully extracted
    val = float(valRaw);
    *args = tail;

    SkipWhiteSpaces(args);
    return true;
}

/**
 * Function extract to val arg optional float value or use default value. Fail if extracted not float.
 *
 * @param args    variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 * @param val     return extracted value if function success, in fail case original value unmodified
 * @param defVal  default value used if no data for extraction in args
 * @return        true if value extraction successful
 */
bool  ChatHandler::ExtractOptFloat(char** args, float& val, float defVal)
{
    if (!*args || !**args)
    {
        val = defVal;
        return true;
    }

    return ExtractFloat(args, val);
}

/**
 * Function extract name-like string (from non-numeric or special symbol until whitespace)
 *
 * @param args variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 * @param lit  optional explicit literal requirement. function fail if literal is not starting substring of lit.
 *             Note: function in same way fail if no any literal or literal not fit in this case. Need additional check for select specific fail case
 * @return     name/number-like string without whitespaces, or nullptr if args empty or not appropriate content.
 */
char* ChatHandler::ExtractLiteralArg(char** args, char const* lit /*= nullptr*/)
{
    if (!*args || !**args)
        return nullptr;

    char* head = *args;

    // reject quoted string or link (|-started text)
    switch (head[0])
    {
        // reject quoted string
        case '[':
        case '\'':
        case '"':
            return nullptr;
        // reject link (|-started text)
        case '|':
            // client replace all | by || in raw text
            if (head[1] != '|')
                return nullptr;
            ++head;                                         // skip one |
            break;
        default:
            break;
    }

    if (lit)
    {
        int l = strlen(lit);
        int diff = strncmp(head, lit, l);

        if (diff != 0)
            return nullptr;

        if (head[l] && !isWhiteSpace(head[l]))
            return nullptr;

        char* arg = head;

        if (head[l])
        {
            head[l] = '\0';

            head += l + 1;

            *args = head;
        }
        else
            *args = head + l;

        SkipWhiteSpaces(args);
        return arg;
    }

    char* name = strtok(head, " ");

    char* tail = strtok(nullptr, "");

    *args = tail ? tail : (char*)"";                        // *args don't must be nullptr

    SkipWhiteSpaces(args);

    return name;
}

/**
 * Function extract quote-like string (any characters guarded by some special character, in our cases ['")
 *
 * @param args variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 * @param asis control save quote string wrappers
 * @return     quote-like string, or nullptr if args empty or not appropriate content.
 */
char* ChatHandler::ExtractQuotedArg(char** args, bool asis /*= false*/)
{
    if (!*args || !**args)
        return nullptr;

    if (**args != '\'' && **args != '"' && **args != '[')
        return nullptr;

    char guard = (*args)[0];

    if (guard == '[')
        guard = ']';

    char* tail = (*args) + 1;                               // start scan after first quote symbol
    char* head = asis ? *args : tail;                       // start arg

    while (*tail && *tail != guard)
        ++tail;

    if (!*tail || (tail[1] && !isWhiteSpace(tail[1])))      // fail
        return nullptr;

    if (!tail[1])                                           // quote is last char in string
    {
        if (!asis)
            *tail = '\0';
    }
    else                                                    // quote isn't last char
    {
        if (asis)
            ++tail;

        *tail = '\0';
    }

    *args = tail + 1;

    SkipWhiteSpaces(args);

    return head;
}

/**
 * Function extract quote-like string or literal if quote not detected
 *
 * @param args variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 * @param asis control save quote string wrappers
 * @return     quote/literal string, or nullptr if args empty or not appropriate content.
 */
char* ChatHandler::ExtractQuotedOrLiteralArg(char** args, bool asis /*= false*/)
{
    char *arg = ExtractQuotedArg(args, asis);
    if (!arg)
        arg = ExtractLiteralArg(args);
    return arg;
}

/**
 * Function extract on/off literals as boolean values
 *
 * @param args variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 * @param val  return extracted value if function success, in fail case original value unmodified
 * @return     true at success
 */
bool  ChatHandler::ExtractOnOff(char** args, bool& value)
{
    char* arg = ExtractLiteralArg(args);
    if (!arg)
        return false;

    if (strncmp(arg, "on", 3) == 0 || strncmp(arg, "ON", 3) == 0)
        value = true;
    else if (strncmp(arg, "off", 4) == 0 || strncmp(arg, "OFF", 4) == 0)
        value = false;
    else
        return false;

    return true;
}

/**
 * Function extract shift-link-like string (any characters guarded by | and |h|r with some additional internal structure check)
 *
 * @param args variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 *
 * @param linkTypes  optional nullptr-terminated array of link types, shift-link must fit one from link type from array if provided or extraction fail
 *
 * @param found_idx  if not nullptr then at return index in linkTypes that fit shift-link type, if extraction fail then non modified
 *
 * @param keyPair    if not nullptr then pointer to 2-elements array for return start and end pointer for found key
 *                   if extraction fail then non modified
 *
 * @param somethingPair then pointer to 2-elements array for return start and end pointer if found.
 *                   if not nullptr then shift-link must have data field, if extraction fail then non modified
 *
 * @return     shift-link-like string, or nullptr if args empty or not appropriate content.
 */
char* ChatHandler::ExtractLinkArg(char** args, char const* const* linkTypes /*= nullptr*/, int* foundIdx /*= nullptr*/, char** keyPair /*= nullptr*/, char** somethingPair /*= nullptr*/)
{
    if (!*args || !**args)
        return nullptr;

    // skip if not linked started or encoded single | (doubled by client)
    if ((*args)[0] != '|' || (*args)[1] == '|')
        return nullptr;

    // |color|Hlinktype:key:data...|h[name]|h|r

    char* head = *args;

    // [name] Shift-click form |color|linkType:key|h[name]|h|r
    // or
    // [name] Shift-click form |color|linkType:key:something1:...:somethingN|h[name]|h|r
    // or
    // [name] Shift-click form |linkType:key|h[name]|h|r

    // |color|Hlinktype:key:data...|h[name]|h|r

    char* tail = (*args) + 1;                               // skip |

    if (*tail != 'H')                                       // skip color part, some links can not have color part
    {
        while (*tail && *tail != '|')
            ++tail;

        if (!*tail)
            return nullptr;

        // |Hlinktype:key:data...|h[name]|h|r

        ++tail;                                             // skip |
    }

    // Hlinktype:key:data...|h[name]|h|r

    if (*tail != 'H')
        return nullptr;

    int linktype_idx = 0;

    if (linkTypes)                                          // check link type if provided
    {
        // check linktypes (its include H in name)
        for (; linkTypes[linktype_idx]; ++linktype_idx)
        {
            // exactly string with follow : or |
            int l = strlen(linkTypes[linktype_idx]);
            if (strncmp(tail, linkTypes[linktype_idx], l) == 0 &&
                    (tail[l] == ':' || tail[l] == '|'))
                break;
        }

        // is search fail?
        if (!linkTypes[linktype_idx])                       // nullptr terminator in last element
            return nullptr;

        tail += strlen(linkTypes[linktype_idx]);            // skip linktype string

        // :key:data...|h[name]|h|r

        if (*tail != ':')
            return nullptr;
    }
    else
    {
        while (*tail && *tail != ':')                       // skip linktype string
            ++tail;

        if (!*tail)
            return nullptr;
    }

    ++tail;

    // key:data...|h[name]|h|r
    char* keyStart = tail;                                  // remember key start for return
    char* keyEnd   = tail;                                  // key end for truncate, will updated

    while (*tail && *tail != '|' && *tail != ':')
        ++tail;

    if (!*tail)
        return nullptr;

    keyEnd = tail;                                          // remember key end for truncate

    // |h[name]|h|r or :something...|h[name]|h|r

    char* somethingStart = tail + 1;
    char* somethingEnd   = tail + 1;                        // will updated later if need

    if (*tail == ':' && somethingPair)                      // optional data extraction
    {
        // :something...|h[name]|h|r

        ++tail;

        // something|h[name]|h|r or something:something2...|h[name]|h|r

        while (*tail && *tail != '|' && *tail != ':')
            ++tail;

        if (!*tail)
            return nullptr;

        somethingEnd = tail;                                // remember data end for truncate
    }

    // |h[name]|h|r or :something2...|h[name]|h|r

    while (*tail && (*tail != '|' || *(tail + 1) != 'h'))   // skip ... part if exist
        ++tail;

    if (!*tail)
        return nullptr;

    // |h[name]|h|r

    tail += 2;                                              // skip |h

    // [name]|h|r
    if (!*tail || *tail != '[')
        return nullptr;

    while (*tail && (*tail != ']' || *(tail + 1) != '|'))   // skip name part
        ++tail;

    tail += 2;                                              // skip ]|

    // h|r
    if (!*tail || *tail != 'h'  || *(tail + 1) != '|')
        return nullptr;

    tail += 2;                                              // skip h|

    // r
    if (!*tail || *tail != 'r' || (*(tail + 1) && !isWhiteSpace(*(tail + 1))))
        return nullptr;

    ++tail;                                                 // skip r

    // success

    if (*tail)                                              // truncate all link string
        *(tail++) = '\0';

    if (foundIdx)
        *foundIdx = linktype_idx;

    if (keyPair)
    {
        keyPair[0] = keyStart;
        keyPair[1] = keyEnd;
    }

    if (somethingPair)
    {
        somethingPair[0] = somethingStart;
        somethingPair[1] = somethingEnd;
    }

    *args = tail;

    SkipWhiteSpaces(args);

    return head;
}

/**
 * Function extract name/number/quote/shift-link-like string
 *
 * @param args variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 * @param asis control save quote string wrappers
 * @return     extracted arg string, or nullptr if args empty or not appropriate content.
 */
char* ChatHandler::ExtractArg(char** args, bool asis /*= false*/)
{
    if (!*args || !**args)
        return nullptr;

    char* arg = ExtractQuotedOrLiteralArg(args, asis);
    if (!arg)
        arg = ExtractLinkArg(args);

    return arg;
}

/**
 * Function extract name/quote/number/shift-link-like string, and return it if args have more non-whitespace data
 *
 * @param args variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 *             if args have only single arg then args still pointing to this arg (unmodified pointer)
 * @return     extracted string, or nullptr if args empty or not appropriate content or have single arg totally.
 */
char* ChatHandler::ExtractOptNotLastArg(char** args)
{
    char* arg = ExtractArg(args, true);

    // have more data
    if (*args && **args)
        return arg;

    // optional name not found
    *args = arg ? arg : (char*)"";                          // *args don't must be nullptr

    return nullptr;
}

/**
 * Function extract data from shift-link "|color|LINKTYPE:RETURN:SOMETHING1|h[name]|h|r if linkType == LINKTYPE
 * It also extract literal/quote if not shift-link in args
 *
 * @param args       variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 *                   if args have sift link with linkType != LINKTYPE then args still pointing to this arg (unmodified pointer)
 *
 * @param linkType   shift-link must fit by link type to this arg value or extraction fail
 *
 * @param something1 if not nullptr then shift-link must have data field and it returned into this arg
 *                   if extraction fail then non modified
 *
 * @return           extracted key, or nullptr if args empty or not appropriate content or not fit to linkType.
 */
char* ChatHandler::ExtractKeyFromLink(char** text, char const* linkType, char** something1 /*= nullptr*/)
{
    char const* linkTypes[2];
    linkTypes[0] = linkType;
    linkTypes[1] = nullptr;

    int foundIdx;

    return ExtractKeyFromLink(text, linkTypes, &foundIdx, something1);
}

/**
 * Function extract data from shift-link "|color|LINKTYPE:RETURN:SOMETHING1|h[name]|h|r if LINKTYPE in linkTypes array
 * It also extract literal/quote if not shift-link in args
 *
 * @param args       variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 *                   if args have sift link with linkType != LINKTYPE then args still pointing to this arg (unmodified pointer)
 *
 * @param linkTypes  nullptr-terminated array of link types, shift-link must fit one from link type from array or extraction fail
 *
 * @param found_idx  if not nullptr then at return index in linkTypes that fit shift-link type, for non-link case return -1
 *                   if extraction fail then non modified
 *
 * @param something1 if not nullptr then shift-link must have data field and it returned into this arg
 *                   if extraction fail then non modified
 *
 * @return           extracted key, or nullptr if args empty or not appropriate content or not fit to linkType.
 */
char* ChatHandler::ExtractKeyFromLink(char** text, char const* const* linkTypes, int* found_idx, char** something1 /*= nullptr*/)
{
    // skip empty
    if (!*text || !**text)
        return nullptr;

    // return non link case
    char* arg = ExtractQuotedOrLiteralArg(text);
    if (arg)
    {
        if (found_idx)
            *found_idx = -1;                                // special index case

        return arg;
    }

    char* keyPair[2];
    char* somethingPair[2];

    arg = ExtractLinkArg(text, linkTypes, found_idx, keyPair, something1 ? somethingPair : nullptr);
    if (!arg)
        return nullptr;

    *keyPair[1] = '\0';                                     // truncate key string

    if (something1)
    {
        *somethingPair[1] = '\0';                           // truncate data string
        *something1 = somethingPair[0];
    }

    return keyPair[0];
}

/**
 * Function extract uint32 key from shift-link "|color|LINKTYPE:RETURN|h[name]|h|r if linkType == LINKTYPE
 * It also extract direct number if not shift-link in args
 *
 * @param args       variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 *                   if args have sift link with linkType != LINKTYPE then args still pointing to this arg (unmodified pointer)
 *
 * @param linkType   shift-link must fit by link type to this arg value or extraction fail
 *
 * @param value      store result value at success return, not modified at fail
 *
 * @return           true if extraction succesful
 */
bool ChatHandler::ExtractUint32KeyFromLink(char** text, char const* linkType, uint32& value)
{
    char* arg = ExtractKeyFromLink(text, linkType);
    if (!arg)
        return false;

    return ExtractUInt32(&arg, value);
}

GameObject* ChatHandler::GetGameObjectWithGuid(uint32 lowguid, uint32 entry)
{
    if (!m_session)
        return nullptr;

    Player* pl = m_session->GetPlayer();

    return pl->GetMap()->GetGameObject(ObjectGuid(HIGHGUID_GAMEOBJECT, entry, lowguid));
}

enum SpellLinkType
{
    SPELL_LINK_RAW     = -1,                                // non-link case
    SPELL_LINK_SPELL   = 0,
    SPELL_LINK_TALENT  = 1,
    SPELL_LINK_ENCHANT = 2,
};

static char const* const spellKeys[] =
{
    "Hspell",                                               // normal spell
    "Htalent",                                              // talent spell
    "Henchant",                                             // enchanting recipe spell
    nullptr
};

uint32 ChatHandler::ExtractSpellIdFromLink(char** text)
{
    // number or [name] Shift-click form |color|Henchant:recipe_spell_id|h[prof_name: recipe_name]|h|r
    // number or [name] Shift-click form |color|Hspell:spell_id|h[name]|h|r
    // number or [name] Shift-click form |color|Htalent:talent_id,rank|h[name]|h|r
    int type;
    char* param1_str = nullptr;
    char* idS = ExtractKeyFromLink(text, spellKeys, &type, &param1_str);
    if (!idS)
        return 0;

    uint32 id;
    if (!ExtractUInt32(&idS, id))
        return 0;

    switch (type)
    {
        case SPELL_LINK_RAW:
        case SPELL_LINK_SPELL:
        case SPELL_LINK_ENCHANT:
            return id;
        case SPELL_LINK_TALENT:
        {
            // talent
            TalentEntry const* talentEntry = sTalentStore.LookupEntry(id);
            if (!talentEntry)
                return 0;

            int32 rank;
            if (!ExtractInt32(&param1_str, rank))
                return 0;

            if (rank < 0)                                   // unlearned talent have in shift-link field -1 as rank
                rank = 0;

            return rank < MAX_TALENT_RANK ? talentEntry->RankID[rank] : 0;
        }
    }

    // unknown type?
    return 0;
}

GameTele const* ChatHandler::ExtractGameTeleFromLink(char** text)
{
    // id, or string, or [name] Shift-click form |color|Htele:id|h[name]|h|r
    char* cId = ExtractKeyFromLink(text, "Htele");
    if (!cId)
        return nullptr;

    // id case (explicit or from shift link)
    uint32 id;
    if (ExtractUInt32(&cId, id))
        return sObjectMgr.GetGameTele(id);
    else
        return sObjectMgr.GetGameTele(cId);
}

enum GuidLinkType
{
    GUID_LINK_RAW        = -1,                              // non-link case
    GUID_LINK_PLAYER     = 0,
    GUID_LINK_CREATURE   = 1,
    GUID_LINK_GAMEOBJECT = 2,
};

static char const* const guidKeys[] =
{
    "Hplayer",
    "Hcreature",
    "Hgameobject",
    nullptr
};

ObjectGuid ChatHandler::ExtractGuidFromLink(char** text)
{
    int type = 0;

    // |color|Hcreature:creature_guid|h[name]|h|r
    // |color|Hgameobject:go_guid|h[name]|h|r
    // |color|Hplayer:name|h[name]|h|r
    char* idS = ExtractKeyFromLink(text, guidKeys, &type);
    if (!idS)
        return ObjectGuid();

    switch (type)
    {
        case GUID_LINK_RAW:
        case GUID_LINK_PLAYER:
        {
            std::string name = idS;
            if (!normalizePlayerName(name))
                return ObjectGuid();

            if (Player* player = sObjectMgr.GetPlayer(name.c_str()))
                return player->GetObjectGuid();

            return sObjectMgr.GetPlayerGuidByName(name);
        }
        case GUID_LINK_CREATURE:
        {
            uint32 lowguid;
            if (!ExtractUInt32(&idS, lowguid))
                return ObjectGuid();

            if (CreatureData const* data = sObjectMgr.GetCreatureData(lowguid))
                return data->GetObjectGuid(lowguid);
            else
                return ObjectGuid();
        }
        case GUID_LINK_GAMEOBJECT:
        {
            uint32 lowguid;
            if (!ExtractUInt32(&idS, lowguid))
                return ObjectGuid();

            if (GameObjectData const* data = sObjectMgr.GetGOData(lowguid))
                return ObjectGuid(HIGHGUID_GAMEOBJECT, data->id, lowguid);
            else
                return ObjectGuid();
        }
    }

    // unknown type?
    return ObjectGuid();
}

enum LocationLinkType
{
    LOCATION_LINK_RAW               = -1,                   // non-link case
    LOCATION_LINK_PLAYER            = 0,
    LOCATION_LINK_TELE              = 1,
    LOCATION_LINK_TAXINODE          = 2,
    LOCATION_LINK_CREATURE          = 3,
    LOCATION_LINK_GAMEOBJECT        = 4,
    LOCATION_LINK_CREATURE_ENTRY    = 5,
    LOCATION_LINK_GAMEOBJECT_ENTRY  = 6,
    LOCATION_LINK_AREATRIGGER       = 7,
    LOCATION_LINK_AREATRIGGER_TARGET = 8,
};

static char const* const locationKeys[] =
{
    "Htele",
    "Htaxinode",
    "Hplayer",
    "Hcreature",
    "Hgameobject",
    "Hcreature_entry",
    "Hgameobject_entry",
    "Hareatrigger",
    "Hareatrigger_target",
    nullptr
};

bool ChatHandler::ExtractLocationFromLink(char** text, uint32& mapid, float& x, float& y, float& z)
{
    int type = 0;

    // |color|Hplayer:name|h[name]|h|r
    // |color|Htele:id|h[name]|h|r
    // |color|Htaxinode:id|h[name]|h|r
    // |color|Hcreature:creature_guid|h[name]|h|r
    // |color|Hgameobject:go_guid|h[name]|h|r
    // |color|Hcreature_entry:creature_id|h[name]|h|r
    // |color|Hgameobject_entry:go_id|h[name]|h|r
    // |color|Hareatrigger:id|h[name]|h|r
    // |color|Hareatrigger_target:id|h[name]|h|r
    char* idS = ExtractKeyFromLink(text, locationKeys, &type);
    if (!idS)
        return false;

    switch (type)
    {
        case LOCATION_LINK_RAW:
        case LOCATION_LINK_PLAYER:
        {
            std::string name = idS;
            if (!normalizePlayerName(name))
                return false;

            if (Player* player = sObjectMgr.GetPlayer(name.c_str()))
            {
                mapid = player->GetMapId();
                x = player->GetPositionX();
                y = player->GetPositionY();
                z = player->GetPositionZ();
                return true;
            }

            if (ObjectGuid guid = sObjectMgr.GetPlayerGuidByName(name))
            {
                // to point where player stay (if loaded)
                float o;
                bool in_flight;
                return Player::LoadPositionFromDB(guid, mapid, x, y, z, o, in_flight);
            }

            return false;
        }
        case LOCATION_LINK_TELE:
        {
            uint32 id;
            if (!ExtractUInt32(&idS, id))
                return false;

            GameTele const* tele = sObjectMgr.GetGameTele(id);
            if (!tele)
                return false;
            mapid = tele->mapId;
            x = tele->x;
            y = tele->y;
            z = tele->z;
            return true;
        }
        case LOCATION_LINK_TAXINODE:
        {
            uint32 id;
            if (!ExtractUInt32(&idS, id))
                return false;

            TaxiNodesEntry const* node = sObjectMgr.GetTaxiNodeEntry(id);
            if (!node)
                return false;
            mapid = node->map_id;
            x = node->x;
            y = node->y;
            z = node->z;
            return true;
        }
        case LOCATION_LINK_CREATURE:
        {
            uint32 lowguid;
            if (!ExtractUInt32(&idS, lowguid))
                return false;

            if (CreatureData const* data = sObjectMgr.GetCreatureData(lowguid))
            {
                mapid = data->position.mapId;
                x = data->position.x;
                y = data->position.y;
                z = data->position.z;
                return true;
            }
            else
                return false;
        }
        case LOCATION_LINK_GAMEOBJECT:
        {
            uint32 lowguid;
            if (!ExtractUInt32(&idS, lowguid))
                return false;

            if (GameObjectData const* data = sObjectMgr.GetGOData(lowguid))
            {
                mapid = data->position.mapId;
                x = data->position.x;
                y = data->position.y;
                z = data->position.z;
                return true;
            }
            else
                return false;
        }
        case LOCATION_LINK_CREATURE_ENTRY:
        {
            uint32 id;
            if (!ExtractUInt32(&idS, id))
                return false;

            if (ObjectMgr::GetCreatureTemplate(id))
            {
                FindCreatureData worker(id, m_session ? m_session->GetPlayer() : nullptr);

                sObjectMgr.DoCreatureData(worker);

                if (CreatureDataPair const* dataPair = worker.GetResult())
                {
                    mapid = dataPair->second.position.mapId;
                    x = dataPair->second.position.x;
                    y = dataPair->second.position.y;
                    z = dataPair->second.position.z;
                    return true;
                }
                else
                    return false;
            }
            else
                return false;
        }
        case LOCATION_LINK_GAMEOBJECT_ENTRY:
        {
            uint32 id;
            if (!ExtractUInt32(&idS, id))
                return false;

            if (ObjectMgr::GetGameObjectInfo(id))
            {
                FindGOData worker(id, m_session ? m_session->GetPlayer() : nullptr);

                sObjectMgr.DoGOData(worker);

                if (GameObjectDataPair const* dataPair = worker.GetResult())
                {
                    mapid = dataPair->second.position.mapId;
                    x = dataPair->second.position.x;
                    y = dataPair->second.position.y;
                    z = dataPair->second.position.z;
                    return true;
                }
                else
                    return false;
            }
            else
                return false;
        }
        case LOCATION_LINK_AREATRIGGER:
        {
            uint32 id;
            if (!ExtractUInt32(&idS, id))
                return false;

            AreaTriggerEntry const* atEntry = sObjectMgr.GetAreaTrigger(id);
            if (!atEntry)
            {
                PSendSysMessage(LANG_COMMAND_GOAREATRNOTFOUND, id);
                SetSentErrorMessage(true);
                return false;
            }

            mapid = atEntry->mapid;
            x = atEntry->x;
            y = atEntry->y;
            z = atEntry->z;
            return true;
        }
        case LOCATION_LINK_AREATRIGGER_TARGET:
        {
            uint32 id;
            if (!ExtractUInt32(&idS, id))
                return false;

            if (!sObjectMgr.GetAreaTrigger(id))
            {
                PSendSysMessage(LANG_COMMAND_GOAREATRNOTFOUND, id);
                SetSentErrorMessage(true);
                return false;
            }

            AreaTriggerTeleport const* at = sObjectMgr.GetAreaTriggerTeleport(id);
            if (!at)
            {
                PSendSysMessage(LANG_AREATRIGER_NOT_HAS_TARGET, id);
                SetSentErrorMessage(true);
                return false;
            }

            mapid = at->destination.mapId;
            x = at->destination.x;
            y = at->destination.y;
            z = at->destination.z;
            return true;
        }
    }

    // unknown type?
    return false;
}

std::string ChatHandler::ExtractPlayerNameFromLink(char** text)
{
    // |color|Hplayer:name|h[name]|h|r
    char* name_str = ExtractKeyFromLink(text, "Hplayer");
    if (!name_str)
        return "";

    std::string name = name_str;
    if (!normalizePlayerName(name))
        return "";

    return name;
}

/**
 * Function extract at least one from request player data (pointer/guid/name) from args name/shift-link or selected player if no args
 *
 * @param args        variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 *
 * @param player      optional arg   One from 3 optional args must be provided at least (or more).
 * @param player_guid optional arg   For function success only one from provided args need get result
 * @param player_name optional arg   But if early arg get value then all later args will have its (if requested)
 *                                   if player_guid requested and not found then name also will not found
 *                                   So at success can be returned 2 cases: (player/guid/name) or (guid/name)
 *
 * @return           true if extraction successful
 */
bool ChatHandler::ExtractPlayerTarget(char** args, Player** player /*= nullptr*/, ObjectGuid* player_guid /*= nullptr*/, std::string* player_name /*= nullptr*/, bool use_extended_response)
{
    std::string name;
    if (*args && **args)
    {
        name = ExtractPlayerNameFromLink(args);
        if (name.empty())
        {
            SendSysMessage(LANG_PLAYER_NOT_FOUND);
            SetSentErrorMessage(true);
            return false;
        }

        Player* pl = sObjectMgr.GetPlayer(name.c_str());

        // if allowed player pointer
        if (player)
            *player = pl;

        // if need guid value from DB (in name case for check player existence)
        ObjectGuid guid = !pl && (player_guid || player_name) ? sObjectMgr.GetPlayerGuidByName(name) : ObjectGuid();

        // if allowed player guid (if no then only online players allowed)
        if (player_guid)
            *player_guid = pl ? pl->GetObjectGuid() : guid;

        if (player_name)
            *player_name = pl || guid ? name : "";
    }
    else
    {
        Player* pl = GetSelectedPlayer();
        // if allowed player pointer
        if (player)
            *player = pl;
        // if allowed player guid (if no then only online players allowed)
        if (player_guid)
            *player_guid = pl ? pl->GetObjectGuid() : ObjectGuid();

        if (player_name)
            *player_name = pl ? pl->GetName() : "";
    }

    // some from req. data must be provided (note: name is empty if player not exist)
    if ((!player || !*player) && (!player_guid || !*player_guid) && (!player_name || player_name->empty()))
    {
        if (use_extended_response && !name.empty())
        {
            std::string message(GetMangosString(LANG_PLAYER_NOT_FOUND));
            message.append(" (" + name + ")");
            SendSysMessage(message.c_str());
        }
        else
        {
            SendSysMessage(LANG_PLAYER_NOT_FOUND);
        }
        SetSentErrorMessage(true);
        return false;
    }

    return true;
}

uint32 ChatHandler::ExtractAccountId(char** args, std::string* accountName /*= nullptr*/, Player** targetIfNullArg /*= nullptr*/)
{
    uint32 account_id = 0;

    ///- Get the account name from the command line
    char* account_str = ExtractLiteralArg(args);

    if (!account_str)
    {
        if (!targetIfNullArg)
            return 0;

        /// only target player different from self allowed (if targetPlayer!=nullptr then not console)
        Player* targetPlayer = GetSelectedPlayer();
        if (!targetPlayer)
            return 0;

        account_id = targetPlayer->GetSession()->GetAccountId();

        if (accountName)
            sAccountMgr.GetName(account_id, *accountName);

        if (targetIfNullArg)
            *targetIfNullArg = targetPlayer;

        return account_id;
    }

    std::string account_name;

    if (ExtractUInt32(&account_str, account_id))
    {
        if (!sAccountMgr.GetName(account_id, account_name))
        {
            PSendSysMessage(LANG_ACCOUNT_NOT_EXIST, account_str);
            SetSentErrorMessage(true);
            return 0;
        }
    }
    else
    {
        account_name = account_str;
        if (!AccountMgr::normalizeString(account_name))
        {
            PSendSysMessage(LANG_ACCOUNT_NOT_EXIST, account_name.c_str());
            SetSentErrorMessage(true);
            return 0;
        }

        account_id = sAccountMgr.GetId(account_name);
        if (!account_id)
        {
            PSendSysMessage(LANG_ACCOUNT_NOT_EXIST, account_name.c_str());
            SetSentErrorMessage(true);
            return 0;
        }
    }

    if (accountName)
        *accountName = account_name;

    if (targetIfNullArg)
        *targetIfNullArg = nullptr;

    return account_id;
}

struct RaceMaskName
{
    char const* literal;
    uint32 raceMask;
};

static RaceMaskName const raceMaskNames[] =
{
    // races
    { "human", (1 << (RACE_HUMAN - 1))   },
    { "orc", (1 << (RACE_ORC - 1))     },
    { "dwarf", (1 << (RACE_DWARF - 1))   },
    { "nightelf", (1 << (RACE_NIGHTELF - 1))},
    { "undead", (1 << (RACE_UNDEAD - 1))  },
    { "tauren", (1 << (RACE_TAUREN - 1))  },
    { "gnome", (1 << (RACE_GNOME - 1))   },
    { "troll", (1 << (RACE_TROLL - 1))   },

    // masks
    { "alliance", RACEMASK_ALLIANCE },
    { "horde",    RACEMASK_HORDE },
    { "all", RACEMASK_ALL_PLAYABLE },

    // terminator
    {nullptr, 0 }
};

bool ChatHandler::ExtractRaceMask(char** text, uint32& raceMask, char const** maskName /*=nullptr*/)
{
    if (ExtractUInt32(text, raceMask))
    {
        if (maskName)
            *maskName = "custom mask";
    }
    else
    {
        for (RaceMaskName const* itr = raceMaskNames; itr->literal; ++itr)
        {
            if (ExtractLiteralArg(text, itr->literal))
            {
                raceMask = itr->raceMask;

                if (maskName)
                    *maskName = itr->literal;
                break;
            }
        }

        if (!raceMask)
            return false;
    }

    return true;
}

std::string ChatHandler::GetNameLink(Player* chr) const
{
    return playerLink(chr->GetName());
}

std::string ChatHandler::GetItemLink(ItemPrototype const* pItem) const
{
    if (m_session)
    {
        uint32 color = ItemQualityColors[pItem->Quality];
        std::ostringstream itemStr;
        itemStr << "|c" << std::hex << color << "|Hitem:" << std::to_string(pItem->ItemId) << ":0:0:0:0:0:0:0|h[" << pItem->Name1 << "]|h|r";
        return itemStr.str();
    }

    return pItem->Name1;
}

bool ChatHandler::needReportToTarget(Player* chr) const
{
    Player* pl = m_session->GetPlayer();
    return pl != chr && pl->IsVisibleGloballyFor(chr);
}

LocaleConstant ChatHandler::GetSessionDbcLocale() const
{
    return m_session->GetSessionDbcLocale();
}

int ChatHandler::GetSessionDbLocaleIndex() const
{
    return m_session->GetSessionDbLocaleIndex();
}

const char *CliHandler::GetMangosString(int32 entry) const
{
    return sObjectMgr.GetMangosStringForDBCLocale(entry);
}

uint32 CliHandler::GetAccountId() const
{
    return m_accountId;
}

uint32 CliHandler::GetAccessLevel() const
{
    return m_loginAccessLevel;
}

bool CliHandler::isAvailable(ChatCommand const& cmd) const
{
    // skip non-console commands in console case
    if (!cmd.AllowConsole)
        return false;

    uint32 Ranks = GetAccessLevel();
    if (Ranks & RANK_ADMIN)
    {
        return true;
    }

    if (Ranks & RANK_CONSOLE)
    {
        return true;
    }

    return Ranks & cmd.RequiredRank;
}

void CliHandler::SendSysMessage(const char *str)
{
    m_print(m_callbackArg, str);
    m_print(m_callbackArg, "\r\n");
}

std::string CliHandler::GetNameLink() const
{
    return GetMangosString(LANG_CONSOLE_COMMAND);
}

bool CliHandler::needReportToTarget(Player* /*chr*/) const
{
    return true;
}

LocaleConstant CliHandler::GetSessionDbcLocale() const
{
    return sWorld.GetDefaultDbcLocale();
}

int CliHandler::GetSessionDbLocaleIndex() const
{
    return sObjectMgr.GetDBCLocaleIndex();
}

// Check/ Output if a NPC or GO (by guid) is part of a pool or game event
template <typename T>
void ChatHandler::ShowNpcOrGoSpawnInformation(uint32 guid)
{
    if (uint16 pool_id = sPoolMgr.IsPartOfAPool<T>(guid))
    {
        uint16 top_pool_id = sPoolMgr.IsPartOfTopPool<Pool>(pool_id);
        if (!top_pool_id || top_pool_id == pool_id)
            PSendSysMessage(LANG_NPC_GO_INFO_POOL, pool_id);
        else
            PSendSysMessage(LANG_NPC_GO_INFO_TOP_POOL, pool_id, top_pool_id);

        if (int16 event_id = sGameEventMgr.GetGameEventId<Pool>(top_pool_id))
        {
            GameEventMgr::GameEventDataMap const& events = sGameEventMgr.GetEventMap();
            GameEventData const& eventData = events[std::abs(event_id)];

            if (event_id > 0)
                PSendSysMessage(LANG_NPC_GO_INFO_POOL_GAME_EVENT_S, top_pool_id, std::abs(event_id), eventData.description.c_str());
            else
                PSendSysMessage(LANG_NPC_GO_INFO_POOL_GAME_EVENT_D, top_pool_id, std::abs(event_id), eventData.description.c_str());
        }
    }
    else if (int16 event_id = sGameEventMgr.GetGameEventId<T>(guid))
    {
        GameEventMgr::GameEventDataMap const& events = sGameEventMgr.GetEventMap();
        GameEventData const& eventData = events[std::abs(event_id)];

        if (event_id > 0)
            PSendSysMessage(LANG_NPC_GO_INFO_GAME_EVENT_S, uint32(event_id), eventData.description.c_str());
        else
            PSendSysMessage(LANG_NPC_GO_INFO_GAME_EVENT_D, uint32(-event_id), eventData.description.c_str());
    }
}

// Prepare ShortString for a NPC or GO (by guid) with pool or game event IDs
template <typename T>
std::string ChatHandler::PrepareStringNpcOrGoSpawnInformation(uint32 guid)
{
    std::string str;
    if (uint16 pool_id = sPoolMgr.IsPartOfAPool<T>(guid))
    {
        uint16 top_pool_id = sPoolMgr.IsPartOfTopPool<T>(guid);
        if (int16 event_id = sGameEventMgr.GetGameEventId<Pool>(top_pool_id))
        {
            char buffer[100];
            const char* format = GetMangosString(LANG_NPC_GO_INFO_POOL_EVENT_STRING);
            sprintf(buffer, format, pool_id, event_id);
            str = buffer;
        }
        else
        {
            char buffer[100];
            const char* format = GetMangosString(LANG_NPC_GO_INFO_POOL_STRING);
            sprintf(buffer, format, pool_id);
            str = buffer;
        }
    }
    else if (int16 event_id = sGameEventMgr.GetGameEventId<T>(guid))
    {
        char buffer[100];
        const char* format = GetMangosString(LANG_NPC_GO_INFO_EVENT_STRING);
        sprintf(buffer, format, event_id);
        str = buffer;
    }

    return str;
}

// Instantiate template for helper function
template void ChatHandler::ShowNpcOrGoSpawnInformation<Creature>(uint32 guid);
template void ChatHandler::ShowNpcOrGoSpawnInformation<GameObject>(uint32 guid);

template std::string ChatHandler::PrepareStringNpcOrGoSpawnInformation<Creature>(uint32 guid);
template std::string ChatHandler::PrepareStringNpcOrGoSpawnInformation<GameObject>(uint32 guid);


LocaleConstant NullChatHandler::GetSessionDbcLocale() const
{
    return sWorld.GetDefaultDbcLocale();
}

int NullChatHandler::GetSessionDbLocaleIndex() const
{
    return sObjectMgr.GetDBCLocaleIndex();
}

const char *NullChatHandler::GetMangosString(int32 entry) const
{
    return sObjectMgr.GetMangosStringForDBCLocale(entry);
}

