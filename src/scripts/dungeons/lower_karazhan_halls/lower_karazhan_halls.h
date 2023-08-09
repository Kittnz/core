#ifndef DEF_LOWER_KARAZHAN_HALLS_H
#define DEF_LOWER_KARAZHAN_HALLS_H

enum
{
	DATA_BROOD_QUEEN_ARAXXNA,
	DATA_BLACKWALD_II,
	DATA_CLAWLORD_HOWLFANG,
	DATA_GRIZIKIL,
	DATA_MOROES,
	DATA_MAX_ENCOUNTER,

	DATA_MOROES_STAGE,
};

class instance_lower_karazhan_halls : public ScriptedInstance
{
public:
	instance_lower_karazhan_halls(Map* pMap);
	~instance_lower_karazhan_halls() override {}

	void Initialize() override;

	void OnCreatureCreate(Creature* pCreature) override;
	void OnCreatureDeath(Creature* pCreature) override;

	uint32 GetData(uint32 uiData) override;
	uint64 GetData64(uint32 uiData) override;
	void SetData(uint32 uiType, uint32 uiData) override;

	const char* Save() override { return m_strInstData.c_str(); }
	void Load(const char* chrIn) override;

protected:
	uint64 m_uiBossGUID[DATA_MAX_ENCOUNTER]{};
	uint32 m_uiBossState[DATA_MAX_ENCOUNTER]{};
	uint64 m_uiAppretinceGUID[2]{};
	uint32 m_uiMoroesStage;
	std::string m_strInstData{};
};

#endif
