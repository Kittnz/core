update gameobject_template set script_name = 'custom_exploration_trigger' where entry in 
(3000201, 3000101, 3000102);
                                                                
delete from gameobject_template where script_name = 'go_custom_rested';

update item_template set script_name = '' where sentry = 50056;
update item_template set spellid_1 = 46035 where entry = 50056;