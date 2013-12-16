-- Quest 25163 Who Did This? CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25174' WHERE (`Id`='25163');
UPDATE `quest_template` SET `NextQuestIdChain`='25182' WHERE (`Id`='25174');
UPDATE `quest_template` SET `PrevQuestId`='25163' WHERE (`Id`='25174');
UPDATE `quest_template` SET `PrevQuestId`='25174' WHERE (`Id`='25182');

-- Quest 25183 ...And Bury the Rest CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25185' WHERE (`Id`='25183');
UPDATE `quest_template` SET `PrevQuestId`='25183' WHERE (`Id`='25185');
DELETE FROM `spell_scripts` WHERE (`datalong`='39315');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('70365', '8', '39315');
DELETE FROM `gameobject_template` WHERE (`entry`='202596');
INSERT INTO `gameobject_template` VALUES (202596, 10, 5791, 'Frazzlecraz Explosives', '', 'Arming', '', 35, 32, 1, 0, 0, 0, 0, 0, 0, 1, 25183, 0, 0, 0, 0, 0, 0, 0, 0, 70365, 0, 202596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

-- Quest 25163 Who Did This?
DELETE FROM `creature` WHERE (`id`='39220');
INSERT INTO `creature` VALUES (null, 39220, 1, 1, 1, 0, 0, -4101.23, -2320.64, 126.031, 1.3347, 300, 0, 0, 44, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='38152');
INSERT INTO `creature` VALUES (null, 38152, 1, 1, 1, 0, 0, -4099.56, -2369.73, 126.131, 5.40728, 300, 0, 0, 50, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `unit_flags2`='1' WHERE (`entry`='38152');

-- Quest 24824 The Disturbed Earth
DELETE FROM `creature_loot_template` WHERE (`item`='50385');
INSERT INTO `creature_loot_template` VALUES (37553, 50385, -41, 1, 0, 1, 1);
UPDATE `creature_template` SET `lootid`='37553' WHERE (`entry`='37553');

-- Quest 24604 Concern for Mankrik
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='24604');

-- Quest 24633 Mahka's Plea
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='24633');

-- Quest 24606 Blood of the Barrens CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='24653' WHERE (`Id`='24606');
UPDATE `quest_template` SET `PrevQuestId`='24606' WHERE (`Id`='24653');

-- Quest 24606 Blood of the Barrens
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='14' WHERE (`entry`='37560') AND (`item`='49932');

-- Quest 25084 A Growing Threat CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25085' WHERE (`Id`='25084');
UPDATE `quest_template` SET `PrevQuestId`='25084' WHERE (`Id`='25085');

-- Quest 25120 Marley's Final Flight CHAIN TIMELINE FIX REMOVED ANIMATION MISSING
UPDATE `quest_template` SET `NextQuestIdChain`='25151' WHERE (`Id`='25120');
UPDATE `quest_template` SET `NextQuestIdChain`='25175' WHERE (`Id`='25151');
UPDATE `quest_template` SET `PrevQuestId`='25120' WHERE (`Id`='25151');
UPDATE `quest_template` SET `PrevQuestId`='25151' WHERE (`Id`='25175');

DELETE FROM `creature_questrelation` WHERE (`id`='39155') AND (`quest`='25120');

-- Quest 25153 Bael'dun Rescue REMOVED
DELETE FROM `creature_questrelation` WHERE (`id`='39218') AND (`quest`='25153');

-- Quest 25075 Pick-a-Part CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25079' WHERE (`Id`='25075');
UPDATE `quest_template` SET `NextQuestIdChain`='25080' WHERE (`Id`='25079');
UPDATE `quest_template` SET `PrevQuestId`='25075' WHERE (`Id`='25079');
UPDATE `quest_template` SET `PrevQuestId`='25079' WHERE (`Id`='25080');

-- Quest 25079 Powder Play
DELETE FROM `creature_loot_template` WHERE (`item`='52290');
INSERT INTO `creature_loot_template` VALUES (37925, 52290, -56, 1, 0, 1, 1);
UPDATE `creature_template` SET `lootid`='37925' WHERE (`entry`='37925');

-- Quest 25080 Batteries Not Yet Included
DELETE FROM `creature_loot_template` WHERE (`item`='52305');
INSERT INTO `creature_loot_template` VALUES (37208, 52305, -20, 1, 0, 1, 1);
UPDATE `creature_template` SET `lootid`='37208' WHERE (`entry`='37208');

