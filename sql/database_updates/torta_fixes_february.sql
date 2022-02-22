-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1143
update item_template set flags = 2048 where entry = 9234;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1138
update quest_template set objectives = 'Gather 10 Deeptide Bracelets from Deeptide Naga for Explorer Fangosh in Maul\'ogg Refuge.' where entry = 40275;
update quest_template set objectives = 'Gather a Gold Bar for Blazno Blastpipe on Gillijim\'s Isle.' where entry = 40190;

-- Picnic Basket
update item_template set spellid_1 = 56067, script_name = '' where entry = 81116;


    float dis{ 2.0F };
    float x, y, z;
    pPlayer->GetSafePosition(x, y, z);
    x += dis * cos(pPlayer->GetOrientation());
    y += dis * sin(pPlayer->GetOrientation());

    pPlayer->SummonGameObject(2004896, x, y, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 300, true);
    pPlayer->SummonGameObject(2004895, x + 0.5, y + 0.5, z, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 300, true);
    return false;