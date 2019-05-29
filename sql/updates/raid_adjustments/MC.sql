update creature_template join creature on creature_template.entry=creature.id set health_min = (health_min * 0.4), health_max = (health_max * 0.4), dmg_min = (dmg_min * 0.7), dmg_max = (dmg_max * 0.8) where map = 409;
update creature_template set health_min = (health_min * 0.4), health_max = (health_max * 0.4), dmg_min = (dmg_min * 0.6), dmg_max = (dmg_max * 0.7) where entry in (11663, 11664, 11502);

update creature_template set health_min = (health_min * 0.7), health_max = (health_max * 0.7), dmg_min = (dmg_min * 0.7), dmg_max = (dmg_max * 0.7) where entry = 12099;
update creature_template set dmg_min = (dmg_min * 0.75), dmg_max = (dmg_max * 0.75) where entry = 11672;