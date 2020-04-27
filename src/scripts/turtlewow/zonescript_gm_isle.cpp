#include "scriptPCH.h"

#include "ZoneScriptMgr.h"

#define ZONEID_GM_ISLE 876

class ZoneGmIsle : public ZoneScript
{

public:
	bool SetupZoneScript() override
	{
		// Giperion Turtle: Froze weather in a permanent gray state.
		// print in log, that weather is constant, in case we forgot about that and want to change it
		DETAIL_LOG("Loaded ZoneScript for GM isles. GM Isle will have a permanent weather");
		GetMap()->SetWeather(ZONEID_GM_ISLE, WEATHER_TYPE_RAIN, 0.2f, true);

		return true;
	}

};

class ZoneGmIsle_Script : public ZoneScript_Script
{
public:

	ZoneGmIsle_Script()
		: ZoneScript_Script()
	{
	}

	uint32 GetMapId() const override
	{
		return 1;
	}

	ZoneScript* GetZoneScript() const override
	{
		return new ZoneGmIsle();
	}
};

#define EPL 139

class ZoneEPL : public ZoneScript
{

public:
    bool SetupZoneScript() override
    {
        DETAIL_LOG("Loaded ZoneScript for GM isles. EPL now will have a permanent weather");
        GetMap()->SetWeather(EPL, WEATHER_TYPE_RAIN, 0.2f, true);

        return true;
    }

};

class ZoneEPL_Script : public ZoneScript_Script
{
public:

    ZoneEPL_Script()
        : ZoneScript_Script()
    {
    }

    uint32 GetMapId() const override
    {
        return 1;
    }

    ZoneScript* GetZoneScript() const override
    {
        return new ZoneEPL();
    }
};

void AddZoneScript_GmIsle()
{
    sZoneScriptMgr.AddScript(new ZoneEPL_Script());
    sZoneScriptMgr.AddScript(new ZoneGmIsle_Script());
}