-- Quest 13542 Against the Wind
DELETE FROM `creature_loot_template` WHERE (`entry`='32985') AND (`item`='44868');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('32985', '44868', '51');
UPDATE `creature_template` SET `lootid`='32985' WHERE (`entry`='32985');
DELETE FROM `creature_template` WHERE (`entry`='341232');
INSERT INTO `creature_template` VALUES (341232, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Auberdine Monwell Bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);
DELETE FROM `creature_template_addon` WHERE (`entry`='341232');
INSERT INTO `creature_template_addon` VALUES (341232, 0, 0, 65536, 1, 0, '64573 52855');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='341232');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='341232');
INSERT INTO `smart_scripts` VALUES (341232, 0, 1, 2, 8, 0, 100, 0, 63578, 0, 0, 0, 33, 32986, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `smart_scripts` VALUES (341232, 0, 2, 5, 8, 0, 100, 0, 63578, 0, 0, 0, 57, 44868, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `item_template` WHERE (`entry`='44868');
INSERT INTO `item_template` (`entry`, `class`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `stackable`, `spellid_1`, `spellcooldown_1`, `bonding`, `Material`) VALUES ('44868', '12', 'Frenzied Cyclone Bracers', '57681', '1', '64', '8192', '20', '63578', '1000', '4', '1');
DELETE FROM `creature` WHERE (`id`='341232');
INSERT INTO `creature` VALUES (null, 341232, 1, 1, 1, 0, 0, 6408.12, 466.216, 17.0153, 1.12481, 300, 0, 0, 301, 1, 0, 0, 0, 0);
UPDATE `quest_template` SET `RequiredSourceItemId2`='0', `RequiredSourceItemCount2`='0' WHERE (`Id`='13542');

-- Quest 13523 Power Over the Tides 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='32890');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='32890');
INSERT INTO `smart_scripts` VALUES (32890, 0, 1, 2, 8, 0, 100, 0, 62517, 0, 0, 0, 33, 32937, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- Quest 13831 A Troubling Prescription 
UPDATE `gameobject_template` SET `faction`='35', `flags`='0' WHERE (`entry`='194714');

-- Quest 5713 One Shot. One Kill.
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='11711');
DELETE FROM smart_scripts WHERE entryorguid IN (11711) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (11711, 0, 1, 2, 19, 0, 100, 0, 5713, 0, 0, 0, 12, 117130, 6, 60, 0, 0, 0, 8, 0, 0, 0, 4377.96, -62.3532, 89.1324, 6.05716, 'Summon hostile mob');
INSERT INTO `smart_scripts` VALUES (11711, 0, 2, 0, 19, 0, 100, 0, 5713, 0, 0, 0, 12, 117131, 6, 60, 0, 0, 0, 8, 0, 0, 0, 4381.65, -54.2990, 87.0697, 5.29925, 'Summon hostile mob');

DELETE FROM `creature_template` WHERE (`entry`='117130');
INSERT INTO `creature_template` VALUES (117130, 0, 0, 0, 0, 0, 1010, 0, 0, 0, 'Blackwood Tracker', NULL, NULL, 0, 14, 15, 0, 0, 82, 82, 0, 0.99, 1.14286, 1, 0, 20, 27, 0, 48, 1, 1860, 2046, 2, 0, 2048, 8, 0, 0, 0, 0, 0, 14, 21, 2, 7, 0, 0, 11713, 0, 0, 0, 0, 0, 0, 0, 0, 6950, 3391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 35, 0, 0, '', 15595);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='117130');
DELETE FROM smart_scripts WHERE entryorguid IN (117130) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (117130, 0, 5, 0, 6, 0, 100, 0, 0, 0, 0, 0, 12, 11713, 6, 60, 0, 0, 0, 8, 0, 0, 0, 4377.96, -62.3532, 89.1324, 6.05716, 'Summon hostile mob');

DELETE FROM `creature_template` WHERE (`entry`='117131');
INSERT INTO `creature_template` VALUES (117131, 0, 0, 0, 0, 0, 1010, 0, 0, 0, 'Blackwood Tracker', NULL, NULL, 0, 14, 15, 0, 0, 82, 82, 0, 0.99, 1.14286, 1, 0, 20, 27, 0, 48, 1, 1860, 2046, 2, 0, 2048, 8, 0, 0, 0, 0, 0, 14, 21, 2, 7, 0, 0, 11713, 0, 0, 0, 0, 0, 0, 0, 0, 6950, 3391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 35, 0, 0, '', 15595);
DELETE FROM smart_scripts WHERE entryorguid IN (117131) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (117131, 0, 6, 0, 6, 0, 100, 0, 0, 0, 0, 0, 12, 117132, 6, 60, 0, 0, 0, 8, 0, 0, 0, 4381.65, -54.2990, 87.0697, 5.29925, 'Summon hostile mob');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='117131');

DELETE FROM `creature_template` WHERE (`entry`='117132');
INSERT INTO `creature_template` VALUES (117132, 0, 0, 0, 0, 0, 1010, 0, 0, 0, 'Blackwood Tracker', NULL, NULL, 0, 14, 15, 0, 0, 82, 82, 0, 0.99, 1.14286, 1, 0, 20, 27, 0, 48, 1, 1860, 2046, 2, 0, 2048, 8, 0, 0, 0, 0, 0, 14, 21, 2, 7, 0, 0, 11713, 0, 0, 0, 0, 0, 0, 0, 0, 6950, 3391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 35, 0, 0, '', 15595);
DELETE FROM smart_scripts WHERE entryorguid IN (117132) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (117132, 0, 7, 0, 6, 0, 100, 0, 0, 0, 0, 0, 12, 11714, 6, 60, 0, 0, 0, 8, 0, 0, 0, 4377.03, -53.2651, 86.4823, 5.45239, 'Summon hostile mob');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='117132');

