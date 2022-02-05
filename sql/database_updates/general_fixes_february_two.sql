UPDATE quest_template SET Details = 'We also got reports of a kobold much larger than the others, hiding deep in the Echo Ridge.\n\nEven its mere existence poses a threat to the abbey.\n\nGo down into the Echo Ridge and kill it.\n\nYou will be justly rewarded.', Objectives = 'Kill Snufflesnout, then report back to Marshal McBride in Northshire Abbey.' WHERE entry = 60145;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1032
UPDATE quest_template SET Details = 'Not good pal, not good at all! And here I thought we\'d be safe and sound under the Horde\'s banner.\n\nThere\'s rumors coming from the Undermine that Razdunk found out our location and might come knocking on our doors! Times are desperate enough for me to seek him...\n\nThere\'s a crazy old goblin hiding somewhere in Durotar. Knowing him and his folk, they definitely hang in filthy places. Maybe a Port...\n\nGive him this piece of paper and this sack of coins. I hate having to pay someone before they do something for me but this is a special case! I really hope you can find him, we definitely could use his help.', Objectives = 'Find Grimm Onearm in Durotar.' WHERE entry = 55011;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1064
UPDATE BROADCAST_TEXT SET male_text = 'Exploring is like tasting a new ale or a fresh brew! Of course you get drunk eventually.\n\nExploring is way more healthy though. Unless you get some troggs instead of a good grog.' WHERE entry = 1255;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1027
UPDATE quest_template SET details = 'Even the ley-shards of the city of Eldarath have their energies compromised. This could be the work of the Naga that have encroached and invaded from the ocean depths. I would not put it past the beasts, as savage as they are, for attempting to claim dominion over the landscape.\n\nWe must look into this matter further before claiming we have gotten this solved. I have prepared a scroll of dispelling. Use it upon the Spitelash Shrine they have in their clutches. If they are behind this dampening, this should solve the problem. While you\'re there, slay their sirens as well, they are the ones who wield a crude and foul magic.\n\nReturn to me when you are done. I will wait here near the Ruins of Eldarath for your return.' WHERE entry = 40124;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1024
replace into npc_vendor values (3413, 16042, 1, 10800, 0, 0);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/927
update creature_loot_template set chanceorquestchance = 4 where entry in (3664,3696,3711,3712,3713,3715,3717,3725,3727,3728,3730,3737,3739,3740,3742) && item = 16645;
update creature_loot_template set chanceorquestchance = 3 where entry in (3743,3745,3746,3748,3749,3750,3752,3754,3755,3757,3758,3759,3762,3763,3765,3767,3770,3771,3772,3773,3780,3781,3782,3783,3784,3789,3791,3797,3801,3802,3803,3833,3834,3917,3919,3921) && item = 16645;
update creature_loot_template set chanceorquestchance = 2 where entry in (3922,3923,3924,3925,3926,3928,3931,3932,3940,3941,3942,3943,3944,3987,4054,4619,6072,6073,6115,10559,10639,10640,10641,10642,10643,10647,11697,12037,12759,12836, 12856, 12896, 12897) && item = 16645;

update creature_loot_template set chanceorquestchance = 3 where entry in (3664,3696,3711,3712,3713,3715,3717,3725,3727,3728,3730,3737,3739,3740,3742) && item = 16646;
update creature_loot_template set chanceorquestchance = 2 where entry in (3743,3745,3746,3748,3749,3750,3752,3754,3755,3757,3758,3759,3762,3763,3765,3767,3770,3771,3772,3773,3780,3781,3782,3783,3784,3789,3791,3797,3801,3802,3803,3833,3834,3917,3919,3921) && item = 16646;
update creature_loot_template set chanceorquestchance = 2.2 where entry in (3922,3923,3924,3925,3926,3928,3931,3932,3940,3941,3942,3943,3944,3987,4054,4619,6072,6073,6115,10559,10639,10640,10641,10642,10643,10647,11697,12037,12759,12836, 12856, 12896, 12897) && item = 16646;

