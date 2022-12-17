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

#ifndef MANGOSSERVER_CHAT_H
#define MANGOSSERVER_CHAT_H

#include "Common.h"
#include "SharedDefines.h"
#include "ObjectGuid.h"

struct AreaTriggerTeleport;
struct AreaTriggerEntry;
struct FactionEntry;
struct FactionState;
struct GameTele;
class SpellEntry;

class QueryResult;
class ChatHandler;
class WorldSession;
class WorldPacket;
class MailDraft;
class Object;
class GameObject;
class Creature;
class Player;
class Pet;
class Unit;
class GmTicket;
struct ItemPrototype;
struct GameObjectData;

enum CommandFlags
{
    COMMAND_FLAGS_ONLY_ON_SELF      = 0x1,
    COMMAND_FLAGS_CRITICAL          = 0x2,
};

class ChatCommand
{
public:
        const char *       Name;
        uint8              SecurityLevel;                   // function pointer required correct align (use uint32)
        bool               AllowConsole;
        bool (ChatHandler::*Handler)(char* args);
        std::string        Help;
        ChatCommand *      ChildCommands;
        uint8              Flags;
        std::string        FullName;
};

enum ChatCommandSearchResult
{
    CHAT_COMMAND_OK,                                        // found accessible command by command string
    CHAT_COMMAND_UNKNOWN,                                   // first level command not found
    CHAT_COMMAND_UNKNOWN_SUBCOMMAND,                        // command found but some level subcommand not find in subcommand list
};

enum PlayerChatTag
{
    CHAT_TAG_NONE               = 0,
    CHAT_TAG_AFK                = 1,
    CHAT_TAG_DND                = 2,
    CHAT_TAG_GM                 = 3,
};

class ChatHandler
{
    public:
        explicit ChatHandler(WorldSession* session);
        explicit ChatHandler(Player* player);
        virtual ~ChatHandler();

        static char* LineFromMessage(char*& pos) { char* start = strtok(pos,"\n"); pos = nullptr; return start; }

        // function with different implementation for chat/console
        virtual const char *GetMangosString(int32 entry) const;
        const char *GetOnOffStr(bool value) const;

        virtual void SendSysMessage(  const char *str);

        void SendSysMessage(          int32     entry);
        void PSendSysMessage(         const char *format, ...) ATTR_PRINTF(2,3);
        void PSendSysMessage(         int32     entry, ...  );
        std::string PGetParseString(int32 entry, ...);

        bool ParseCommands(const char* text);
        ChatCommand const* FindCommand(char const* text);

        bool isValidChatMessage(const char* msg);
        bool HasSentErrorMessage() { return sentErrorMessage;}

        std::string playerLink(std::string const& name) const { return m_session ? "|cffffffff|Hplayer:"+name+"|h["+name+"]|h|r" : name; }
        std::string GetNameLink(Player* chr) const;
        std::string GetItemLink(ItemPrototype const* pItem) const;

        GameObject* GetGameObjectWithGuid(uint32 lowguid,uint32 entry);

        //same as above but uses GOData to narrow down the correct map.
        GameObject* GetGameObjectWithGuidGlobal(uint32 lowguid, const GameObjectData* data) const;

        WorldSession* GetSession() { return m_session; }

        void SendBanResult(BanMode mode, BanReturn result, std::string& banTarget, uint32 duration_secs, std::string& reason);