-- Quest 26983 Just Close Enough REMOVED INACCESSIBLE AREA SCARLET MONASTERY INSTANCE
DELETE FROM `creature_questrelation` WHERE (`id`='39084') AND (`quest`='26983');

-- Quest 25045 A Line in the Dirt
UPDATE `gameobject_template` SET `data1`='25045' WHERE (`entry`='201743');
UPDATE `gameobject_template` SET `data1`='25045' WHERE (`entry`='2017810');
DELETE FROM `gameobject_template` WHERE (`entry`='2017810');
INSERT INTO `gameobject_template` VALUES (2017810, 10, 6211, 'Field Banner', '', 'Capturing', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 93, 25045, 0, 0, 0, 1, 0, 0, 0, 0, 70365, 0, 0, 0, 37190, 0, 0, 0, 0, 0, 0, 0, 11724, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
DELETE FROM `spell_scripts` WHERE (`datalong`='39029');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('70365', '8', '39029'); 
UPDATE `gameobject_template` SET `data10`='70365' WHERE (`entry`='201743');
DELETE FROM `spell_scripts` WHERE (`datalong`='39030');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('70506', '8', '39030'); 
UPDATE `gameobject_template` SET `data10`='70506' WHERE (`entry`='2017810');
DELETE FROM `gameobject` WHERE (`id`='2017810');
INSERT INTO `gameobject` VALUES (null, 2017810, 1, 1, 1, -2130.45, -2081.87, 99.2742, 0.991242, 0, 0, 0.475578, 0.879673, 300, 0, 1);

-- Quest 25057 Clap 'Em In Irons
DELETE FROM `item_template` WHERE (`entry`='522710');
INSERT INTO `item_template` (`entry`, `class`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `spellid_1`, `description`, `Material`) VALUES ('522710', '12', 'Northwatch Manacles', '65423', '1', '64', '8192', '78967', 'You are the law.', '7');
DELETE FROM `spell_scripts` WHERE (`datalong`='39050');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('78967', '8', '39050');
UPDATE `quest_template` SET `SourceItemId`='522710' WHERE (`Id`='25057');

-- Quest 25041 Lion's Pride CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25042' WHERE (`Id`='25041');
UPDATE `quest_template` SET `PrevQuestId`='25041' WHERE (`Id`='25042');

-- Quest 25042 Marching On Our Stomachs
DELETE FROM `creature_loot_template` WHERE (`item`='52198');
INSERT INTO `creature_loot_template` VALUES (3240, 52198, -44, 1, 0, 1, 1);
UPDATE `creature_template` SET `lootid`='3240' WHERE (`entry`='3240');

-- Quest 24807 Winnoa Pineforest
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='24807');

-- Quest 24565 Biological Intervention CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='24574' WHERE (`Id`='24565');
UPDATE `quest_template` SET `NextQuestIdChain`='24601' WHERE (`Id`='24574');
UPDATE `quest_template` SET `PrevQuestId`='24565' WHERE (`Id`='24574');
UPDATE `quest_template` SET `PrevQuestId`='24574' WHERE (`Id`='24601');

-- Quest 24571 Lashvine Seeds
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-37' WHERE (`entry`='37093') AND (`item`='49876');

-- Quest 25028 Trouble From the Ground Up REMOVED BUG CORE
DELETE FROM `creature_questrelation` WHERE (`id`='38876') AND (`quest`='25028');

-- Quest 25015 Make 'em Squeal
DELETE FROM `creature_loot_template` WHERE (`item`='52046');
INSERT INTO `creature_loot_template` VALUES (38884, 52046, -44, 1, 0, 1, 1);
UPDATE `creature_template` SET `lootid`='38884' WHERE (`entry`='38884');

-- Quest 25022 A Failure to Communicate
DELETE FROM `creature` WHERE (`id`='38872');
INSERT INTO `creature` VALUES (null, 38872, 1, 1, 1, 0, 0, -2101.94, -2581.25, 93.3774, 3.82786, 300, 0, 0, 50, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='38872');
UPDATE `creature_template` SET `gossip_menu_id`='38872' WHERE (`entry`='38872');

delete from gossip_menu_option where menu_id = 38872;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(38872,0," Help! The ropes... please...",1,1);

