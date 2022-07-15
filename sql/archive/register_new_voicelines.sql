
ALTER TABLE `sound_entries`
	CHANGE COLUMN `id` `id` INT NOT NULL DEFAULT 0 FIRST;

REPLACE INTO `sound_entries` VALUES
(60348, 'Hateforge Quarry - BARGUL BLACKHAMMER'),
(60349, 'Hateforge Quarry - BARGUL BLACKHAMMER'),
(60350, 'Hateforge Quarry - BARGUL BLACKHAMMER'),
(60351, 'Hateforge Quarry - BARGUL BLACKHAMMER'),
(60352, 'Hateforge Quarry - BARGUL BLACKHAMMER'),
(60353, 'Hateforge Quarry - ENGINEER FIGGLES'),
(60354, 'Hateforge Quarry - ENGINEER FIGGLES'),
(60355, 'Hateforge Quarry - HATEREAVER'),
(60356, 'Hateforge Quarry - HATEREAVER'),
(60360, 'Hateforge Quarry - HARGESH DOOMCALLER'),
(60361, 'Hateforge Quarry - HARGESH DOOMCALLER'),
(60368, 'Scescent Grove - GROVETENDER ENGRYSS'),
(60369, 'Scescent Grove - GROVETENDER ENGRYSS'),
(30270, 'Scescent Grove - GROVETENDER ENGRYSS'),
(30271, 'Scescent Grove - MASTER RAXXIETH'),
(30272, 'Scescent Grove - MASTER RAXXIETH'),
(30273, 'Scescent Grove - MASTER RAXXIETH'),
(30252, 'Scescent Grove - FENEKTIS THE DECEIVER'),
(30253, 'Scescent Grove - FENEKTIS THE DECEIVER'),
(30256, 'Scescent Grove - KEEPER RANATHOS'),
(30257, 'Scescent Grove - KEEPER RANATHOS'),
(30258, 'Scescent Grove - KEEPER RANATHOS');

REPLACE INTO `script_texts` (`entry`, `content_default`, `sound`, `type`, `comment`) VALUES
-- Boss Bargul Blackhammer
('-1999950', "We must maintain our production! WORK HARDER!", '60349', '6', "BARGUL_BLACKHAMMER_OOC_0"),
('-1999951', "Shadowforge shall reward us all for our work here in the Quarry!", '60350', '6', "BARGUL_BLACKHAMMER_OOC_1"),
('-1999952', "I don't see enough of you busy out there, We don't have all month!", '60351', '6', "BARGUL_BLACKHAMMER_OOC_2"),
('-1999953', "You think you contend with the High Foreman? Feel the fury of the Dark Iron!", '60348', '0', "BARGUL_BLACKHAMMER_AGGRO"),
('-1999954', "Curse you.. Damn you... The work, must go on.", '60352', '0', "BARGUL_BLACKHAMMER_DEAD"),
-- Boss Engineer Figgles
('-1999955', "You foolish outsiders! You're not supposed to be here interrupting my great work. Broody, get them, destroy them!", '60353', '0', "Engineer_Figgles_AGGRO"),
('-1999956', "I.. Was going to build an army... I would've never been stopped!", '60354', '0', "Engineer_Figgles_DEAD"),
-- Boss Hatereaver Annihilator
('-1999957', "Unidentified intruders, defensive measures, engaged.", '60355', '0', "Hatereaver_Annihilator_AGGRO"),
('-1999958', "Activate emergency power... Emergency power activation failed... Commence... Shut... Do..wn...", '60356', '0', "Hatereaver_Annihilator_DEAD");
