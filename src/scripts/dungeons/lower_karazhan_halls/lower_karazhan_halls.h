#ifndef DEF_LOWER_KARAZHAN_HALLS_H
#define DEF_LOWER_KARAZHAN_HALLS_H

enum
{
	DATA_BROOD_QUEEN_ARAXXNA = 1,
	DATA_MOROES              = 2,
	DATA_MOROES_STAGE        = 3,
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

protected:
	uint64 m_uiBroodQueenAraxxnaGUID;
	uint64 m_uiMoroesGUID;
	uint32 m_uiMoroesStage;
};

#endif
