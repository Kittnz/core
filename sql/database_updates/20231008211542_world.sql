-- Remove broken engineering recipes from trainer.
DELETE FROM `npc_trainer` WHERE `spell` IN (19845, 19846, 23088, 49526, 49527, 49528);