        /**
        * \brief Prepare SMSG_GM_MESSAGECHAT/SMSG_MESSAGECHAT
        *
        * Method:    BuildChatPacket build message chat packet generic way
        * FullName:  ChatHandler::BuildChatPacket
        * Access:    public static
        * Returns:   void
        *
        * \param WorldPacket& data             : Provided packet will be filled with requested info
        * \param ChatMsg msgtype               : Message type from ChatMsg enum from SharedDefines.h
        * \param uint32 chatTag                : Chat tag from PlayerChatTag in Chat.h
        * \param char const* message           : Message to send
        * \param Language language             : Language from Language enum in SharedDefines.h
        * \param ObjectGuid const& senderGuid  : May be nullptr in some case but often required for ignore list
        * \param char const* senderName        : Required for type *MONSTER* or *BATTLENET, but also if GM is true
        * \param ObjectGuid const& targetGuid  : Often nullptr, but needed for type *MONSTER* or *BATTLENET or *BATTLEGROUND* or *ACHIEVEMENT
        * \param char const* targetName        : Often nullptr, but needed for type *MONSTER* or *BATTLENET or *BATTLEGROUND*
        * \param char const* channelName       : Required only for CHAT_MSG_CHANNEL
        * \param uint8 playerRank              : Used only for Defensive Channels (Value over 0 will show rank name before character name in channel)
        **/
        static void BuildChatPacket(
            WorldPacket& data, ChatMsg msgtype, const std::string& message, Language language = LANG_UNIVERSAL, uint32 chatTag = CHAT_TAG_NONE,
            ObjectGuid const& senderGuid = ObjectGuid(), char const* senderName = nullptr,
            ObjectGuid const& targetGuid = ObjectGuid(), char const* targetName = nullptr,
            char const* channelName = nullptr, uint8 playerRank = 0);
    protected:
        explicit ChatHandler() : m_session(nullptr), sentErrorMessage(false) {}      // for CLI subclass

        bool hasStringAbbr(const char* name, const char* part);

        // function with different implementation for chat/console
        virtual uint32 GetAccountId() const;
        virtual AccountTypes GetAccessLevel() const;
        virtual bool isAvailable(ChatCommand const& cmd) const;
        virtual std::string GetNameLink() const;
        virtual bool needReportToTarget(Player* chr) const;
        virtual LocaleConstant GetSessionDbcLocale() const;
        virtual int GetSessionDbLocaleIndex() const;

        bool HasLowerSecurity(Player* target, ObjectGuid guid = ObjectGuid(), bool strong = false);
        bool HasLowerSecurityAccount(WorldSession* target, uint32 account, bool strong = false);

        void SendGlobalSysMessage(const char *str);

        bool SetDataForCommandInTable(ChatCommand *table, const char* text, uint8 security, std::string const& help, uint8 flags);
        void ExecuteCommand(const char* text);
        bool ShowHelpForCommand(ChatCommand *table, const char* cmd);
        bool ShowHelpForSubCommands(ChatCommand *table, char const* cmd);
        ChatCommandSearchResult FindCommand(ChatCommand* table, char const*& text, ChatCommand*& command, ChatCommand** parentCommand = nullptr, std::string* cmdNamePtr = nullptr, bool allAvailable = false, bool exactlyName = false);

        void CheckIntegrity(ChatCommand *table, ChatCommand *parentCommand);
        void FillFullCommandsName(ChatCommand* table, std::string prefix);
        ChatCommand* getCommandTable();

        bool HandleGodCommand(char *);
        bool HandleGMOptionsCommand(char *);
        bool HandleAnticheatCommand(char *);
        bool HandleWardenCommand(char *);
        bool HandleWardenReadCommand(char *);
        bool HandleClientInfosCommand(char* );
        bool HandleClientSearchCommand(char* );
        //Custom
        bool HandleListAddonsCommand(char *);
        bool HandleUpdateWorldStateCommand(char *);
        bool HandleSendSpellVisualCommand(char *);
        bool HandleSendSpellImpactCommand(char *);
        bool HandleServiceDeleteCharacters(char* args);
        bool HandleUnstuckCommand(char* args);
        bool HandleGoldRemoval(char* args);

        // spell_disabled
        bool HandleReloadSpellDisabledCommand(char *args);
        // AutoBroadCast
        bool HandleReloadAutoBroadcastCommand(char *args);
        bool HandleReloadItemTemplate(char *);
        // Managing saved variables
        bool HandleVariableCommand(char* args);
        bool HandleReloadVariablesCommand(char* args);
        //  AQ variables
        bool HandleGetWarEffortResource(char* args);
        bool HandleSetWarEffortResource(char* args);
        // Deplacement
        bool HandleGoForwardCommand(char* args);
        bool HandleGoUpCommand(char* args);

        bool HandleGameObjectTempAddCommand(char *args);
        // Clean characters
        bool HandleCleanCharactersToDeleteCommand(char *args);
        bool HandleCleanCharactersItemsCommand(char *args);

