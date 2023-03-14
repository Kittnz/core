-- Remove quest Orb of Pure Light from players who have not completed it.
DELETE FROM `character_queststatus` WHERE `quest`=20000 && `rewarded`=0;
