-- DK chain 
-- Airfive

-- In service of the lich king
DELETE FROM `quest_poi` WHERE (`questId`='12953') AND (`id`='1');
DELETE FROM `quest_poi_points` WHERE (`questId`='12953') AND (`id`='1') AND (`idx`='0');

-- The Emblazoned Runeblade
-- Update the runeforge object with a valid display ID
UPDATE gameobject_template SET displayid = 299 WHERE entry = 190557;

-- Creates the invisible runeforge objects in both ebon hold (map 609 and 0)
SET @GUID := 600700;
DELETE FROM gameobject WHERE guid >= @GUID AND guid <= @GUID+14;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(@GUID, 190557, 609, 1, 1, 2493.37, -5642.43, 420.649, 2.16421, 0, 0, 0.882948, 0.469471, 120, 0, 1),
(@GUID+1, 190557, 609, 1, 1, 2509.31, -5560.39, 420.65, -2.55402, 0, 0, -0.957154, 0.289578, 120, 0, 1),
(@GUID+2, 190557, 609, 1, 1, 2427.28, -5544.45, 420.65, -0.983229, 0, 0, -0.47205, 0.881572, 120, 0, 1),
(@GUID+3, 190557, 609, 1, 192, 2426.39, -5543.21, 420.64, -0.99, 0, 0, 0, 1, 120, 0, 1),
(@GUID+4, 190557, 609, 1, 35, 2426.39, -5543.21, 420.64, -0.99, 0, 0, 0, 1, 120, 0, 1),
(@GUID+5, 190557, 609, 1, 192, 2493.57, -5642.81, 420.64, 2.15, 0, 0, 0, 1, 120, 0, 1),
(@GUID+6, 190557, 609, 1, 4, 2493.57, -5642.81, 420.64, 2.15, 0, 0, 0, 1, 120, 0, 1),
(@GUID+7, 190557, 609, 1, 192, 2509.47, -5560.17, 420.64, -2.55, 0, 0, 0, 1, 120, 0, 1),
(@GUID+8, 190557, 609, 1, 35, 2493.57, -5642.81, 420.64, 2.15, 0, 0, 0, 1, 120, 0, 1),
(@GUID+9, 190557, 609, 1, 4, 2509.47, -5560.17, 420.64, -2.55, 0, 0, 0, 1, 120, 0, 1),
(@GUID+10, 190557, 609, 1, 35, 2509.47, -5560.17, 420.64, -2.55, 0, 0, 0, 1, 120, 0, 1),
(@GUID+11, 190557, 609, 1, 4, 2426.39, -5543.21, 420.64, -0.99, 0, 0, 0, 1, 120, 0, 1),
(@GUID+12, 190557, 0, 1, 1, 2427.28, -5544.45, 420.65, -0.983229, 0, 0, -0.47205, 0.881572, 120, 0, 1),
(@GUID+13, 190557, 0, 1, 1, 2509.31, -5560.39, 420.65, -2.55402, 0, 0, -0.957154, 0.289578, 120, 0, 1),
(@GUID+14, 190557, 0, 1, 1, 2493.37, -5642.43, 420.649, 2.16421, 0, 0, 0.882948, 0.469471, 120, 0, 1);

-- The Eye of Acherus
UPDATE `creature_involvedrelation` SET `id`='25462' WHERE (`id`='28357') AND (`quest`='12636');

-- Gothik the harvester
UPDATE `creature_questrelation` SET `id`='28377' WHERE `quest`='12697';