        //Mmaps
        bool HandleMmapsPathCommand(char* args);
        bool HandleMmapsNearCommand(char* args);

        // Formations
        bool HandleNpcGroupAddCommand(char *args);
        bool HandleNpcGroupAddRelCommand(char *args);
        bool HandleNpcGroupDelCommand(char *args);
        bool HandleNpcGroupLinkCommand(char* args);

        bool HandleReloadCreatureGroupsCommand(char *args);
        // Characters
        bool HandleCharacterFillFlysCommand(char *args);
        bool HandleFactionChangeItemsCommand(char *args);
        // bg
        bool HandleBGStatusCommand(char *args);
        bool HandleBGStartCommand(char *args);
        bool HandleBGStopCommand(char *args);
        bool HandleBGCustomCommand(char* args);
        // Other
        bool HandleFreezeCommand(char *args);
        bool HandleUnfreezeCommand(char *args);
        bool HandleUnitStatCommand(char *args);
		bool HandleBgTestCommand(char *args);
		bool HandleTurtleCinematic(char *args);
		bool HandleGetSkillValueCommand(char *args);
        bool HandleHCMessagesCommand(char* args);
        bool HandlePvPCommand(char* args);
        bool HandleMinChatLevelCommand(char* args);

        // Reload        
        bool HandleReloadShopCommand(char* args);

        bool HandleAccountCommand(char* args);
        bool HandleAccountCharactersCommand(char* args);
        bool HandleAccountCreateCommand(char* args);
        bool HandleAccountDeleteCommand(char* args);
        bool HandleAccountPasswordCommand(char* args);
        bool HandleAccountSetGmLevelCommand(char* args);
        bool HandleAccountSetPasswordCommand(char* args);
        bool HandleAccountFaCommand(char* args);

        bool HandleBanAccountCommand(char* args);
        bool HandleBanCharacterCommand(char* args);
        bool HandleBanIPCommand(char* args);
        bool HandleBanAllIPCommand(char* args);
        bool HandleBanFingerprintCommand(char* args);
        bool HandleBanInfoAccountCommand(char* args);
        bool HandleBanInfoCharacterCommand(char* args);
        bool HandleBanInfoIPCommand(char* args);
        bool HandleBanListAccountCommand(char* args);
        bool HandleBanListCharacterCommand(char* args);
        bool HandleBanListIPCommand(char* args);
        bool HandleWarnCharacterCommand(char* args);

        bool HandleCastCommand(char* args);
        bool HandleCastSelfCommand(char* args);
        bool HandleCastTargetCommand(char* args);

        bool HandleCharacterDeletedListCommand(char* args, bool useName);
        bool HandleCharacterDeletedListNameCommand(char* args);
        bool HandleCharacterDeletedRestoreCommand(char* args);
        bool HandleCharacterEraseCommand(char* args);
        bool HandleCharacterRenameCommand(char* args);
        bool HandleCharacterReputationCommand(char* args);
        bool HandleCharacterHasItemCommand(char* args);

        bool HandleEventListCommand(char* args);
        bool HandleEventStartCommand(char* args);
        bool HandleEventStopCommand(char* args);
        bool HandleEventEnableCommand(char* args);
        bool HandleEventDisableCommand(char* args);
        bool HandleEventInfoCommand(char* args);

        bool HandleGameObjectAddCommand(char* args);
        bool HandleGameObjectDeleteCommand(char* args);
        bool HandleGameObjectMoveCommand(char* args);
        bool HandleGameObjectRotateCommand(char* args);
        bool HandleGameObjectNearCommand(char* args);
        bool HandleGameObjectTargetCommand(char* args);
        bool HandleGameObjectTurnCommand(char* args);
        bool HandleGameObjectScaleCommand(char* args);
        bool HandleGameObjectDespawnCommand(char* args);
        bool HandleGameObjectToggleCommand(char* args);
        bool HandleGameObjectResetCommand(char* args);
        bool HandleGameObjectSelectCommand(char* args);
        bool HandleGameObjectRespawnCommand(char* args);
        bool HandleGameObjectInfoCommand(char* args);
        bool HandleGameObjectSendCustomAnimCommand(char* args);
        GameObject* getSelectedGameObject();

