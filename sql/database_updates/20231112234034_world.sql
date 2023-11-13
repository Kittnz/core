UPDATE quest_template SET Method = 0, Details = '' WHERE entry IN (40340, 40341);

UPDATE quest_template SET
RequestItemsText = 'The Infinite Dragonflight has begun their assault upon the timeline in every conceivable way, splintering timelines with their relentless assaults. It is from these shattered timelines that Corrupted Sand manifests.$B$BThis Corrupted Sand can be purified by members of the Bronze Dragonflight here in the Caverns of Time, that we may repair the damage caused. If you so happen to acquire any Corrupted Sand, bring it to me without delay.',
OfferRewardText = 'This is a fine sample, $N. If you should acquire more, bring it to me for purification.'
WHERE entry = 40340;

UPDATE quest_template SET
RequestItemsText = 'The purification of Corrupted Sand is a lengthy and complex process, which is why it is best to gather large quantities to be purified at one time. If you should obtain 10 samples of Corrupted Sand, our work to purify them and repair the damage to the timeline would be that much more efficient.$B$BThe broken timelines beyond these portals should be abundant in Corrupted Sand. Only a brave soul need venture in to obtain it. Be on guard in the Caverns of Time, for it is a perilous place for the uninitiated.',
OfferRewardText = 'You have done well, $N. This sample of Corrupted Sand shall make our purification easier. We are always in need of more, should you find it, and ready to accept your contributions.'
WHERE entry = 40341;
