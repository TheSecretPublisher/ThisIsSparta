DELETE FROM `creature` WHERE `id`= 46962 AND `spawnMask`=2;
INSERT INTO `creature` VALUES (NULL, 46962, 33, 2, 1, 0, 0, -256.12, 2117.15, 81.2629, 1.23918, 7200, 0, 0, 1, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `difficulty_entry_1`=49708, `ScriptName`='boss_baron_ashbury' WHERE (`entry`=46962);
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `unit_class`=2, `unit_flags`=32832 WHERE (`entry`=49708);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (93710, 93423);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (93710, 'spell_asphyxiate');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (93423, 'spell_asphyxiate');