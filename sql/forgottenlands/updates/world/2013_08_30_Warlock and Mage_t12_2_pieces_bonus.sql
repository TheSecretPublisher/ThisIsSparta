DELETE FROM `spell_proc_event` WHERE `entry` in (99061, 99063, 99220, 98970);
INSERT INTO `spell_proc_event` VALUES ('99061', '0', '0', '0', '0', '0', '0', '0', '0', '20', '45');  -- mage proc
INSERT INTO `spell_proc_event` VALUES ('99220', '0', '0', '0', '0', '0', '0', '0', '0', '20', '45');  -- warlock proc
INSERT INTO `spell_proc_event` VALUES ('98970', '0', '15', '0', '1073741824', '0', '0', '0', '0', '100', '0'); -- dk proc
UPDATE `creature_template` SET `ScriptName`= 'npc_t12_mirror_image' WHERE `entry` = 53438;  -- mage npc
UPDATE `creature_template` SET `ScriptName`= 'npc_t12_fiery_imp'    WHERE `entry` = 53491;  -- warlock npc
DELETE FROM `spell_script_names` WHERE `spell_id` IN (98971, -98971);
INSERT INTO `spell_script_names` VALUES (98971, 'dk_t12_dps_2p'); -- dk spell



