create table if not exists custom_pet_entry_relation (
	item_entry mediumint(8) unsigned not null default 0 primary key,
	creature_entry mediumint(8) unsigned not null default 0
);