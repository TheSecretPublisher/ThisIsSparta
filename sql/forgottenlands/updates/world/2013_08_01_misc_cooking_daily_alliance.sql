-- Quest 29316 Back to Basics
UPDATE `quest_template` SET `RequiredNpcOrGo1`='-1208890' WHERE (`Id`='29316');
DELETE FROM `gameobject_template` WHERE (`entry`='1208890');
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (1208890, 10, 10097, 'Rice Basket', '', 'Blowing', '', 0, 4, 0.75, 0, 0, 0, 0, 0, 0, 690, 29316, 0, 10000, 0, 1, 0, 0, 0, 0, 99314, 0, 1208890, 0, 41278, 0, 0, 0, 0, 0, 0, 0, 9692, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
DELETE FROM `gameobject` WHERE (`id`='208829');
DELETE FROM `gameobject` WHERE (`id`='1208890');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9616.31, 2342.66, 1329.9, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9595.69, 2348.65, 1330.01, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9673.1, 2372.28, 1337.81, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9699.03, 2340.15, 1331.97, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9691.87, 2227.7, 1330.02, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9814.56, 2345.45, 1321.68, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9856.88, 2342.02, 1321.59, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9719.5, 2296.66, 1333, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9823.13, 2334.3, 1321.68, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9740.08, 2297.48, 1333, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9714.19, 2227.54, 1329.8, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9797.63, 2311.33, 1329.33, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9770.59, 2274.48, 1331.94, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9767.34, 2200.63, 1346.61, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9809.1, 2265.27, 1333, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9807.7, 2249.09, 1343.31, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9836.22, 2189.31, 1329.98, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9894.36, 2316.96, 1328.29, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9860.74, 2257.46, 1331.94, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9868.67, 2252.96, 1331.94, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 9851.32, 2190.69, 1329.97, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 10211.3, 2330.99, 1329.99, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 10222.2, 2330.08, 1330.01, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 10141.8, 2358.42, 1331.97, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 10144, 2394.62, 1323.43, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 10129.1, 2410.39, 1321.64, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 10117.2, 2415.07, 1321.64, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 10130.6, 2417.3, 1331.95, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 10091.7, 2423.39, 1321.68, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 10065.3, 2397.85, 1324.35, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 10072.7, 2361.54, 1321.58, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 10069.3, 2356.73, 1331.89, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 10062.9, 2353.01, 1331.88, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 10117.4, 2284.26, 1331.97, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 10080.6, 2251.89, 1333, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 10140.9, 2225.17, 1329.97, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 10044.3, 2246.83, 1331.97, 0, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (NULL, 1208890, 1, 1, 1, 10128.7, 2217.04, 1329.98, 0, 0, 0, 0, 1, 120, 255, 1);

-- Quest 29325 A Slippery Snack
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='53522');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('53522', '99340', '2');
UPDATE `creature_template` SET `npcflag`='16777216', `AIName`='SmartAI' WHERE (`entry`='53522');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='99340');
INSERT INTO `spell_linked_spell` VALUES (99340, 62464, 0, 'trigger for despawn');

DELETE FROM smart_scripts WHERE entryorguid IN (53522) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (53522, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

-- Quest 29356 I Need to Cask a Favor
UPDATE `quest_template` SET `RequiredNpcOrGo1`=0, `RequiredNpcOrGoCount1`=0 WHERE  `Id`=29356;

-- Quest 29352 A Fowl Shortage
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='53568');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('53568', '99487', '2');
UPDATE `creature_template` SET `npcflag`='16777216', `AIName`='SmartAI' WHERE (`entry`='53568');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='99487');
INSERT INTO `spell_linked_spell` VALUES (99487, 62464, 0, 'trigger for despawn');

DELETE FROM smart_scripts WHERE entryorguid IN (53568) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (53568, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

-- Quest 29343 One fer the Ages
UPDATE `fishing_loot_template` SET `ChanceOrQuestChance`=20 WHERE  `entry`=1537 AND `item`=69932;

-- Quest 29344 Fish fer Squirky
UPDATE `fishing_loot_template` SET `ChanceOrQuestChance`=20 WHERE  `entry`=1537 AND `item`=69933;
UPDATE `fishing_loot_template` SET `ChanceOrQuestChance`=20 WHERE  `entry`=148 AND `item`=69933;

DELETE FROM `conditions` WHERE (`ConditionValue1`='99435');
INSERT INTO `conditions` VALUES (17, 99424, 0, 0, 0, 1, 0, 99435, 0, 0, 0, 0, 0, '', 'spell active only with aura ');

-- Quest 29347 Live Bait
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='41761');
DELETE FROM smart_scripts WHERE entryorguid IN (41761);
INSERT INTO `smart_scripts` VALUES (41761, 0, 1, 2, 1, 0, 100, 0, 0, 0, 0, 0, 33, 53551, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (41761, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 99424, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 'credit');