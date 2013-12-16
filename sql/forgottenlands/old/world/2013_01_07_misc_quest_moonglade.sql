-- Quest 27273 An Invitation from Moonglade CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27356' WHERE (`Id`='27273');
UPDATE `quest_template` SET `PrevQuestId`='27273' WHERE (`Id`='27356');

-- Quest 27356 The Circle's Future ALLIANCE
DELETE FROM `creature_loot_template` WHERE (`entry`='47131') AND (`item`='60874');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('47131', '60874', '-22');
UPDATE `creature_template` SET `lootid`='47131' WHERE (`entry`='47131');
DELETE FROM `creature_loot_template` WHERE (`entry`='47134') AND (`item`='60874');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('47134', '60874', '-26');
UPDATE `creature_template` SET `lootid`='47134' WHERE (`entry`='47134');
DELETE FROM `creature_loot_template` WHERE (`entry`='47135') AND (`item`='60874');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('47135', '60874', '-5');
UPDATE `creature_template` SET `lootid`='47135' WHERE (`entry`='47135');
DELETE FROM `creature_loot_template` WHERE (`entry`='46963') AND (`item`='60876');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46963', '60876', '-12');
UPDATE `creature_template` SET `lootid`='46963' WHERE (`entry`='46963');

-- Quest 28289 Moonglade Calls CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='28343' WHERE (`Id`='28289');
UPDATE `quest_template` SET `PrevQuestId`='28289' WHERE (`Id`='28343');
-- fix trainer/quest giver stormwind - npc 44395 has been replaced with npc 44396 
UPDATE `creature_questrelation` SET `id`='44396' WHERE (`id`='44395') AND (`quest`='27273');
UPDATE `creature_questrelation` SET `id`='44396' WHERE (`id`='44395') AND (`quest`='28289');
UPDATE `creature_template` SET `npcflag`='51' WHERE (`entry`='44396');

-- Quest 63469 Breath of Cenarius
DELETE FROM `creature_loot_template` WHERE (`entry`='9024') AND (`item`='63469');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('9024', '63469', '-13');
-- Add gobject - dungeon blackrock depths
DELETE FROM `gameobject` WHERE (`id`='207103');
INSERT INTO `gameobject` VALUES (null, 207103, 230, 1, 1, 594.136, -292.455, -43.1041, 1.51538, 0, 0, 0.687245, 0.726426, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207103, 230, 1, 1, 533.707, -256.888, -43.1026, 0.798295, 0, 0, 0.388633, 0.921393, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207103, 230, 1, 1, 543.117, -247.594, -43.1013, 3.87585, 0, 0, 0.933362, -0.358937, 300, 0, 1);
UPDATE `gameobject_template` SET `data0`='1703', `data2`='207103', `data4`='28343' WHERE (`entry`='207103');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='89914');
INSERT INTO `spell_linked_spell` VALUES (89914, 85933, 0, 'credit spell');
DELETE FROM `spell_scripts` WHERE (`datalong`='48362');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('85933', '8', '48362');

-- Quest 13068 A Tale of Valor CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13072' WHERE (`Id`='13068');
UPDATE `quest_template` SET `NextQuestIdChain`='13073' WHERE (`Id`='13072');
UPDATE `quest_template` SET `NextQuestIdChain`='13074' WHERE (`Id`='13073');
UPDATE `quest_template` SET `NextQuestIdChain`='13075' WHERE (`Id`='13074');
UPDATE `quest_template` SET `PrevQuestId`='13068' WHERE (`Id`='13072');
UPDATE `quest_template` SET `PrevQuestId`='13072' WHERE (`Id`='13073');
UPDATE `quest_template` SET `PrevQuestId`='13073' WHERE (`Id`='13074');
UPDATE `quest_template` SET `PrevQuestId`='13074' WHERE (`Id`='13075');
UPDATE `creature_template` SET `npcflag`='3' WHERE (`entry`='30562');
UPDATE `creature_template_addon` SET `auras`='57626' WHERE (`entry`='30562');

-- Quest 13074 Hope Within the Emerald Nightmare
DELETE FROM `gameobject` WHERE (`id`='192676');
INSERT INTO `gameobject` VALUES (null, 192676, 1, 1, 2, 7856.2, -2203.38, 473.905, 4.75443, 0, 0, 0.692088, -0.721813, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 192676, 1, 1, 2, 7872.75, -2190.65, 477.945, 5.30028, 0, 0, 0.471908, -0.881648, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 192676, 1, 1, 2, 7900.55, -2197.05, 483.212, 5.57517, 0, 0, 0.346662, -0.93799, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 192676, 1, 1, 2, 7851.83, -2182.16, 477.276, 2.45715, 0, 0, 0.942011, 0.335582, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 192676, 1, 1, 2, 7834.1, -2148.2, 485.686, 2.33541, 0, 0, 0.919853, 0.392264, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 192676, 1, 1, 2, 7863.54, -2137.54, 487.213, 0.97667, 0, 0, 0.469156, 0.883115, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 192676, 1, 1, 2, 7878.9, -2165.75, 481.346, 6.12102, 0, 0, 0.0809927, -0.996715, 300, 0, 1);

-- Quest 29298 A Smoke-Stained Locket CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='29302' WHERE (`Id`='29298');
UPDATE `quest_template` SET `NextQuestIdChain`='29303' WHERE (`Id`='29302');
UPDATE `quest_template` SET `NextQuestIdChain`='29310' WHERE (`Id`='29303');
UPDATE `quest_template` SET `NextQuestIdChain`='29311' WHERE (`Id`='29310');
UPDATE `quest_template` SET `PrevQuestId`='29298' WHERE (`Id`='29302');
UPDATE `quest_template` SET `PrevQuestId`='29302' WHERE (`Id`='29303');
UPDATE `quest_template` SET `PrevQuestId`='29303' WHERE (`Id`='29310');
UPDATE `quest_template` SET `PrevQuestId`='29310' WHERE (`Id`='29311');

-- Quest 29302 Unlocking the Secrets Within - AUTOCOMPLETE MISSING EVENT
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGoCount1`='0' WHERE (`Id`='29302');

-- Quest 29303 Tragedy and Family
DELETE FROM `gameobject_involvedrelation` WHERE (`id`='208790') AND (`quest`='29303');
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES ('208790', '29303');
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGoCount1`='0' WHERE (`Id`='29303');

-- Quest 27283 An Journey to Moonglade CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27404' WHERE (`Id`='27283');
UPDATE `quest_template` SET `PrevQuestId`='27283' WHERE (`Id`='27404');




