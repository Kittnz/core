-- time-blackened chestpiece's 1% hit effect should be on equip instead of chance on hit.
update item_template set spellid_3 = 15464, spelltrigger_3 = 1 where entry = 50427;