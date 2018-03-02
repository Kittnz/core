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

/** \file
    \ingroup world
*/

#include "Weather.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "Player.h"
#include "World.h"
#include "Log.h"
#include "ObjectMgr.h"
#include "Util.h"

/// Weather sound defines ( only for 1.12 )
enum WeatherSounds
{
    WEATHER_NOSOUND                = 0,
    WEATHER_RAINLIGHT              = 8533,
    WEATHER_RAINMEDIUM             = 8534,
    WEATHER_RAINHEAVY              = 8535,
    WEATHER_SNOWLIGHT              = 8536,
    WEATHER_SNOWMEDIUM             = 8537,
    WEATHER_SNOWHEAVY              = 8538,
    WEATHER_SANDSTORMLIGHT         = 8556,
    WEATHER_SANDSTORMMEDIUM        = 8557,
    WEATHER_SANDSTORMHEAVY         = 8558
};

/// Create the Weather object
Weather::Weather(uint32 zone, WeatherZoneChances const* weatherChances) : m_zone(zone), m_weatherChances(weatherChances)
{
    m_timer.SetInterval(sWorld.getConfig(CONFIG_UINT32_INTERVAL_CHANGEWEATHER));
    m_type = WEATHER_TYPE_FINE;
    m_grade = 0;

    DETAIL_FILTER_LOG(LOG_FILTER_WEATHER, "WORLD: Starting weather system for zone %u (change every %u minutes).", m_zone, (m_timer.GetInterval() / (MINUTE * IN_MILLISECONDS)));
}

/// Launch a weather update
bool Weather::Update(time_t diff)
{
    m_timer.Update(diff);

    ///- If the timer has passed, ReGenerate the weather
    if (m_timer.Passed())
    {
        m_timer.Reset();
        // update only if Regenerate has changed the weather
        if (ReGenerate())
        {
            ///- Weather will be removed if not updated (no players in zone anymore)
            if (!UpdateWeather())
                return false;
        }
    }
    return true;
}

/// Calculate the new weather
bool Weather::ReGenerate()
{
    if (!m_weatherChances)
    {
        m_type = WEATHER_TYPE_FINE;
        m_grade = 0.0f;
        return false;
    }

    /// Weather statistics:
    ///- 30% - no change
    ///- 30% - weather gets better (if not fine) or change weather type
    ///- 30% - weather worsens (if not fine)
    ///- 10% - radical change (if not fine)
    uint32 u = urand(0, 99);

    if (u < 30)
        return false;

    // remember old values
    WeatherType old_type = m_type;
    float old_grade = m_grade;

    //78 days between January 1st and March 20nd; 365/4=91 days by season
    // season source http://aa.usno.navy.mil/data/docs/EarthSeasons.html
    time_t gtime = sWorld.GetGameTime();
    struct tm * ltime = localtime(&gtime);
    uint32 season = ((ltime->tm_yday - 78 + 365) / 91) % 4;

    static char const* seasonName[WEATHER_SEASONS] = { "spring", "summer", "fall", "winter" };

    DEBUG_FILTER_LOG(LOG_FILTER_WEATHER, "Generating a change in %s weather for zone %u.", seasonName[season], m_zone);

    if ((u < 60) && (m_grade < 0.33333334f))                // Get fair
    {
        m_type = WEATHER_TYPE_FINE;
        m_grade = 0.0f;
    }

    if ((u < 60) && (m_type != WEATHER_TYPE_FINE))          // Get better
    {
        m_grade -= 0.33333334f;
        return true;
    }

    if ((u < 90) && (m_type != WEATHER_TYPE_FINE))          // Get worse
    {
        m_grade += 0.33333334f;
        return true;
    }

    if (m_type != WEATHER_TYPE_FINE)
    {
        /// Radical change:
        ///- if light -> heavy
        ///- if medium -> change weather type
        ///- if heavy -> 50% light, 50% change weather type

        if (m_grade < 0.33333334f)
        {
            m_grade = 0.9999f;                              // go nuts
            return true;
        }
        else
        {
            if (m_grade > 0.6666667f)
            {
                // Severe change, but how severe?
                uint32 rnd = urand(0, 99);
                if (rnd < 50)
                {
                    m_grade -= 0.6666667f;
                    return true;
                }
            }
            m_type = WEATHER_TYPE_FINE;                     // clear up
            m_grade = 0;
        }
    }

    // At this point, only weather that isn't doing anything remains but that have weather data
    uint32 chance1 =          m_weatherChances->data[season].rainChance;
    uint32 chance2 = chance1 + m_weatherChances->data[season].snowChance;
    uint32 chance3 = chance2 + m_weatherChances->data[season].stormChance;

    uint32 rnd = urand(1, 100);
    if (rnd <= chance1)
        m_type = WEATHER_TYPE_RAIN;
    else if (rnd <= chance2)
        m_type = WEATHER_TYPE_SNOW;
    else if (rnd <= chance3)
        m_type = WEATHER_TYPE_STORM;
    else
        m_type = WEATHER_TYPE_FINE;

    /// New weather statistics (if not fine):
    ///- 85% light
    ///- 7% medium
    ///- 7% heavy
    /// If fine 100% sun (no fog)

    if (m_type == WEATHER_TYPE_FINE)
        m_grade = 0.0f;
    else if (u < 90)
        m_grade = rand_norm_f() * 0.3333f;
    else
    {
        // Severe change, but how severe?
        rnd = urand(0, 99);
        if (rnd < 50)
            m_grade = rand_norm_f() * 0.3333f + 0.3334f;
        else
            m_grade = rand_norm_f() * 0.3333f + 0.6667f;
    }

    // return true only in case weather changes
    return m_type != old_type || m_grade != old_grade;
}

