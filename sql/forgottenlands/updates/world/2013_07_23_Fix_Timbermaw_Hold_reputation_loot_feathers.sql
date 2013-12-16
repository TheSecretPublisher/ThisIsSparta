-- Fix reputation Timbermaw Hold

DELETE FROM `item_template` WHERE (`entry`='121377');
INSERT INTO `item_template` VALUES (121377, 12, 0, -1, 'Deadwood Headdress Feather', 31500, 1, 0, 8192, 1, 1, 1, 800, 200, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 1, 'These may be gathered for the Timbermaw furbolgs to earn their trust.', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

UPDATE `quest_template` SET `RequiredItemId1`='121377', `Flags`='8448', `SpecialFlags`='1' WHERE (`Id`='28395');

DELETE FROM `creature_loot_template` WHERE (`item`='121377');
INSERT INTO `creature_loot_template` VALUES (7153, 121377, 25, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (7154, 121377, 25, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (7155, 121377, 25, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (7156, 121377, 35, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (7157, 121377, 35, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (7158, 121377, 35, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (9462, 121377, 35, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (9464, 121377, 25, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (14342, 121377, 25, 1, 0, 1, 1);