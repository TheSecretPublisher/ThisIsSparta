-- Quest 27911 With Dying Breath CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27916' WHERE (`Id`='27911');
UPDATE `quest_template` SET `NextQuestIdChain`='28553' WHERE (`Id`='27916');
UPDATE `quest_template` SET `NextQuestIdChain`='25674' WHERE (`Id`='28553');
UPDATE `quest_template` SET `NextQuestIdChain`='25676' WHERE (`Id`='25674');
UPDATE `quest_template` SET `PrevQuestId`='27911' WHERE (`Id`='27916');
UPDATE `quest_template` SET `PrevQuestId`='27916' WHERE (`Id`='28553');
UPDATE `quest_template` SET `PrevQuestId`='28553' WHERE (`Id`='25674');
UPDATE `quest_template` SET `PrevQuestId`='25674' WHERE (`Id`='25676');

-- Quest 27908 Secrets of the Mire
UPDATE `creature_template` SET `lootid`='46997' WHERE (`entry`='46997');
DELETE FROM `creature_loot_template` WHERE (`entry`='46997') AND (`item`='62593');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46997', '62593', '-20');

-- Quest 27909 The Purespring
UPDATE `creature_template` SET `lootid`='46953' WHERE (`entry`='46953');
DELETE FROM `creature_loot_template` WHERE (`entry`='46953') AND (`item`='62609');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46953', '62609', '-80');

-- Quest 27910 Last Regrets
UPDATE `creature_template` SET `lootid`='47053' WHERE (`entry`='47053');
DELETE FROM `creature_loot_template` WHERE (`entry`='47053') AND (`item`='62714');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('47053', '62714', '-80');

-- Quest 27691 Marshfin Madness CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27757' WHERE (`Id`='27691');
UPDATE `quest_template` SET `NextQuestIdChain`='27818' WHERE (`Id`='27757');
UPDATE `quest_template` SET `NextQuestIdChain`='27869' WHERE (`Id`='27818');
UPDATE `quest_template` SET `NextQuestIdChain`='27694' WHERE (`Id`='27869');
UPDATE `quest_template` SET `NextQuestIdChain`='27704' WHERE (`Id`='27694');
UPDATE `quest_template` SET `NextQuestIdChain`='27705' WHERE (`Id`='27704');
UPDATE `quest_template` SET `NextQuestIdChain`='27768' WHERE (`Id`='27705');
UPDATE `quest_template` SET `NextQuestIdChain`='27773' WHERE (`Id`='27768');
UPDATE `quest_template` SET `NextQuestIdChain`='27914' WHERE (`Id`='27773');
UPDATE `quest_template` SET `PrevQuestId`='27691' WHERE (`Id`='27757');
UPDATE `quest_template` SET `PrevQuestId`='27757' WHERE (`Id`='27818');
UPDATE `quest_template` SET `PrevQuestId`='27818' WHERE (`Id`='27869');
UPDATE `quest_template` SET `PrevQuestId`='27869' WHERE (`Id`='27694');
UPDATE `quest_template` SET `PrevQuestId`='27694' WHERE (`Id`='27704');
UPDATE `quest_template` SET `PrevQuestId`='27704' WHERE (`Id`='27705');
UPDATE `quest_template` SET `PrevQuestId`='27705' WHERE (`Id`='27768');
UPDATE `quest_template` SET `PrevQuestId`='27768' WHERE (`Id`='27773');
UPDATE `quest_template` SET `PrevQuestId`='27773' WHERE (`Id`='27914');

-- Quest 27818 Slithering Signs
UPDATE `creature_template` SET `lootid`='46146' WHERE (`entry`='46146');
DELETE FROM `creature_loot_template` WHERE (`entry`='46146') AND (`item`='62551');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46146', '62551', '-90');

-- Quest 27768 Step Two: The Bloodletter
DELETE FROM `creature_involvedrelation` WHERE (`id`='46071') AND (`quest`='27768');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('46071', '27768');

-- Some wrong race required 
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='27870');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='27871');

-- Quest 27915 The Heart of the Temple
DELETE FROM `creature` WHERE (`id`='46077');
INSERT INTO `creature` VALUES (null, 46077, 109, 1, 1, 34838, 46077, -335.004, 95.3998, -90.8454, 6.23082, 5000, 0, 0, 232470, 0, 0, 0, 0, 0);

-- Quest 27605 Eranikus
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14', `unit_flags`='0' WHERE (`entry`='5709');

