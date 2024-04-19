-- Durability has been removed from bandage shirts -- https://turtle-wow.org/bug-report?id=6877
update item_template set max_durability = 0 where entry in (69109,69110,69111,69112);