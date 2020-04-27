#include "scriptPCH.h"

#include "ZoneScriptMgr.h"

#define ZONEID_EPL 139

class ZoneEPL : public ZoneScript
{

public:
	bool SetupZoneScript() override
	{
		// Giperion Turtle: Froze weather in a permanent gray state.
		// print in log, that weather is constant, in case we forgot about that and want to change it
		DETAIL_LOG("Loaded ZoneScript for GM isles. GM Isle will have a permanent weather");
		GetMap()->SetWeather(ZONEID_EPL, WEATHER_TYPE_RAIN, 0.2f, true);

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
		return 0;
	}

	ZoneScript* GetZoneScript() const override
	{
		return new ZoneEPL();
	}
};

void AddZoneScript_EPL()
{
    sZoneScriptMgr.AddScript(new ZoneEPL_Script());
}