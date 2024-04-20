-- NPC IDs 61969 and 61970 should have ghost visuals.
update creature_template set auras = '9617' where entry in (61969,61970);