-- Quest 26793 The Weathered Grave CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26794' WHERE (`Id`='26793');
UPDATE `quest_template` SET `NextQuestIdChain`='26795' WHERE (`Id`='26794');
UPDATE `quest_template` SET `NextQuestIdChain`='26796' WHERE (`Id`='26795');
UPDATE `quest_template` SET `NextQuestIdChain`='26797' WHERE (`Id`='26796');
UPDATE `quest_template` SET `PrevQuestId`='26793' WHERE (`Id`='26794');
UPDATE `quest_template` SET `PrevQuestId`='26794' WHERE (`Id`='26795');
UPDATE `quest_template` SET `PrevQuestId`='26795' WHERE (`Id`='26796');
UPDATE `quest_template` SET `PrevQuestId`='26796' WHERE (`Id`='26797');

-- Quest 26793 The Weathered Grave
UPDATE `gameobject_template` SET `flags`='0' WHERE (`entry`='61');

-- Quest 26723 The Fate of Morbent Fel CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26724' WHERE (`Id`='26723');
UPDATE `quest_template` SET `NextQuestIdChain`='26725' WHERE (`Id`='26724');
UPDATE `quest_template` SET `NextQuestIdChain`='26753' WHERE (`Id`='26725');
UPDATE `quest_template` SET `NextQuestIdChain`='26722' WHERE (`Id`='26753');
UPDATE `quest_template` SET `NextQuestIdChain`='26754' WHERE (`Id`='26722');
UPDATE `quest_template` SET `PrevQuestId`='26723' WHERE (`Id`='26724');
UPDATE `quest_template` SET `PrevQuestId`='26724' WHERE (`Id`='26725');
UPDATE `quest_template` SET `PrevQuestId`='26725' WHERE (`Id`='26753');
UPDATE `quest_template` SET `PrevQuestId`='26753' WHERE (`Id`='26722');
UPDATE `quest_template` SET `PrevQuestId`='26722' WHERE (`Id`='26754');

-- Fix some wrong auras
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='288');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='43730');

-- Quest 26723 The Fate of Morbent Fel
DELETE FROM `creature` WHERE (`id`='43861');
INSERT INTO `creature` VALUES (null, 43861, 0, 1, 1, 0, 0, -10761.6, 337.461, 37.7376, 5.26004, 300, 0, 0, 699, 0, 0, 0, 0, 0);

-- Quest 26725 Guided by the Light
UPDATE `gameobject_template` SET `flags`='0' WHERE (`entry`='204817');

-- Quest 26723 The Jitters-Bugs CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26787' WHERE (`Id`='26721');
UPDATE `quest_template` SET `PrevQuestId`='26721' WHERE (`Id`='26787');

-- Quest 26723 The Jitters-Bugs
UPDATE `creature_template` SET `lootid`='45582' WHERE (`entry`='45582');
DELETE FROM `creature_loot_template` WHERE (`entry`='45582') AND (`item`='60207');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('45582', '60207', '-75');
UPDATE `creature_template` SET `lootid`='930' WHERE (`entry`='930');
DELETE FROM `creature_loot_template` WHERE (`entry`='930') AND (`item`='60207');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('930', '60207', '-35');

-- Quest 26723 The Jitters-Bugs
UPDATE `creature_template` SET `lootid`='44016' WHERE (`entry`='44016');
DELETE FROM `creature_loot_template` WHERE (`entry`='44016') AND (`item`='60334');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44016', '60334', '-55');

-- Quest 26717 The Yorgen Worgen CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26719' WHERE (`Id`='26717');
UPDATE `quest_template` SET `NextQuestIdChain`='26720' WHERE (`Id`='26719');
UPDATE `quest_template` SET `NextQuestIdChain`='26760' WHERE (`Id`='26720');
UPDATE `quest_template` SET `PrevQuestId`='26717' WHERE (`Id`='26719');
UPDATE `quest_template` SET `PrevQuestId`='26719' WHERE (`Id`='26720');
UPDATE `quest_template` SET `PrevQuestId`='26720' WHERE (`Id`='26760');

-- Quest 26720 A Curse We Cannot Lift
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='82058');
INSERT INTO `spell_linked_spell` VALUES (82058, 58178, 0, 'trigger spell');