-- Quest 3373 The Essence of Eranikus DEPRECATED
DELETE FROM `creature_loot_template` WHERE (`entry`='5709') AND (`item`='10454');

-- Quest 27855 Reinforcements Denied
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='35' WHERE (`entry`='46775');
DELETE FROM `creature` WHERE (`id`='46775');
INSERT INTO `creature` VALUES (null, 46775, 0, 1, 1, 0, 0, -10213.4, -3622.58, 23.6069, 2.29635, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46775, 0, 1, 1, 0, 0, -10244.1, -3637.28, 22.8177, 2.6537, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46775, 0, 1, 1, 0, 0, -10247.1, -3666.41, 24.8886, 1.91542, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46775, 0, 1, 1, 0, 0, -10288.9, -3665.23, 22.1059, 1.41669, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46775, 0, 1, 1, 0, 0, -10307.3, -3635.85, 21.7068, 1.74656, 300, 0, 0, 42, 0, 0, 0, 0, 0);

-- Quest 27854 Tides of Darkness
DELETE FROM `creature` WHERE (`id`='46414');
INSERT INTO `creature` VALUES (null, 46414, 0, 1, 1, 0, 0, -10127.7, -3798.5, 17.4566, 3.10669, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46414, 0, 1, 1, 0, 0, -10131.5, -3798.64, 17.4351, 3.22886, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46414, 0, 1, 1, 0, 0, -10135.4, -3798.78, 17.3993, 3.22886, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46414, 0, 1, 1, 0, 0, -10127.7, -3785.25, 17.4566, 3.10669, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46414, 0, 1, 1, 0, 0, -10131.5, -3785.38, 17.4409, 3.22886, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46414, 0, 1, 1, 0, 0, -10135.4, -3785.52, 17.3784, 3.22886, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46414, 0, 1, 1, 0, 0, -10230.9, -3619.95, 24.1323, 3.13418, 300, 0, 0, 2453, 0, 0, 0, 134217728, 0);
INSERT INTO `creature` VALUES (null, 46414, 0, 1, 1, 0, 0, -10263.3, -3617.56, 23.3959, 2.11709, 300, 0, 0, 2453, 0, 0, 0, 134217728, 0);
INSERT INTO `creature` VALUES (null, 46414, 0, 1, 1, 0, 0, -10319.9, -3570.92, 18.5984, 4.11201, 300, 0, 0, 2453, 0, 0, 0, 134217728, 0);
INSERT INTO `creature` VALUES (null, 46414, 0, 1, 1, 0, 0, -10308, -3602.1, 18.2961, 5.2469, 300, 0, 0, 2453, 0, 0, 0, 134217728, 0);
INSERT INTO `creature` VALUES (null, 46414, 0, 1, 1, 0, 0, -10185.1, -3523.51, 19.269, 5.38827, 300, 0, 0, 2453, 0, 0, 0, 134217728, 0);
INSERT INTO `creature` VALUES (null, 46414, 0, 1, 1, 0, 0, -10161.2, -3546.79, 18.5699, 3.59757, 300, 0, 0, 2453, 0, 0, 0, 134217728, 0);
INSERT INTO `creature` VALUES (null, 46414, 0, 1, 1, 0, 0, -10177, -3510.71, 22.9108, 5.23905, 300, 0, 0, 2453, 0, 0, 0, 134217728, 0);

