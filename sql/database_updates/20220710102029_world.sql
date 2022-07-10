update item_template set description = 'Use it at your own risk. The procedure of talent reset costs money.' where entry = 51715;

update creature_template set script_name = '' where script_name = 'larvae_cot';

-- Lower the required number of sheeps gathered in 'Once Upon a Sheep' to 8. This has to be changed due to the influx of new players.
-- Change short objective of Once Upon a Sheep: Find 8 Lost Farm Sheep in Elwynn Forest and feed them Elwynn Truffles to bring them back to farm.
-- Change the amount of Delicious Elwynn Truffle given to player in 'Once Upon a Sheep' to 8. 

update quest_template set reqitemcount1 = 8, srcitemcount = 8, objectives = 'Find 8 Lost Farm Sheep in Elwynn Forest and feed them Elwynn Truffles to bring them back to farm.' where entry = 60005;