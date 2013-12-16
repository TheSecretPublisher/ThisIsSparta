DELETE FROM  `spell_script_names` WHERE `spell_id` IN (83603, 84593);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(83603, 'spell_halfus_stone_touch'),
(84593, 'spell_halfus_stone_grip');

DELETE FROM `creature`  WHERE `id` = 44687;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 
(44687, 671, 15, -303.064, -759.071, 897.761, 1.7968, 86400);

UPDATE `creature_template` SET `ScriptName`='npc_proto_behemoth' WHERE  `entry`=44687 LIMIT 1;
UPDATE `creature_template` SET `exp`=3, `InhabitType`=4 WHERE  `entry`=44687 LIMIT 1;
UPDATE `creature_template` SET `speed_walk`=2, `speed_run`=2 WHERE  `entry` IN (44600, 46209);

DELETE FROM `creature_onkill_currency` WHERE `creature_id` IN (44600, 46209);
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyCount1`) VALUES
(44600, 396, 40),
(46209, 396, 40);