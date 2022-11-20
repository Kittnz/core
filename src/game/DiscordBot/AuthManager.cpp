#pragma once

#include "AuthManager.hpp"

#include "AccountMgr.h"

namespace DiscordBot
{
    bool AuthManager::IsAuthenticated(const dpp::user* user) const
    {
        auto pairItr = _authData.find(user->id);

        if (pairItr == _authData.end() || !pairItr->second.authenticated)
            return false;
        return true;
    }

    bool AuthManager::IsAuthenticated(uint32_t gameAccountId) const
    {
        auto pairItr = _authDataLookup.find(gameAccountId);

        if (pairItr == _authDataLookup.end() || !pairItr->second.get().authenticated)
            return false;
        return true;
    }

    const AuthenticationInfo* AuthManager::GetAuthInfo(const dpp::user* user) const
    {
        const auto pairItr = _authData.find(user->id);

        if (pairItr != _authData.end())
            return &pairItr->second;
        return nullptr;
    }

    const AuthenticationInfo* AuthManager::GetAuthInfo(uint32_t gameAccountId) const
    {
        const auto pairItr = _authDataLookup.find(gameAccountId);

        if (pairItr != _authDataLookup.end())
            return &pairItr->second.get();
        return nullptr;
    }

    AuthResult AuthManager::Authenticate(std::string username, std::string password, dpp::user* user)
    {
        uint32_t accountId = sAccountMgr.GetId(username);

        if (!accountId)
            return AuthResult::WrongCredentials;

        bool result = sAccountMgr.CheckPassword(accountId, password, username);

        if (!result)
            return AuthResult::WrongCredentials;

        if (IsAuthenticated(user))
            return AuthResult::AlreadyAuthed;

        _authData[user->id].authenticated = true;
        _authData[user->id].discordId = user->id;
        _authData[user->id].gameAccountId = accountId;

        auto info = _authData[user->id];
        _authDataLookup.insert({ accountId, std::ref(info) });
        return AuthResult::Successful;
    }

    AuthResult AuthManager::Login(std::string username, std::string password, dpp::user* user)
    {
        return Authenticate(username, password, user);
    }

    void AuthManager::Logout(dpp::user* user)
    {
        auto itr = _authData.find(user->id);

        if (itr == _authData.end())
            return;

        _authDataLookup.erase(itr->second.gameAccountId);
        _authData.erase(itr);
    }
}