ALTER TABLE `characters`
	ADD COLUMN `current_pet_slot` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `deleteDate`;
	
ALTER TABLE `characters`
	ADD COLUMN `pet_slot_used`    INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `current_pet_slot`;