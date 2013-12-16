-- Quest 25723 Thresh Out of Luck CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25725' WHERE (`Id`='25723');
UPDATE `quest_template` SET `NextQuestIdChain`='25735' WHERE (`Id`='25725');
UPDATE `quest_template` SET `PrevQuestId`='25723' WHERE (`Id`='25725');
UPDATE `quest_template` SET `PrevQuestId`='25725' WHERE (`Id`='25735');

-- Quest 25723 Thresh Out of Luck
UPDATE `creature_template` SET `lootid`='41137' WHERE (`entry`='41137');
DELETE FROM `creature_loot_template` WHERE (`entry`='41137') AND (`item`='55232');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('41137', '55232', '-100');

-- Quest 25725 Fenbush Berries
DELETE FROM `gameobject_loot_template` WHERE (`entry`='29571') AND (`item`='55233');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('29571', '55233', '-100');

-- Quest 25722 Sedimentary, My Dear CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25726' WHERE (`Id`='25722');
UPDATE `quest_template` SET `NextQuestIdChain`='25734' WHERE (`Id`='25726');
UPDATE `quest_template` SET `PrevQuestId`='25722' WHERE (`Id`='25726');
UPDATE `quest_template` SET `PrevQuestId`='25726' WHERE (`Id`='25734');

-- Quest 25722 Sedimentary, My Dear
DELETE FROM `gameobject_loot_template` WHERE (`entry`='29569') AND (`item`='55231');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('29569', '55231', '-100');

-- Quest 25726 A Dumpy Job
UPDATE `creature_template` SET `lootid`='41145' WHERE (`entry`='41145');
DELETE FROM `creature_loot_template` WHERE (`entry`='41145') AND (`item`='55234');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('41145', '55234', '-10');

-- Quest 26137 Checking on the Boys CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25395' WHERE (`Id`='26137');
UPDATE `quest_template` SET `NextQuestIdChain`='25395' WHERE (`Id`='28565');
UPDATE `quest_template` SET `NextQuestIdChain`='25770' WHERE (`Id`='25395');
UPDATE `quest_template` SET `NextQuestIdChain`='25721' WHERE (`Id`='25770');
UPDATE `quest_template` SET `NextQuestIdChain`='25727' WHERE (`Id`='25721');
UPDATE `quest_template` SET `NextQuestIdChain`='25733' WHERE (`Id`='25727');
UPDATE `quest_template` SET `NextQuestIdChain`='25777' WHERE (`Id`='25733');
UPDATE `quest_template` SET `NextQuestIdChain`='25780' WHERE (`Id`='25777');
UPDATE `quest_template` SET `PrevQuestId`='26137' WHERE (`Id`='25395');
UPDATE `quest_template` SET `PrevQuestId`='25395' WHERE (`Id`='25770');
UPDATE `quest_template` SET `PrevQuestId`='25770' WHERE (`Id`='25721');
UPDATE `quest_template` SET `PrevQuestId`='25721' WHERE (`Id`='25727');
UPDATE `quest_template` SET `PrevQuestId`='25727' WHERE (`Id`='25733');
UPDATE `quest_template` SET `PrevQuestId`='25733' WHERE (`Id`='25777');
UPDATE `quest_template` SET `PrevQuestId`='25777' WHERE (`Id`='25780');

-- Quest 25727 Drungeld Glowerglare
UPDATE `creature_template` SET `lootid`='41151' WHERE (`entry`='41151');
DELETE FROM `creature_loot_template` WHERE (`entry`='41151') AND (`item`='55988');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('41151', '55988', '-100');

-- Quest 25939 For Peat's Sake CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26196' WHERE (`Id`='25939');
UPDATE `quest_template` SET `PrevQuestId`='25939' WHERE (`Id`='26196');