-- Massacre at light point 
-- npc da killare 28849
-- quantità 100
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGoCount1`='0' WHERE (`Id`='12701');

-- The will of the lich king
UPDATE `creature` SET `position_z`='160.981' WHERE (`guid`='130344');

-- Abandoned Mail
DELETE FROM `gameobject_questrelation` where quest=12711;
DELETE FROM `gameobject_involvedrelation` where quest=12711;


-- How To Win Friends And Influence Enemies
UPDATE `quest_template` SET `RequiredSourceItemId4`='0', `RequiredSourceItemCount4`='0' WHERE (`Id`='12720');


-- Bloody breakout
UPDATE `quest_template` SET `SourceItemId`='39510', `SourceItemCount`='1' WHERE (`Id`='12727');


-- the scarlet apocalypse & an end to all things
DELETE FROM `creature_involvedrelation` WHERE `quest`=12779;
DELETE FROM `creature_questrelation` WHERE `quest`=12779;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('29110', '12779');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('29110', '12779');

-- The light of dawn http://www.wowhead.com/quest=12801
-- NON VA LO SCRIPT


-- Taking back acherus. quando si accetta deve mandare in phase 384, non so se lo si è già dalla quest prima.
DELETE FROM `creature` WHERE `phaseMask`=384 AND `id`IN(31094, 31084, 31088, 31089);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(31094, 0, 1, 384, 0, 363, 2422.44, -5624.99, 375.382, 5.42797, 360, 0, 0, 15955, 11445, 0, 0, 0, 0),
(31088, 0, 1, 384, 0, 1641, 2377.61, -5654.39, 382.523, 0.610865, 360, 0, 0, 2489500, 0, 0, 0, 0, 0),
(31089, 0, 1, 384, 0, 1641, 2373.14, -5647.37, 382.523, 0.680678, 360, 0, 0, 2489500, 0, 0, 0, 0, 0),
(31094, 0, 1, 384, 0, 363, 2409.92, -5624.33, 376.99, 0.575959, 360, 0, 0, 15955, 11445, 0, 0, 0, 0),
(31094, 0, 1, 384, 0, 363, 2425.26, -5542.57, 376.989, 2.58309, 360, 0, 0, 15955, 11445, 0, 0, 0, 0),
(31094, 0, 1, 384, 0, 363, 2435.77, -5581.91, 366.903, 5.28835, 360, 0, 0, 15955, 11445, 0, 0, 0, 0),
(31094, 0, 1, 384, 0, 363, 2474.94, -5618.47, 366.903, 4.4855, 360, 0, 0, 15955, 11445, 0, 0, 0, 0),
(31094, 0, 1, 384, 0, 363, 2394.61, -5628.72, 377.12, 1.41372, 360, 0, 0, 15955, 11445, 0, 0, 0, 0),
(31094, 0, 1, 384, 0, 363, 2403.64, -5642.05, 377.12, 4.93928, 360, 0, 0, 15955, 11445, 0, 0, 0, 0),
(31094, 0, 1, 384, 0, 363, 2483.05, -5577.48, 366.903, 1.15192, 360, 0, 0, 15955, 11445, 0, 0, 0, 0),
(31094, 0, 1, 384, 0, 363, 2441.8, -5612.99, 366.903, 3.82227, 360, 0, 0, 15955, 11445, 0, 0, 0, 0),
(31084, 0, 1, 384, 0, 365, 2375.38, -5650.72, 382.523, 0.575959, 360, 0, 0, 11156000, 2129000, 0, 0, 0, 0);


-- Battle for ebon Hold. quando si sale si passa in phase 256, quando si torna giù in phase 384.
DELETE FROM `creature` WHERE `phaseMask`=256 AND `id`IN(31094, 31095, 31096, 31098, 31099);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31094, 0, 1, 256, 26001, 363, 2411.52, -5620.9, 420.657, 0.593412, 360, 0, 0, 15955, 11445, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31094, 0, 1, 256, 26000, 363, 2415.66, -5626.65, 420.65, 0.610865, 360, 0, 0, 15955, 11445, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31094, 0, 1, 256, 0, 363, 2416.74, -5629.35, 420.649, 0.628319, 360, 0, 0, 15955, 11445, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31094, 0, 1, 256, 0, 363, 2412.25, -5624.19, 420.657, 0.639379, 360, 0, 0, 15955, 11445, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31094, 0, 1, 256, 0, 363, 2471.42, -5600.35, 414.479, 0.191986, 360, 0, 0, 15955, 11445, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31094, 0, 1, 256, 0, 363, 2462.85, -5605.92, 414.439, 5.72468, 360, 0, 0, 15955, 11445, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31094, 0, 1, 256, 0, 363, 2449.49, -5593.03, 414.255, 2.94961, 360, 0, 0, 15955, 11445, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31094, 0, 1, 256, 0, 363, 2449.59, -5586.74, 414.44, 5.58505, 360, 0, 0, 15955, 11445, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31094, 0, 1, 256, 0, 363, 2469.21, -5586.86, 414.257, 2.07694, 360, 0, 0, 15955, 11445, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31095, 0, 1, 256, 0, 0, 2445.55, -5629.95, 432.952, 5.86248, 360, 5, 0, 24852, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31095, 0, 1, 256, 0, 0, 2446.4, -5580.25, 427.061, 5.02554, 360, 5, 0, 24852, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31095, 0, 1, 256, 0, 0, 2493.88, -5620.74, 432.943, 0.287214, 360, 5, 0, 24852, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31095, 0, 1, 256, 0, 0, 2434.96, -5598.95, 430.977, 2.97419, 360, 5, 0, 24852, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31096, 0, 1, 256, 0, 0, 2494.64, -5557.88, 420.727, 4.11898, 360, 0, 0, 11952, 24340, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31096, 0, 1, 256, 0, 0, 2505.21, -5575.11, 420.727, 3.26377, 360, 0, 0, 11952, 24340, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31096, 0, 1, 256, 0, 0, 2478.43, -5638.82, 420.727, 1.8326, 360, 0, 0, 11952, 24340, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31096, 0, 1, 256, 0, 0, 2441.48, -5548.26, 420.727, 4.72984, 360, 0, 0, 11952, 24340, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31096, 0, 1, 256, 0, 0, 2425.18, -5559.38, 420.727, 5.65487, 360, 0, 0, 11952, 24340, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2448.52, -5652.33, 420.73, 5.02655, 360, 0, 0, 11967, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2473.43, -5631.25, 420.254, 1.16937, 360, 0, 0, 11967, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2461.84, -5640.67, 420.727, 3.9619, 360, 0, 0, 11967, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2457, -5623.45, 420.206, 4.34587, 360, 0, 0, 11967, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2444.79, -5630.57, 420.667, 3.49066, 360, 0, 0, 11967, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2431.16, -5604.53, 420.26, 4.60767, 360, 0, 0, 11967, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2473.49, -5530.56, 420.649, 0.697148, 360, 5, 0, 11967, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2490.78, -5560.57, 420.646, 4.34269, 360, 5, 0, 11967, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2452.3, -5650.22, 420.646, 0.507009, 360, 5, 0, 11967, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2484.53, -5579.09, 420.025, 1.68911, 360, 5, 0, 11967, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2432.63, -5603.91, 420.195, 2.84409, 360, 5, 0, 11967, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2445.05, -5626.67, 420.417, 4.93998, 360, 5, 0, 11967, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2470.23, -5566.85, 420.065, 3.7499, 360, 5, 0, 11967, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2460.01, -5545.7, 420.645, 1.74425, 360, 5, 0, 11967, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2525.5, -5605.37, 420.65, 5.9001, 360, 5, 0, 11967, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2488.49, -5599.79, 420.136, 3.26377, 360, 0, 0, 11967, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2437.3, -5614.33, 420.252, 3.21141, 360, 0, 0, 11967, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2435.33, -5613.58, 420.239, 0.018018, 360, 5, 0, 11967, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2434.05, -5558.52, 420.727, 3.71755, 360, 0, 0, 11967, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2450.21, -5552.55, 420.644, 4.92496, 360, 5, 0, 11967, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31099, 0, 1, 256, 0, 0, 2457.06, -5592.09, 414.122, 4.48475, 360, 5, 0, 276350, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2504.14, -5594.19, 420.644, 1.5583, 360, 5, 0, 11967, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2489.36, -5626.69, 420.727, 1.22173, 360, 0, 0, 11967, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2457.13, -5622.21, 420.06, 3.48307, 360, 5, 0, 11967, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2431.8, -5579.99, 420.19, 6.08151, 360, 5, 0, 11967, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2445, -5570.61, 416.859, 0.680678, 360, 0, 0, 11967, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2463.36, -5641.22, 420.645, 5.93853, 360, 5, 0, 11967, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2501.68, -5618.51, 420.727, 3.7001, 360, 0, 0, 11967, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2477.54, -5618.83, 417.632, 3.63029, 360, 0, 0, 11967, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2418.26, -5598.52, 420.727, 2.46655, 360, 5, 0, 11967, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2403.74, -5581.18, 420.73, 1.53589, 360, 0, 0, 11967, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2499.96, -5576.15, 420.727, 5.044, 360, 0, 0, 11967, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2416.66, -5575.52, 420.727, 1.98968, 360, 0, 0, 11967, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (31098, 0, 1, 256, 0, 1058, 2424.96, -5589.09, 420.447, 6.13133, 360, 5, 0, 11967, 0, 1, 0, 0, 0);