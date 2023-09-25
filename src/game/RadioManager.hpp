#pragma once
#include <unordered_map>
#include <memory>
#include <optional>

class RadioManager
{
public:
	static RadioManager* Instance()
	{
		static RadioManager instance;
		return &instance;
	}

	void LoadFromDB()
	{
		m_RadioSpells.clear();
		auto result = std::unique_ptr<QueryResult>{ WorldDatabase.Query("SELECT itemId, spellId FROM collection_radio") };
		if (!result)
			return;

		do {
			auto fields = result->Fetch();
			m_RadioSpells[fields[0].GetUInt32()] = fields[1].GetUInt32();

		} while (result->NextRow());

	}

	std::optional<uint32> GetRadioSpellId(uint32 itemId) const
	{
		if (auto itr = m_RadioSpells.find(itemId); itr != m_RadioSpells.end())
			return { itr->second };
		return {};
	}


private:
	std::unordered_map<uint32, uint32> m_RadioSpells;
};

#define sRadioMgr RadioManager::Instance()