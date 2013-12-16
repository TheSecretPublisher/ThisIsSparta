-- Fix missing loot
DELETE FROM `gameobject_loot_template` WHERE (`entry`='28434');
DELETE FROM `gameobject_loot_template` WHERE (`entry`='36037');
DELETE FROM `gameobject_loot_template` WHERE (`entry`='36055');
DELETE FROM `gameobject_loot_template` WHERE (`entry`='36019');
DELETE FROM `gameobject_loot_template` WHERE (`entry`='36054');
INSERT INTO `gameobject_loot_template` VALUES (28434, 52843, 30, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (36037, 64394, 30, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (36055, 64396, 30, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (36019, 64392, 30, 1, 0, 1, 1);
INSERT INTO `gameobject_loot_template` VALUES (36054, 64395, 30, 1, 0, 1, 1);