        bool HandleGMCommand(char* args);
        bool HandleGMListFullCommand(char* args);
        bool HandleGMOnlineListCommand(char* args);
        bool HandleGMVisibleCommand(char* args);
        bool HandleGMSocialsCommand(char* args);

        bool HandleGoCommand(char* args);
        bool HandleGoCreatureCommand(char* args);
        bool HandleGoObjectCommand(char* args);
        bool HandleGoTargetCommand(char* args);
        bool HandleGoTaxinodeCommand(char* args);
        bool HandleGoTriggerCommand(char* args);
        bool HandleGoXYZCommand(char* args);
        bool HandleGoCorpseCommand(char*);

        bool HandleGuildCreateCommand(char* args);
        bool HandleGuildInviteCommand(char* args);
        bool HandleGuildUninviteCommand(char* args);
        bool HandleGuildRankCommand(char* args);
        bool HandleGuildDeleteCommand(char* args);
        bool HandleGuildRenameCommand(char* args);
        bool HandleGuildListenCommand(char* args);

        bool HandleHonorShow(char* args);
        bool HandleHonorSetRPCommand(char* args);

        bool HandleInstanceListBindsCommand(char* args);
        bool HandleInstanceUnbindCommand(char* args);
        bool HandleInstanceGroupUnbindCommand(char* args);
        void HandleInstanceUnbindHelper(Player* player, bool got_map, uint32 mapid);
        bool HandleInstanceStatsCommand(char* args);
        bool HandleInstanceContinentsCommand(char* args);
        bool HandleInstancePerfInfosCommand(char* args);

        bool HandleListAurasCommand(char* args);
        bool HandleListCreatureCommand(char* args);
        bool HandleListObjectCommand(char* args);
        bool HandleListDestroyedItemsCommand(char* args);
        bool HandleListBuybackItemsCommand(char* args);

        bool HandleLearnCommand(char* args);
        bool HandleLearnAllMySpellsCommand(char* args);

        bool HandleLookupCreatureCommand(char* args);
        bool HandleLookupFactionCommand(char* args);
        bool HandleLookupItemCommand(char* args);
        bool HandleLookupObjectCommand(char* args);
        bool HandleLookupPlayerIpCommand(char* args);
        bool HandleLookupPlayerAccountCommand(char* args);
        bool HandleLookupPlayerEmailCommand(char* args);
        bool HandleLookupPlayerNameCommand(char* args);
        bool HandleLookupPlayerCharacterCommand(char* args);
        bool HandleLookupQuestCommand(char* args);
        bool HandleLookupSkillCommand(char* args);
        bool HandleLookupSpellCommand(char* args);
        bool HandleLookupItemSetCommand(char* args);
        bool HandleLookupEventCommand(char* args);
        bool HandleLookupGuildCommand(char* args);

        bool HandleModifyHPCommand(char* args);
        bool HandleModifyManaCommand(char* args);
        bool HandleModifyRageCommand(char* args);
        bool HandleModifyEnergyCommand(char* args);
        bool HandleModifyMoneyCommand(char* args);
        bool HandleModifyASpeedCommand(char* args);
        bool HandleModifyScaleCommand(char* args);
        bool HandleModifyFactionCommand(char* args);
        bool HandleModifyRepCommand(char* args);
        bool HandleModifyGenderCommand(char* args);
        bool HandleModifyStrengthCommand(char* args);
        bool HandleModifyAgilityCommand(char* args);
        bool HandleModifyStaminaCommand(char* args);
        bool HandleModifyIntellectCommand(char* args);
        bool HandleModifySpiritCommand(char* args);
        bool HandleModifyMeleeApCommand(char* args);
        bool HandleModifySpellPowerCommand(char* args);
        bool HandleModifyHonorCommand(char* args);

