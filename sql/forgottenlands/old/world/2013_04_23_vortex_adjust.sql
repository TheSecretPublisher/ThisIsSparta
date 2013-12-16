UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `modelid1`=11686, `modelid2`=0, `faction_A`=16, `faction_H`=16, `unit_flags`=33554434, `flags_extra`=2, `ScriptName`='npc_ertan_vortex' WHERE  `entry`=46007;
DELETE FROM `creature_template_addon` WHERE `entry` =46007;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES 
(46007, '86267 0');

UPDATE `creature_template` SET `ScriptName`='npc_slipstream' WHERE  `entry`=45455 LIMIT 1;

DELETE FROM `creature` WHERE `id` = 45455;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(NULL, 45455, 657, 3, 1, 0, 0, -767.311, -47.424, 639.926, 3.24442, 86400, 0, 0, 42, 0, 0, 0, 0, 0),
(NULL, 45455, 657, 3, 1, 0, 0, -1197.39, 109.385, 740.706, 4.35563, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM `creature_onkill_currency` WHERE `creature_id` IN (43874, 43876, 43879);
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyId2`, `CurrencyId3`, `CurrencyCount1`, `CurrencyCount2`, `CurrencyCount3`) VALUES 
(43874, 395, 0, 0, 70, 0, 0),
(43876, 395, 0, 0, 70, 0, 0),
(43879, 395, 0, 0, 70, 0, 0);

