update quest_template set minlevel = 10, maxlevel = 19, title = 'Fashion Demands Humble Offerings' where entry = 60030;
update quest_template set minlevel = 20, maxlevel = 29, title = 'Fashion Demands Jewels' where entry = 60031;
update quest_template set minlevel = 30, maxlevel = 39, title = 'Fashion Demands a Sharp Tailor' where entry = 60032;
update quest_template set minlevel = 40, maxlevel = 49, title = 'Fashion Demands Furs and Hardwares' where entry = 60033;
update quest_template set minlevel = 50, maxlevel = 59, title = 'Fashion Demands Sacrifices' where entry = 60034;
update quest_template set minlevel = 60, maxlevel = 60, title = 'Fashion Demands Dedication' where entry = 60035;

update quest_template set reqitemcount1 = 5 where reqitemcount1 = 20 and title like '%Fashion Demands%';
update quest_template set reqitemcount2 = 5 where reqitemcount2 = 20 and title like '%Fashion Demands%';
update quest_template set reqitemcount3 = 5 where reqitemcount3 = 20 and title like '%Fashion Demands%';
update quest_template set reqitemcount4 = 5 where reqitemcount4 = 20 and title like '%Fashion Demands%';

update quest_template set reqitemcount1 = 5 where reqitemcount1 = 10 and title like '%Fashion Demands%';
update quest_template set reqitemcount2 = 5 where reqitemcount2 = 10 and title like '%Fashion Demands%';
update quest_template set reqitemcount3 = 5 where reqitemcount3 = 10 and title like '%Fashion Demands%';
update quest_template set reqitemcount4 = 5 where reqitemcount4 = 10 and title like '%Fashion Demands%';

update quest_template set reqitemcount1 = 5 where reqitemcount1 = 15 and title like '%Fashion Demands%';
update quest_template set reqitemcount2 = 5 where reqitemcount2 = 15 and title like '%Fashion Demands%';
update quest_template set reqitemcount3 = 5 where reqitemcount3 = 15 and title like '%Fashion Demands%';
update quest_template set reqitemcount4 = 5 where reqitemcount4 = 15 and title like '%Fashion Demands%';

update quest_template set objectives = 'Complete Fashionista\'s apprentice\' request and receive one Fashion Coin as a reward.', reworreqmoney = 0 where title like '%Fashion Demands%';
update item_template set description = '' where entry = 51217;

update quest_template set reqitemcount1 = 1 where entry = 60036;
update quest_template set reqitemcount2 = 1, objectives = 'Bring the Righteous Orb and Flawless Draenethyst Sphere to Fashionista\'s Apprentice and recieve 3 Fashion Coins as a reward.' where entry = 60036;