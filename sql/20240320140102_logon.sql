-- add new config option by jamey
ALTER TABLE `world_config`
    ADD COLUMN `dynamic_scaling_pop` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `max_item_stack_transferred`;