        //-----------------------Npc Commands-----------------------
        bool HandleNpcAddCommand(char* args);
        bool HandleNpcAddWeaponCommand(char* args);
        bool HandleNpcSummonCommand(char* args);
        bool HandleNpcAddVendorItemCommand(char* args);
        bool HandleNpcScaleCommand(char* args);
        bool HandleNpcAIInfoCommand(char* args);
        bool HandleNpcSetWanderDistanceCommand(char* args);
        bool HandleNpcDeleteCommand(char* args);
        bool HandleNpcDelVendorItemCommand(char* args);
        bool HandleNpcFactionIdCommand(char* args);
        bool HandleNpcFlagCommand(char* args);
        bool HandleNpcInfoCommand(char* args);
        bool HandleNpcMoveCommand(char* args);
        bool HandleNpcPlayEmoteCommand(char* args);
        bool HandleNpcSayCommand(char* args);
        bool HandleNpcSpeedCommand(char* args);
        bool HandleNpcSetDeathStateCommand(char* args);
        bool HandleNpcSpawnTimeCommand(char* args);
        bool HandleNpcTextEmoteCommand(char* args);
        bool HandleNpcYellCommand(char* args);

        bool HandleUnitSpeedInfoCommand(char* args);

        bool HandleQuestAddCommand(char* args);
        bool HandleQuestRemoveCommand(char* args);
        bool HandleQuestCompleteCommand(char* args);
        bool HandleQuestStatusCommand(char* args);
        bool HandleQuestTestCommand(char* args);

        bool HandlePetListCommand(char* args);
        bool HandlePetRenameCommand(char* args);
        bool HandlePetDeleteCommand(char* args);
        bool HandlePetLoyaltyCommand(char* args);

        bool HandleReloadMangosStringCommand(char *);

        bool HandleReloadConfigCommand(char* args);
        bool HandleReloadQuestTemplateCommand(char* args);

        bool HandleResetAllCommand(char* args);
        bool HandleResetHonorCommand(char* args);
        bool HandleResetLevelCommand(char* args);
        bool HandleResetSpellsCommand(char* args);
        bool HandleResetStatsCommand(char* args);
        bool HandleResetTalentsCommand(char* args);

        bool HandleSendItemsCommand(char* args);
        bool HandleSendMailCommand(char* args);
        bool HandleSendMessageCommand(char* args);
        bool HandleSendMoneyCommand(char* args);


        bool HandleServerCorpsesCommand(char* args);
        bool HandleServerExitCommand(char* args);
        bool HandleServerIdleRestartCommand(char* args);
        bool HandleServerIdleShutDownCommand(char* args);
        bool HandleServerInfoCommand(char* args);
        bool HandleServerResetAllRaidCommand(char* args);
        bool HandleServerRestartCommand(char* args);
        bool HandleServerShutDownCommand(char* args);
        bool HandleServerShutDownCancelCommand(char* args);

        bool HandleTeleCommand(char* args);
        bool HandleTeleAddCommand(char* args);
        bool HandleTeleDelCommand(char* args);
        bool HandleTeleGroupCommand(char* args);
        bool HandleTeleNameCommand(char* args);

        bool HandleTriggerActiveCommand(char* args);
        bool HandleTriggerNearCommand(char* args);
        bool HandleTriggerCommand(char* args);

        bool HandleUnBanAccountCommand(char* args);
        bool HandleUnBanCharacterCommand(char* args);
        bool HandleUnBanIPCommand(char* args);

        bool HandleWpAddCommand(char* args);
        bool HandleWpModifyCommand(char* args);
        bool HandleWpShowCommand(char* args);
        bool HandleWpExportCommand(char* args);

        bool HandleHelpCommand(char* args);
        bool HandleCommandsCommand(char* args);
        bool HandleStartCommand(char* args);
        bool HandleDismountCommand(char* args);
        bool HandleSaveCommand(char* args);

        bool HandleSummonCommand(char* args);
        bool HandleGonameCommand(char* args);
        bool HandleGroupgoCommand(char* args);
        bool HandleRecallCommand(char* args);
        bool HandleAnnounceCommand(char* args);
        bool HandleNotifyCommand(char* args);
        bool HandleLoSCommand(char* args);
        bool HandleGPSCommand(char* args);
        bool HandleTaxiCheatCommand(char* args);
        bool HandleWhispersCommand(char* args);
        bool HandleModifyDrunkCommand(char* args);
        bool HandleSetGMChatCommand(char* args);
        bool HandleSetViewCommand(char* args);

