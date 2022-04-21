#pragma once

#include "rapidjson/rapidjson.h"
#include "rapidjson/document.h"
#include "SpellAuras.h"
#include "Player.h"

#include <string>

class TWDebuff
{
private:
	TWDebuff() {}

public:

	static TWDebuff* Instance()
	{
		static TWDebuff instance;
		return &instance;
	}

	void SendNewDebuff(Player* player, Aura* aura);

	void RegisterTarget(Player* player, Unit* target);
};