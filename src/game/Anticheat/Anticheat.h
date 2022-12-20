/*
 * Contains interface and calls that have to be implemented by the anticheat lib.
 */

#ifndef __ANTICHEAT_HPP_
#define __ANTICHEAT_HPP_

#include "WorldPacket.h"
#include "Auth/BigNumber.h"
#include "Opcodes.h"
#include "Chat.h"
#include "Util.h"
#include "AddonHandler.h"

#include <memory>
#include <string>

enum CheatAction
{
    // take no action
    CHEAT_ACTION_NONE           = 0x00,

    // informational logging to the anticheat table of the log database, and gm notification
    CHEAT_ACTION_INFO_LOG       = 0x01,

    // log to the anticheat table of the log database, notify gms, and prompt for action
    // NOTE: other actions combined with this one are considered acceptable candidates for
    // MANUAL action and are NOT performed automatically!
    CHEAT_ACTION_PROMPT_LOG     = 0x02,

    // disconnect the offending world session
    CHEAT_ACTION_KICK           = 0x04,

    // permanently ban the offending account
    CHEAT_ACTION_BAN_ACCOUNT    = 0x08,

    // permanently ban the offending ip address
    CHEAT_ACTION_BAN_IP         = 0x10,

    // permanently silences the offending account from whispers, mail, say, channels, and yells
    CHEAT_ACTION_SILENCE        = 0x20,
};

enum NormalizeFlags
{
    NF_CUT_COLOR            = 0x001,
    NF_REPLACE_WORDS        = 0x002,
    NF_CUT_SPACE            = 0x004,
    NF_CUT_CTRL             = 0x008,
    NF_CUT_PUNCT            = 0x010,
    NF_CUT_NUMBERS          = 0x020,
    NF_REPLACE_UNICODE      = 0x040,
    NF_REMOVE_REPEATS       = 0x080,
    NF_REMOVE_NON_LATIN     = 0x100
};

class WorldSession;
class Player;
struct AreaEntry;

// interface to anticheat session (one for each world session)
class SessionAnticheatInterface
{
    public:
        virtual ~SessionAnticheatInterface() = default;

        virtual void Update(uint32 diff) = 0;

        virtual bool IsSilenced() const = 0;

        // character enum packet has been built and is ready to send
        virtual void SendCharEnum(WorldPacket &&packet) = 0;

        virtual void NewPlayer() = 0;
        virtual void LeaveWorld() = 0;
        virtual void Disconnect() = 0;

        // addon checksum verification
        virtual bool ReadAddonInfo(WorldPacket *, WorldPacket &) = 0;
        virtual uint32 GetFingerprint() const { return 0; }

        // chat
        virtual void SendPlayerInfo(ChatHandler *) const = 0;

        // miscellaneous cheat entry
        virtual void RecordCheat(uint32 actionMask, const char *detector, const char *format, ...) = 0;

        // movement cheats
        virtual bool Movement(MovementInfo &mi, const WorldPacket &) = 0;
        virtual void TimeSkipped(const ObjectGuid &mover, uint32 ms) = 0;
        virtual bool ExtrapolateMovement(MovementInfo const& mi, uint32 diffMs, Position &pos) = 0;
        virtual bool SpeedChangeAck(MovementInfo &mi, const WorldPacket &packet, float newSpeed) = 0;
        virtual bool IsInKnockBack() const = 0;
        virtual void KnockBack(float speedxy, float speedz, float cos, float sin) = 0;
        virtual void OnExplore(const AreaEntry *p) = 0;
        virtual void Teleport(const Position &pos) = 0;

        virtual void OrderSent(uint16 opcode, uint32 counter) = 0;
        virtual void OrderAck(uint16 opcode, uint32 counter) = 0;

        // warden
        virtual void WardenPacket(WorldPacket &packet) = 0;

        // antispam
        virtual void Whisper(const std::string &msg, const ObjectGuid &to) = 0;
        virtual void Say(const std::string &msg) = 0;
        virtual void Yell(const std::string &msg) = 0;
        virtual void Channel(const std::string &msg) = 0;
        virtual void Mail(const std::string &subject, const std::string &body, const ObjectGuid &to) = 0;
};

