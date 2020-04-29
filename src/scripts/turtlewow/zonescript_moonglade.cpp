#include "scriptPCH.h"

#include "ZoneScriptMgr.h"

#define ZONEID_MOONGLADE 493

class ZoneMOONGLADE : public ZoneScript
{

public:
	bool SetupZoneScript() override
	{
		DETAIL_LOG("Loaded ZoneScript for Moonglade. Moonglade will have a permanent weather");
		GetMap()->SetWeather(ZONEID_MOONGLADE, WEATHER_TYPE_RAIN, 0.25F, true);

		return true;
	}

};

class ZoneMOONGLADE_Script : public ZoneScript_Script
{
public:

	ZoneMOONGLADE_Script()
		: ZoneScript_Script()
	{
	}

	uint32 GetMapId() const override
	{
		return 1;
	}

	ZoneScript* GetZoneScript() const override
	{
		return new ZoneMOONGLADE();
	}
};

void AddZoneScript_MOONGLADE()
{
    sZoneScriptMgr.AddScript(new ZoneMOONGLADE_Script());
}