#pragma once

class AbilityTimer
{
    uint32_t m_abilityId;
    uint32_t m_minimumCooldownMs;
    uint32_t m_maximumCooldownMs;
    uint32_t m_currentCooldownMs;

public:
    AbilityTimer(uint32_t abilityId, uint32_t minimumCooldownMs, uint32_t maximumCooldownMs);
    AbilityTimer(uint32_t abilityId, uint32_t minimumCooldownMs, uint32_t maximumCooldownMs, uint32_t initialDelayMs);

    [[nodiscard]] bool is_ready() const;
    [[nodiscard]] uint32_t spell_id() const;

    void reset();
    void set_cooldown(uint32_t cooldownMs);
    void update(uint32_t delta);
};