-- Fix same little issues
UPDATE `creature_template` SET `unit_flags`=0 WHERE  `entry`=25760;
UPDATE `gameobject_template` SET `faction`=35, `flags`=0 WHERE  `entry`=188364;
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE  `Id`=12011;
UPDATE `creature_template` SET `unit_flags`=0 WHERE  `entry`=26510;

-- Quest 12032 Conversing With the Depths
DELETE FROM `creature_template` WHERE (`entry`='391760');
INSERT INTO `creature_template` VALUES (391760, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'pearl bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='391760');
INSERT INTO `creature_template_addon` VALUES (391760, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='391760');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (NULL, 391760, 571, 1, 1, 0, 0, 2454.76, 1718.83, 60.5786, 3.60232, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (391760) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (391760, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 12, 26648, 6, 60, 0, 0, 0, 8, 0, 0, 0, 2409.58, 1702.34, -0.58, 0.822, 'Summon');

UPDATE `quest_template` SET `SpecialFlags`=0, `RequiredNpcOrGo1`=-188422, `RequiredNpcOrGoCount1`=1 WHERE  `Id`=12032;
UPDATE `gameobject_template` SET `data10`=62464 WHERE  `entry`=188422;

-- Quest 11472 The Way to His Heart...
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE  `Id`=11472;

DELETE FROM `gameobject` WHERE  `id`=186949;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 186949, 571, 1, 1, 198.507, -3239.97, -0.138812, 2.51982, 0, 0, 0.952064, 0.3059, 300, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 186949, 571, 1, 1, 215.227, -3290.73, 0.00114339, 0.701626, 0, 0, 0.343661, 0.939094, 300, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 186949, 571, 1, 1, 195.891, -3301.82, 0.00127182, 4.99776, 0, 0, 0.599371, -0.800471, 300, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 186949, 571, 1, 1, 183.921, -3285.13, 0.00127182, 1.02756, 0, 0, 0.491472, 0.870893, 300, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 186949, 571, 1, 1, 159.105, -3321.48, 0.00430524, 0.0575909, 0, 0, 0.0287915, 0.999585, 300, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 186949, 571, 1, 1, 130.092, -3323.84, 0.00114463, 0.0654444, 0, 0, 0.0327164, 0.999465, 300, 0, 1);

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='21014');
INSERT INTO `spell_linked_spell` VALUES (21014, 110440, 0, 'spell add item');
DELETE FROM `spell_scripts` WHERE  `id`=110440;
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`, `datalong2`) VALUES (110440, 17, 34127, 1);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='24786');
DELETE FROM smart_scripts WHERE entryorguid IN (24786) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (24786, 0, 1, 0, 8, 0, 100, 0, 44454, 0, 0, 0, 15, 11472, 0, 0, 0, 0, 0, 21, 22, 0, 0, 0, 0, 0, 0,'credit');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='24797');
DELETE FROM smart_scripts WHERE entryorguid IN (24797) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (24797, 0, 1, 0, 8, 0, 100, 0, 44454, 0, 0, 0, 15, 11472, 0, 0, 0, 0, 0, 21, 22, 0, 0, 0, 0, 0, 0,'credit');



