#pragma once

struct npc_hivezora_abomination : public ScriptedAI
{
    uint32_t m_currentWaypoint;
    std::vector <Movement::Location> m_waypoints;
public:
    npc_hivezora_abomination(Creature* pCreature);

    void MovementInform(uint32_t movementType, uint32_t pointId) override;
    void Reset() override;
    void UpdateAI(const uint32 delta) override;

    void BecomeAttackable() const;
    void BecomeImmune() const;
    void BeginPathing();

    static CreatureAI* GetAI(Creature* pCreature);

    static void RegisterScript();
};