UPDATE `creature_template` SET `unit_flags`='0', `AIName`='SmartAI' WHERE (`entry`='43814');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='43814');
INSERT INTO `smart_scripts` VALUES (43814, 0, 1, 2, 8, 0, 100, 0, 58178, 0, 0, 0, 33,43860,0,0,0,0,0,21,5,0,0,0,0,0,0,"Credit when use item quest on the mob");
INSERT INTO `smart_scripts` VALUES (43814, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

-- Quest 26760 Cry For The Moon AUTOCOMPLETE  - missing animation
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGoCount1`='0' WHERE (`Id`='26760');

-- Quest 26838 Rebels Without a Clue CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26735' WHERE (`Id`='26838');
UPDATE `quest_template` SET `NextQuestIdChain`='26736' WHERE (`Id`='26735');
UPDATE `quest_template` SET `NextQuestIdChain`='26737' WHERE (`Id`='26736');
UPDATE `quest_template` SET `PrevQuestId`='26838' WHERE (`Id`='26735');
UPDATE `quest_template` SET `PrevQuestId`='26735' WHERE (`Id`='26736');
UPDATE `quest_template` SET `PrevQuestId`='26736' WHERE (`Id`='26737');

-- Quest 26777 Soothing Spirits
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='82194');
INSERT INTO `spell_linked_spell` VALUES (82194, 58178, 0, 'trigger spell');

UPDATE `creature_template` SET `unit_flags`='0', `AIName`='SmartAI' WHERE (`entry`='43923');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='43923');
INSERT INTO `smart_scripts` VALUES (43923, 0, 1, 2, 8, 0, 100, 0, 58178, 0, 0, 0, 33,43930,0,0,0,0,0,21,10,0,0,0,0,0,0,"Credit when use item quest on the mob");
INSERT INTO `smart_scripts` VALUES (43923, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Die');

-- Quest 26653 Supplies from Darkshire CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26652' WHERE (`Id`='26653');
UPDATE `quest_template` SET `NextQuestIdChain`='26654' WHERE (`Id`='26652');
UPDATE `quest_template` SET `NextQuestIdChain`='26655' WHERE (`Id`='26654');
UPDATE `quest_template` SET `NextQuestIdChain`='26660' WHERE (`Id`='26655');
UPDATE `quest_template` SET `NextQuestIdChain`='26661' WHERE (`Id`='26660');
UPDATE `quest_template` SET `NextQuestIdChain`='26676' WHERE (`Id`='26661');
UPDATE `quest_template` SET `NextQuestIdChain`='26680' WHERE (`Id`='26676');
UPDATE `quest_template` SET `NextQuestIdChain`='26677' WHERE (`Id`='26680');
UPDATE `quest_template` SET `NextQuestIdChain`='26681' WHERE (`Id`='26677');
UPDATE `quest_template` SET `NextQuestIdChain`='26727' WHERE (`Id`='26681');
UPDATE `quest_template` SET `PrevQuestId`='26653' WHERE (`Id`='26652');
UPDATE `quest_template` SET `PrevQuestId`='26652' WHERE (`Id`='26654');
UPDATE `quest_template` SET `PrevQuestId`='26654' WHERE (`Id`='26655');
UPDATE `quest_template` SET `PrevQuestId`='26655' WHERE (`Id`='26660');
UPDATE `quest_template` SET `PrevQuestId`='26660' WHERE (`Id`='26661');
UPDATE `quest_template` SET `PrevQuestId`='26661' WHERE (`Id`='26676');
UPDATE `quest_template` SET `PrevQuestId`='26676' WHERE (`Id`='26680');
UPDATE `quest_template` SET `PrevQuestId`='26680' WHERE (`Id`='26677');
UPDATE `quest_template` SET `PrevQuestId`='26677' WHERE (`Id`='26681');
UPDATE `quest_template` SET `PrevQuestId`='26681' WHERE (`Id`='26727');

-- Quest 26727 The Embalmer's Revenge
DELETE FROM `creature` WHERE (`id`='43862');
INSERT INTO `creature` VALUES (null, 43862, 0, 1, 1, 0, 0, -10584.3, -1137.5, 27.501, 5.37773, 300, 0, 0, 210, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='43862');

-- Quest 26623 Dusky Crab Cakes
DELETE FROM `creature` WHERE (`id`='272');
INSERT INTO `creature` VALUES (null, 272, 0, 1, 1, 0, 0, -10499.3, -1157.98, 28.0867, 1.62644, 120, 0, 0, 1, 0, 0, 0, 0, 0);

-- Quest 26728 Hero's Call: Duskwood!
UPDATE `quest_template` SET `NextQuestIdChain`='26618' WHERE (`Id`='26728');
UPDATE `quest_template` SET `PrevQuestId`='26728' WHERE (`Id`='26618');

-- Quest 26645 The Night Watch
UPDATE `quest_template` SET `NextQuestIdChain`='26686' WHERE (`Id`='26645');
UPDATE `quest_template` SET `PrevQuestId`='26645' WHERE (`Id`='26686');

-- Quest 26674 Mistmantle's Revenge
DELETE FROM `item_template` WHERE (`entry`='59363');
INSERT INTO `item_template` (`entry`, `class`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `delay`, `spellid_1`, `spellcooldown_1`, `bonding`, `Material`) VALUES ('59363', '12', 'Mistmantle Family Ring', '6538', '1', '64', '8192', '0', '58178', '10000', '4', '4');
DELETE FROM `creature` WHERE (`id`='341245');
INSERT INTO `creature` VALUES (null, 341245, 0, 1, 1, 0, 1, -10368.2, -1257.06, 35.9107, 0.115647, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM `creature_template` WHERE (`entry`='341245');
INSERT INTO `creature_template` VALUES (341245, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Mistmantle Bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 15595);
DELETE FROM `creature_template_addon` WHERE (`entry`='341245');
INSERT INTO `creature_template_addon` VALUES (341245, 0, 0, 65536, 1, 0, '64573 52855');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='341245');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='341245');
INSERT INTO `smart_scripts` VALUES (341245, 0, 1, 0, 8, 0, 100, 0, 58178, 0, 0, 0, 12, 315, 7, 80000, 0, 0, 0, 8, 0, 0, 0, -10368.2, -1257.06, 35.9107, 0.115647, 'Summon Mistmantle');
