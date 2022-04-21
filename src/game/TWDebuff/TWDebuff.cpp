#include "TWDebuff.hpp"

void TWDebuff::SendNewDebuff(Player* player, Aura* aura)
{
	if (!aura || !player)
		return;

	auto spellId = aura->GetHolder()->GetSpellProto()->Id;


	rapidjson::Document d;
	d.AddMember("opcode", "ADD", d.GetAllocator());


	d.AddMember("stackCount", aura->GetStackAmount(), d.GetAllocator());


}

void TWDebuff::RegisterTarget(Player* player, Unit* target)
{

}