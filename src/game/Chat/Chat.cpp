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

ChatCommand * ChatHandler::getCommandTable()
{
    static ChatCommand accountSetCommandTable[] =
    {
        { "gmlevel",        SEC_ADMINISTRATOR,        true,  &ChatHandler::HandleAccountSetGmLevelCommand,   "", nullptr },
        { "password",       SEC_GAMEMASTER,           true,  &ChatHandler::HandleAccountSetPasswordCommand,  "", nullptr },
        { nullptr,          0,                        false, nullptr,                                        "", nullptr }
    };

    static ChatCommand accountCommandTable[] =
    {
        { "characters",     SEC_GAMEMASTER,     true,  &ChatHandler::HandleAccountCharactersCommand,   "", nullptr },
        { "create",         SEC_CONSOLE,        true,  &ChatHandler::HandleAccountCreateCommand,       "", nullptr },
        { "delete",         SEC_CONSOLE,        true,  &ChatHandler::HandleAccountDeleteCommand,       "", nullptr },
        { "set",            SEC_GAMEMASTER,     true,  nullptr,                                        "", accountSetCommandTable },
        { "password",       SEC_PLAYER,         true,  &ChatHandler::HandleAccountPasswordCommand,     "", nullptr },
        { "",               SEC_PLAYER,         true,  &ChatHandler::HandleAccountCommand,             "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand banCommandTable[] =
    {
        { "account",        SEC_GAMEMASTER,     true,  &ChatHandler::HandleBanAccountCommand,          "", nullptr },
        { "allip",          SEC_ADMINISTRATOR,  true,  &ChatHandler::HandleBanAllIPCommand,            "", nullptr },
        { "character",      SEC_GAMEMASTER,     true,  &ChatHandler::HandleBanCharacterCommand,        "", nullptr },
        { "ip",             SEC_GAMEMASTER,     true,  &ChatHandler::HandleBanIPCommand,               "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand baninfoCommandTable[] =
    {
        { "account",        SEC_GAMEMASTER,  true,  &ChatHandler::HandleBanInfoAccountCommand,      "", nullptr },
        { "character",      SEC_GAMEMASTER,  true,  &ChatHandler::HandleBanInfoCharacterCommand,    "", nullptr },
        { "ip",             SEC_GAMEMASTER,      true,  &ChatHandler::HandleBanInfoIPCommand,           "", nullptr },
        { nullptr,          0,                   false, nullptr,                                        "", nullptr }
    };

    static ChatCommand banlistCommandTable[] =
    {
        { "account",        SEC_GAMEMASTER,  true,  &ChatHandler::HandleBanListAccountCommand,      "", nullptr },
        { "character",      SEC_GAMEMASTER,  true,  &ChatHandler::HandleBanListCharacterCommand,    "", nullptr },
        { "ip",             SEC_GAMEMASTER,      true,  &ChatHandler::HandleBanListIPCommand,           "", nullptr },
        { nullptr,          0,                   false, nullptr,                                        "", nullptr }
    };

    static ChatCommand castCommandTable[] =
    {
        { "self",           SEC_GAMEMASTER,  false, &ChatHandler::HandleCastSelfCommand,               "", nullptr },
        { "target",         SEC_GAMEMASTER,  false, &ChatHandler::HandleCastTargetCommand,             "", nullptr },
        { "",               SEC_GAMEMASTER,  false, &ChatHandler::HandleCastCommand,                   "", nullptr },
        { nullptr,          0,               false, nullptr,                                           "", nullptr }
    };

    static ChatCommand characterDeletedListCommandTable[] =
    {
        { "name",            SEC_GAMEMASTER, true, &ChatHandler::HandleCharacterDeletedListNameCommand,    "", nullptr },
        { nullptr,           0,              false, nullptr,                                               "", nullptr }
    };

    static ChatCommand characterDeletedCommandTable[] =
    {
        { "list",           SEC_GAMEMASTER,     true,  nullptr                                          ,  "", characterDeletedListCommandTable },
        { "restore",        SEC_GAMEMASTER,    true,  &ChatHandler::HandleCharacterDeletedRestoreCommand, "", nullptr },
        { nullptr,          0,                  false, nullptr,                                            "", nullptr }
    };


    static ChatCommand characterCleanCommandTable[] =
    {
        { "todelete",       SEC_ADMINISTRATOR,  true,  &ChatHandler::HandleCleanCharactersToDeleteCommand,     "", nullptr },
        { "items",          SEC_ADMINISTRATOR,  true,  &ChatHandler::HandleCleanCharactersItemsCommand,        "", nullptr },
        { nullptr,          0,                  false, nullptr,                                                "", nullptr }
    };

    static ChatCommand characterCommandTable[] =
    {
        { "deleted",        SEC_GAMEMASTER,     true, nullptr,                                          "", characterDeletedCommandTable},
        { "erase",          SEC_CONSOLE,        true,  &ChatHandler::HandleCharacterEraseCommand,      "", nullptr },
        { "rename",         SEC_GAMEMASTER,     true,  &ChatHandler::HandleCharacterRenameCommand,     "", nullptr },
        { "reputation",     SEC_GAMEMASTER,  true,  &ChatHandler::HandleCharacterReputationCommand, "", nullptr },
        { "hasitem",        SEC_GAMEMASTER, true,  &ChatHandler::HandleCharacterHasItemCommand,    "", nullptr },
        { "fillflys",       SEC_GAMEMASTER,     true,  &ChatHandler::HandleCharacterFillFlysCommand,   "", nullptr },
        { "clean",          SEC_ADMINISTRATOR,  true,  nullptr,                                        "", characterCleanCommandTable },
        { nullptr,          0,                   false, nullptr,                                       "", nullptr }
    };


    static ChatCommand eventCommandTable[] =
    {
        { "list",           SEC_GAMEMASTER,     true,  &ChatHandler::HandleEventListCommand,           "", nullptr },
        { "start",          SEC_GAMEMASTER,    true,  &ChatHandler::HandleEventStartCommand,          "", nullptr },
        { "stop",           SEC_GAMEMASTER,    true,  &ChatHandler::HandleEventStopCommand,           "", nullptr },
        { "enable",         SEC_GAMEMASTER,     true,  &ChatHandler::HandleEventEnableCommand,         "", nullptr },
        { "disable",        SEC_GAMEMASTER,     true,  &ChatHandler::HandleEventDisableCommand,        "", nullptr },
        { "",               SEC_GAMEMASTER,     true,  &ChatHandler::HandleEventInfoCommand,           "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand gmCommandTable[] =
    {
        { "list",           SEC_ADMINISTRATOR,  true,  &ChatHandler::HandleGMListFullCommand,          "", nullptr },
        { "visible",        SEC_GAMEMASTER, false, &ChatHandler::HandleGMVisibleCommand,           "", nullptr },
		// TURTLE TODO: Move all options from HandleGMOptionsCommand to separate commands
        { "options",        SEC_ADMINISTRATOR,     false, &ChatHandler::HandleGMOptionsCommand,           "", nullptr },
        { "setview",        SEC_ADMINISTRATOR, false, &ChatHandler::HandleSetViewCommand,             "", nullptr },
        { "",               SEC_GAMEMASTER, false, &ChatHandler::HandleGMCommand,                  "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand goCommandTable[] =
    {
        { "creature",       SEC_GAMEMASTER, false, &ChatHandler::HandleGoCreatureCommand,          "", nullptr },
        { "object",         SEC_GAMEMASTER, false, &ChatHandler::HandleGoObjectCommand,            "", nullptr },
        { "xyz",            SEC_GAMEMASTER, false, &ChatHandler::HandleGoXYZCommand,               "", nullptr },
        // Nostalrius
        { "forward",        SEC_GAMEMASTER, false, &ChatHandler::HandleGoForwardCommand,           "", nullptr },
        { "up",             SEC_GAMEMASTER, false, &ChatHandler::HandleGoUpCommand,                "", nullptr },
        { "",               SEC_GAMEMASTER, false, &ChatHandler::HandleGoCommand,                  "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand gobjectCommandTable[] =
    {
        { "add",            SEC_GAMEMASTER,     false, &ChatHandler::HandleGameObjectAddCommand,       "", nullptr },
        { "tmpadd",         SEC_GAMEMASTER,     false, &ChatHandler::HandleGameObjectTempAddCommand,   "", nullptr },
        { "delete",         SEC_GAMEMASTER,     false, &ChatHandler::HandleGameObjectDeleteCommand,    "", nullptr },
        { "move",           SEC_GAMEMASTER,     false, &ChatHandler::HandleGameObjectMoveCommand,      "", nullptr },
        { "near",           SEC_GAMEMASTER, false, &ChatHandler::HandleGameObjectNearCommand,      "", nullptr },
        { "target",         SEC_GAMEMASTER,     false, &ChatHandler::HandleGameObjectTargetCommand,    "", nullptr },
        { "turn",           SEC_GAMEMASTER,     false, &ChatHandler::HandleGameObjectTurnCommand,      "", nullptr },
        { "info",           SEC_GAMEMASTER, false, &ChatHandler::HandleGameObjectInfoCommand,      "", nullptr },
        { "select",         SEC_GAMEMASTER, false, &ChatHandler::HandleGameObjectSelectCommand,    "", nullptr },
        { "despawn",        SEC_GAMEMASTER,     false, &ChatHandler::HandleGameObjectDespawnCommand,   "", nullptr },
        { "toggle",         SEC_GAMEMASTER,     false, &ChatHandler::HandleGameObjectToggleCommand,    "", nullptr },
        { "reset",          SEC_GAMEMASTER,     false, &ChatHandler::HandleGameObjectResetCommand,     "", nullptr },
        { "respawn",        SEC_GAMEMASTER,     false, &ChatHandler::HandleGameObjectRespawnCommand,   "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand guildCommandTable[] =
    {
        { "create",         SEC_GAMEMASTER,     true,  &ChatHandler::HandleGuildCreateCommand,         "", nullptr },
        { "delete",         SEC_GAMEMASTER,    true,  &ChatHandler::HandleGuildDeleteCommand,         "", nullptr },
        { "invite",         SEC_GAMEMASTER,     true,  &ChatHandler::HandleGuildInviteCommand,         "", nullptr },
        { "uninvite",       SEC_GAMEMASTER,     true,  &ChatHandler::HandleGuildUninviteCommand,       "", nullptr },
        { "rank",           SEC_GAMEMASTER,     true,  &ChatHandler::HandleGuildRankCommand,           "", nullptr },
        { "rename",         SEC_GAMEMASTER,    true,  &ChatHandler::HandleGuildRenameCommand,         "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand honorCommandTable[] =
    {
        { "show",           SEC_GAMEMASTER, false, &ChatHandler::HandleHonorShow,                  "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand instanceCommandTable[] =
    {
        { "continents",     SEC_ADMINISTRATOR,    true,  &ChatHandler::HandleInstanceContinentsCommand,  "", nullptr },
        { "listbinds",      SEC_ADMINISTRATOR,     false, &ChatHandler::HandleInstanceListBindsCommand,   "", nullptr },
        { "unbind",         SEC_ADMINISTRATOR,     false, &ChatHandler::HandleInstanceUnbindCommand,      "", nullptr },
        { "stats",          SEC_ADMINISTRATOR,    true,  &ChatHandler::HandleInstanceStatsCommand,       "", nullptr },
        { "perfinfos",      SEC_ADMINISTRATOR,    false, &ChatHandler::HandleInstancePerfInfosCommand,   "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand learnCommandTable[] =
    {
		{ "all_myspells",   SEC_ADMINISTRATOR,     false, &ChatHandler::HandleLearnAllMySpellsCommand,    "", nullptr },
		{ "",               SEC_GAMEMASTER,     false, &ChatHandler::HandleLearnCommand,               "", nullptr },
		{ nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };


    // TODO: Add console output support to async player lookups
    static ChatCommand lookupPlayerCommandTable[] =
    {
        { "account",        SEC_GAMEMASTER,     false,  &ChatHandler::HandleLookupPlayerAccountCommand,   "", nullptr },
        { "email",          SEC_ADMINISTRATOR,    false,  &ChatHandler::HandleLookupPlayerEmailCommand,     "", nullptr },
        { "ip",             SEC_GAMEMASTER,    false,  &ChatHandler::HandleLookupPlayerIpCommand,        "", nullptr },
        { "name",           SEC_GAMEMASTER, false,  &ChatHandler::HandleLookupPlayerNameCommand,      "", nullptr },
        { "character",      SEC_GAMEMASTER, false,  &ChatHandler::HandleLookupPlayerCharacterCommand, "", nullptr },
        { nullptr,          0,                  false,  nullptr,                                          "", nullptr }
    };

    static ChatCommand lookupCommandTable[] =
    {
		{ "creature",       SEC_GAMEMASTER, true,  &ChatHandler::HandleLookupCreatureCommand,      "", nullptr },
		{ "faction",        SEC_GAMEMASTER, true,  &ChatHandler::HandleLookupFactionCommand,       "", nullptr },
		{ "item",           SEC_GAMEMASTER, true,  &ChatHandler::HandleLookupItemCommand,          "", nullptr },
		{ "object",         SEC_GAMEMASTER, true,  &ChatHandler::HandleLookupObjectCommand,        "", nullptr },
		{ "quest",          SEC_GAMEMASTER, true,  &ChatHandler::HandleLookupQuestCommand,         "", nullptr },
		{ "player",         SEC_GAMEMASTER, true,  nullptr,                                        "", lookupPlayerCommandTable },
		{ "skill",          SEC_GAMEMASTER, true,  &ChatHandler::HandleLookupSkillCommand,         "", nullptr },
		{ "spell",          SEC_GAMEMASTER, true,  &ChatHandler::HandleLookupSpellCommand,         "", nullptr },
        { "itemset",        SEC_GAMEMASTER, true,  &ChatHandler::HandleLookupItemSetCommand,       "", nullptr },
        { "event",          SEC_GAMEMASTER, true,  &ChatHandler::HandleLookupEventCommand,         "", nullptr },
        { "guild",          SEC_GAMEMASTER, true,  &ChatHandler::HandleLookupGuildCommand,         "", nullptr },
		{ nullptr,          0,                  false, nullptr,                                    "", nullptr }
    };

    static ChatCommand modifyCommandTable[] =
    {
        { "hp",             SEC_GAMEMASTER,     false, &ChatHandler::HandleModifyHPCommand,            "", nullptr },
        { "mana",           SEC_GAMEMASTER,     false, &ChatHandler::HandleModifyManaCommand,          "", nullptr },
        { "money",          SEC_GAMEMASTER,     false, &ChatHandler::HandleModifyMoneyCommand,         "", nullptr },
        { "speed",          SEC_GAMEMASTER, false, &ChatHandler::HandleModifyASpeedCommand,         "", nullptr },
        { "scale",          SEC_GAMEMASTER,     false, &ChatHandler::HandleModifyScaleCommand,         "", nullptr },
        { "faction",        SEC_GAMEMASTER,     false, &ChatHandler::HandleModifyFactionCommand,       "", nullptr },
        { "rep",            SEC_GAMEMASTER,     false, &ChatHandler::HandleModifyRepCommand,           "", nullptr },
        { "drunk",          SEC_GAMEMASTER,      false, &ChatHandler::HandleModifyDrunkCommand,         "", nullptr },
        { "morph",          SEC_GAMEMASTER,     false, &ChatHandler::HandleModifyMorphCommand,         "", nullptr },
        { "gender",         SEC_ADMINISTRATOR,     false, &ChatHandler::HandleModifyGenderCommand,        "", nullptr },
        { "ap",             SEC_ADMINISTRATOR,    false, &ChatHandler::HandleModifyMeleeApCommand,       "", nullptr },
        { "spellpower",     SEC_ADMINISTRATOR,    false, &ChatHandler::HandleModifySpellPowerCommand,    "", nullptr },
        { "honor",          SEC_ADMINISTRATOR,    false, &ChatHandler::HandleModifyHonorCommand,         "", nullptr },
        // Turtle WoW
        { "xp",             SEC_GAMEMASTER,    false, &ChatHandler::HandleModifyXpCommand,            "", nullptr },
        { "hairstyle",      SEC_GAMEMASTER,    false, &ChatHandler::HandleModifyHairStyleCommand,     "", nullptr },
        { "haircolor",      SEC_GAMEMASTER,    false, &ChatHandler::HandleModifyHairColorCommand,     "", nullptr },
        { "skincolor",      SEC_GAMEMASTER,    false, &ChatHandler::HandleModifySkinColorCommand,     "", nullptr },
        { "face",           SEC_GAMEMASTER,    false, &ChatHandler::HandleModifyFaceCommand,          "", nullptr },
        { "accessories",    SEC_GAMEMASTER,    false, &ChatHandler::HandleModifyAccessoriesCommand,   "", nullptr },
        { "title",          SEC_GAMEMASTER,    false, &ChatHandler::HandleModifyTitleCommand,         "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand creatureGroupsCommandTable[] =
    {
        { "add",            SEC_ADMINISTRATOR,     false, &ChatHandler::HandleNpcGroupAddCommand,         "", nullptr },
        { "addrel",         SEC_ADMINISTRATOR,     false, &ChatHandler::HandleNpcGroupAddRelCommand,      "", nullptr },
        { "del",            SEC_ADMINISTRATOR,     false, &ChatHandler::HandleNpcGroupDelCommand,         "", nullptr },
        { "link",           SEC_ADMINISTRATOR,     false, &ChatHandler::HandleNpcGroupLinkCommand,        "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand npcCommandTable[] =
    {
        { "add",            SEC_GAMEMASTER,     false, &ChatHandler::HandleNpcAddCommand,              "", nullptr },
        { "additem",        SEC_GAMEMASTER,     false, &ChatHandler::HandleNpcAddVendorItemCommand,    "", nullptr },
        { "scale",          SEC_GAMEMASTER,     false, &ChatHandler::HandleNpcScaleCommand,    "", nullptr },
        { "addloot",        SEC_GAMEMASTER,     false, &ChatHandler::HandleNpcAddLootCommand,    "", nullptr },
        { "addweapon",      SEC_GAMEMASTER,     false, &ChatHandler::HandleNpcAddWeaponCommand,        "", nullptr },
        { "aiinfo",         SEC_ADMINISTRATOR,      false, &ChatHandler::HandleNpcAIInfoCommand,           "", nullptr },
        { "allowmove",      SEC_ADMINISTRATOR,     false, &ChatHandler::HandleNpcAllowMovementCommand,    "", nullptr },
        { "delete",         SEC_GAMEMASTER,     false, &ChatHandler::HandleNpcDeleteCommand,           "", nullptr },
        { "delitem",        SEC_GAMEMASTER,     false, &ChatHandler::HandleNpcDelVendorItemCommand,    "", nullptr },
        { "factionid",      SEC_GAMEMASTER,     false, &ChatHandler::HandleNpcFactionIdCommand,        "", nullptr },
        { "flag",           SEC_GAMEMASTER,     false, &ChatHandler::HandleNpcFlagCommand,             "", nullptr },
        { "info",           SEC_GAMEMASTER,      false, &ChatHandler::HandleNpcInfoCommand,             "", nullptr },
        { "move",           SEC_GAMEMASTER,     false, &ChatHandler::HandleNpcMoveCommand,             "", nullptr },
        { "playemote",      SEC_GAMEMASTER, false, &ChatHandler::HandleNpcPlayEmoteCommand,        "", nullptr },
        { "spawntime",      SEC_GAMEMASTER,     false, &ChatHandler::HandleNpcSpawnTimeCommand,        "", nullptr },
        { "say",            SEC_GAMEMASTER, false, &ChatHandler::HandleNpcSayCommand,              "", nullptr },
        { "textemote",      SEC_GAMEMASTER, false, &ChatHandler::HandleNpcTextEmoteCommand,        "", nullptr },
        { "yell",           SEC_GAMEMASTER, false, &ChatHandler::HandleNpcYellCommand,             "", nullptr },
        { "setdeathstate",  SEC_GAMEMASTER,     false, &ChatHandler::HandleNpcSetDeathStateCommand,    "", nullptr },
        { "group",          SEC_ADMINISTRATOR,     false, nullptr,                                        "", creatureGroupsCommandTable },

        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand questCommandTable[] =
    {
        { "add",            SEC_GAMEMASTER, false, &ChatHandler::HandleQuestAddCommand,            "", nullptr },
        { "complete",       SEC_GAMEMASTER, false, &ChatHandler::HandleQuestCompleteCommand,       "", nullptr },
        { "status",         SEC_GAMEMASTER,  false, &ChatHandler::HandleQuestStatusCommand,         "", nullptr },
        { "remove",         SEC_GAMEMASTER,  false, &ChatHandler::HandleQuestRemoveCommand,         "", nullptr },
        { nullptr,          0,               false, nullptr,                                        "", nullptr }
    };

    static ChatCommand petCommandTable[] =
    {
        { "list",           SEC_GAMEMASTER,     true,  &ChatHandler::HandlePetListCommand,              "", nullptr },
        { "rename",         SEC_GAMEMASTER,     true,  &ChatHandler::HandlePetRenameCommand,            "", nullptr },
        { "delete",         SEC_GAMEMASTER,     true,  &ChatHandler::HandlePetDeleteCommand,            "", nullptr },
        { nullptr,          0,                  false, nullptr,                                         "", nullptr }
    };

    static ChatCommand reloadCommandTable[] =
    { 
        { "config",                       SEC_ADMINISTRATOR,  true,  &ChatHandler::HandleReloadConfigCommand,        "", nullptr },
        { "quest_template",               SEC_ADMINISTRATOR,    true,  &ChatHandler::HandleReloadQuestTemplateCommand,           "", nullptr },
        { "spell_disabled",               SEC_ADMINISTRATOR,    true,  &ChatHandler::HandleReloadSpellDisabledCommand,           "", nullptr },
        { "autobroadcast",                SEC_ADMINISTRATOR, true,  &ChatHandler::HandleReloadAutoBroadcastCommand,           "", nullptr },
        { "item_template",                SEC_ADMINISTRATOR,    true,  &ChatHandler::HandleReloadItemTemplate,                   "", nullptr },
        { "variables",                    SEC_ADMINISTRATOR,    true,  &ChatHandler::HandleReloadVariablesCommand,               "", nullptr },
        { "shop",                         SEC_ADMINISTRATOR, true,  &ChatHandler::HandleReloadShopCommand,                    "", nullptr },
        { "custom_pets",                  SEC_ADMINISTRATOR, true,  &ChatHandler::HandleReloadCustomPetEntries,               "", nullptr },
        { "custom_mounts",                SEC_ADMINISTRATOR, true,  &ChatHandler::HandleReloadCustomMountEntries,               "", nullptr },
        { "mangos_string",                SEC_ADMINISTRATOR,    true,  &ChatHandler::HandleReloadMangosStringCommand,            "", nullptr },
        { nullptr,                       0,                 false, nullptr,                                                  "", nullptr }
    };

    static ChatCommand resetCommandTable[] =
    {
        { "honor",          SEC_ADMINISTRATOR,     true,  &ChatHandler::HandleResetHonorCommand,          "", nullptr },
        { "level",          SEC_ADMINISTRATOR,     true,  &ChatHandler::HandleResetLevelCommand,          "", nullptr },
        { "spells",         SEC_ADMINISTRATOR,     true,  &ChatHandler::HandleResetSpellsCommand,         "", nullptr },
        { "stats",          SEC_ADMINISTRATOR,     true,  &ChatHandler::HandleResetStatsCommand,          "", nullptr },
        { "talents",        SEC_GAMEMASTER,     true,  &ChatHandler::HandleResetTalentsCommand,        "", nullptr },
        { "all",            SEC_ADMINISTRATOR,  true,  &ChatHandler::HandleResetAllCommand,            "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand sendCommandTable[] =
    {
        { "items",          SEC_GAMEMASTER,  true,  &ChatHandler::HandleSendItemsCommand,           "", nullptr },
        { "mail",           SEC_GAMEMASTER,      true,  &ChatHandler::HandleSendMailCommand,            "", nullptr },
        { "message",        SEC_GAMEMASTER,  true,  &ChatHandler::HandleSendMessageCommand,         "", nullptr },
        { "money",          SEC_GAMEMASTER,  true,  &ChatHandler::HandleSendMoneyCommand,           "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand serverIdleRestartCommandTable[] =
    {
        { "cancel",         SEC_ADMINISTRATOR,  true,  &ChatHandler::HandleServerShutDownCancelCommand, "", nullptr },
        { ""   ,            SEC_ADMINISTRATOR,  true,  &ChatHandler::HandleServerIdleRestartCommand,    "", nullptr },
        { nullptr,          0,                  false, nullptr,                                         "", nullptr }
    };

    static ChatCommand serverIdleShutdownCommandTable[] =
    {
        { "cancel",         SEC_ADMINISTRATOR,  true,  &ChatHandler::HandleServerShutDownCancelCommand, "", nullptr },
        { ""   ,            SEC_ADMINISTRATOR,  true,  &ChatHandler::HandleServerIdleShutDownCommand,   "", nullptr },
        { nullptr,          0,                  false, nullptr,                                         "", nullptr }
    };

    static ChatCommand serverRestartCommandTable[] =
    {
        { "cancel",         SEC_ADMINISTRATOR,  true,  &ChatHandler::HandleServerShutDownCancelCommand, "", nullptr },
        { ""   ,            SEC_ADMINISTRATOR,  true,  &ChatHandler::HandleServerRestartCommand,        "", nullptr },
        { nullptr,          0,                  false, nullptr,                                         "", nullptr }
    };

    static ChatCommand serverShutdownCommandTable[] =
    {
        { "cancel",         SEC_ADMINISTRATOR,  true,  &ChatHandler::HandleServerShutDownCancelCommand, "", nullptr },
        { ""   ,            SEC_ADMINISTRATOR,  true,  &ChatHandler::HandleServerShutDownCommand,       "", nullptr },
        { nullptr,          0,                  false, nullptr,                                         "", nullptr }
    };
       

    static ChatCommand serverCommandTable[] =
    {
        { "corpses",        SEC_ADMINISTRATOR,     true,  &ChatHandler::HandleServerCorpsesCommand,       "", nullptr },
        { "exit",           SEC_CONSOLE,        true,  &ChatHandler::HandleServerExitCommand,          "", nullptr },
        { "idlerestart",    SEC_ADMINISTRATOR,  true, nullptr,                                         "", serverIdleRestartCommandTable },
        { "idleshutdown",   SEC_ADMINISTRATOR,  true, nullptr,                                         "", serverShutdownCommandTable },
        { "info",           SEC_PLAYER,         true,  &ChatHandler::HandleServerInfoCommand,          "", nullptr },
        { "restart",        SEC_ADMINISTRATOR,  true, nullptr,                                         "", serverRestartCommandTable },
        { "shutdown",       SEC_ADMINISTRATOR,  true, nullptr,                                         "", serverShutdownCommandTable },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand teleCommandTable[] =
    {
        { "add",            SEC_GAMEMASTER,     false, &ChatHandler::HandleTeleAddCommand,             "", nullptr },
        { "del",            SEC_GAMEMASTER,     true,  &ChatHandler::HandleTeleDelCommand,             "", nullptr },
        { "name",           SEC_GAMEMASTER, true,  &ChatHandler::HandleTeleNameCommand,            "", nullptr },
        { "group",          SEC_GAMEMASTER, false, &ChatHandler::HandleTeleGroupCommand,           "", nullptr },
        { "",               SEC_GAMEMASTER, false, &ChatHandler::HandleTeleCommand,                "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand unbanCommandTable[] =
    {
        { "account",        SEC_GAMEMASTER,  true,  &ChatHandler::HandleUnBanAccountCommand,      "", nullptr },
        { "character",      SEC_GAMEMASTER,  true,  &ChatHandler::HandleUnBanCharacterCommand,    "", nullptr },
        { "ip",             SEC_GAMEMASTER,  true,  &ChatHandler::HandleUnBanIPCommand,           "", nullptr },
        { nullptr,          0,                  false, nullptr,                                      "", nullptr }
    };

    static ChatCommand wpCommandTable[] =
    {
        { "show",           SEC_ADMINISTRATOR, false, &ChatHandler::HandleWpShowCommand,              "", nullptr },
        { "add",            SEC_ADMINISTRATOR,     false, &ChatHandler::HandleWpAddCommand,               "", nullptr },
        { "modify",         SEC_ADMINISTRATOR,     false, &ChatHandler::HandleWpModifyCommand,            "", nullptr },
        { "export",         SEC_ADMINISTRATOR,  false, &ChatHandler::HandleWpExportCommand,            "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand worldStateCommandTable[] =
    {
        { "test",              SEC_ADMINISTRATOR,        false, &ChatHandler::HandleUpdateWorldStateCommand, "", nullptr},
        { nullptr,             0,                        false, nullptr,                                     "", nullptr}
    };
    static ChatCommand bgCommandTable[] =
    {
        { "status",            SEC_ADMINISTRATOR,           false, &ChatHandler::HandleBGStatusCommand,         "", nullptr},
        { "start",             SEC_ADMINISTRATOR,           false, &ChatHandler::HandleBGStartCommand,          "", nullptr},
        { "stop",              SEC_ADMINISTRATOR,           false, &ChatHandler::HandleBGStopCommand,           "", nullptr},
        { nullptr,             0,                        false, nullptr,                                     "", nullptr}
    };

    static ChatCommand anticheatClientCommandTable[] =
    {
        { "find",           SEC_ADMINISTRATOR,     true,  &ChatHandler::HandleClientSearchCommand,        "", nullptr },
        { "",               SEC_ADMINISTRATOR,     true,  &ChatHandler::HandleClientInfosCommand,         "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    static ChatCommand anticheatWardenCommandTable[] =
    {
        { "read",          SEC_ADMINISTRATOR,    false, &ChatHandler::HandleWardenReadCommand,           "", nullptr },
        { "",              SEC_ADMINISTRATOR,    true,  &ChatHandler::HandleWardenCommand,               "", nullptr },
        { nullptr,         0,                  false, nullptr,                                         "", nullptr }
    };

    static ChatCommand anticheatCommandTable[] =
    {
        { "server",         SEC_ADMINISTRATOR,    true,  &ChatHandler::HandleAnticheatCommand,            "", nullptr },
        { "warden",         SEC_ADMINISTRATOR,   true, nullptr,                                          "", anticheatWardenCommandTable },
        { "client",         SEC_ADMINISTRATOR,    true, nullptr,                                          "", anticheatClientCommandTable },
        { nullptr,          0,                 false, nullptr,                                         "", nullptr }
    };
    static ChatCommand ticketCommandTable[] =
    {
        { "close",         SEC_GAMEMASTER,  true,  &ChatHandler::HandleGMTicketCloseByIdCommand,        "", nullptr },
        { "list",          SEC_GAMEMASTER,  true,  &ChatHandler::HandleGMTicketListCommand,             "", nullptr },
        { "",              SEC_GAMEMASTER,  true,  &ChatHandler::HandleGMTicketGetByIdOrNameCommand,    "", nullptr },
        { nullptr,         0,                   false, nullptr,                                             "", nullptr }
    };
    
    static ChatCommand serviceCommandTable[] =
    {
        { "del_characters",     SEC_ADMINISTRATOR,    true,  &ChatHandler::HandleServiceDeleteCharacters,   "", nullptr },
        { nullptr,              0,                    false, nullptr,                                       "", nullptr }
    };

    static ChatCommand goldCommandTable[] =
    {
        { "remove",            SEC_GAMEMASTER,        false, &ChatHandler::HandleGoldRemoval,               "", nullptr },
        { nullptr,             0,                     false, nullptr,                                        "", nullptr }
    };

    static ChatCommand commandTable[] =
    {
        { "account",        SEC_PLAYER,         true, nullptr,                                         "", accountCommandTable  },
        { "cast",           SEC_GAMEMASTER,     false, nullptr,                                        "", castCommandTable     },
        { "character",      SEC_GAMEMASTER, true, nullptr,                                         "", characterCommandTable},
        { "event",          SEC_GAMEMASTER,     false, nullptr,                                        "", eventCommandTable    },
        { "gm",             SEC_GAMEMASTER,         true, nullptr,                                         "", gmCommandTable       },
        { "honor",          SEC_ADMINISTRATOR,     false, nullptr,                                        "", honorCommandTable    },
        { "go",             SEC_GAMEMASTER, false, nullptr,                                        "", goCommandTable       },
        { "gobject",        SEC_GAMEMASTER, false, nullptr,                                        "", gobjectCommandTable  },
        { "guild",          SEC_GAMEMASTER,     true, nullptr,                                         "", guildCommandTable    },
        { "instance",       SEC_ADMINISTRATOR,      true, nullptr,                                         "", instanceCommandTable },
        { "learn",          SEC_GAMEMASTER,      false, nullptr,                                        "", learnCommandTable    },
        { "lookup",         SEC_GAMEMASTER,      true, nullptr,                                         "", lookupCommandTable   },
        { "modify",         SEC_GAMEMASTER,      false, nullptr,                                        "", modifyCommandTable   },
        { "npc",            SEC_GAMEMASTER,      false, nullptr,                                        "", npcCommandTable      },
        { "quest",          SEC_GAMEMASTER,     false, nullptr,                                        "", questCommandTable    },
        { "reload",         SEC_ADMINISTRATOR,     true, nullptr,                                         "", reloadCommandTable   },
        { "reset",          SEC_GAMEMASTER,     true, nullptr,                                         "", resetCommandTable    },
        { "server",         SEC_PLAYER,         true, nullptr,                                         "", serverCommandTable   },
        { "tele",           SEC_GAMEMASTER, true, nullptr,                                         "", teleCommandTable     },
        { "wp",             SEC_ADMINISTRATOR, false, nullptr,                                        "", wpCommandTable       },
        { "service",        SEC_ADMINISTRATOR,  true, nullptr,                                         "", serviceCommandTable  },
        { "worldstate",     SEC_ADMINISTRATOR,  false, nullptr,                                        "", worldStateCommandTable},
        { "bg",             SEC_ADMINISTRATOR,     false, nullptr,                                        "", bgCommandTable},
        { "variable",       SEC_ADMINISTRATOR,     true,  &ChatHandler::HandleVariableCommand,            "", nullptr},
        { "god",            SEC_GAMEMASTER,     false, &ChatHandler::HandleGodCommand,                 "", nullptr },
        { "aura",           SEC_GAMEMASTER,     false, &ChatHandler::HandleAuraCommand,                "", nullptr },
        { "unaura",         SEC_GAMEMASTER,     false, &ChatHandler::HandleUnAuraCommand,              "", nullptr },
        { "announce",       SEC_ADMINISTRATOR,    true,  &ChatHandler::HandleAnnounceCommand,            "", nullptr },
        { "notify",         SEC_ADMINISTRATOR,    true,  &ChatHandler::HandleNotifyCommand,              "", nullptr },
        { "goname",         SEC_GAMEMASTER, false, &ChatHandler::HandleGonameCommand,              "", nullptr },
        { "namego",         SEC_GAMEMASTER, false, &ChatHandler::HandleNamegoCommand,              "", nullptr },
        { "groupgo",        SEC_GAMEMASTER, false, &ChatHandler::HandleGroupgoCommand,             "", nullptr },
        { "appear",         SEC_GAMEMASTER, false, &ChatHandler::HandleGonameCommand,              "", nullptr },
        { "summon",         SEC_GAMEMASTER, false, &ChatHandler::HandleNamegoCommand,              "", nullptr },
        { "groupsummon",    SEC_GAMEMASTER, false, &ChatHandler::HandleGroupgoCommand,             "", nullptr },
        { "commands",       SEC_PLAYER,         true,  &ChatHandler::HandleCommandsCommand,            "", nullptr },
        { "demorph",        SEC_GAMEMASTER,     false, &ChatHandler::HandleDeMorphCommand,             "", nullptr },
        { "die",            SEC_GAMEMASTER,     false, &ChatHandler::HandleDieCommand,                 "", nullptr },
        { "fear",           SEC_GAMEMASTER,     false, &ChatHandler::HandleFearCommand,                "", nullptr },
        { "revive",         SEC_GAMEMASTER,     true,  &ChatHandler::HandleReviveCommand,              "", nullptr },
        { "replenish",      SEC_GAMEMASTER,     false, &ChatHandler::HandleReplenishCommand,           "", nullptr },
        { "dismount",       SEC_PLAYER,         false, &ChatHandler::HandleDismountCommand,            "", nullptr },
        { "gps",            SEC_GAMEMASTER,      false, &ChatHandler::HandleGPSCommand,                 "", nullptr },
        { "help",           SEC_GAMEMASTER,         true,  &ChatHandler::HandleHelpCommand,                "", nullptr },
        { "itemmove",       SEC_GAMEMASTER,     false, &ChatHandler::HandleItemMoveCommand,            "", nullptr },
        { "cooldown",       SEC_GAMEMASTER,     false, &ChatHandler::HandleCooldownCommand,            "", nullptr },
        { "unlearn",        SEC_GAMEMASTER,     false, &ChatHandler::HandleUnLearnCommand,             "", nullptr },
        { "distance",       SEC_GAMEMASTER,      false, &ChatHandler::HandleGetDistanceCommand,         "", nullptr },
        { "recall",         SEC_GAMEMASTER,      false, &ChatHandler::HandleRecallCommand,              "", nullptr },
        { "save",           SEC_GAMEMASTER,         false, &ChatHandler::HandleSaveCommand,                "", nullptr },
        { "wareffortget",   SEC_ADMINISTRATOR,  true,  &ChatHandler::HandleGetWarEffortResource,       "", nullptr },
        { "wareffortset",   SEC_ADMINISTRATOR,  true,  &ChatHandler::HandleSetWarEffortResource,       "", nullptr },
        { "saveall",        SEC_ADMINISTRATOR,  true,  &ChatHandler::HandleSaveAllCommand,             "", nullptr },
        { "kick",           SEC_GAMEMASTER, true,  &ChatHandler::HandleKickPlayerCommand,          "", nullptr },
        { "ban",            SEC_GAMEMASTER, true, nullptr,                                         "", banCommandTable      },
        { "unban",          SEC_GAMEMASTER,  true, nullptr,                                         "", unbanCommandTable    },
        { "baninfo",        SEC_GAMEMASTER, false, nullptr,                                        "", baninfoCommandTable  },
        { "banlist",        SEC_GAMEMASTER, true, nullptr,                                         "", banlistCommandTable  },
        { "start",          SEC_GAMEMASTER,         false, &ChatHandler::HandleStartCommand,               "", nullptr },
        { "unstuck",        SEC_GAMEMASTER,         false, &ChatHandler::HandleUnstuckCommand,             "", nullptr },
        { "taxicheat",      SEC_GAMEMASTER,      false, &ChatHandler::HandleTaxiCheatCommand,           "", nullptr },
        { "linkgrave",      SEC_ADMINISTRATOR,     false, &ChatHandler::HandleLinkGraveCommand,           "", nullptr },
        { "neargrave",      SEC_GAMEMASTER, false, &ChatHandler::HandleNearGraveCommand,           "", nullptr },
        { "explorecheat",   SEC_GAMEMASTER, false, &ChatHandler::HandleExploreCheatCommand,        "", nullptr },
        { "hover",          SEC_ADMINISTRATOR, false, &ChatHandler::HandleHoverCommand,               "", nullptr },
        { "levelup",        SEC_GAMEMASTER,     false, &ChatHandler::HandleLevelUpCommand,             "", nullptr },
        { "showarea",       SEC_ADMINISTRATOR, false, &ChatHandler::HandleShowAreaCommand,            "", nullptr },
        { "hidearea",       SEC_ADMINISTRATOR, false, &ChatHandler::HandleHideAreaCommand,            "", nullptr },
        { "additem",        SEC_GAMEMASTER,     false, &ChatHandler::HandleAddItemCommand,             "", nullptr },
        { "deleteitem",     SEC_GAMEMASTER,     false, &ChatHandler::HandleDeleteItemCommand,          "", nullptr },
        { "additemset",     SEC_GAMEMASTER,     false, &ChatHandler::HandleAddItemSetCommand,          "", nullptr },
        { "bank",           SEC_GAMEMASTER, false, &ChatHandler::HandleBankCommand,                "", nullptr },
        { "wchange",        SEC_ADMINISTRATOR,    false, &ChatHandler::HandleChangeWeatherCommand,       "", nullptr },
        { "ticket",         SEC_GAMEMASTER, true, nullptr,                                         "",ticketCommandTable },
        { "maxskill",       SEC_GAMEMASTER,     false, &ChatHandler::HandleMaxSkillCommand,            "", nullptr },
        { "setskill",       SEC_GAMEMASTER,     false, &ChatHandler::HandleSetSkillCommand,            "", nullptr },
        { "whispers",       SEC_GAMEMASTER,      false, &ChatHandler::HandleWhispersCommand,            "", nullptr },
        { "pinfo",          SEC_GAMEMASTER,     false, &ChatHandler::HandlePInfoCommand,               "", nullptr },
        { "groupinfo",      SEC_GAMEMASTER,     true,  &ChatHandler::HandleGroupInfoCommand,           "", nullptr },
        { "addons",         SEC_GAMEMASTER,     false, &ChatHandler::HandleListAddonsCommand,          "", nullptr },
        { "respawn",        SEC_GAMEMASTER,    false, &ChatHandler::HandleRespawnCommand,             "", nullptr },
        { "send",           SEC_GAMEMASTER,      true, nullptr,                                         "", sendCommandTable     },
        { "mute",           SEC_GAMEMASTER,      true,  &ChatHandler::HandleMuteCommand,                "", nullptr },
        { "unmute",         SEC_GAMEMASTER, true,  &ChatHandler::HandleUnmuteCommand,              "", nullptr },
        { "movegens",       SEC_GAMEMASTER, false, &ChatHandler::HandleMovegensCommand,            "", nullptr },
        { "cometome",       SEC_GAMEMASTER,     false, &ChatHandler::HandleComeToMeCommand,            "", nullptr },
        { "damage",         SEC_GAMEMASTER,     false, &ChatHandler::HandleDamageCommand,              "", nullptr },
        { "combatstop",     SEC_GAMEMASTER,     false, &ChatHandler::HandleCombatStopCommand,          "", nullptr },
        { "repairitems",    SEC_GAMEMASTER,     true,  &ChatHandler::HandleRepairitemsCommand,         "", nullptr },
        { "waterwalk",      SEC_GAMEMASTER,     false, &ChatHandler::HandleWaterwalkCommand,           "", nullptr },
        { "quit",           SEC_CONSOLE,        true,  &ChatHandler::HandleQuitCommand,                "", nullptr },
        { "freeze",         SEC_GAMEMASTER, false, &ChatHandler::HandleFreezeCommand,              "", nullptr },
        { "unfreeze",       SEC_GAMEMASTER, false, &ChatHandler::HandleUnfreezeCommand,            "", nullptr },
        { "anticheat",      SEC_GAMEMASTER,     false, nullptr,                                        "", anticheatCommandTable },
        { "pet",            SEC_GAMEMASTER,     true, nullptr,                                         "", petCommandTable},
        { "gold",           SEC_GAMEMASTER,    true, nullptr,                                         "", goldCommandTable },
            // Turtle WoW
        { "balance",        SEC_ADMINISTRATOR,    true,  &ChatHandler::HandleBalanceCommand,             "", nullptr },
        { "sale",           SEC_ADMINISTRATOR,    true,  &ChatHandler::HandleSaleCommand,                "", nullptr },
        { "morphnext",      SEC_GAMEMASTER,     true,  &ChatHandler::HandleMorphNextCommand,           "", nullptr },
        { "morphback",      SEC_GAMEMASTER,     true,  &ChatHandler::HandleMorphBackCommand,           "", nullptr },
        { "mount",          SEC_GAMEMASTER,     false, &ChatHandler::HandleMountCommand,               "", nullptr },
        { "fly",            SEC_GAMEMASTER,     false, &ChatHandler::HandleFlyCommand,                 "", nullptr },
        { "transfer",       SEC_GAMEMASTER,     false, &ChatHandler::HandleTransferCommand,                 "", nullptr },
        { "bgtest",         SEC_ADMINISTRATOR,  false, &ChatHandler::HandleBgTestCommand,                 "", nullptr },
        { "cinematic",      SEC_ADMINISTRATOR,  false, &ChatHandler::HandleTurtleCinematic,                 "", nullptr },
        { "scale",          SEC_GAMEMASTER,     false,  &ChatHandler::HandleScaleCommand,                  "", nullptr},
        { "dbghard",        SEC_ADMINISTRATOR,     false,  &ChatHandler::HandleFastDebugCommand,                  "", nullptr },
        { "fool",       SEC_GAMEMASTER,     false,  &ChatHandler::HandleFoolCommand,                  "", nullptr },
        { nullptr,          0,                  false, nullptr,                                        "", nullptr }
    };

    if (load_command_table)
    {
        load_command_table = false;

        // check hardcoded part integrity
        //CheckIntegrity(commandTable, NULL);
        FillFullCommandsName(commandTable, "");

        QueryResult *result = WorldDatabase.Query("SELECT name,security,help,flags FROM command");
        if (result)
        {
            do
            {
                Field *fields = result->Fetch();
                std::string name = fields[0].GetCppString();

                SetDataForCommandInTable(commandTable, name.c_str(), fields[1].GetUInt16(), fields[2].GetCppString(), fields[3].GetUInt32());

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

AccountTypes ChatHandler::GetAccessLevel() const
{
    return m_session->GetSecurity();
}

bool ChatHandler::isAvailable(ChatCommand const& cmd) const
{
    // check security level only for simple  command (without child commands)
    return GetAccessLevel() >= (AccountTypes)cmd.SecurityLevel;
}

std::string ChatHandler::GetNameLink() const
{
    return GetNameLink(m_session->GetPlayer());
}

bool ChatHandler::HasLowerSecurity(Player* target, ObjectGuid guid, bool strong)
{
    WorldSession* target_session = nullptr;
    uint32 target_account = 0;

    if (target)
        target_session = target->GetSession();
    else if (guid)
        target_account = sObjectMgr.GetPlayerAccountIdByGUID(guid);

    if (!target_session && !target_account)
    {
        SendSysMessage(LANG_PLAYER_NOT_FOUND);
        SetSentErrorMessage(true);
        return true;
    }

    return HasLowerSecurityAccount(target_session, target_account, strong);
}

bool ChatHandler::HasLowerSecurityAccount(WorldSession* target, uint32 target_account, bool strong)
{
    AccountTypes target_sec;

    // ignore only for non-players for non strong checks (when allow apply command at least to same sec level)
    if (GetAccessLevel() > SEC_PLAYER && !strong && !sWorld.getConfig(CONFIG_BOOL_GM_LOWER_SECURITY))
        return false;

    if (target)
        target_sec = target->GetSecurity();
    else if (target_account)
        target_sec = sAccountMgr.GetSecurity(target_account);
    else
        return true;                                        // caller must report error for (target==NULL && target_account==0)

    if (GetAccessLevel() < target_sec || (strong && GetAccessLevel() <= target_sec))
    {
        SendSysMessage(LANG_YOURS_SECURITY_IS_LOW);
        SetSentErrorMessage(true);
        return true;
    }

    return false;
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
        ChatHandler::BuildChatPacket(data, CHAT_MSG_SYSTEM, line, LANG_UNIVERSAL, CHAT_TAG_NONE, m_session->GetPlayer()->GetObjectGuid());
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
    ObjectGuid guid = m_session ? m_session->GetPlayer()->GetObjectGuid() : ObjectGuid();

    while (char* line = LineFromMessage(pos))
    {
        ChatHandler::BuildChatPacket(data, CHAT_MSG_SYSTEM, line, LANG_UNIVERSAL, CHAT_TAG_NONE, guid);
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
        if (newPrefix != "")
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

        if (parentCommand && command->SecurityLevel < parentCommand->SecurityLevel)
            sLog.outError("Subcommand '%s' of command '%s' have less access level (%u) that parent (%u)",
                          command->Name, parentCommand->Name, command->SecurityLevel, parentCommand->SecurityLevel);

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
 * @return Pointer to found command structure or NULL if appropriate command not found
 */
ChatCommand const* ChatHandler::FindCommand(char const* text)
{
    ChatCommand* command = nullptr;
    char const* textPtr = text;

    return FindCommand(getCommandTable(), textPtr, command) == CHAT_COMMAND_OK ? command : NULL;
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
 *                              parentCommand have parent of found command or NULL if command found in table array directly
 *                              cmdNamePtr store found command name in original form from command line
 *      CHAT_COMMAND_UNKNOWN  - Command not found in table directly
 *                              text only skip possible whitespaces,
 *                              command is NULL
 *                              parentCommand is NULL
 *                              cmdNamePtr store command name that not found as it extracted from command line
 *      CHAT_COMMAND_UNKNOWN_SUBCOMMAND - Subcommand not found in some deed subcomand lists
 *                              text point to non parsed tail including not found command name in command line,
 *                              command store last found parent command if any
 *                              parentCommand have parent of command in command arg or NULL
 *                              cmdNamePtr store command name that not found as it extracted from command line
 */
ChatCommandSearchResult ChatHandler::FindCommand(ChatCommand* table, char const* &text, ChatCommand*& command, ChatCommand** parentCommand /*= NULL*/, std::string* cmdNamePtr /*= NULL*/, bool allAvailable /*= false*/, bool exactlyName /*= false*/)
{
    std::string cmd = "";

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

                    // Name == "" is special case: restore original command text for next level "" (where parentSubcommand==NULL)
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
                    // some deep subcommand not found, if this second level subcommand then parentCommand can be NULL, use known value for it
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
            if (command->SecurityLevel > SEC_PLAYER)
            {
                // chat case
                if (m_session && m_session->GetPlayer())
                {
                    Player* p = m_session->GetPlayer();
                    ObjectGuid sel_guid = p->GetSelectionGuid();
                    sLog.outCommand(GetAccountId(), "Command: %s [Player: %s (Group Leader \"%s\", Account: %u) X: %f Y: %f Z: %f Map: %u Selected: %s]",
                        realCommandFull.c_str(), p->GetName(), p->GetGroup() ? p->GetGroup()->GetLeaderGuid().GetString().c_str() : "NULL", GetAccountId(), p->GetPositionX(), p->GetPositionY(), p->GetPositionZ(), p->GetMapId(),
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
bool ChatHandler::SetDataForCommandInTable(ChatCommand *commandTable, const char* text, uint32 security, std::string const& help, uint32 flags)
{
    std::string fullcommand = text;                         // original `text` can't be used. It content destroyed in command code processing.

    ChatCommand* command = nullptr;
    std::string cmdName;

    ChatCommandSearchResult res = FindCommand(commandTable, text, command, nullptr, &cmdName, true, true);

    switch (res)
    {
        case CHAT_COMMAND_OK:
        {
            if (command->SecurityLevel != security)
                DETAIL_LOG("Table `command` overwrite for command '%s' default security (%u) by %u",
                           fullcommand.c_str(), command->SecurityLevel, security);

            command->SecurityLevel = security;
            command->Help          = help;
            command->Flags         = flags;
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
            childCommands = table != getCommandTable() || strlen(oldCmd) == 0 ? table : NULL;
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

                        int dbLocale = m_session->GetSessionDbLocaleIndex();
                        LocaleConstant dbcLocale = m_session->GetSessionDbcLocale();

                        const ItemRandomPropertiesEntry* iProp = nullptr;
                        for (auto iter = properties.begin(); iter != properties.end(); ++iter)
                        {
                            auto prop = *iter;
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

void ChatHandler::BuildChatPacket(WorldPacket& data, ChatMsg msgtype, char const* message, Language language /*= LANG_UNIVERSAL*/, uint32 chatTag /*= CHAT_TAG_NONE*/,
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

    MANGOS_ASSERT(message);
    data << uint32(strlen(message) + 1);
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

/**
 * Function skip all whitespaces in args string
 *
 * @param args variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 *             allowed NULL string pointer stored in *args
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
 * @return     name/number-like string without whitespaces, or NULL if args empty or not appropriate content.
 */
char* ChatHandler::ExtractLiteralArg(char** args, char const* lit /*= NULL*/)
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

    *args = tail ? tail : (char*)"";                        // *args don't must be NULL

    SkipWhiteSpaces(args);

    return name;
}

/**
 * Function extract quote-like string (any characters guarded by some special character, in our cases ['")
 *
 * @param args variable pointer to non parsed args string, updated at function call to new position (with skipped white spaces)
 * @param asis control save quote string wrappers
 * @return     quote-like string, or NULL if args empty or not appropriate content.
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
 * @return     quote/literal string, or NULL if args empty or not appropriate content.
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
 * @param linkTypes  optional NULL-terminated array of link types, shift-link must fit one from link type from array if provided or extraction fail
 *
 * @param found_idx  if not NULL then at return index in linkTypes that fit shift-link type, if extraction fail then non modified
 *
 * @param keyPair    if not NULL then pointer to 2-elements array for return start and end pointer for found key
 *                   if extraction fail then non modified
 *
 * @param somethingPair then pointer to 2-elements array for return start and end pointer if found.
 *                   if not NULL then shift-link must have data field, if extraction fail then non modified
 *
 * @return     shift-link-like string, or NULL if args empty or not appropriate content.
 */
char* ChatHandler::ExtractLinkArg(char** args, char const* const* linkTypes /*= NULL*/, int* foundIdx /*= NULL*/, char** keyPair /*= NULL*/, char** somethingPair /*= NULL*/)
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
        if (!linkTypes[linktype_idx])                       // NULL terminator in last element
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

        if (*tail == ':')
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
 * @return     extracted arg string, or NULL if args empty or not appropriate content.
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
 * @return     extracted string, or NULL if args empty or not appropriate content or have single arg totally.
 */
char* ChatHandler::ExtractOptNotLastArg(char** args)
{
    char* arg = ExtractArg(args, true);

    // have more data
    if (*args && **args)
        return arg;

    // optional name not found
    *args = arg ? arg : (char*)"";                          // *args don't must be NULL

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
 * @param something1 if not NULL then shift-link must have data field and it returned into this arg
 *                   if extraction fail then non modified
 *
 * @return           extracted key, or NULL if args empty or not appropriate content or not fit to linkType.
 */
char* ChatHandler::ExtractKeyFromLink(char** text, char const* linkType, char** something1 /*= NULL*/)
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
 * @param linkTypes  NULL-terminated array of link types, shift-link must fit one from link type from array or extraction fail
 *
 * @param found_idx  if not NULL then at return index in linkTypes that fit shift-link type, for non-link case return -1
 *                   if extraction fail then non modified
 *
 * @param something1 if not NULL then shift-link must have data field and it returned into this arg
 *                   if extraction fail then non modified
 *
 * @return           extracted key, or NULL if args empty or not appropriate content or not fit to linkType.
 */
char* ChatHandler::ExtractKeyFromLink(char** text, char const* const* linkTypes, int* found_idx, char** something1 /*= NULL*/)
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

    arg = ExtractLinkArg(text, linkTypes, found_idx, keyPair, something1 ? somethingPair : NULL);
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
            x = tele->position_x;
            y = tele->position_y;
            z = tele->position_z;
            return true;
        }
        case LOCATION_LINK_TAXINODE:
        {
            uint32 id;
            if (!ExtractUInt32(&idS, id))
                return false;

            TaxiNodesEntry const* node = sObjectMgr.GeTaxiNodeEntry(id);
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
                mapid = data->mapid;
                x = data->posX;
                y = data->posY;
                z = data->posZ;
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
                mapid = data->mapid;
                x = data->posX;
                y = data->posY;
                z = data->posZ;
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
                FindCreatureData worker(id, m_session ? m_session->GetPlayer() : NULL);

                sObjectMgr.DoCreatureData(worker);

                if (CreatureDataPair const* dataPair = worker.GetResult())
                {
                    mapid = dataPair->second.mapid;
                    x = dataPair->second.posX;
                    y = dataPair->second.posY;
                    z = dataPair->second.posZ;
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
                FindGOData worker(id, m_session ? m_session->GetPlayer() : NULL);

                sObjectMgr.DoGOData(worker);

                if (GameObjectDataPair const* dataPair = worker.GetResult())
                {
                    mapid = dataPair->second.mapid;
                    x = dataPair->second.posX;
                    y = dataPair->second.posY;
                    z = dataPair->second.posZ;
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

            mapid = at->target_mapId;
            x = at->target_X;
            y = at->target_Y;
            z = at->target_Z;
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
bool ChatHandler::ExtractPlayerTarget(char** args, Player** player /*= NULL*/, ObjectGuid* player_guid /*= NULL*/, std::string* player_name /*= NULL*/, bool use_extended_response)
{
    std::string name = "";
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

uint32 ChatHandler::ExtractAccountId(char** args, std::string* accountName /*= NULL*/, Player** targetIfNullArg /*= NULL*/)
{
    uint32 account_id = 0;

    ///- Get the account name from the command line
    char* account_str = ExtractLiteralArg(args);

    if (!account_str)
    {
        if (!targetIfNullArg)
            return 0;

        /// only target player different from self allowed (if targetPlayer!=NULL then not console)
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

bool ChatHandler::ExtractRaceMask(char** text, uint32& raceMask, char const** maskName /*=NULL*/)
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

AccountTypes CliHandler::GetAccessLevel() const
{
    return m_loginAccessLevel;
}

bool CliHandler::isAvailable(ChatCommand const& cmd) const
{
    // skip non-console commands in console case
    if (!cmd.AllowConsole)
        return false;

    // normal case
    return GetAccessLevel() >= (AccountTypes)cmd.SecurityLevel;
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
    std::string str = "";
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