UPDATE `quest_template` SET `RequiredNpcOrGo1`='11714', `RequiredNpcOrGoCount1`='1', `SpecialFlags`='0' WHERE (`Id`='5713');

-- Quest 13897 The Battle for Darkshore
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='34485');
DELETE FROM `creature` WHERE (`id`='34422');
INSERT INTO `creature` VALUES (null, 34422, 1, 1, 1, 0, 0, 4597.92, 890.434, 39.9018, 4.05728, 300, 0, 0, 21000, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='34485');
INSERT INTO `creature` VALUES (null, 34485, 1, 1, 1, 0, 0, 4608.99, 434.866, 18.9571, 1.11743, 300, 0, 0, 336, 0, 0, 0, 0, 0);

-- Quest 13953 Naga In Our Midst CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13899' WHERE (`Id`='13953');
UPDATE `quest_template` SET `NextQuestIdChain`='13900' WHERE (`Id`='13899');
UPDATE `quest_template` SET `PrevQuestId`='13953' WHERE (`Id`='13899');
UPDATE `quest_template` SET `PrevQuestId`='13899' WHERE (`Id`='13900');

-- Quest 13899 The Darkscale Warlord
DELETE FROM `creature_template` WHERE (`entry`='344230');
INSERT INTO `creature_template` VALUES (344230, 0, 0, 0, 0, 0, 29219, 0, 0, 0, 'Warlord Wrathspine', '', '', 0, 19, 19, 0, 0, 35, 35, 2, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);
UPDATE `creature_involvedrelation` SET `id`='344230' WHERE (`id`='34423') AND (`quest`='13899');
UPDATE `creature_questrelation` SET `id`='344230' WHERE (`id`='34423') AND (`quest`='13900');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='34423');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='34423');
INSERT INTO `smart_scripts` VALUES (34423, 0, 1, 2, 6, 0, 100, 0, 6, 6, 0, 0, 12, 344230, 6, 60, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Summon friendly copy');

-- Quest 13514 The Ancients' Ire - REMOVED - VEHICLE
 DELETE FROM `creature_questrelation` WHERE (`id`='33176') AND (`quest`='13514');
 
-- Quest 13506 Reason to Worry CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13508' WHERE (`Id`='13506');
UPDATE `quest_template` SET `NextQuestIdChain`='13511' WHERE (`Id`='13508');
UPDATE `quest_template` SET `PrevQuestId`='13506' WHERE (`Id`='13508');
UPDATE `quest_template` SET `PrevQuestId`='13508' WHERE (`Id`='13511');

-- Quest 13506 Reason to Worry
DELETE FROM `creature_loot_template` WHERE (`entry`='32863') AND (`item`='44979');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('32863', '44979', '50');
UPDATE `creature_template` SET `lootid`='32863' WHERE (`entry`='32863');

-- Quest 13590 The Front Line CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13515' WHERE (`Id`='13590');
UPDATE `quest_template` SET `PrevQuestId`='13590' WHERE (`Id`='13515');

-- Quest 13513 On the Brink
DELETE FROM `creature_loot_template` WHERE (`entry`='32860') AND (`item`='44942');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('32860', '44942', '83');
UPDATE `creature_template` SET `lootid`='32860' WHERE (`entry`='32860');

-- Quest 13509 War Supplies
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='33056');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='33056');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='33056');
INSERT INTO `smart_scripts` VALUES (33056, 0, 1, 2, 8, 0, 100, 0, 63578, 0, 0, 0, 33, 33056, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `smart_scripts` VALUES (33056, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='62624');
INSERT INTO `spell_linked_spell` VALUES (62624, 63578, 0, 'no comment');
DELETE FROM `gameobject` WHERE (`id`='194102');
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7729.66, -994.859, 33.9223, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7732.54, -1040.42, 38.1102, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7745.41, -984.120, 26.9499, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7756.60, -1049.65, 21.9942, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7765.16, -944.906, 31.4647, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7771.15, -1074.00, 18.7584, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7793.66, -987.202, 28.4004, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7800.05, -950.991, 33.6321, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7807.42, -1041.54, 29.4938, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7811.22, -1061.67, 32.5531, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7825.17, -960.542, 55.9949, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7825.18, -969.150, 38.8557, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7835.67, -1003.90, 32.8161, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7837.44, -988.354, 35.7757, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7838.56, -1069.64, 32.6401, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7874.71, -1089.89, 32.4243, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7886.61, -1016.01, 33.6503, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7890.27, -939.681, 5.39047, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7909.57, -1043.52, 32.6773, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7936.01, -879.779, 5.05636, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7967.92, -1108.32, 35.0080, 4.55531, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (null, 194102, 1, 1, 1, 7992.03, -1151.09, 34.6368, 4.55531, 0, 0, 0, 1, 120, 255, 1);

-- Quest 13512 Strategic Strikes
DELETE FROM `conditions` WHERE (`SourceEntry`='62599');
INSERT INTO `conditions` VALUES (17, 0, 62599, 0, 0, 29, 0, 341233, 35, 0, 0, 0, 0, '', 'Spell can be used only near Lorenth Thundercall or Sheya Stormweaver');
-- Bunny prevent spell bug abuse
DELETE FROM `creature_template` WHERE (`entry`='341233');
INSERT INTO `creature_template` VALUES (341233, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Strategic Strike Bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);
DELETE FROM `creature_template_addon` WHERE (`entry`='341233');
INSERT INTO `creature_template_addon` VALUES (341233, 0, 0, 65536, 1, 0, '64573 52855');
DELETE FROM `creature` WHERE (`id`='341233');
INSERT INTO `creature` VALUES (null, 341233, 1, 1, 1, 0, 0, 7102.91, -648.678, 61.0862, 5.74213, 300, 0, 0, 301, 1, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341233, 1, 1, 1, 0, 0, 7345.96, -942.139, 16.9184, 1.12481, 300, 0, 0, 301, 1, 0, 0, 0, 0);
-- Fix Bunny other quest was visible
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='34231');

