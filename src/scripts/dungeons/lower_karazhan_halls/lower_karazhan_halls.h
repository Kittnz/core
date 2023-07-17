#ifndef DEF_LOWER_KARAZHAN_HALLS_H
#define DEF_LOWER_KARAZHAN_HALLS_H

enum
{
	DATA_BROOD_QUEEN_ARAXXNA = 1,
};

class instance_lower_karazhan_halls : public ScriptedInstance
{
public:
	instance_lower_karazhan_halls(Map* pMap);
	~instance_lower_karazhan_halls() override {}

	void Initialize() override;

	void OnCreatureCreate(Creature* pCreature) override;
	void OnCreatureDeath(Creature* pCreature) override;

	uint64 GetData64(uint32 uiData) override;

protected:
	uint64 m_uiBroodQueenAraxxnaGUID;
};

#endif