-- Quest 27856 Marking the Fallen
DELETE FROM `creature` WHERE (`id`='46882');
INSERT INTO `creature` VALUES (null, 46882, 0, 1, 1, 0, 0, -10285.9, -3531.23, 21.9946, 3.17897, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46882, 0, 1, 1, 0, 0, -10307.8, -3505.84, 21.8343, 1.81238, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46882, 0, 1, 1, 0, 0, -10313.8, -3496.24, 23.837, 3.96437, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46882, 0, 1, 1, 0, 0, -10343.3, -3531.6, 22.4592, 3.79943, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46882, 0, 1, 1, 0, 0, -10329.7, -3594.51, 19.0708, 0.622491, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46882, 0, 1, 1, 0, 0, -10293, -3568.12, 17.1847, 1.1762, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46882, 0, 1, 1, 0, 0, -10263.9, -3573.87, 21.9115, 6.02996, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46882, 0, 1, 1, 0, 0, -10257.8, -3622.86, 23.1937, 4.68302, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM `item_template` WHERE (`entry`='62548');
INSERT INTO `item_template` (`entry`, `class`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `delay`, `spellid_1`, `bonding`, `Material`) VALUES ('62548', '12', 'Banner of the fallen', '36477', '1', '65536', '8192', '0', '58178', '4', '4');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46882');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='46882');
INSERT INTO `smart_scripts` VALUES (46882, 0, 1, 2, 8, 0, 100, 0, 58178, 0, 0, 0, 11, 87296, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'When hit with item quest get buff');
INSERT INTO `smart_scripts` VALUES (46882, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 46913, 0, 0, 0, 0, 0, 21, 6, 0, 0, 0, 0, 0, 0, 'Give credit');
DELETE FROM `creature_template_addon` WHERE (`entry`='46882');
INSERT INTO `creature_template_addon` (`entry`, `bytes1`) VALUES ('46882', '3');

-- Quest 27857 We're Under Attack!
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='35' WHERE (`entry`='46869');
DELETE FROM `creature` WHERE (`id`='46869');
INSERT INTO `creature` VALUES (null, 46869, 0, 1, 1, 0, 0, -10440, -3232.53, 20.7991, 4.25262, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46869, 0, 1, 1, 0, 0, -10485, -3241.51, 21.3173, 5.32862, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46869, 0, 1, 1, 0, 0, -10398.7, -3285.02, 20.8334, 1.73542, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46869, 0, 1, 1, 0, 0, -10415, -3279.33, 21.2067, 2.80356, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46869, 0, 1, 1, 0, 0, -10390.3, -3238.8, 21.6417, 4.58642, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46869, 0, 1, 1, 0, 0, -10504.7, -3288.03, 20.9908, 5.71739, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46869, 0, 1, 1, 0, 0, -10469.2, -3350.01, 20.1772, 6.16899, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46869, 0, 1, 1, 0, 0, -10462.4, -3355.43, 20.1094, 2.11241, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46869, 0, 1, 1, 0, 0, -10469.5, -3352.97, 20.1631, 0.969654, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46869, 0, 1, 1, 0, 0, -10459.7, -3349.07, 20.1768, 3.46329, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46869, 0, 1, 1, 0, 0, -10439, -3349.66, 21.0227, 1.72363, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46869, 0, 1, 1, 0, 0, -10436.4, -3329, 20.7068, 2.51295, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46869, 0, 1, 1, 0, 0, -10437.4, -3325.2, 20.3628, 4.71993, 300, 0, 0, 42, 0, 0, 0, 0, 0);

-- Quest 27598 Kill Gil CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27600' WHERE (`Id`='27598');
UPDATE `quest_template` SET `NextQuestIdChain`='27600' WHERE (`Id`='27599');
UPDATE `quest_template` SET `NextQuestIdChain`='27740' WHERE (`Id`='27600');
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE (`Id`='27600');
UPDATE `quest_template` SET `PrevQuestId`='27600' WHERE (`Id`='27740');

-- Quest 27599 Can't Take It With Them
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='45887');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('45887', '62464', '1');
UPDATE `creature_template` SET `npcflag`='16777216' WHERE (`entry`='45887');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45887');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='45887');
INSERT INTO `smart_scripts` VALUES (45887, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 56, 61923, 1, 0, 0, 0, 0, 21, 6, 0, 0, 0, 0, 0, 0, 'Add item quest');
INSERT INTO `smart_scripts` VALUES (45887, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='46014');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('46014', '62464', '1');
UPDATE `creature_template` SET `npcflag`='16777216' WHERE (`entry`='46014');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46014');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='46014');
INSERT INTO `smart_scripts` VALUES (46014, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 56, 61923, 1, 0, 0, 0, 0, 21, 6, 0, 0, 0, 0, 0, 0, 'Add item quest');
INSERT INTO `smart_scripts` VALUES (46014, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

-- Quest 27600 In With a Bang
UPDATE `gameobject_template` SET `data7`='205828', `data8`='27600' WHERE (`entry`='205828');
DELETE FROM `gameobject_loot_template` WHERE (`entry`='34741') AND (`item`='61373');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('34741', '61373', '-100');
DELETE FROM `gameobject` WHERE (`id`='205828');
INSERT INTO `gameobject` VALUES (null, 205828, 0, 1, 1, -9989.44, -4558.76, -0.971789, 4.15359, 0, 0, 0.874692, -0.48468, 300, 0, 1);
UPDATE `gameobject_template` SET `data7`='205826', `data8`='27600' WHERE (`entry`='205826');
DELETE FROM `gameobject_loot_template` WHERE (`entry`='34739') AND (`item`='61921');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('34739', '61921', '-100');
DELETE FROM `gameobject` WHERE (`id`='205826');
INSERT INTO `gameobject` VALUES (null, 205826, 0, 1, 1, -9953.3, -4539.54, -0.941518, 3.41532, 0, 0, 0.990649, -0.136434, 300, 0, 1);
UPDATE `gameobject_template` SET `data7`='205827', `data8`='27600' WHERE (`entry`='205827');
DELETE FROM `gameobject_loot_template` WHERE (`entry`='34740') AND (`item`='61922');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('34740', '61922', '-100');
DELETE FROM `gameobject` WHERE (`id`='205827');
INSERT INTO `gameobject` VALUES (null, 205827, 0, 1, 1, -9991.5, -4565.21, 6.34858, 4.09076, 0, 0, 0.889483, -0.456968, 300, 0, 1);

-- Quest 27663 Tastes Like Strider
UPDATE `creature_template` SET `lootid`='45825' WHERE (`entry`='45825');
DELETE FROM `creature_loot_template` WHERE (`entry`='45825') AND (`item`='62043');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('45825', '62043', '-100');

-- Quest 27592 Drinks on the Rocks
DELETE FROM `creature_loot_template` WHERE (`entry`='922') AND (`item`='61356');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('922', '61356', '-100');

-- Quest 27536 Mostly Harmless CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27597' WHERE (`Id`='27536');
UPDATE `quest_template` SET `NextQuestIdChain`='27597' WHERE (`Id`='27656');
UPDATE `quest_template` SET `PrevQuestId`='27536' WHERE (`Id`='27597');

-- Quest 27587 Maliciously Delicious
UPDATE `creature_template` SET `lootid`='45809' WHERE (`entry`='45809');
DELETE FROM `creature_loot_template` WHERE (`entry`='45809') AND (`item`='61633');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('45809', '61633', '-60');

-- Fix some wrong auras
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='17127');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='1776');
UPDATE `creature_template_addon` SET `bytes1`='65539' WHERE (`entry`='1776');

