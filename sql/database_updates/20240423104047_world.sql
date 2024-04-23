-- Durotar Labor Union reputation has been deleted from quest Broken Cliff Inspection. https://turtle-wow.org/bug-report?id=6976
update quest_template set RewRepFaction1 = 0, RewRepValue1 = 0 where entry = 41209;
