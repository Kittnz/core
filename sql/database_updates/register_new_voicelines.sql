
REPLACE INTO `sound_entries` VALUES
(9200, 'Hateforge Quarry - BARGUL BLACKHAMMER'),
(9201, 'Hateforge Quarry - BARGUL BLACKHAMMER'),
(9202, 'Hateforge Quarry - BARGUL BLACKHAMMER'),
(9203, 'Hateforge Quarry - BARGUL BLACKHAMMER'),
(9204, 'Hateforge Quarry - BARGUL BLACKHAMMER'),
(9205, 'Hateforge Quarry - ENGINEER FIGGLES'),
(9206, 'Hateforge Quarry - ENGINEER FIGGLES'),
(9207, 'Hateforge Quarry - HATEREAVER'),
(9208, 'Hateforge Quarry - HATEREAVER'),
(9209, 'Hateforge Quarry - HARGESH DOOMCALLER'),
(9210, 'Hateforge Quarry - HARGESH DOOMCALLER'),
(9211, 'Scescent Grove - GROVETENDER ENGRYSS'),
(9212, 'Scescent Grove - GROVETENDER ENGRYSS'),
(9213, 'Scescent Grove - GROVETENDER ENGRYSS'),
(9214, 'Scescent Grove - MASTER RAXXIETH'),
(9215, 'Scescent Grove - MASTER RAXXIETH'),
(9216, 'Scescent Grove - MASTER RAXXIETH'),
(9217, 'Scescent Grove - FENEKTIS THE DECEIVER'),
(9218, 'Scescent Grove - FENEKTIS THE DECEIVER'),
(9219, 'Scescent Grove - KEEPER RANATHOS'),
(9220, 'Scescent Grove - KEEPER RANATHOS'),
(9221, 'Scescent Grove - KEEPER RANATHOS');

REPLACE INTO `script_texts` (`entry`, `content_default`, `sound`, `type`, `comment`) VALUES
-- Boss Bargul Blackhammer
('-1999950', "We must maintain our production! WORK HARDER!", '9201', '6', "BARGUL_BLACKHAMMER_OOC_0"),
('-1999951', "Shadowforge shall reward us all for our work here in the Quarry!", '9202', '6', "BARGUL_BLACKHAMMER_OOC_1"),
('-1999952', "I don't see enough of you busy out there, We don't have all month!", '9203', '6', "BARGUL_BLACKHAMMER_OOC_2"),
('-1999953', "You think you contend with the High Foreman? Feel the fury of the Dark Iron!", '9200', '0', "BARGUL_BLACKHAMMER_AGGRO"),
('-1999954', "Curse you.. Damn you... The work, must go on.", '9204', '0', "BARGUL_BLACKHAMMER_DEAD"),
-- Boss Engineer Figgles
('-1999955', "You foolish outsiders! You're not supposed to be here interrupting my great work. Broody, get them, destroy them!", '9205', '0', "Engineer_Figgles_AGGRO"),
('-1999956', "I.. Was going to build an army... I would've never been stopped!", '9206', '0', "Engineer_Figgles_DEAD"),
-- Boss Hatereaver Annihilator
('-1999957', "Unidentified intruders, defensive measures, engaged.", '9207', '0', "Hatereaver_Annihilator_AGGRO"),
('-1999958', "Activate emergency power... Emergency power activation failed... Commence... Shut... Do..wn...", '9208', '0', "Hatereaver_Annihilator_DEAD");
-- Nolin End