        bool HandleSetTimeCommand(char* args);

        bool HandleGUIDCommand(char* args);
        bool HandleItemMoveCommand(char* args);
        bool HandleDeMorphCommand(char* args);
        bool HandleGroupInfoCommand(char* args);
        bool HandlePInfoCommand(char* args);
        bool HandlePausingMuteCommand(char* args);
        bool HandleMuteCommand(char* args);
        bool HandleUnmuteCommand(char* args);
        bool HandleMovegensCommand(char* args);

        bool HandleCooldownCommand(char* args);
        bool HandleUnLearnCommand(char* args);
        bool HandleUnLearnOfflineCommand(char* args);
        bool HandleGetDistanceCommand(char* args);
        bool HandleDieCommand(char* args);
        bool HandleFearCommand(char* args);
        bool HandleAoEDamageCommand(char* args);
        bool HandleDamageCommand(char* args);
        bool HandleReviveCommand(char* args);
        bool HandleReplenishCommand(char* args);
        bool HandleModifyMorphCommand(char* args);
        bool HandleAuraCommand(char* args);
        bool HandleAnonymousWhispers(char* args);
        bool HandleAnonymousMail(char* args);
        bool HandleUnAuraCommand(char* args);
        bool HandleLinkGraveCommand(char* args);
        bool HandleNearGraveCommand(char* args);
        bool HandleExploreCheatCommand(char* args);
        bool HandleHoverCommand(char* args);
        bool HandleLevelUpCommand(char* args);
        bool HandleShowAreaCommand(char* args);
        bool HandleHideAreaCommand(char* args);
        bool HandleAddItemCommand(char* args);
        bool HandleDeleteItemCommand(char* args);
        bool HandleAddItemSetCommand(char* args);

        bool HandleBankCommand(char* args);
        bool HandleChangeWeatherCommand(char* args);
        bool HandleKickPlayerCommand(char* args);

        // GM Tickets commands
        bool ViewTicketByIdOrName(char* ticketId, char* name);
        bool ViewTicket(GmTicket* ticket);
        bool HandleGMTicketListCommand(char* args);
        bool HandleGMTicketsOnlineListCommand(char* args);
        bool HandleGMTicketGetByIdOrNameCommand(char* args);
        bool HandleGMTicketCloseByIdCommand(char* args);

        bool HandleMaxSkillCommand(char* args);
        bool HandleSetSkillCommand(char* args);
        bool HandleRespawnCommand(char* args);
        bool HandleComeToMeCommand(char* args);
        bool HandleCombatStopCommand(char* args);
        bool HandleRepairitemsCommand(char* args);
        bool HandleWaterwalkCommand(char* args);
        bool HandleQuitCommand(char* args);
        bool HandleSaveAllCommand(char* args);

#ifdef USE_ANTICHEAT
        public:
#include "Anticheat/AnticheatChatCommandsFunctions.h"
       protected:
#else
        bool HandleAnticheatInfoCommand(char* args);
#endif

        // Turtle WoW
        bool HandleItemLogCommand(char* args);
        bool HandleSendMailsCommand(char* args);
        bool HandleBalanceCommand(char* args);
        bool HandleMailboxCommand(char* args);
        bool HandleSaleCommand(char* args);
        bool HandleReloadBgAmounts(char* args);
        bool HandleReloadGmLevelsCommand(char* args);
        bool HandleMountCommand(char* args);
        bool HandleModifyTitleCommand(char* args);
        bool HandleModifyXpCommand(char* args);
        bool HandleModifyHairStyleCommand(char* args);
        bool HandleModifyHairColorCommand(char* args);
        bool HandleModifySkinColorCommand(char* args);
        bool HandleModifyFaceCommand(char* args);
        bool HandleModifyAccessoriesCommand(char* args);
        bool HandleTransferCommand(char* args);
        bool HandleCopyCommand(char* args);
        bool HandleSendPacketCommand(char* args);
        bool HandleXPCommand(char* args);
        bool HandleHCInviteCommand(char* args);
        bool HandlePlayCommand(char* args);

