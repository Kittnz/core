-- Fix Open House rewards bonding:

update item_template set bonding = 6 where entry in (51889, 51894);