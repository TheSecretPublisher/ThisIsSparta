-- Quest 11917 Striking Back (Frostwave Lieutenant)
DELETE FROM `creature_template` WHERE (`entry`='390000');
INSERT INTO `creature_template` VALUES (390000, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Bunny Frostwave Lieutenant', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='390000');
INSERT INTO `creature_template_addon` VALUES (390000, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='390000');
INSERT INTO `creature` VALUES (NULL, 390000, 1, 1, 1, 0, 0, 4204.88, 1146.08, 11.2618, 5.32655, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 390000, 1, 1, 1, 0, 0, 4243.76, 1143.35, 12.7648, 5.44828, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 390000, 1, 1, 1, 0, 0, 4232.35, 1164.84, 10.719, 1.84331, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (390000) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (390000, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 12, 26116, 6, 60, 0, 0, 0, 8, 0, 0, 0, 4224.01, 1152.65, 7.84357, 3.37, 'summon Frostwave Lieutenant');

UPDATE `gameobject_template` SET `type`='22', `data0`='62464', `data1`='10000000', `data2`='0', `data3`='0' WHERE (`entry`='188049');
UPDATE `gameobject_template` SET `type`='22', `data0`='62464', `data1`='10000000', `data2`='0', `data3`='0' WHERE (`entry`='188138');
UPDATE `gameobject_template` SET `type`='22', `data0`='62464', `data1`='10000000', `data2`='0', `data3`='0' WHERE (`entry`='188137');

UPDATE `creature_template` SET `minlevel`='22', `maxlevel`='22', `faction_A`='14', `faction_H`='14', `mindmg`='26', `maxdmg`='26' WHERE (`entry`='26116');

-- Quest 11947 Striking Back (Hailstone Lieutenant)
DELETE FROM `creature_template` WHERE (`entry`='390001');
INSERT INTO `creature_template` VALUES (390001, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Bunny Hailstone Lieutenant', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='390001');
INSERT INTO `creature_template_addon` VALUES (390001, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='390001');
INSERT INTO `creature` VALUES (NULL, 390001, 1, 1, 1, 0, 0, -452.617, 2419.99, 101.202, 0.931484, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id`='26178');

DELETE FROM smart_scripts WHERE entryorguid IN (390001) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (390001, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 12, 26178, 6, 60, 0, 0, 0, 8, 0, 0, 0, -413.607, 2425.78, 65.7533, 4.50994, 'summon Hailstone Lieutenant');

UPDATE `creature_template` SET `minlevel`='22', `maxlevel`='22', `faction_A`='14', `faction_H`='14', `mindmg`='26', `maxdmg`='26' WHERE (`entry`='26178');

DELETE FROM `gameobject` WHERE `guid` IN (9000000, 9000001, 9000002);
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('9000000','188048','1','1','1','-453.316','2422.22','97.3285','1.13961','0','0','0.539469','0.842005','300','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('9000001','188049','1','1','1','-453.02','2422.08','99.4522','5.77739','0','0','0.25021','-0.968192','300','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('9000002','188050','1','1','1','-453.02','2422.08','99.4522','5.77739','0','0','0.25021','-0.968192','300','0','1');

DELETE FROM `game_event_gameobject` WHERE `guid` IN (9000000, 9000001, 9000002);
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES ('1', '9000000');
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES ('1', '9000001');
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES ('1', '9000002');

-- Quest 11948 Striking Back (Chillwind Lieutenant)
DELETE FROM `creature_template` WHERE (`entry`='390002');
INSERT INTO `creature_template` VALUES (390002, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Bunny Chillwind Lieutenant', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='390002');
INSERT INTO `creature_template_addon` VALUES (390002, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='390002');
INSERT INTO `creature` VALUES (NULL, 390002, 0, 1, 1, 0, 0, -12173.6, 912.175, 6.22714, 3.78286, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id`='26204');

DELETE FROM smart_scripts WHERE entryorguid IN (390002) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (390002, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 12, 26204, 6, 60, 0, 0, 0, 8, 0, 0, 0, -12168.3, 858.332, 20.0485, 1.39917, 'summon Chillwind Lieutenant');

UPDATE `creature_template` SET `minlevel`='22', `maxlevel`='22', `faction_A`='14', `faction_H`='14', `mindmg`='26', `maxdmg`='26' WHERE (`entry`='26204');

DELETE FROM `gameobject` WHERE `guid` IN (9000003, 9000004, 9000005);
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('9000003','188048','0','1','1','-12175.2','910.96','2.123','6.13511','0','0','0.0739682','-0.997261','300','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('9000004','188049','0','1','1','-12175.2','910.96','4.24881','6.13904','0','0','0.07201','-0.997404','300','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('9000005','188050','0','1','1','-12175.2','910.96','4.24881','6.13904','0','0','0.07201','-0.997404','300','0','1');

DELETE FROM `game_event_gameobject` WHERE `guid` IN (9000003, 9000004, 9000005);
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES ('1', '9000003');
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES ('1', '9000004');
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES ('1', '9000005');

-- Quest 11948 Striking Back (Frigid Lieutenant)
DELETE FROM `creature_template` WHERE (`entry`='390003');
INSERT INTO `creature_template` VALUES (390003, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Bunny Frigid Lieutenant', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='390003');
INSERT INTO `creature_template_addon` VALUES (390003, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='390003');
INSERT INTO `creature` VALUES (NULL, 390003, 0, 1, 1, 0, 0, -6642.99, -646.843, 246.079, 5.0072, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id`='26214');

DELETE FROM smart_scripts WHERE entryorguid IN (390003) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (390003, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 12, 26214, 6, 60, 0, 0, 0, 8, 0, 0, 0, -6619.48, -654.493, 233.754, 4.42208, 'summon Frigid Lieutenant');

UPDATE `creature_template` SET `minlevel`='22', `maxlevel`='22', `faction_A`='14', `faction_H`='14', `mindmg`='26', `maxdmg`='26' WHERE (`entry`='26214');

DELETE FROM `gameobject` WHERE `guid` IN (9000006, 9000007, 9000008);
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('9000006','188048','0','1','1','-6642.09','-648.408','241.975','1.17053','0','0','0.552422','0.833565','300','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('9000007','188049','0','1','1','-6641.85','-648.489','244.098','6.00859','0','0','0.136867','-0.990589','300','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('9000008','188050','0','1','1','-6641.85','-648.489','244.098','6.00859','0','0','0.136867','-0.990589','300','0','1');

DELETE FROM `game_event_gameobject` WHERE `guid` IN (9000006, 9000007, 9000008);
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES ('1', '9000006');
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES ('1', '9000007');
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES ('1', '9000008');

-- Quest 11953 Striking Back (Glacial Lieutenant)
DELETE FROM `creature_template` WHERE (`entry`='390004');
INSERT INTO `creature_template` VALUES (390004, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Bunny Glacial Lieutenant', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='390004');
INSERT INTO `creature_template_addon` VALUES (390004, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='390004');
INSERT INTO `creature` VALUES (NULL, 390004, 1, 1, 1, 0, 0, -6414.09, 236.383, 12.5228, 4.24912, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id`='26215');

DELETE FROM smart_scripts WHERE entryorguid IN (390004) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (390004, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 12, 26215, 6, 60, 0, 0, 0, 8, 0, 0, 0, -6414, 206.066, 3.05225, 1.35099, 'summon Glacial Lieutenant');

UPDATE `creature_template` SET `minlevel`='22', `maxlevel`='22', `faction_A`='14', `faction_H`='14', `mindmg`='26', `maxdmg`='26' WHERE (`entry`='26215');

DELETE FROM `gameobject` WHERE `guid` IN (9000009, 9000010, 9000011);
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('9000009','188048','1','1','1','-6416.03','237.575','7.75651','4.79891','0','0','0.675866','-0.737024','300','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('9000010','188049','1','1','1','-6416.03','237.575','9.88136','4.79891','0','0','0.675866','-0.737024','300','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('9000011','188050','1','1','1','-6416.03','237.575','9.88136','4.79891','0','0','0.675866','-0.737024','300','0','1');

DELETE FROM `game_event_gameobject` WHERE `guid` IN (9000009, 9000010, 9000011);
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES ('1', '9000009');
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES ('1', '9000010');
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES ('1', '9000011');

-- Quest 11954 Striking Back (Glacial Templar)
DELETE FROM `creature_template` WHERE (`entry`='390005');
INSERT INTO `creature_template` VALUES (390005, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Bunny Glacial Templar', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='390005');
INSERT INTO `creature_template_addon` VALUES (390005, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='390005');
INSERT INTO `creature` VALUES (NULL, 390005, 530, 1, 1, 0, 0, -164.575, 1102.35, 45.0742, 0.141379, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id`='26216');

DELETE FROM smart_scripts WHERE entryorguid IN (390005) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (390005, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 12, 26216, 6, 60, 0, 0, 0, 8, 0, 0, 0, -133.899, 1136.53, 41.4863, 3.36151, 'summon Glacial Templar');

DELETE FROM `gameobject` WHERE `guid` IN (9000012, 9000013, 9000014);
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('9000012','188048','530','1','1','-163.954','1100.72','41.7961','1.55903','0','0','0.702935','0.711254','300','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('9000013','188049','530','1','1','-163.954','1100.72','43.9202','1.55903','0','0','0.702935','0.711254','300','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('9000014','188050','530','1','1','-163.954','1100.72','43.9202','1.55903','0','0','0.702935','0.711254','300','0','1');

DELETE FROM `game_event_gameobject` WHERE `guid` IN (9000012, 9000013, 9000014);
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES ('1', '9000012');
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES ('1', '9000013');
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES ('1', '9000014');

-- NPC QUEST GIVER
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE (`entry`='26221');
DELETE FROM `creature` WHERE `guid` IN ('1001010');
INSERT INTO `creature` VALUES (1001010, 26221, 0, 1, 3969, 0, 1, -8829.94, 868.132, 98.7883, 4.67871, 300, 0, 0, 8982, 3155, 0, 0, 0, 0);
DELETE FROM `game_event_creature` WHERE (`guid`='1001010');
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES ('1', '1001010');