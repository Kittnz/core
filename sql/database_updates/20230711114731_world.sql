-- New items added.
replace into item_template values
 ('61732', '15', '0', 'Eternal Dreamstone Shard', '', '4357', '5', '0', '1', '200000', '50000', '0', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61733', '9', '8', 'Formula: Eternal Dreamstone Shard', '', '7798', '5', '0', '1', '200000', '50000', '0', '-1', '-1', '65',
 '0', '333', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
-- Item The Upper Binding of Xanthar, make item BOP.
update item_template set bonding = 1 where entry = 61696;
-- Item The Lower Binding of Xanthar, make item into a quest item.
update item_template set bonding = 4 where entry = 61697;
-- Item Premium Chocolate (61173) add spell 1129 , make usable with -1 charges so the item is consumed upon use.
update item_template set spellid_1 = 1129, spellcharges_1 = -1, spellcooldown_1 = 0, spellcategory_1 = 11, spellcategorycooldown_1 = 1000 where entry = 61173;
-- Item Glyph of the Emerald Bear (Entry 51360), change to blue rarity (rare).
update item_template set quality = 3 where entry = 51360;
-- Item Dreamwind Sigil change display ID to 31576.
update item_template set display_id = 31576 where entry = 61705;

