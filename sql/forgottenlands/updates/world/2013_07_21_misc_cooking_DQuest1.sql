-- Quest 29364 Corn Mash
UPDATE `quest_template` SET `RequiredNpcOrGo1`='-1208880' WHERE (`Id`='29364');
DELETE FROM `gameobject_template` WHERE (`entry`='1208880');
INSERT INTO `gameobject_template` VALUES (1208880, 10, 10633, 'Corn Kernels', '', 'Blowing', '', 0, 4, 0.75, 0, 0, 0, 0, 0, 0, 690, 29364, 0, 10000, 0, 1, 0, 0, 0, 0, 99514, 0, 1208880, 0, 41278, 0, 0, 0, 0, 0, 0, 0, 9692, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
DELETE FROM `gameobject` WHERE (`id`='208880');
DELETE FROM `gameobject` WHERE (`id`='1208880');
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -982.097, 292.259, 137.59, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -975.029, 270.181, 137.59, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -962.219, 252.668, 135.352, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -976.745, 209.885, 136.549, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -999.74, 199.401, 136.755, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1026.5, 260.326, 135.923, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1030.99, 213.012, 136.041, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1412.23, -148.747, 159.254, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1398.85, -150.481, 159.254, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1381.46, -105.257, 158.935, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1373.42, -77.5122, 160.51, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1248.49, -68.3021, 162.89, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1232.64, -117.394, 163.799, 4.88692, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1182.93, -122.523, 163.799, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1072.89, -291.799, 159.03, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1035.51, -214.696, 160.277, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1092.6, -223.005, 159.96, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1071.21, -211.934, 159.03, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1086.84, 10.3073, 140.598, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1161.2, -70.2344, 162.185, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1316.85, 24.7986, 137.435, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1239.62, -9.30729, 164.931, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1166.38, -25.8819, 164.515, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1181.97, 0.180556, 165.48, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1134.07, -0.0642361, 143.562, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1084.04, 34.2361, 140.827, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1108.43, 47.2066, 140.523, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1416.86, -42.7118, 156.844, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1438.26, -44.967, 156.87, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1240.74, 47.9774, 127.062, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1284.12, 75.4549, 128.347, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1290.64, 49.7934, 129.209, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1304.71, 114.356, 131.382, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1302.35, 85.0521, 129.013, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1302.45, 132.312, 131.444, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1190.89, 112.684, 135.09, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1201.27, 95.4323, 134.715, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1223.78, 158.976, 133.237, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1253.44, 161.408, 133.549, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (NULL, 1208880, 1, 1, 1, -1261.62, 140.252, 132.588, 0, 0, 0, 0, 1, 120, 255, 1);

-- Quest 29349 Craving Crayfish
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='53561');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('53561', '99473', '2');
UPDATE `creature_template` SET `npcflag`='16777216', `AIName`='SmartAI' WHERE (`entry`='53561');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='99473');
INSERT INTO `spell_linked_spell` VALUES (99473, 62464, 0, 'trigger for despawn');

DELETE FROM smart_scripts WHERE entryorguid IN (53561) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (53561, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

-- Quest 69918 Brightwater Snail
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='53526');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('53526', '99357', '2');
UPDATE `creature_template` SET `npcflag`='16777216', `AIName`='SmartAI' WHERE (`entry`='53526');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='99357');
INSERT INTO `spell_linked_spell` VALUES (99357, 62464, 0, 'trigger for despawn');

DELETE FROM smart_scripts WHERE entryorguid IN (53526) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (53526, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');
