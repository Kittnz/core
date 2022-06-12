-- No buff should be given on quest reward event:
update quest_template set rewspellcast = 0 where title = 'Corrupted Songflower'; -- Previous value is 15366.

-- Change faction of following gameobjects to friendly:
update gameobject_template set faction = 35 where entry in (164881, 164882, 164883, 164884, 171940, 171943, 173325, 173326, 174609, 174610, 174612, 174613, 174614, 174615, 174616, 174617, 174618, 174619, 174620, 174621, 174622, 174623, 174624, 174625, 174685, 174687, 174710, 174711, 174714, 174715);