        bool HandleFastDebugCommand(char* args);
        bool HandleDebugLootTableCommand(char* args);
        bool HandleDebugItemEnchantCommand(int lootid, unsigned int simCount);

        // Shop info
        bool HandleGetShopLogs(char* args);

        // Temp simple waypoints
        bool HandleCreaturePathSetup(char* );
        bool HandleCreaturePathAddPoint(char*);
        bool HandleCreaturePathLaunch(char*);

        Player*   GetSelectedPlayer();
        Creature* GetSelectedCreature();
        Unit*     GetSelectedUnit();
        Pet* GetSelectedPet();

        // extraction different type params from args string, all functions update (char** args) to first unparsed tail symbol at return
        void  SkipWhiteSpaces(char** args);
        bool  ExtractInt32(char** args, int32& val);
        bool  ExtractOptInt32(char** args, int32& val, int32 defVal);
        bool  ExtractUInt32Base(char** args, uint32& val, uint32 base);
        bool  ExtractUInt32(char** args, uint32& val) { return ExtractUInt32Base(args,val, 10); }
        bool  ExtractOptUInt32(char** args, uint32& val, uint32 defVal);
        bool  ExtractFloat(char** args, float& val);
        bool  ExtractOptFloat(char** args, float& val, float defVal);
        char* ExtractQuotedArg(char** args, bool asis = false);
                                                            // string with " or [] or ' around
        char* ExtractLiteralArg(char** args, char const* lit = nullptr);
                                                            // literal string (until whitespace and not started from "['|), any or 'lit' if provided
        char* ExtractQuotedOrLiteralArg(char** args, bool asis = false);
        bool  ExtractOnOff(char** args, bool& value);
        char* ExtractLinkArg(char** args, char const* const* linkTypes = nullptr, int* foundIdx = nullptr, char** keyPair = nullptr, char** somethingPair = nullptr);
                                                            // shift-link like arg (with aditional info if need)
        char* ExtractArg(char** args, bool asis = false);   // any name/number/quote/shift-link strings
        char* ExtractOptNotLastArg(char** args);            // extract name/number/quote/shift-link arg only if more data in args for parse

        char* ExtractKeyFromLink(char** text, char const* linkType, char** something1 = nullptr);
        char* ExtractKeyFromLink(char** text, char const* const* linkTypes, int* found_idx = nullptr, char** something1 = nullptr);
        bool  ExtractUint32KeyFromLink(char** text, char const* linkType, uint32& value);

        uint32 ExtractAccountId(char** args, std::string* accountName = nullptr, Player** targetIfNullArg = nullptr, bool checkAccountId = true);
        uint32 ExtractSpellIdFromLink(char** text);
        ObjectGuid ExtractGuidFromLink(char** text);
        GameTele const* ExtractGameTeleFromLink(char** text);
        bool   ExtractLocationFromLink(char** text, uint32& mapid, float& x, float& y, float& z);
        bool   ExtractRaceMask(char** text, uint32& raceMask, char const** maskName = nullptr);
        std::string ExtractPlayerNameFromLink(char** text);
        bool ExtractPlayerTarget(char** args, Player** player, ObjectGuid* player_guid = nullptr, std::string* player_name = nullptr, bool use_extended_response = false);
                                                            // select by arg (name/link) or in-game selection online/offline player

