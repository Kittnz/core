-- Durability has been removed from bandage shirts -- Fixes https://turtle-wow.org/bug-report?id=6877
update item_template set max_durability = 0 where entry in (69109,69110,69111,69112);
-- Item Nature's Call is no longer displayed behind the back during the shooting -- Fixes https://turtle-wow.org/bug-report?id=6815
update item_template set sheath = 0 where entry in (61525);
-- Item Recipe: Gilneas Hot Stew have coocking recipe category -- Fixes https://turtle-wow.org/bug-report?id=6889
update item_template set class = 9, subclass = 5, material = 2 where entry in (61676);