// interface to anticheat system
class AnticheatLibInterface
{
    public:
        // this function needs to support executing at any time
        virtual void Reload() = 0;

        // run only on startup
        virtual void Initialize() = 0;

        // create anticheat session for a new world session
        virtual std::unique_ptr<SessionAnticheatInterface> NewSession(WorldSession *session, const BigNumber &K) = 0;

        // anti spam
        virtual bool ValidateGuildName(const std::string &name) const = 0;
        virtual std::string NormalizeString(const std::string &message, uint32 mask) = 0;

        // GM .anticheat command handler
        //virtual bool ChatCommand(ChatHandler *handler, const std::string &args) = 0;
};

AnticheatLibInterface* GetAnticheatLib();
#define sAnticheatLib (GetAnticheatLib())

class NullSessionAnticheat : public SessionAnticheatInterface
{
    private:
        WorldSession * const _session;
        bool _inKnockBack;

    public:
        NullSessionAnticheat(WorldSession *session) : _session(session), _inKnockBack(false) {}

        void Update(uint32) override {}

        bool IsSilenced() const { return false; }

        // character enum packet has been built and is ready to send
        void SendCharEnum(WorldPacket &&packet) override { _session->SendPacket(&packet); }

        void NewPlayer() override {}
        void LeaveWorld() override {};
        void Disconnect() override {};

        // addon checksum verification
        bool ReadAddonInfo(WorldPacket* source, WorldPacket& target) override
        {
            sAddOnHandler.BuildAddonPacket(source, &target);
            return true;
        }

        // chat
        void SendPlayerInfo(ChatHandler *) const override {}

        // miscellaneous action
        void RecordCheat(uint32 actionMask, const char *detector, const char *format, ...) override
        {
            if (!!(actionMask & CHEAT_ACTION_KICK))
                _session->KickPlayer();
        }

        // movement cheats
        bool Movement(MovementInfo &, const WorldPacket &packet) override
        {
            if (packet.GetOpcode() == MSG_MOVE_FALL_LAND)
                _inKnockBack = false;

            return true;
        }
        void TimeSkipped(const ObjectGuid &mover, uint32 ms) override {}
        bool ExtrapolateMovement(MovementInfo const& mi, uint32 diffMs, Position &pos) override { return false; }
        bool SpeedChangeAck(MovementInfo &, const WorldPacket &, float) override { return true; }
        bool IsInKnockBack() const override { return _inKnockBack; }
        void KnockBack(float speedxy, float speedz, float cos, float sin) override { _inKnockBack = true; }
        void OnExplore(const AreaEntry *) override {}
        void Teleport(const Position &) override {}

        void OrderSent(uint16, uint32) override {}
        void OrderAck(uint16, uint32) override {}

        // warden
        void WardenPacket(WorldPacket &) override {}

        // antispam
        void Whisper(const std::string &msg, const ObjectGuid &to) override {}
        void Say(const std::string &msg) override {}
        void Yell(const std::string &msg) override {}
        void Channel(const std::string &msg) override {}
        void Mail(const std::string &subject, const std::string &body, const ObjectGuid &to) override {}
};

#ifdef USE_ANTICHEAT
#include "libanticheat.hpp"
#else
class NullAnticheatLib : public AnticheatLibInterface
{
    public:
        virtual void Reload() {}
        virtual void Initialize() {}

        virtual std::unique_ptr<SessionAnticheatInterface> NewSession(WorldSession *session, const BigNumber &)
        {
            return std::make_unique<NullSessionAnticheat>(session);
        }

        // anti spam
        virtual bool ValidateGuildName(const std::string &) const { return false; }
        virtual std::string NormalizeString(const std::string &message, uint32) { return message; }
        virtual void AddMessage(const std::string &, uint32, PlayerPointer, PlayerPointer) {}

        // GM .anticheat command handler
        virtual bool ChatCommand(ChatHandler *, const std::string &) { return false; }
};
#endif

#endif /*!__ANTICHEAT_HPP_*/