DELETE FROM smart_scripts WHERE entryorguid IN (38872) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(38872,0,1,2,62,0,100,1,38872,0,0,0,33,38872,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(38872,0,2,5,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(38872,0,5,0,61,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase");
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='38872');

-- Quest 25002 Scavenged
DELETE FROM `creature` WHERE (`id`='38878');
INSERT INTO `creature` VALUES (null, 38878, 1, 1, 1, 0, 38878, -1873.28, -3228.09, 82.7071, 2.52458, 300, 0, 0, 905, 0, 0, 0, 0, 0);
DELETE FROM `gameobject` WHERE (`id`='202405');
INSERT INTO `gameobject` VALUES (181310, 202405, 1, 1, 1, -1955.38, -3195.7, 93.4611, 0, 0, 0, 0, 1, 180, 100, 1);
INSERT INTO `gameobject` VALUES (181405, 202405, 1, 1, 1, -1953.93, -3160.47, 92.6202, 2.47837, 0, 0, 0, 1, 180, 100, 1);
INSERT INTO `gameobject` VALUES (181410, 202405, 1, 1, 1, -1972.01, -3193.42, 92.7545, 0, 0, 0, 0, 1, 180, 100, 1);
INSERT INTO `gameobject` VALUES (181411, 202405, 1, 1, 1, -1931.73, -3194.23, 92.6746, 0, 0, 0, 0, 1, 180, 100, 1);
INSERT INTO `gameobject` VALUES (181526, 202405, 1, 1, 1, -1946.32, -3176.86, 92.8282, 0, 0, 0, 0, 1, 180, 100, 1);

-- Quest 25000 Teegan's People
DELETE FROM `creature` WHERE (`id`='37083');
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -1849.58, -3190.74, 83.4916, 2.90894, 600, 10, 0, 905, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -1873.29, -2754.33, 91.2302, 1.47418, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -1849.41, -3225.1, 82.9282, 0.523044, 600, 10, 0, 905, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -573.921, -1680.61, 77.3788, 3.26763, 600, 10, 0, 905, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -1844.79, -2778.81, 87.4623, 0.865159, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -936.359, -1645.87, 90.0785, 1.60975, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -1925.06, -2924.11, 91.6603, 2.37448, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -1845.03, -3043.62, 91.3261, 4.97299, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -1841.05, -3371.64, 79.9083, 1.22303, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -1900.05, -3162.04, 91.0365, 4.70663, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -1387.77, -1783.31, 92.5863, 2.50317, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -1140.76, -1866.57, 80.5617, 1.42048, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -952.127, -1719.48, 88.2737, 1.25336, 600, 10, 0, 905, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -1909.41, -2880.98, 90.2906, 0.829568, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -1546.88, -1721.65, 92.1323, 3.55359, 600, 10, 0, 905, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -793.594, -1786.15, 77.7548, 3.96338, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -1853.68, -2977.94, 87.5492, 2.84674, 600, 10, 0, 905, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -982.76, -1647.8, 91.1986, 0.919365, 600, 10, 0, 905, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -1970.99, -3177.75, 91.7909, 2.39028, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -981.936, -1758.72, 85.0528, 4.46179, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -750.848, -1756.07, 72.8042, 4.38392, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -1854.71, -2947.93, 86.3869, 6.24412, 600, 10, 0, 905, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -895.698, -1669.86, 85.1371, 2.46014, 600, 10, 0, 905, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -1814.84, -2843.78, 88.1593, 1.73489, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -1831.26, -3319.59, 114.208, 0.660661, 600, 10, 0, 905, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -890.426, -1772.59, 87.788, 1.28684, 600, 10, 0, 905, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -1985.9, -3164.04, 92.1588, 3.98745, 600, 10, 0, 955, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -2013.28, -3180.86, 91.7933, 6.24154, 600, 10, 0, 955, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -2037.78, -3212.29, 91.6512, 0.126707, 600,10, 0, 955, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -2036.78, -3252.64, 91.7653, 4.9569, 600,10, 0, 955, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 37083, 1, 1, 1, 2570, 37083, -2013.66, -3232.99, 92.3163, 2.42791, 600, 10, 0, 955, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='37084');
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -980.215, -1613.2, 90.6155, 5.21853, 600, 10, 0, 1006, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -1969.11, -2951.81, 91.6723, 0.828183, 600, 10, 0, 1006, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -620.79, -1681.74, 74.4136, 4.1656, 600, 10, 0, 1006, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -984.398, -1709.5, 88.8745, 0.610865, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -1094.44, -1735.65, 87.2053, 1.52554, 600, 10, 0, 1006, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -1150.59, -1782.85, 87.6412, 3.80895, 600, 10, 0, 1006, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -857.452, -1774.62, 82.9026, 1.76067, 600, 10, 0, 1006, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -1919.72, -3171.51, 98.7429, 5.58505, 600, 10, 0, 1006, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -965.243, -1665.68, 91.3042, 2.11185, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -1967.54, -3153.88, 92.6628, 3.25253, 600, 10, 0, 1006, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -1521.8, -1685.04, 91.9081, 4.83215, 600, 10, 0, 1006, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -1833.26, -2742.96, 89.944, 3.64932, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -995.887, -1687.67, 89.9739, 0.610865, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -1184.29, -1774.08, 89.515, 4.13147, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -1940.39, -2858.97, 91.3865, 1.33133, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -1922.52, -2961.86, 92.0249, 4.24648, 600, 10, 0, 1006, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -1010.34, -1630.77, 90.7822, 5.74213, 600, 10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -2017.62, -3249.55, 92.3579, 3.1819, 600, 10, 0, 1006, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -2042.87, -3229.04, 91.8722, 0.197382, 600,10, 0, 955, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -2008.38, -3209.23, 91.7593, 1.30087, 600, 10, 0, 1006, 0, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 37084, 1, 1, 1, 788, 37084, -1987.49, -3188.3, 92.0204, 0.745274, 600, 10, 0, 1006, 0, 0, 1, 0, 0);
DELETE FROM `creature_loot_template` WHERE (`item`='49772');
INSERT INTO `creature_loot_template` VALUES (37083, 49772, -53, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (37084, 49772, -49, 1, 0, 1, 1);
UPDATE `creature_template` SET `lootid`='37083' WHERE (`entry`='37083');
UPDATE `creature_template` SET `lootid`='37084' WHERE (`entry`='37084');

-- Quest 24944 Back in the Fight CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='24956' WHERE (`Id`='24944');
UPDATE `quest_template` SET `PrevQuestId`='24944' WHERE (`Id`='24956');

-- Quest 24944 Back in the Fight
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='38805');
DELETE FROM smart_scripts WHERE entryorguid IN (38805) AND source_type = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `event_type`, `event_param1`, `action_type`, `action_param1`, `comment`) VALUES ('38805', '8', '72925', '33', '38805', 'quest - back in the fight');

