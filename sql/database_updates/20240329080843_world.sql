-- Hunters can Freezing Trap and Scatter Shot Solnius and Erennius. Please make NPC 60748 Immune to Disorient and Horrify.
update creature_template set mechanic_immune_mask = 2794143579 where entry in (60747,60748);
