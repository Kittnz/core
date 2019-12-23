
-- Change variables:

set @HordePlayer         = 'Dragojazz';
set @HordePlayerRace     = 'Undead';

set @AlliancePlayer      = 'Preston';
set @AlliancePlayerRace  = 'Human';

-- Don't touch this part --

update quest_template set details = CONCAT('Kill ', @HordePlayer, '.') where entry = 50322;
update quest_template set title = CONCAT('WANTED: ', @HordePlayer, '!') where entry = 50322;

update quest_template set objectives =
concat('Recently a vile criminal was sighted with actions uspeakably evil and such actions must be punished! On behalf of Military forces and royalty combined we issue an order for this person elimination.\n\nThere is a just reward for those brave enough to slay the criminal in question.\n\nName is: ', @HordePlayer, ', ', @HordePlayerRace, '.\n\nReward: 250 Reputation points.\r\n')
where entry = 50322;

update quest_template set objectivetext1 = CONCAT(@HordePlayer, ' is dead.') where entry = 50322;

update quest_template set details = CONCAT('Kill ', @AlliancePlayer, '.') where entry = 50323;
update quest_template set title = CONCAT('WANTED: ', @AlliancePlayer, '!') where entry = 50323;

update quest_template set objectives =
concat('Recently a vile criminal was sighted with actions uspeakably evil and such actions must be punished! On behalf of Military forces and royalty combined we issue an order for this person elimination.\n\nThere is a just reward for those brave enough to slay the criminal in question.\n\nName is: ', @AlliancePlayer, ', ', @AlliancePlayerRace, '.\n\nReward: 250 Reputation points.\r\n')
where entry = 50323;

update quest_template set objectivetext1 = CONCAT(@AlliancePlayer, ' is dead.') where entry = 50323;

-- Don't touch this part --