-- Quest 24956 Silencing Rageroar
UPDATE `creature_template` SET `faction_A`='14', `unit_flags`='0', `faction_H`='14' WHERE (`entry`='38663');
DELETE FROM `creature_loot_template` WHERE (`item`='52036');
INSERT INTO `creature_loot_template` VALUES (38663, 52036, -100, 1, 0, 1, 1);
UPDATE `creature_template` SET `lootid`='38663' WHERE (`entry`='38663');

-- Quest 24943 Re-Take the Courtyard CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='24948' WHERE (`Id`='24943');
UPDATE `quest_template` SET `PrevQuestId`='24943' WHERE (`Id`='24948');

-- Quest 24941 Langridge Shot
UPDATE `gameobject_template` SET `flags`='0' WHERE (`entry`='202335');

-- Quest 24948 Lifting the Siege
DELETE FROM `spell_scripts` WHERE (`datalong`='38818');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('70365', '8', '38818');
DELETE FROM `spell_scripts` WHERE (`datalong`='23720');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('70365', '8', '38820');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='72940');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('72940', '70365', 'lifting the siege');

-- Quest 24938 The Guns of Northwatch CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='24939' WHERE (`Id`='24938');
UPDATE `quest_template` SET `PrevQuestId`='24938' WHERE (`Id`='24939');

-- Quest 24939 Run Out the Guns REMOVED
DELETE FROM `creature_questrelation` WHERE (`id`='3454') AND (`quest`='24939');

-- Quest 25191 Survey the Destruction CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='24921' WHERE (`Id`='25191');
UPDATE `quest_template` SET `NextQuestIdChain`='24921' WHERE (`Id`='28551');
UPDATE `quest_template` SET `NextQuestIdChain`='24934' WHERE (`Id`='24921');
UPDATE `quest_template` SET `NextQuestIdChain`='24934' WHERE (`Id`='25197');
UPDATE `quest_template` SET `PrevQuestId`='25191' WHERE (`Id`='24921');
UPDATE `quest_template` SET `PrevQuestId`='24921' WHERE (`Id`='24934');

-- Quest 28550 Hero's Call: Southern Barrens! CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='24862' WHERE (`Id`='28550');
UPDATE `quest_template` SET `PrevQuestId`='28550' WHERE (`Id`='24862');