update creature_loot_template set chanceorquestchance = 3.5 where entry in (3664,3696,3711,3712,3713,3715,3717,3725,3727,3728,3730,3737,3739,3740,3742) && item = 16647;
update creature_loot_template set chanceorquestchance = 1.9 where entry in (3743,3745,3746,3748,3749,3750,3752,3754,3755,3757,3758,3759,3762,3763,3765,3767,3770,3771,3772,3773,3780,3781,3782,3783,3784,3789,3791,3797,3801,3802,3803,3833,3834,3917,3919,3921) && item = 16647;
update creature_loot_template set chanceorquestchance = 2.3 where entry in (3922,3923,3924,3925,3926,3928,3931,3932,3940,3941,3942,3943,3944,3987,4054,4619,6072,6073,6115,10559,10639,10640,10641,10642,10643,10647,11697,12037,12759,12836, 12856, 12896, 12897) && item = 16647;

update creature_loot_template set chanceorquestchance = 2.8 where entry in (3664,3696,3711,3712,3713,3715,3717,3725,3727,3728,3730,3737,3739,3740,3742) && item = 16648;
update creature_loot_template set chanceorquestchance = 3.4 where entry in (3743,3745,3746,3748,3749,3750,3752,3754,3755,3757,3758,3759,3762,3763,3765,3767,3770,3771,3772,3773,3780,3781,3782,3783,3784,3789,3791,3797,3801,3802,3803,3833,3834,3917,3919,3921) && item = 16648;
update creature_loot_template set chanceorquestchance = 2.7 where entry in (3922,3923,3924,3925,3926,3928,3931,3932,3940,3941,3942,3943,3944,3987,4054,4619,6072,6073,6115,10559,10639,10640,10641,10642,10643,10647,11697,12037,12759,12836, 12856, 12896, 12897) && item = 16648;

update creature_loot_template set chanceorquestchance = 4 where entry in (3664,3696,3711,3712,3713,3715,3717,3725,3727,3728,3730,3737,3739,3740,3742) && item = 16649;
update creature_loot_template set chanceorquestchance = 3 where entry in (3743,3745,3746,3748,3749,3750,3752,3754,3755,3757,3758,3759,3762,3763,3765,3767,3770,3771,3772,3773,3780,3781,3782,3783,3784,3789,3791,3797,3801,3802,3803,3833,3834,3917,3919,3921) && item = 16649;
update creature_loot_template set chanceorquestchance = 2 where entry in (3922,3923,3924,3925,3926,3928,3931,3932,3940,3941,3942,3943,3944,3987,4054,4619,6072,6073,6115,10559,10639,10640,10641,10642,10643,10647,11697,12037,12759,12836, 12856, 12896, 12897) && item = 16649;

update creature_loot_template set chanceorquestchance = 3.2 where entry in (3664,3696,3711,3712,3713,3715,3717,3725,3727,3728,3730,3737,3739,3740,3742) && item = 16650;
update creature_loot_template set chanceorquestchance = 1.8 where entry in (3743,3745,3746,3748,3749,3750,3752,3754,3755,3757,3758,3759,3762,3763,3765,3767,3770,3771,3772,3773,3780,3781,3782,3783,3784,3789,3791,3797,3801,3802,3803,3833,3834,3917,3919,3921) && item = 16650;
update creature_loot_template set chanceorquestchance = 2.6 where entry in (3922,3923,3924,3925,3926,3928,3931,3932,3940,3941,3942,3943,3944,3987,4054,4619,6072,6073,6115,10559,10639,10640,10641,10642,10643,10647,11697,12037,12759,12836, 12856, 12896, 12897) && item = 16650;

update creature_loot_template set chanceorquestchance = 4 where entry in (3664,3696,3711,3712,3713,3715,3717,3725,3727,3728,3730,3737,3739,3740,3742) && item = 16651;
update creature_loot_template set chanceorquestchance = 3.4 where entry in (3743,3745,3746,3748,3749,3750,3752,3754,3755,3757,3758,3759,3762,3763,3765,3767,3770,3771,3772,3773,3780,3781,3782,3783,3784,3789,3791,3797,3801,3802,3803,3833,3834,3917,3919,3921) && item = 16651;
update creature_loot_template set chanceorquestchance = 2.1 where entry in (3922,3923,3924,3925,3926,3928,3931,3932,3940,3941,3942,3943,3944,3987,4054,4619,6072,6073,6115,10559,10639,10640,10641,10642,10643,10647,11697,12037,12759,12836, 12856, 12896, 12897) && item = 16651;