-- Quest 13844 The Looting of Althalaxx
DELETE FROM `gameobject_template` WHERE (`entry`='194787');
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `questItem1`, `data0`, `data1`, `data6`, `data7`, `data8`) VALUES ('194787', '3', '2530', 'Charred Book', 'Examining', '45944', '43', '194787', '0', '194787', '13844');
UPDATE `quest_template` SET `RequiredItemId1`='45944', `RequiredItemId2`='0', `RequiredItemCount1`='1', `RequiredItemCount2`='0' WHERE (`Id`='13844');
UPDATE `gameobject_template` SET `faction`='35' WHERE (`entry`='194787');
DELETE FROM `gameobject_loot_template` WHERE (`entry`='194787') AND (`item`='45944');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('194787', '45944', '-100');

-- Quest 13521 Buzzbox 413 CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13527' WHERE (`Id`='13521');
UPDATE `quest_template` SET `NextQuestIdChain`='13528' WHERE (`Id`='13527');
UPDATE `quest_template` SET `NextQuestIdChain`='13554' WHERE (`Id`='13528');
UPDATE `quest_template` SET `PrevQuestId`='13521' WHERE (`Id`='13527');
UPDATE `quest_template` SET `PrevQuestId`='13527' WHERE (`Id`='13528');
UPDATE `quest_template` SET `PrevQuestId`='13528' WHERE (`Id`='13554');

-- Quest 13521 Buzzbox
DELETE FROM `creature_loot_template` WHERE (`entry`='32935') AND (`item`='44863');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('32935', '44863', '-40');
UPDATE `creature_template` SET `lootid`='32935' WHERE (`entry`='32935');
DELETE FROM `gameobject_template` WHERE (`entry`='194105');
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `data1`) VALUES ('194105', '2', '356', 'Buzzbox 413', '9477');

-- Quest 13527 No Accounting for Taste
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='32975');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('32975', '62113', '1');
UPDATE `creature_template` SET `npcflag`='16777216' WHERE (`entry`='32975');

-- Quest 13528 Buzzbox 723
DELETE FROM `creature_loot_template` WHERE (`entry`='33905') AND (`item`='44913');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('33905', '44913', '-35');
UPDATE `creature_template` SET `lootid`='33905' WHERE (`entry`='33905');
DELETE FROM `creature_loot_template` WHERE (`entry`='33009') AND (`item`='44913');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('33009', '44913', '-32');
UPDATE `creature_template` SET `lootid`='33009' WHERE (`entry`='33009');

-- Quest 13554 A Cure In The Dark
DELETE FROM `creature_loot_template` WHERE (`entry`='33021') AND (`item`='44966');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('33021', '44966', '-35');
UPDATE `creature_template` SET `lootid`='33021' WHERE (`entry`='33021');
DELETE FROM `creature_loot_template` WHERE (`entry`='33022') AND (`item`='44966');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('33022', '44966', '-34');
UPDATE `creature_template` SET `lootid`='33022' WHERE (`entry`='33022');
DELETE FROM `creature_loot_template` WHERE (`entry`='33020') AND (`item`='44966');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('33020', '44966', '-20');
UPDATE `creature_template` SET `lootid`='33020' WHERE (`entry`='33020');

-- Quest 13560 An Ocean Not So Deep - REMOVED
DELETE FROM `creature_questrelation` WHERE (`id`='32979') AND (`quest`='13560');

-- Quest 13563 A Love Eternal
DELETE FROM `creature` WHERE (`id`='32959');
INSERT INTO `creature` VALUES (null, 32959, 1, 1, 1, 0, 0, 7450.01, -269.225, 12.714, 3.17156, 300, 0, 0, 328, 0, 0, 0, 0, 0);
DELETE FROM `creature_loot_template` WHERE (`entry`='33181') AND (`item`='5382');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('33181', '5382', '-94');
UPDATE `creature_template` SET `lootid`='33181' WHERE (`entry`='33181');

