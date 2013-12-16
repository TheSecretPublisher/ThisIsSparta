UPDATE `creature_template` SET `minlevel`=84, `maxlevel`=85, `exp`=3, `faction_A`=16, `faction_H`=16, `mindmg`=1007, `maxdmg`=1354, `attackpower`=1571, `baseattacktime`=2000 WHERE  `entry`=43658 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=86, `maxlevel`=87, `exp`=3, `faction_A`=16, `faction_H`=16 WHERE  `entry`=48906 LIMIT 1;
UPDATE `creature_template` SET `Health_mod`=8.98 WHERE  `entry`=48906 LIMIT 1;
UPDATE `instance_template` SET `script`='instance_lost_city_of_the_tolvir' WHERE  `map`=755 LIMIT 1;
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16, `ScriptName`='npc_servant_of_siamat' WHERE  `entry`=45269 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=81, `maxlevel`=83, `exp`=3, `faction_A`=16, `faction_H`=16, `ScriptName`='npc_minion_of_siamat' WHERE  `entry`=44704 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction_A`=16, `faction_H`=16, `ScriptName`='npc_cloud_storm' WHERE  `entry`=44541 LIMIT 1;

DELETE FROM `creature_onkill_currency` WHERE `creature_id` IN (48951, 48932, 51088, 49045);
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyId2`, `CurrencyId3`, `CurrencyCount1`, `CurrencyCount2`, `CurrencyCount3`) VALUES 
(48951, 395, 0, 0, 70, 0, 0),
(48932, 395, 0, 0, 70, 0, 0),
(51088, 395, 0, 0, 70, 0, 0),
(49045, 395, 0, 0, 70, 0, 0);

DELETE FROM `creature` WHERE `id` IN (49045, 44819, 43612, 44577);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(NULL, 43612, 755, 3, 1, 0, 0, -11019.1, -1259.95, 13.5349, 4.87964, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(NULL, 44577, 755, 3, 1, 0, 0, -10863.7, -1365.82, 15.3554, 3.29315, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(NULL, 44819, 755, 3, 1, 0, 0, -10948.2, -1417.47, 35.1853, 4.78158, 86400, 10, 0, 1, 0, 1, 0, 0, 0),
(NULL, 49045, 755, 2, 1, 0, 0, -11071.3, -1663.87, 0.74509, 0.662058, 86400, 0, 0, 1, 0, 0, 0, 0, 0);