-- Quest 25939 For Peat's Sake
UPDATE `creature_template` SET `modelid1`='11686', `modelid2`='0' WHERE (`entry`='41628');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='41628');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='41628');
INSERT INTO `smart_scripts` VALUES (41628, 0, 1, 2, 8, 0, 100, 0, 77571, 0, 0, 0, 33, 41628, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `smart_scripts` VALUES (41628, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- Quest 25926 Mired in Hatred CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25927' WHERE (`Id`='25926');
UPDATE `quest_template` SET `PrevQuestId`='25926' WHERE (`Id`='25927');

-- Quest 25853 Tooling Around
DELETE FROM `gameobject_loot_template` WHERE (`entry`='29626') AND (`item`='56082');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('29626', '56082', '-100');

-- Quest 26981 Whelgar's Retreat CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25849' WHERE (`Id`='26981');
UPDATE `quest_template` SET `NextQuestIdChain`='26189' WHERE (`Id`='25849');
UPDATE `quest_template` SET `NextQuestIdChain`='26195' WHERE (`Id`='26189');
UPDATE `quest_template` SET `PrevQuestId`='26981' WHERE (`Id`='25849');
UPDATE `quest_template` SET `PrevQuestId`='25849' WHERE (`Id`='26189');
UPDATE `quest_template` SET `PrevQuestId`='26189' WHERE (`Id`='26195');

-- Quest 25727 Drungeld Glowerglare
UPDATE `creature_template` SET `lootid`='41388' WHERE (`entry`='41388');
DELETE FROM `creature_loot_template` WHERE (`entry`='41388') AND (`item`='56083');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES ('41388', '56083', '-78', '3');
UPDATE `creature_template` SET `lootid`='44226' WHERE (`entry`='44226');
DELETE FROM `creature_loot_template` WHERE (`entry`='44226') AND (`item`='56083');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES ('44226', '56083', '-8', '3');

-- Quest 26327 Anvilmar the Hero CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26127' WHERE (`Id`='26327');
UPDATE `quest_template` SET `NextQuestIdChain`='26128' WHERE (`Id`='26127');
UPDATE `quest_template` SET `NextQuestIdChain`='26139' WHERE (`Id`='26128');
UPDATE `quest_template` SET `NextQuestIdChain`='26093' WHERE (`Id`='26139');
UPDATE `quest_template` SET `NextQuestIdChain`='26093' WHERE (`Id`='28573');
UPDATE `quest_template` SET `NextQuestIdChain`='26095' WHERE (`Id`='26093');
UPDATE `quest_template` SET `PrevQuestId`='26327' WHERE (`Id`='26127');
UPDATE `quest_template` SET `PrevQuestId`='26127' WHERE (`Id`='26128');
UPDATE `quest_template` SET `PrevQuestId`='26128' WHERE (`Id`='26139');
UPDATE `quest_template` SET `PrevQuestId`='26128' WHERE (`Id`='28573');
UPDATE `quest_template` SET `PrevQuestId`='26139' WHERE (`Id`='26093');
UPDATE `quest_template` SET `PrevQuestId`='26093' WHERE (`Id`='26095');

-- Quest 26128 The Battle of Thandol Span
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='26128');
DELETE FROM `creature` WHERE (`id`='41522');
INSERT INTO `creature` VALUES (null, 41522, 0, 1, 1, 0, 0, -2391.66, -2508.3, 88.0528, 3.09162, 300, 0, 0, 84, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A`='14' WHERE (`entry`='41522');

-- Quest 25856 Crocolisk Hides CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25857' WHERE (`Id`='25856');
UPDATE `quest_template` SET `PrevQuestId`='25856' WHERE (`Id`='25857');

-- Quest 25856 Crocolisk Hides
UPDATE `creature_template` SET `lootid`='41419' WHERE (`entry`='41419');
DELETE FROM `creature_loot_template` WHERE (`entry`='41419') AND (`item`='56087');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('41419', '56087', '-80');

-- Quest 25857 Hunting Horrorjaw
UPDATE `creature_template` SET `lootid`='41420' WHERE (`entry`='41420');
DELETE FROM `creature_loot_template` WHERE (`entry`='41420') AND (`item`='56089');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('41420', '56089', '-100');

-- Quest 25854 I'll Call Him Bitey CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25855' WHERE (`Id`='25854');
UPDATE `quest_template` SET `PrevQuestId`='25854' WHERE (`Id`='25855');

-- Quest 26980 Swiftgear Station CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25864' WHERE (`Id`='26980');
UPDATE `quest_template` SET `NextQuestIdChain`='25865' WHERE (`Id`='25864');
UPDATE `quest_template` SET `PrevQuestId`='26980' WHERE (`Id`='25864');
UPDATE `quest_template` SET `PrevQuestId`='25864' WHERE (`Id`='25865');

-- Quest 25865 The Mosshide Job
UPDATE `creature_template` SET `lootid`='41390' WHERE (`entry`='41390');
DELETE FROM `creature_loot_template` WHERE (`entry`='41390') AND (`item`='56088');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('41390', '56088', '-55');
UPDATE `creature_template` SET `lootid`='41391' WHERE (`entry`='41391');
DELETE FROM `creature_loot_template` WHERE (`entry`='41391') AND (`item`='56088');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('41391', '56088', '-50');

-- Quest 25866 Dark Iron Trappers CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25868' WHERE (`Id`='25866');
UPDATE `quest_template` SET `NextQuestIdChain`='25868' WHERE (`Id`='25867');
UPDATE `quest_template` SET `PrevQuestId`='25866' WHERE (`Id`='25868');

-- Quest 25867 Gnoll Escape
UPDATE `creature_template` SET `lootid`='41409' WHERE (`entry`='41409');
DELETE FROM `creature_loot_template` WHERE (`entry`='41409') AND (`item`='56081');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('41409', '56081', '-80');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='77533');
INSERT INTO `spell_linked_spell` VALUES (77533, 85933, 0, 'spell credit');
DELETE FROM `spell_scripts` WHERE (`datalong`='41438');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('85933', '8', '41438');

-- Quest 25815 The Third Fleet CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25816' WHERE (`Id`='25815');
UPDATE `quest_template` SET `NextQuestIdChain`='25817' WHERE (`Id`='25816');
UPDATE `quest_template` SET `NextQuestIdChain`='25818' WHERE (`Id`='25817');
UPDATE `quest_template` SET `NextQuestIdChain`='25819' WHERE (`Id`='25818');
UPDATE `quest_template` SET `PrevQuestId`='25815' WHERE (`Id`='25816');
UPDATE `quest_template` SET `PrevQuestId`='25816' WHERE (`Id`='25817');
UPDATE `quest_template` SET `PrevQuestId`='25817' WHERE (`Id`='25818');
UPDATE `quest_template` SET `PrevQuestId`='25818' WHERE (`Id`='25819');

-- Quest 25815 The Third Fleet
DELETE FROM `creature` WHERE (`id`='1239');
INSERT INTO `creature` VALUES (null, 1239, 0, 1, 1, 0, 0, -3794.81, -841.941, 0.874117, 5.9369, 300, 0, 0, 1003, 0, 0, 0, 0, 0);

-- Quest 25818 Lifting the Curse
UPDATE `creature_template` SET `lootid`='41429' WHERE (`entry`='41429');
DELETE FROM `creature_loot_template` WHERE (`entry`='41429') AND (`item`='2629');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('41429', '2629', '-100');

-- Quest 25802 Reclaiming Goods CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25803' WHERE (`Id`='25802');
UPDATE `quest_template` SET `NextQuestIdChain`='25804' WHERE (`Id`='25803');
UPDATE `quest_template` SET `NextQuestIdChain`='25805' WHERE (`Id`='25804');
UPDATE `quest_template` SET `PrevQuestId`='25802' WHERE (`Id`='25803');
UPDATE `quest_template` SET `PrevQuestId`='25803' WHERE (`Id`='25804');
UPDATE `quest_template` SET `PrevQuestId`='25804' WHERE (`Id`='25805');

-- Quest 25802 Reclaiming Goods
UPDATE `gameobject_template` SET `flags`='0' WHERE (`entry`='261');

-- Quest 25803 The Search Continues
UPDATE `gameobject_template` SET `flags`='0' WHERE (`entry`='142151');

-- Quest 25804 Search More Hovels
UPDATE `gameobject_template` SET `flags`='0' WHERE (`entry`='259');

-- Quest 25800 When Life Gives You Crabs
UPDATE `creature_template` SET `lootid`='44116' WHERE (`entry`='44116');
DELETE FROM `creature_loot_template` WHERE (`entry`='44116') AND (`item`='56013');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44116', '56013', '-45');
UPDATE `creature_template` SET `lootid`='41295' WHERE (`entry`='41295');
DELETE FROM `creature_loot_template` WHERE (`entry`='41295') AND (`item`='56013');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('41295', '56013', '-40');