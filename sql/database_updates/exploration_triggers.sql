update gameobject_template set script_name = 'custom_exploration_trigger' where entry in 
(3000201, 3000101, 3000102);
                                                                
delete from gameobject_template where script_name = 'go_custom_rested';