-- Quest 13564 A Lost Companion
DELETE FROM `creature` WHERE (`id`='32960');
INSERT INTO `creature` VALUES (null, 32960, 1, 1, 1, 0, 0, 7445.9, -276.35, 13.7125, 1.55054, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`='32960');
INSERT INTO `creature_template_addon` (`entry`, `bytes1`) VALUES ('32960', '3');
UPDATE `creature_template_addon` SET `bytes1`='3', `auras`=NULL WHERE (`entry`='33053');
-- Fix Bunny other quest was visible
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='33296');

-- Quest 13522 Threat from the Water
UPDATE `creature_template_addon` SET `auras`=NULL WHERE (`entry`='32971');

-- Quest 13518 The Last Wave of Survivors
UPDATE `creature_template_addon` SET `auras`=NULL WHERE (`entry`='32973');
UPDATE `creature_template_addon` SET `auras`=NULL WHERE (`entry`='32972');
UPDATE `creature_template_addon` SET `auras`='29266' WHERE (`entry`='32974');

-- credit 1 / 4 
DELETE FROM `creature` WHERE (`id`='33093');
INSERT INTO `creature` VALUES (null, 33093, 1, 1, 1, 0, 0, 7371.35, 124.816, 12.7221, 1.26885, 300, 0, 0, 42, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName`='SmartAI', `npcflag`='1' WHERE (`entry`='33093');
DELETE FROM smart_scripts WHERE entryorguid IN (33093) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(33093,0,1,2,64,0,100,0,0,0,0,0,33,33093,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(33093,0,2,5,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(33093,0,5,0,61,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase");

update smart_scripts set event_flags = 0 WHERE entryorguid IN (33093) AND source_type = 0;

DELETE FROM `creature_text` WHERE (`entry`='33093') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('33093','1','0','I m returned safely. Thank you, hero! ','12','0','100','0','0','0','Life party');
DELETE FROM `creature_template_addon` WHERE (`entry`='33093');
INSERT INTO `creature_template_addon` (`entry`, `bytes1`) VALUES ('33093', '3');

-- credit 2 / 4 
DELETE FROM `creature` WHERE (`id`='32911');
INSERT INTO `creature` VALUES (null, 32911, 1, 1, 1, 0, 0, 7455.9, 164.105, 2.68151, 3.24804, 300, 0, 0, 42, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName`='SmartAI', `npcflag`='1' WHERE (`entry`='32911');
DELETE FROM smart_scripts WHERE entryorguid IN (32911) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(32911,0,1,2,64,0,100,0,0,0,0,0,33,32911,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(32911,0,2,5,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(32911,0,5,0,61,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase");

update smart_scripts set event_flags = 0 WHERE entryorguid IN (32911) AND source_type = 0;

DELETE FROM `creature_text` WHERE (`entry`='32911') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('32911','1','0','I m returned safely. Thank you, hero! ','12','0','100','0','0','0','Life party');
DELETE FROM `creature_template_addon` WHERE (`entry`='32911');
INSERT INTO `creature_template_addon` (`entry`, `bytes1`) VALUES ('32911', '3');

-- credit 3 / 4 
DELETE FROM `creature` WHERE (`id`='33095');
INSERT INTO `creature` VALUES (null, 33095, 1, 1, 1, 0, 0, 7296.72, 242.037, 1.79692, 6.07546, 300, 0, 0, 42, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName`='SmartAI', `npcflag`='1' WHERE (`entry`='33095');
DELETE FROM smart_scripts WHERE entryorguid IN (33095) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(33095,0,1,2,64,0,100,0,0,0,0,0,33,33095,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(33095,0,2,5,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(33095,0,5,0,61,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase");

update smart_scripts set event_flags = 0 WHERE entryorguid IN (33095) AND source_type = 0;

DELETE FROM `creature_text` WHERE (`entry`='33095') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('33095','1','0','I m returned safely. Thank you, hero! ','12','0','100','0','0','0','Life party');
DELETE FROM `creature_template_addon` WHERE (`entry`='33095');
INSERT INTO `creature_template_addon` (`entry`, `bytes1`) VALUES ('33095', '3');

-- credit 4 / 4 
DELETE FROM `creature` WHERE (`id`='33094');
INSERT INTO `creature` VALUES (null, 33094, 1, 1, 1, 0, 0, 7434.19, 101.503, 0.851412, 5.70185, 300, 0, 0, 42, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName`='SmartAI', `npcflag`='1' WHERE (`entry`='33094');
DELETE FROM smart_scripts WHERE entryorguid IN (33094) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(33094,0,1,2,64,0,100,0,0,0,0,0,33,33094,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(33094,0,2,5,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(33094,0,5,0,61,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase");

update smart_scripts set event_flags = 0 WHERE entryorguid IN (33094) AND source_type = 0;

DELETE FROM `creature_text` WHERE (`entry`='33094') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('33094','1','0','I m returned safely. Thank you, hero! ','12','0','100','0','0','0','Life party');
DELETE FROM `creature_template_addon` WHERE (`entry`='33094');
INSERT INTO `creature_template_addon` (`entry`, `bytes1`) VALUES ('33094', '3');

-- Quest 13566 Ritual Materials CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13569' WHERE (`Id`='13566');
UPDATE `quest_template` SET `PrevQuestId`='13566' WHERE (`Id`='13569');

-- Quest 13566 Ritual Materials
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='33127');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('33127', '62512', '2');
UPDATE `creature_template` SET `npcflag`='16777216' WHERE (`entry`='33127');
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='33313');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('33313', '62788', '2');
UPDATE `creature_template` SET `npcflag`='16777216' WHERE (`entry`='33313');
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='33978');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('33978', '64116', '2');
UPDATE `creature_template` SET `npcflag`='16777216', `faction_A`='7', `faction_H`='7' WHERE (`entry`='33978');

-- Quest 13569 The Ritual Bond
DELETE FROM `creature` WHERE (`id`='33048');
INSERT INTO `creature` VALUES (null, 33048, 1, 1, 2, 0, 0, 6543.15, 238.644, 7.54255, 2.50033, 300, 0, 0, 328, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 33048, 1, 1, 1, 0, 0, 6543.15, 238.644, 7.54255, 2.50033, 300, 0, 0, 328, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='33132');
INSERT INTO `creature` VALUES (null, 33132, 1, 1, 2, 0, 0, 6558.79, 278.673, 11.9915, 3.49605, 300, 0, 0, 42, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='33048');
DELETE FROM smart_scripts WHERE entryorguid IN (33048) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (33048, 0, 1, 2, 19, 0, 100, 0, 13569, 0, 0, 0, 11, 64198, 2, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'Cast Spell phase 2');
INSERT INTO `smart_scripts` VALUES (33048, 0, 2, 0, 20, 0, 100, 0, 13569, 0, 0, 0, 28, 64198, 2, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'Cast Spell phase 2');

DELETE FROM `creature_questrelation` WHERE (`id`='33132') AND (`quest`='13597');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('33132', '13597');
UPDATE `quest_template` SET `Method`='0', `Flags`='589824', `SpecialFlags`='4' WHERE (`Id`='13597');
UPDATE `creature_template` SET `npcflag`='3' WHERE (`entry`='33132');

-- Quest 13565 Twice Removed
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='64306');
INSERT INTO `spell_linked_spell` VALUES (64306, 85933, 0, 'no comment');
DELETE FROM `spell_scripts` WHERE (`datalong`='34010');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('85933', '8', '34010');

-- Quest 13547 Coaxing the Spirits CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13558' WHERE (`Id`='13547');
UPDATE `quest_template` SET `PrevQuestId`='13547' WHERE (`Id`='13558');

-- Quest 13577 The Last Wildkin CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13578' WHERE (`Id`='13577');
UPDATE `quest_template` SET `NextQuestIdChain`='13582' WHERE (`Id`='13578');
UPDATE `quest_template` SET `PrevQuestId`='13577' WHERE (`Id`='13578');
UPDATE `quest_template` SET `PrevQuestId`='13578' WHERE (`Id`='13582');

-- Quest 13897 The Battle for Darkshore
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='34385');
DELETE FROM `creature_loot_template` WHERE (`entry`='34385') AND (`item`='46692');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('34385', '46692', '-93');
UPDATE `creature_template` SET `lootid`='34385' WHERE (`entry`='34385');

-- Quest 13587 The Waking Nightmare CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13940' WHERE (`Id`='13587');
UPDATE `quest_template` SET `NextQuestIdChain`='13588' WHERE (`Id`='13940');
UPDATE `quest_template` SET `PrevQuestId`='13587' WHERE (`Id`='13940');
UPDATE `quest_template` SET `PrevQuestId`='13940' WHERE (`Id`='13588');

-- Quest 13586 The Emerald dream
DELETE FROM `creature` WHERE (`id`='34397');
INSERT INTO `creature` VALUES (null, 34397, 1, 1, 1, 0, 0, 5762.91, -151.475, 13.7702, 5.37305, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='34397');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('34397', '65409', '7');
UPDATE `creature_template` SET `npcflag`='16777216' WHERE (`entry`='34397');
DELETE FROM `creature` WHERE (`id`='33166');
INSERT INTO `creature` VALUES (null, 33166, 1, 1, 2, 0, 0, 5768.59, -160.473, 13.6501, 2.20004, 300, 0, 0, 4200, 0, 0, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`='33166');
INSERT INTO `creature_template_addon` (`entry`, `bytes1`) VALUES ('33166', '3');

-- Quest 13587 The Waking Nightmare
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='34398');
DELETE FROM `creature_loot_template` WHERE (`entry`='34398') AND (`item`='46695');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('34398', '46695', '-91');
UPDATE `creature_template` SET `lootid`='34398' WHERE (`entry`='34398');
DELETE FROM `creature` WHERE (`id`='34398');
INSERT INTO `creature` VALUES (null, 34398, 1, 1, 2, 0, 0, 5820.93, -173.413, -3.28693, 2.14901, 300, 0, 0, 42, 0, 0, 0, 0, 0);

-- Quest 13547 Coaxing the Spirits
-- credit 1 / 4 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='33037');
UPDATE `creature_template` SET `gossip_menu_id`='33037' WHERE (`entry`='33037');

delete from gossip_menu_option where menu_id = 33037;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(33037,0,"Coax the spirit out of Caylais Moonfeather's still corpse",1,1);

DELETE FROM smart_scripts WHERE entryorguid IN (33037) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(33037,0,1,2,62,0,100,1,33037,0,0,0,33,33037,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(33037,0,2,5,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(33037,0,5,0,61,0,100,1,0,0,0,0,85,62160,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cast Spirit Spell");
update smart_scripts set event_flags = 0 WHERE entryorguid IN (33037) AND source_type = 0;

-- credit 2 / 4 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='33035');
UPDATE `creature_template` SET `gossip_menu_id`='33035' WHERE (`entry`='33035');

delete from gossip_menu_option where menu_id = 33035;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(33035,0,"Coax Taldan's corpse to give up its spirit",1,1);

DELETE FROM smart_scripts WHERE entryorguid IN (33035) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(33035,0,1,2,62,0,100,1,33035,0,0,0,33,33035,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(33035,0,2,5,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(33035,0,5,0,61,0,100,1,0,0,0,0,85,62155,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cast Spirit Spell");
update smart_scripts set event_flags = 0 WHERE entryorguid IN (33035) AND source_type = 0;

-- credit 3 / 4 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='33033');
UPDATE `creature_template` SET `gossip_menu_id`='33033' WHERE (`entry`='33033');

delete from gossip_menu_option where menu_id = 33033;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(33033,0,"Coax the spirit out of Sentinel Elissa Starbreeze's still corpse",1,1);

DELETE FROM smart_scripts WHERE entryorguid IN (33033) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(33033,0,1,2,62,0,100,1,33033,0,0,0,33,33033,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(33033,0,2,5,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(33033,0,5,0,61,0,100,1,0,0,0,0,85,62152,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cast Spirit Spell");
update smart_scripts set event_flags = 0 WHERE entryorguid IN (33033) AND source_type = 0;

-- credit 4 / 4 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='33001');
UPDATE `creature_template` SET `gossip_menu_id`='33001' WHERE (`entry`='33001');

delete from gossip_menu_option where menu_id = 33001;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(33001,0,"Coax Thundris Windweaver's corpse to give up its spirit",1,1);

DELETE FROM smart_scripts WHERE entryorguid IN (33001) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(33001,0,1,2,62,0,100,1,33001,0,0,0,33,33001,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(33001,0,2,5,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(33001,0,5,0,61,0,100,1,0,0,0,0,85,62149,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cast Spirit Spell");
update smart_scripts set event_flags = 0 WHERE entryorguid IN (33001) AND source_type = 0;

-- Quest 13558 Call Down the Thunder
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14', `lootid`='33041' WHERE (`entry`='33041');
DELETE FROM `creature_loot_template` WHERE (`entry`='33041') AND (`item`='44929');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('33041', '44929', '-100');
UPDATE `creature_template` SET `modelid2`='0' WHERE (`entry`='32985');
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='33041');
DELETE FROM `creature` WHERE (`id`='33041');
INSERT INTO `creature` VALUES (null, 33041, 1, 1, 1, 0, 0, 6468.35, 683.327, 34.4002, 4.41568, 120, 0, 0, 1, 0, 0, 0, 0, 0);

-- Quest 13575 The Land Is in Their Blood CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13576' WHERE (`Id`='13575');
UPDATE `quest_template` SET `NextQuestIdChain`='13580' WHERE (`Id`='13576');
UPDATE `quest_template` SET `NextQuestIdChain`='13581' WHERE (`Id`='13580');
UPDATE `quest_template` SET `PrevQuestId`='13575' WHERE (`Id`='13576');
UPDATE `quest_template` SET `PrevQuestId`='13576' WHERE (`Id`='13580');
UPDATE `quest_template` SET `PrevQuestId`='13580' WHERE (`Id`='13581');

-- Quest 13580 Soothing the Elements
DELETE FROM `spell_scripts` WHERE (`datalong`='34367');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES ('95706', '10', '34367', '120000', '5530.36', '451.84', '33.688', '0.0713677');
DELETE FROM `item_template` WHERE (`entry`='46546');
INSERT INTO `item_template` (`entry`, `class`, `name`, `displayid`, `Quality`, `Flags`, `spellid_1`, `spellcooldown_1`, `bonding`, `Material`) VALUES ('46546', '12', 'Energized Soothing Totem', '59836', '1', '2112', '95706', '30000', '4', '-1');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='95706');
INSERT INTO `spell_linked_spell` VALUES (95706, 58178, 0, 'no comment');
DELETE FROM `conditions` WHERE (`SourceEntry`='95706');
INSERT INTO `conditions` VALUES (17, 0, 95706, 0, 0, 29, 0, 341234, 20, 0, 0, 0, 0, '', 'Spell can be used only near Flamestone at the blazing strand');
-- Bunny prevent spell bug abuse
DELETE FROM `creature_template` WHERE (`entry`='341234');
INSERT INTO `creature_template` VALUES (341234, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Flamestone of the blazing strand Bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);
DELETE FROM `creature_template_addon` WHERE (`entry`='341234');
INSERT INTO `creature_template_addon` VALUES (341234, 0, 0, 65536, 1, 0, '64573 52855');
DELETE FROM `creature` WHERE (`id`='341234');
INSERT INTO `creature` VALUES (null, 341234, 1, 1, 1, 0, 0, 5530.36, 451.84, 33.688, 5.74213, 300, 0, 0, 301, 1, 0, 0, 0, 0);
DELETE FROM smart_scripts WHERE entryorguid IN (341234) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341234, 0, 1, 2, 8, 0, 100, 0, 58178, 0, 0, 0, 12, 34368, 6, 60, 0, 0, 0, 8, 0, 0, 0, 5534.04, 458.32, 29.9244, 4.079, 'Summon hostile mob');
INSERT INTO `smart_scripts` VALUES (341234, 0, 2, 5, 8, 0, 100, 0, 58178, 0, 0, 0, 12, 34368, 6, 60, 0, 0, 0, 8, 0, 0, 0, 5539.63, 453.29, 31.2066, 3.309, 'Summon hostile mob');
INSERT INTO `smart_scripts` VALUES (341234, 0, 5, 6, 8, 0, 100, 0, 58178, 0, 0, 0, 12, 34368, 6, 60, 0, 0, 0, 8, 0, 0, 0, 5532.15, 449.49, 35.2787, 1.125, 'Summon hostile mob');
INSERT INTO `smart_scripts` VALUES (341234, 0, 6, 0, 8, 0, 100, 0, 58178, 0, 0, 0, 12, 34370, 6, 60, 0, 0, 0, 8, 0, 0, 0, 5522.18, 447.80, 36.0272, 0.324, 'Summon hostile mob');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='34368');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='34370');
UPDATE `quest_template` SET `RequiredNpcOrGo1`='34370' WHERE (`Id`='13580');
update smart_scripts set event_flags = 0 WHERE entryorguid IN (33093) AND source_type = 0;

-- Quest 13579 Protector of Ameth'Aran CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13584' WHERE (`Id`='13579');
UPDATE `quest_template` SET `NextQuestIdChain`='13585' WHERE (`Id`='13584');
UPDATE `quest_template` SET `PrevQuestId`='13579' WHERE (`Id`='13584');
UPDATE `quest_template` SET `PrevQuestId`='13584' WHERE (`Id`='13585');

-- Quest 13892 / 13948 Leave No Tracks CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13948' WHERE (`Id`='13892');
UPDATE `quest_template` SET `PrevQuestId`='13892' WHERE (`Id`='13948');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='13892');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='65426');
INSERT INTO `spell_linked_spell` VALUES (65426, 70365, 0, 'no comment');
DELETE FROM `spell_scripts` WHERE (`datalong`='34410');
INSERT INTO `spell_scripts` (`id`, `command`, `delay`, `datalong`) VALUES ('70365', '8', '25', '34410');
UPDATE `quest_template` SET `RequiredNpcOrGo1`='34410' WHERE (`Id`='13948');

-- Quest 13881 Consumed CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13882' WHERE (`Id`='13881');
UPDATE `quest_template` SET `NextQuestIdChain`='13925' WHERE (`Id`='13882');
UPDATE `quest_template` SET `NextQuestIdChain`='13885' WHERE (`Id`='13925');
UPDATE `quest_template` SET `NextQuestIdChain`='13891' WHERE (`Id`='13885');
UPDATE `quest_template` SET `PrevQuestId`='13881' WHERE (`Id`='13882');
UPDATE `quest_template` SET `PrevQuestId`='13882' WHERE (`Id`='13925');
UPDATE `quest_template` SET `PrevQuestId`='13925' WHERE (`Id`='13885');
UPDATE `quest_template` SET `PrevQuestId`='13885' WHERE (`Id`='13891');

-- Quest 13882 The Seeds of Life
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='33072');
UPDATE `creature_template` SET `gossip_menu_id`='33072' WHERE (`entry`='33072');

delete from gossip_menu_option where menu_id = 33072;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(33072,0,"Ancient Onu, where may I find a Seed of the Earth?",1,1);

DELETE FROM smart_scripts WHERE entryorguid IN (33072) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(33072,0,1,2,62,0,100,1,33072,0,0,0,56, 46354, 1,0,0,0,0,0,0,0,0,0,0,0,0,"Party credit"),
(33072,0,2,5,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip");
update smart_scripts set event_flags = 0 WHERE entryorguid IN (33072) AND source_type = 0;

DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='34306');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('34306', '65125', '1');
UPDATE `creature_template` SET `npcflag`='16777216' WHERE (`entry`='34306');
DELETE FROM `gameobject_template` WHERE (`entry`='195021');
INSERT INTO `gameobject_template` VALUES (195021, 3, 261, 'Glittering Shell', '', 'Opening', '', 0, 4, 0.3, 46356, 0, 0, 0, 0, 0, 1634, 195021, 0, 1, 0, 0, 195021, 13882, 0, 0, 0, 0, 0, 0, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
DELETE FROM `gameobject_loot_template` WHERE (`entry`='195021') AND (`item`='46356');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('195021', '46356', '-100');

-- Quest 13925 An Ounce of Prevention
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='2165');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='2165');
INSERT INTO `smart_scripts` VALUES (2165, 0, 1, 2, 8, 0, 100, 0, 65188, 0, 0, 0, 33, 34373, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='34318');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='34318');
INSERT INTO `smart_scripts` VALUES (34318, 0, 1, 2, 8, 0, 100, 0, 65188, 0, 0, 0, 33, 34373, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='2071');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='2071');
INSERT INTO `smart_scripts` VALUES (2071, 0, 1, 2, 8, 0, 100, 0, 65188, 0, 0, 0, 33, 34373, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='2237');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='2237');
INSERT INTO `smart_scripts` VALUES (2237, 0, 1, 2, 8, 0, 100, 0, 65188, 0, 0, 0, 33, 34373, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- Quest 13900 The Offering to Azshara
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='13900');
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGoCount1`='0' WHERE (`Id`='13900');

-- Quest 13912 Swamped Secrets CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13918' WHERE (`Id`='13912');
UPDATE `quest_template` SET `PrevQuestId`='13912' WHERE (`Id`='13918');

-- Quest 13918 The Titans' Terminal
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='34356');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='34356');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='34356');
INSERT INTO `smart_scripts` VALUES (34356, 0, 1, 2, 8, 0, 100, 0, 58178, 0, 0, 0, 50, 195055, 30, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `gameobject_loot_template` WHERE (`entry`='195055') AND (`item`='46702');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('195055', '46702', '-44');
DELETE FROM `gameobject_template` WHERE (`entry`='195055');
INSERT INTO `gameobject_template` VALUES (195055, 3, 768, 'Buried Debris', '', 'Opening', '', 0, 4, 1.3, 46702, 0, 0, 0, 0, 0, 1634, 195055, 0, 1, 0, 0, 195055, 13918, 0, 0, 0, 0, 0, 0, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
DELETE FROM `item_template` WHERE (`entry`='46388');
INSERT INTO `item_template` (`entry`, `class`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `delay`, `spellid_1`, `spellcooldown_1`, `bonding`, `description`, `Material`) VALUES ('46388', '12', 'Buried Artifact Detector', '70849', '1', '65536', '8192', '0', '58178', '1500', '4', 'A heavy, corroded battery wired sloppily to a large metal dish.', '4');

-- Quest 13907 Swamped Secrets CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13909' WHERE (`Id`='13907');
UPDATE `quest_template` SET `NextQuestIdChain`='13910' WHERE (`Id`='13909');
UPDATE `quest_template` SET `PrevQuestId`='13907' WHERE (`Id`='13909');
UPDATE `quest_template` SET `PrevQuestId`='13909' WHERE (`Id`='13910');

-- Quest 13910 Swamped Secrets
UPDATE `gameobject_template` SET `data2`='195043' WHERE (`entry`='195043');
DELETE FROM `spell_scripts` WHERE (`datalong`='34349');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('85933', '8', '34349');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='65273');
INSERT INTO `spell_linked_spell` VALUES (65273, 85933, 0, 'no comment');
INSERT INTO `spell_linked_spell` VALUES (65273, 62464, 0, 'no comment');
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='34346');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='34346');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='34346');
INSERT INTO `smart_scripts` VALUES (34346, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 12, 34347, 6, 60, 0, 0, 0, 8, 0, 0, 0, 4687.88, 700.28, 1.13895, 6.283, 'Happy Greymist Murloc');
INSERT INTO `smart_scripts` VALUES (34346, 0, 2, 5, 8, 0, 100, 0, 62464, 0, 0, 0, 12, 34347, 6, 60, 0, 0, 0, 8, 0, 0, 0, 4695.28, 693.12, 1.03283, 0.094, 'Happy Greymist Murloc');
INSERT INTO `smart_scripts` VALUES (34346, 0, 5, 6, 8, 0, 100, 0, 62464, 0, 0, 0, 12, 34347, 6, 60, 0, 0, 0, 8, 0, 0, 0, 4687.65, 688.23, 1.95420, 1.213, 'Happy Greymist Murloc');
INSERT INTO `smart_scripts` VALUES (34346, 0, 6, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 12, 34347, 6, 60, 0, 0, 0, 8, 0, 0, 0, 4686.82, 694.81, 1.41614, 0.946, 'Happy Greymist Murloc');

-- Quest 13896 Unearthed Knowledge CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13893' WHERE (`Id`='13896');
UPDATE `quest_template` SET `PrevQuestId`='13896' WHERE (`Id`='13893');

-- Quest 13526 The Bear's Paw CHAIN TIMELINE FIX
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGoCount1`='0', `RequiredNpcOrGo2`='0', `RequiredNpcOrGoCount3`='0', `RequiredNpcOrGo3`='0', `RequiredNpcOrGoCount3`='0' WHERE (`Id`='13885');
UPDATE `quest_template` SET `NextQuestIdChain`='13544' WHERE (`Id`='13526');
UPDATE `quest_template` SET `NextQuestIdChain`='13545' WHERE (`Id`='13544');
UPDATE `quest_template` SET `NextQuestIdChain`='13546' WHERE (`Id`='13545');
UPDATE `quest_template` SET `PrevQuestId`='13526' WHERE (`Id`='13544');
UPDATE `quest_template` SET `PrevQuestId`='13544' WHERE (`Id`='13545');
UPDATE `quest_template` SET `PrevQuestId`='13545' WHERE (`Id`='13546');

-- Quest 13544 The Bear's Blessing
UPDATE `creature_template` SET `lootid`='32997' WHERE (`entry`='32997');
DELETE FROM `creature_loot_template` WHERE (`entry`='32997') AND (`item`='44886');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('32997', '44886', '-81');

-- Quest 13545 Cleansing the Afflicted
DELETE FROM `spell_scripts` WHERE (`datalong`='33000');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('85933', '8', '33000');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='62092');
INSERT INTO `spell_linked_spell` VALUES (62092, 85933, 0, 'no comment');

-- Quest 13885 In Defense of Darkshore AUTOCOMPLE VEHICLE
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='13885');
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGoCount1`='0', `RequiredNpcOrGo2`='0', `RequiredNpcOrGoCount3`='0', `RequiredNpcOrGo3`='0', `RequiredNpcOrGoCount3`='0' WHERE (`Id`='13885');

-- Quest 13891 The Devourer of Darkshore
DELETE FROM `item_template` WHERE (`entry`='46370');
INSERT INTO `item_template` (`entry`, `class`, `name`, `displayid`, `Flags`, `FlagsExtra`, `delay`, `spellid_1`, `bonding`, `Material`) VALUES ('46370', '12', 'Lifebringer Sapling', '4969', '65600', '8192', '0', '56911', '4', '1');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='56911');
INSERT INTO `spell_linked_spell` VALUES (56911, 62464, 0, 'no comment');
DELETE FROM `conditions` WHERE (`SourceEntry`='56911');
INSERT INTO `conditions` VALUES (17, 0, 56911, 0, 0, 30, 0, 195057, 13, 0, 0, 0, 0, '', 'Spell can be used only near Devouring Artifact');
-- Bunny prevent spell bug abuse
DELETE FROM `creature_template` WHERE (`entry`='341235');
INSERT INTO `creature_template` VALUES (341235, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Devouring Artifact Bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);
DELETE FROM `creature_template_addon` WHERE (`entry`='341235');
INSERT INTO `creature_template_addon` VALUES (341235, 0, 0, 65536, 1, 0, '64573 52855');
DELETE FROM `creature` WHERE (`id`='341235');
INSERT INTO `creature` VALUES (null, 341235, 1, 1, 1, 0, 0, 4809.48, 105.594, 35.9511, 5.74213, 300, 0, 0, 301, 1, 0, 0, 0, 0);
DELETE FROM smart_scripts WHERE entryorguid IN (341235) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341235, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 12, 34331, 6, 60, 0, 0, 0, 8, 0, 0, 0, 4809.48, 105.594, 40.9511, 5.825, 'Summon hostile mob');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='34331');
-- Fix Bunny other quest was visible
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='34334');






