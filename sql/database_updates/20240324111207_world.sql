-- Drop count of item "AZURE WHELPLIN" changed to 1. https://turtle-wow.org/bug-report?id=6713
update creature_loot_template set maxcount = 1 where entry = 60909 and item = 50083;