        // Utility methods for commands
        bool ShowAccountIpListHelper(char* args, bool onlineonly);
        void ShowFactionListHelper(FactionEntry const * factionEntry, LocaleConstant loc, FactionState const* repState = nullptr, Player * target = nullptr );
        void ShowItemListHelper(uint32 itemId, int loc_idx, Player* target = nullptr);
        void ShowQuestListHelper(uint32 questId, int32 loc_idx, Player* target = nullptr);
        void ShowSpellListHelper(Player* target, SpellEntry const* spellInfo, LocaleConstant loc);
        void ShowPoolListHelper(uint16 pool_id);
        void ShowTriggerListHelper(AreaTriggerEntry const * atEntry);
        void ShowTriggerTargetListHelper(uint32 id, AreaTriggerTeleport const* at, bool subpart = false);
        bool LookupPlayerSearchCommand(QueryResult* result, uint32* limit = nullptr);
        bool HandleBanListHelper(QueryResult* result);
        bool HandleBanHelper(BanMode mode, char* args);
        bool HandleBanInfoHelper(uint32 accountid, char const* accountname);
        bool HandleUnBanHelper(BanMode mode, char* args);
        void HandleCharacterLevel(Player* player, ObjectGuid player_guid, uint32 oldlevel, uint32 newlevel);
        void HandleLearnSkillRecipesHelper(Player* player,uint32 skill_id);
        bool HandleGoHelper(Player* _player, uint32 mapid, float x, float y, float const* zPtr = nullptr, float const* ortPtr = nullptr);
        bool HandleGetValueHelper(Object* target, uint32 field, char* typeStr);
        bool HandlerDebugModValueHelper(Object* target, uint32 field, char* typeStr, char* valStr);
        bool HandleSetValueHelper(Object* target, uint32 field, char* typeStr, char* valStr);

        bool HandleSendItemsHelper(MailDraft& draft, char* args);
        bool HandleSendMailHelper(MailDraft& draft, char* args);
        bool HandleSendMoneyHelper(MailDraft& draft, char* args);

        template<typename T>
        void ShowNpcOrGoSpawnInformation(uint32 guid);
        template <typename T>
        std::string PrepareStringNpcOrGoSpawnInformation(uint32 guid);

        /**
         * Stores informations about a deleted character
         */
        struct DeletedInfo
        {
            uint32      lowguid;                            ///< the low GUID from the character
            std::string name;                               ///< the character name
            uint32      accountId;                          ///< the account id
            std::string accountName;                        ///< the account name
            time_t      deleteDate;                         ///< the date at which the character has been deleted
        };

        typedef std::list<DeletedInfo> DeletedInfoList;
        bool GetDeletedCharacterInfoList(DeletedInfoList& foundList, bool useName, std::string searchString = "");
        std::string GenerateDeletedCharacterGUIDsWhereStr(DeletedInfoList::const_iterator& itr, DeletedInfoList::const_iterator const& itr_end);
        void HandleCharacterDeletedListHelper(DeletedInfoList const& foundList);
        void HandleCharacterDeletedRestoreHelper(DeletedInfo const& delInfo);

        void SetSentErrorMessage(bool val){ sentErrorMessage = val;};

    private:
        WorldSession * m_session;                           // != nullptr for chat command call and nullptr for CLI command

        // common global flag
        static bool load_command_table;
        bool sentErrorMessage;
};

class CliHandler : public ChatHandler
{
    public:
        typedef void Print(void*, char const*);
        explicit CliHandler(uint32 accountId, AccountTypes accessLevel, void* callbackArg, Print* zprint)
            : m_accountId(accountId), m_loginAccessLevel(accessLevel), m_callbackArg(callbackArg), m_print(zprint) {}

        // overwrite functions
        const char *GetMangosString(int32 entry) const override;
        uint32 GetAccountId() const override;
        AccountTypes GetAccessLevel() const override;
        bool isAvailable(ChatCommand const& cmd) const override;
        void SendSysMessage(const char *str) override;
        std::string GetNameLink() const override;
        bool needReportToTarget(Player* chr) const override;
        LocaleConstant GetSessionDbcLocale() const override;
        int GetSessionDbLocaleIndex() const override;

    private:
        uint32 m_accountId;
        AccountTypes m_loginAccessLevel;
        void* m_callbackArg;
        Print* m_print;
};

class NullChatHandler : public ChatHandler
{
    public:
        explicit NullChatHandler() {}

        // overwrite functions
        const char *GetMangosString(int32 entry) const override;
        uint32 GetAccountId() const override { return 0; }
        AccountTypes GetAccessLevel() const override { return SEC_PLAYER; }
        bool isAvailable(ChatCommand const& cmd) const override { return false; }
        void SendSysMessage(const char *str) override {}
        std::string GetNameLink() const override { return ""; }
        LocaleConstant GetSessionDbcLocale() const override;
        int GetSessionDbLocaleIndex() const override;
};


#endif
