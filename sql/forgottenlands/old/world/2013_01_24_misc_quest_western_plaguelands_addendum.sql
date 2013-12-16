-- Quest 27199 Ashes to Ashes
UPDATE `creature_template` SET `faction_A`='14' WHERE (`entry`='44449');
DELETE FROM `creature` WHERE (`id`='44449');
INSERT INTO `creature` VALUES (null, 44449, 0, 1, 1, 0, 0, 1420.42, -1603.63, 71.0027, 1.87256, 180, 0, 0, 3048, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44449, 0, 1, 1, 0, 0, 1338.23, -1585.55, 59.4789, 6.28178, 180, 0, 0, 3048, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44449, 0, 1, 1, 0, 0, 1439.98, -1550.77, 56.0982, 1.37304, 180, 0, 0, 3048, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44449, 0, 1, 1, 0, 0, 1384.22, -1615.8, 64.2645, 1.45394, 180, 0, 0, 3048, 0, 0, 0, 0, 0);

-- Quest 27205 The Depravity of the Forsaken CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27201' WHERE (`Id`='27205');
UPDATE `quest_template` SET `NextQuestIdChain`='27204' WHERE (`Id`='27201');
UPDATE `quest_template` SET `NextQuestIdChain`='27206' WHERE (`Id`='27204');
UPDATE `quest_template` SET `PrevQuestId`='27205' WHERE (`Id`='27201');
UPDATE `quest_template` SET `PrevQuestId`='27201' WHERE (`Id`='27204');
UPDATE `quest_template` SET `PrevQuestId`='27204' WHERE (`Id`='27206');

-- Quest 27201 Val'kyr Incursion
UPDATE `creature_template` SET `faction_A`='14' WHERE (`entry`='45239');
DELETE FROM `creature` WHERE (`id`='45239');
INSERT INTO `creature` VALUES (null, 45239, 0, 1, 1, 0, 0, 1362.27, -1498, 57.39, 6.05, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45239, 0, 1, 1, 0, 0, 1374.44, -1480.99, 56.76, 2.46, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45239, 0, 1, 1, 0, 0, 1442.69, -1494.48, 56.85, 2.38, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45239, 0, 1, 1, 0, 0, 1411.8, -1441.02, 55.85, 0.59, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45239, 0, 1, 1, 0, 0, 1471.82, -1382.73, 62.85, 2.62, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45239, 0, 1, 1, 0, 0, 1433.5, -1357.9, 63.29, 4.33, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45239, 0, 1, 1, 0, 0, 1450.71, -1420.11, 64.21, 3.01, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45239, 0, 1, 1, 0, 0, 1405.56, -1411.99, 56.63, 2.37, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45239, 0, 1, 1, 0, 0, 1364.43, -1440.77, 56.12, 2, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45239, 0, 1, 1, 0, 0, 1333.32, -1408.6, 48.36, 1.44, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45239, 0, 1, 1, 0, 0, 1299.06, -1375.86, 49.55, 5.58, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45239, 0, 1, 1, 0, 0, 1332.48, -1513.6, 59.071, 5.3833, 180, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45239, 0, 1, 1, 0, 0, 1411.87, -1550.21, 54.3959, 6.06189, 180, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45239, 0, 1, 1, 0, 0, 1447.6, -1528.11, 55.9224, 1.55056, 180, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45239, 0, 1, 1, 0, 0, 1452.56, -1489.54, 56.8666, 3.50463, 180, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45239, 0, 1, 1, 0, 0, 1423.53, -1446.6, 54.6521, 2.21972, 180, 0, 0, 42, 0, 0, 0, 0, 0);

-- Quest 27204 Aradne
UPDATE `creature_template` SET `faction_A`='14' WHERE (`entry`='45235');
DELETE FROM `creature` WHERE (`id`='45235');
INSERT INTO `creature` VALUES (null, 45235, 0, 1, 1, 0, 0, 1298.41, -1321.05, 99.2618, 5.89695, 300, 0, 0, 10668, 0, 0, 0, 0, 0);










