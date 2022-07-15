-- Quest item [Storn's Head] and [Salorn's Ring] have incorrect drops:
delete from creature_loot_template where item = 60197 and entry = 122;
delete from creature_loot_template where item = 60378 and entry = 4064;