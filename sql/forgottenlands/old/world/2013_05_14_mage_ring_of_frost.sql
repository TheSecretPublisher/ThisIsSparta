-- Apply immunity after Ring of Frost Freeze
DELETE FROM `spell_script_names` WHERE `spell_id`=82691;
INSERT INTO `spell_script_names` VALUES
(82691,"spell_gen_ring_of_frost");