void Weather::SendWeatherUpdateToPlayer(Player *player)
{
    uint32 sound = GetSound();                              // for 1.12
    WorldPacket data(SMSG_WEATHER, (4 + 4 + 4));
    data << (uint32)m_type << (float)m_grade << (uint32)sound;
    player->GetSession()->SendPacket(&data);
}

void Weather::SendFineWeatherUpdateToPlayer(Player *player)
{
    WorldPacket data(SMSG_WEATHER, (4 + 4 + 4));
    data << (uint32)WEATHER_STATE_FINE << (float)0.0f << uint32(0); // no sound
    player->GetSession()->SendPacket(&data);
}

/// Send the new weather to all players in the zone
bool Weather::UpdateWeather()
{
    Player* player = sWorld.FindPlayerInZone(m_zone);
    if (!player)
        return false;

    ///- Send the weather packet to all players in this zone
    uint32 sound = GetSound();

    if (m_grade >= 1)
        m_grade = 0.9999f;
    else if (m_grade < 0)
        m_grade = 0.0001f;


    WorldPacket data(SMSG_WEATHER, (4 + 4 + 4));
    data << (uint32)m_type << (float)m_grade << (uint32)sound;
    player->SendMessageToSet(&data, true);

    ///- Log the event
    char const* wthstr;
    switch (sound)
    {
        case WEATHER_RAINLIGHT:
            wthstr = "light rain";
            break;
        case WEATHER_RAINMEDIUM:
            wthstr = "medium rain";
            break;
        case WEATHER_RAINHEAVY:
            wthstr = "heavy rain";
            break;
        case WEATHER_SNOWLIGHT:
            wthstr = "light snow";
            break;
        case WEATHER_SNOWMEDIUM:
            wthstr = "medium snow";
            break;
        case WEATHER_SNOWHEAVY:
            wthstr = "heavy snow";
            break;
        case WEATHER_SANDSTORMLIGHT:
            wthstr = "light sandstorm";
            break;
        case WEATHER_SANDSTORMMEDIUM:
            wthstr = "medium sandstorm";
            break;
        case WEATHER_SANDSTORMHEAVY:
            wthstr = "heavy sandstorm";
            break;
        case WEATHER_NOSOUND:
        default:
            wthstr = "fine";
            break;
    }

    DETAIL_FILTER_LOG(LOG_FILTER_WEATHER, "Change the weather of zone %u to %s.", m_zone, wthstr);

    return true;
}

/// Set the weather
void Weather::SetWeather(WeatherType type, float grade)
{
    if (m_type == type && m_grade == grade)
        return;

    m_type = type;
    m_grade = grade;
    UpdateWeather();
}

// Get the sound number associated with the current weather
uint32 Weather::GetSound()
{
    uint32 sound;
    switch (m_type)
    {
        case WEATHER_TYPE_RAIN:                                             //rain
            if (m_grade < 0.3f)
                sound = WEATHER_NOSOUND;
            else if (m_grade < 0.6f)
                sound = WEATHER_RAINLIGHT;
            else if (m_grade < 0.9f)
                sound = WEATHER_RAINMEDIUM;
            else
                sound = WEATHER_RAINHEAVY;
            break;
        case WEATHER_TYPE_SNOW:                                             //snow
            if (m_grade < 0.3f)
                sound = WEATHER_NOSOUND;
            else if (m_grade < 0.6f)
                sound = WEATHER_SNOWLIGHT;
            else if (m_grade < 0.9f)
                sound = WEATHER_SNOWMEDIUM;
            else
                sound = WEATHER_SNOWHEAVY;
            break;
        case WEATHER_TYPE_STORM:                                             //storm
            if (m_grade < 0.3f)
                sound = WEATHER_NOSOUND;
            else if (m_grade < 0.6f)
                sound = WEATHER_SANDSTORMLIGHT;
            else if (m_grade < 0.9f)
                sound = WEATHER_SANDSTORMMEDIUM;
            else
                sound = WEATHER_SANDSTORMHEAVY;
            break;
        case WEATHER_TYPE_FINE:                                             //fine
        default:
            sound = WEATHER_NOSOUND;
            break;
    }
    return sound;

    /*[-ZERO] tbc [?]
              case WEATHER_TYPE_BLACKRAIN:
              return WEATHER_STATE_BLACKRAIN;
          case WEATHER_TYPE_THUNDERS:
              return WEATHER_STATE_THUNDERS; */
}