update creature_loot_template set chanceorquestchance = 2.4 where entry in (3664,3696,3711,3712,3713,3715,3717,3725,3727,3728,3730,3737,3739,3740,3742) && item = 16652;
update creature_loot_template set chanceorquestchance = 1.6 where entry in (3743,3745,3746,3748,3749,3750,3752,3754,3755,3757,3758,3759,3762,3763,3765,3767,3770,3771,3772,3773,3780,3781,3782,3783,3784,3789,3791,3797,3801,3802,3803,3833,3834,3917,3919,3921) && item = 16652;
update creature_loot_template set chanceorquestchance = 2.3 where entry in (3922,3923,3924,3925,3926,3928,3931,3932,3940,3941,3942,3943,3944,3987,4054,4619,6072,6073,6115,10559,10639,10640,10641,10642,10643,10647,11697,12037,12759,12836, 12856, 12896, 12897) && item = 16652;

update creature_loot_template set chanceorquestchance = 2 where entry in (3664,3696,3711,3712,3713,3715,3717,3725,3727,3728,3730,3737,3739,3740,3742) && item = 16653;
update creature_loot_template set chanceorquestchance = 4 where entry in (3743,3745,3746,3748,3749,3750,3752,3754,3755,3757,3758,3759,3762,3763,3765,3767,3770,3771,3772,3773,3780,3781,3782,3783,3784,3789,3791,3797,3801,3802,3803,3833,3834,3917,3919,3921) && item = 16653;
update creature_loot_template set chanceorquestchance = 3 where entry in (3922,3923,3924,3925,3926,3928,3931,3932,3940,3941,3942,3943,3944,3987,4054,4619,6072,6073,6115,10559,10639,10640,10641,10642,10643,10647,11697,12037,12759,12836, 12856, 12896, 12897) && item = 16653;

update creature_loot_template set chanceorquestchance = 3.3 where entry in (3664,3696,3711,3712,3713,3715,3717,3725,3727,3728,3730,3737,3739,3740,3742) && item = 16654;
update creature_loot_template set chanceorquestchance = 2.9 where entry in (3743,3745,3746,3748,3749,3750,3752,3754,3755,3757,3758,3759,3762,3763,3765,3767,3770,3771,3772,3773,3780,3781,3782,3783,3784,3789,3791,3797,3801,3802,3803,3833,3834,3917,3919,3921) && item = 16654;
update creature_loot_template set chanceorquestchance = 4 where entry in (3922,3923,3924,3925,3926,3928,3931,3932,3940,3941,3942,3943,3944,3987,4054,4619,6072,6073,6115,10559,10639,10640,10641,10642,10643,10647,11697,12037,12759,12836, 12856, 12896, 12897) && item = 16654;

update creature_loot_template set chanceorquestchance = 2 where entry in (3664,3696,3711,3712,3713,3715,3717,3725,3727,3728,3730,3737,3739,3740,3742) && item = 16655;
update creature_loot_template set chanceorquestchance = 3 where entry in (3743,3745,3746,3748,3749,3750,3752,3754,3755,3757,3758,3759,3762,3763,3765,3767,3770,3771,3772,3773,3780,3781,3782,3783,3784,3789,3791,3797,3801,3802,3803,3833,3834,3917,3919,3921) && item = 16655;
update creature_loot_template set chanceorquestchance = 2 where entry in (3922,3923,3924,3925,3926,3928,3931,3932,3940,3941,3942,3943,3944,3987,4054,4619,6072,6073,6115,10559,10639,10640,10641,10642,10643,10647,11697,12037,12759,12836, 12856, 12896, 12897) && item = 16655;

update creature_loot_template set chanceorquestchance = 3.4 where entry in (3664,3696,3711,3712,3713,3715,3717,3725,3727,3728,3730,3737,3739,3740,3742) && item = 16656;
update creature_loot_template set chanceorquestchance = 1.4 where entry in (3743,3745,3746,3748,3749,3750,3752,3754,3755,3757,3758,3759,3762,3763,3765,3767,3770,3771,3772,3773,3780,3781,3782,3783,3784,3789,3791,3797,3801,3802,3803,3833,3834,3917,3919,3921) && item = 16656;
update creature_loot_template set chanceorquestchance = 3.8 where entry in (3922,3923,3924,3925,3926,3928,3931,3932,3940,3941,3942,3943,3944,3987,4054,4619,6072,6073,6115,10559,10639,10640,10641,10642,10643,10647,11697,12037,12759,12836, 12856, 12896, 12897) && item = 16656;

update creature_template set armor = 2912, dmg_min = 210, dmg_max = 278 where entry = 91835;
