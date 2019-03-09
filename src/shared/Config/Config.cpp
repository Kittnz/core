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

#include "Config.h"
#include <cctype>
#include "Util.h"

#include "Policies/SingletonImp.h"

Config sConfig;

// Defined here as it must not be exposed to end-users.
bool Config::GetValueHelper(const char* name, std::string& result)
{
    std::lock_guard<std::mutex> guard(m_configLock);

    // enter root section and retrive value
    StringKeyValue& RootSection = Registry[GlobalSectionName];
    std::string strName(name);
    auto valueIter = RootSection.find(strName);
    if (valueIter != RootSection.end())
    {
        result = valueIter->second;
        return true;
    }

    return false;
}

std::string Config::GetStringDefaultInSection(const char* name, const char* section, const char* def)
{
    std::lock_guard<std::mutex> guard(m_configLock);

    // check for section existance
    std::string strSection(section);
    auto sectionIter = Registry.find(strSection);
    if (sectionIter != Registry.end())
    {
        std::string strName(name);
        // search in that section requested key
        auto KeyValueIter = sectionIter->second.find(strName);
        if (KeyValueIter != sectionIter->second.end())
        {
            return KeyValueIter->second;
        }
    }

    return std::string(def);
}

void Config::GetRootSections(std::vector<std::string>& OutSectionList)
{
    for (auto& pair : Registry)
    {
        if (pair.first != GlobalSectionName)
        {
            OutSectionList.push_back(pair.first);
        }
    }
}

void Config::GetKeys(const char* SectionName, std::vector<std::string>& OutKeysList)
{
    std::lock_guard<std::mutex> guard(m_configLock);

    std::string strSection(SectionName);
    auto sectionIter = Registry.find(strSection);
    if (sectionIter != Registry.end())
    {
        for (auto& pair : sectionIter->second)
        {
            OutKeysList.push_back(pair.first);
        }
    }
}

Config::Config()
{}

Config::~Config()
{}

bool Config::SetSource(const char *file)
{
    mFilename = file;

    return Reload();
}

//xr_string class
template < typename FuncClearens>
std::vector<std::string> SplitWithClearens(std::string& pStr, char splitCh, FuncClearens FnClearens)
{
    std::vector<std::string> Result;
    std::string temp_str = pStr,
        Str = pStr;

    size_t SubStrBeginCursor = 0;
    size_t Len = 0;

    size_t StrCursor = 0;
    for (; StrCursor < pStr.size(); ++StrCursor)
    {
        if (Str[StrCursor] == splitCh)
        {
            if ((StrCursor - SubStrBeginCursor) > 0)
            {
                Len = StrCursor - SubStrBeginCursor;
                temp_str = Str.substr(SubStrBeginCursor, Len);
                FnClearens(temp_str);
                Result.push_back(temp_str);
                SubStrBeginCursor = StrCursor + 1;
            }
            else
            {
                Result.emplace_back("");
                SubStrBeginCursor = StrCursor + 1;
            }
        }
    }

    if (StrCursor > SubStrBeginCursor)
    {
        Len = StrCursor - SubStrBeginCursor;
        temp_str = Str.substr(SubStrBeginCursor, Len);
        FnClearens(temp_str);
        Result.push_back(temp_str);
    }

    return Result;
}

bool Config::Reload()
{
    // rewrited using std and 'C' runtime functions
    FILE* configFile = nullptr;
    if (fopen_s(&configFile, mFilename.c_str(), "rb") != 0)
    {
        return false;
    }

    fseek(configFile, 0, SEEK_END);
    long fileSize = ftell(configFile);
    fseek(configFile, 0, SEEK_SET);

    std::string configData(fileSize + 1, ' ');

    size_t readedChars = 0;
    while (readedChars < fileSize)
    {
        size_t currentReadedChars = fread((void*)(configData.data() + readedChars), sizeof(char), fileSize - readedChars, configFile);
        readedChars += currentReadedChars;
    }

    fclose(configFile); configFile = nullptr;

    std::vector<std::string> Lines = SplitWithClearens(configData, '\n', [](std::string& line)
    {
        std::string clearedLine; clearedLine.reserve(line.size());
        for (char ch : line)
        {
            if (std::iscntrl(ch)) continue;
            clearedLine.push_back(ch);
        }
        line = clearedLine;
    });


    std::string CurrentSection = GlobalSectionName;

    auto ClearWhitespacesLambda = [](std::string& line)
    {
        std::string Result; Result.reserve(line.size());
        for (char ch : line)
        {
            if (std::isspace(ch)) continue;
            Result.push_back(ch);
        }
        line = Result;
    };

    for (std::string& line : Lines)
    {
        if (line.empty())
        {
            CurrentSection = GlobalSectionName;
            continue;
        }
        if (line[0] == '#') continue;
        if (line[0] == '[')
        {
            ClearWhitespacesLambda(line);
            CurrentSection = line.substr(1, line.size() - 2);
            continue;
        }
        std::vector<std::string> KeyValues = SplitWithClearens(line, '=', [&ClearWhitespacesLambda](std::string& line)
        {
            //ClearWhitespacesLambda(line);
        });

        // clear whitespaces for key
        ClearWhitespacesLambda(KeyValues[0]);
        if (KeyValues.size() != 2 || KeyValues[0].empty()) continue;

        // filter carefully the value (do not drop whitespaces in quotes)
        std::string& strValue = KeyValues[1];
        std::string clearedValue; clearedValue.reserve(strValue.size());
        bool bQuoteStarted = false;
        for (int i = 0; i < strValue.size(); ++i)
        {
            char ch = strValue[i];
            if (ch == '"')
            {
                bQuoteStarted = !bQuoteStarted;
                continue;
            }
            if (!bQuoteStarted)
            {
                if (std::isspace(ch)) continue;
            }
            clearedValue.push_back(ch);
        }

        Registry[CurrentSection][KeyValues[0]] = clearedValue;
    }

    return true;
}

std::string Config::GetStringDefault(const char* name, const char* def)
{
    std::string val;
    return GetValueHelper(name, val) ? val : def;
}

bool Config::GetBoolDefault(const char* name, bool def)
{
    std::string val;
    if (!GetValueHelper(name, val))
        return def;

    const char* str = val.c_str();
    if (strcmp(str, "true") == 0 || strcmp(str, "TRUE") == 0 ||
        strcmp(str, "yes") == 0 || strcmp(str, "YES") == 0 ||
        strcmp(str, "1") == 0)
        return true;
    else
        return false;
}


int32 Config::GetIntDefault(const char* name, int32 def)
{
    std::string val;
    return GetValueHelper(name, val) ? atoi(val.c_str()) : def;
}


float Config::GetFloatDefault(const char* name, float def)
{
    std::string val;
    return GetValueHelper(name, val) ? (float)atof(val.c_str()) : def;
}

float Config::GetFloatDefault(const char* name, const char* section, const float def)
{
    std::string rawValue = GetStringDefaultInSection(name, section, "invalid");
    if (rawValue == "invalid") return def;
    return atof(rawValue.c_str());
}
