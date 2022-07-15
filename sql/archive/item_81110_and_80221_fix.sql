-- Give item 80221 and item 81110 a proper head / cloth attribute, so it can be used for transmog:
update item_template set class = 4, subclass = 1, inventory_type = 1 where entry in (80221,81110);