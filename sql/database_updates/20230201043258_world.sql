-- Fix for incorrect name tag in Duty to the Light.
UPDATE `quest_template` SET `OfferRewardText` = '<You explain why Brother WIlhelm sent you. Eldrin''s angry, defensive posture softens as you explain, and eventually you see the shine of tears in his eyes.>$B$BMiles away and as busy serving the Light as he is, yet he still finds time to help us. It pains me to burden him so yet again. He''s already done so much for us, you see.$B$BThings''ve been hard this year, so I''ve been goin'' without so Sara and Eric don''t have to, and... Well, thank you. Bless Brother Wilhelm, and bless you, $N.$B$BHere. I know it''s not much, but Sara makes them for the locals. Maybe you can find some use in it. Take it! It''s the least we can do in return for your selfless deed.' WHERE `entry` = 60141;