-- Quest 27919 Onward to the Blasted Lands CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25715' WHERE (`Id`='27919');
UPDATE `quest_template` SET `PrevQuestId`='27919' WHERE (`Id`='25715');

-- Quest 24913 Remember the Light
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGoCount1`='0' WHERE (`Id`='24913');

-- Quest 27904 Breath of Mist
UPDATE `creature_template` SET `lootid`='46950' WHERE (`entry`='46950');
DELETE FROM `creature_loot_template` WHERE (`entry`='46950') AND (`item`='62749');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46950', '62749', '-60');

-- Quest 27795 Tides of Darkness
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='35' WHERE (`entry`='46765');
DELETE FROM `creature` WHERE (`id`='46765');
INSERT INTO `creature` VALUES (null, 46765, 0, 1, 1, 0, 0, -10268.3, -3466.26, 19.9703, 5.78145, 300, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46765, 0, 1, 1, 0, 0, -10201, -3498.28, 22.2606, 4.38738, 300, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46765, 0, 1, 1, 0, 0, -10288.5, -3552.95, 18.762, 3.43705, 300, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46765, 0, 1, 1, 0, 0, -10302, -3622.29, 22.6378, 1.96443, 300, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46765, 0, 1, 1, 0, 0, -10365.1, -3600.69, 22.758, 0.947335, 300, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46765, 0, 1, 1, 0, 0, -10360.3, -3500.86, 23.0597, 0.680299, 300, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46765, 0, 1, 1, 0, 0, -10326.6, -3463.96, 23.8862, 5.4516, 300, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46765, 0, 1, 1, 0, 0, -10263.2, -3523.08, 18.044, 0.586054, 300, 0, 0, 50, 0, 0, 0, 0, 0);

-- Quest 27843 Reinforcements Denied
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='35' WHERE (`entry`='46770');
DELETE FROM `creature` WHERE (`id`='46770');
INSERT INTO `creature` VALUES (null, 46770, 0, 1, 1, 0, 0, -10356.8, -3539.42, 20.1507, 1.06908, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46770, 0, 1, 1, 0, 0, -10403.9, -3506.79, 21.07, 5.69114, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46770, 0, 1, 1, 0, 0, -10365.7, -3472.55, 22.6844, 5.21991, 300, 0, 0, 42, 0, 0, 0, 0, 0);

-- Quest 27849 Assault on Stonard
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='35' WHERE (`entry`='46870');
DELETE FROM `creature` WHERE (`id`='46870');
INSERT INTO `creature` VALUES (null, 46870, 0, 1, 1, 4504, 0, -10413.1, -3352.37, 23.5701, 5.48301, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46870, 0, 1, 1, 0, 0, -10430.8, -3359.04, 21.8843, 6.11918, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46870, 0, 1, 1, 0, 0, -10452.6, -3367.01, 20.0007, 4.67405, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46870, 0, 1, 1, 4504, 0, -10531.2, -3307.22, 22.5219, 4.67797, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46870, 0, 1, 1, 0, 0, -10364.1, -3270.43, 21.7819, 0.150156, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46870, 0, 1, 1, 0, 0, -10370.8, -3288.42, 22.2381, 5.50265, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46870, 0, 1, 1, 0, 0, -10388.9, -3313.96, 20.3491, 6.00923, 300, 0, 0, 42, 0, 0, 0, 0, 0);

-- Quest 27851 Cutting Supply
DELETE FROM `gameobject` WHERE (`id`='206391');
INSERT INTO `gameobject` VALUES (null, 206391, 0, 1, 1, -10414.6, -3281.94, 21.1836, 0.476092, 0, 0, 0.235804, 0.971801, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206391, 0, 1, 1, -10395.8, -3284.66, 21.4393, 0.0441225, 0, 0, 0.0220595, 0.999757, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206391, 0, 1, 1, -10425.9, -3264.67, 20.2184, 5.79351, 0, 0, 0.242397, -0.970177, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206391, 0, 1, 1, -10449.9, -3228.73, 20.1792, 1.62392, 0, 0, 0.725639, 0.688076, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206391, 0, 1, 1, -10472.3, -3225.05, 20.3498, 3.10833, 0, 0, 0.999862, 0.0166316, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206391, 0, 1, 1, -10467.4, -3237.49, 21.3215, 5.24854, 0, 0, 0.494555, -0.869146, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206391, 0, 1, 1, -10461.9, -3287.43, 21.311, 4.25894, 0, 0, 0.847959, -0.530062, 300, 0, 1);
UPDATE `gameobject_template` SET `data7`='206391', `data8`='27851' WHERE (`entry`='206391');
DELETE FROM `gameobject_loot_template` WHERE (`entry`='35359') AND (`item`='62516');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('35359', '62516', '-100');

-- Quest 27845 Marking the Fallen
DELETE FROM `creature` WHERE (`id`='46881');
INSERT INTO `creature` VALUES (null, 46881, 0, 1, 1, 0, 0, -10269.1, -3619.84, 23.6695, 1.23007, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46881, 0, 1, 1, 0, 0, -10245.1, -3594.71, 25.815, 0.782389, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46881, 0, 1, 1, 0, 0, -10245.5, -3551.76, 23.4471, 4.94107, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46881, 0, 1, 1, 0, 0, -10269.4, -3556.71, 18.8097, 3.30351, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46881, 0, 1, 1, 0, 0, -10297.5, -3571.05, 17.675, 3.71978, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46881, 0, 1, 1, 0, 0, -10326.5, -3578.49, 17.7399, 2.46314, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46881, 0, 1, 1, 0, 0, -10344.6, -3556.07, 18.1158, 1.61098, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46881, 0, 1, 1, 0, 0, -10339.4, -3524.22, 22.3189, 1.12403, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46881, 0, 1, 1, 0, 0, -10316.4, -3502.72, 22.9787, 0.723481, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46881, 0, 1, 1, 0, 0, -10281.5, -3475.77, 17.7828, 0.267952, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM `item_template` WHERE (`entry`='62517');
INSERT INTO `item_template` (`entry`, `class`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `delay`, `spellid_1`, `bonding`, `Material`) VALUES ('62517', '12', 'Banner of the fallen', '36477', '1', '65536', '8192', '0', '62464', '4', '4');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46881');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='46881');
INSERT INTO `smart_scripts` VALUES (46881, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 11, 87293, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'When hit with item quest get buff');
INSERT INTO `smart_scripts` VALUES (46881, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 46909, 0, 0, 0, 0, 0, 21, 6, 0, 0, 0, 0, 0, 0, 'Give credit');
DELETE FROM `creature_template_addon` WHERE (`entry`='46881');
INSERT INTO `creature_template_addon` (`entry`, `bytes1`) VALUES ('46881', '3');