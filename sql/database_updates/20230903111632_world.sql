-- Quest "Revenge After Death" should make you choose a reward and not give both.
update quest_template set RewItemId1 = 0, RewItemId2 = 0, RewItemCount1 = 0, RewItemCount2 = 0, RewChoiceItemId1 = 61490, RewChoiceItemId2 = 61619, RewChoiceItemCount1 = 1, RewChoiceItemCount2 = 1 where entry = 40974;
-- Dark Bishop Mordren's gossip should say bear instead of bare where the point is.
update broadcast_text set male_text = 'During my life it was I who looked after this church. I was murdered in cold blood by those that bear the emblem of this kingdom. It appears that I have been awoken from my slumber to serve a new purpose, and serve this purpose I shall.$B$BYou will find no hostilities here, I may be Gilnean but I offer a chance to find solace inside the walls of my parish.$B$BShould you need to rest, feel free to ask.' where entry = 61281;