-- Quest 41018, change requirement of 5x 61706 corrupt dream shard to 8x.
update quest_template set ReqItemCount1 = 8 where entry = 41018;