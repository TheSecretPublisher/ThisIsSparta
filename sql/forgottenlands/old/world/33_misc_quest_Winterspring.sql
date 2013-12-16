-- fix chain quest http://www.wowhead.com/quest=28629
UPDATE `quest_template` SET `NextQuestId`=28631 WHERE (`Id`=28629);
UPDATE `quest_template` SET `PrevQuestId`=28631, `NextQuestId`=28722 WHERE (`Id`=28631);

-- fix chain quest http://www.wowhead.com/quest=28610
UPDATE `quest_template` SET `NextQuestId`=28610 WHERE (`Id`=28609);
UPDATE `quest_template` SET `PrevQuestId`=28610, `NextQuestId`=28618 WHERE (`Id`=28610);


-- http://www.wowhead.com/npc=48952
DELETE FROM `creature_loot_template` WHERE `entry`=48952 AND item=64587;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (48952, 64587, -100);
UPDATE `creature_template` SET `lootid`=48952 WHERE (`entry`=48952);


-- http://www.wowhead.com/npc=48960
DELETE FROM `creature_loot_template` WHERE `entry`=48960 AND item=64586;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (48960, 64586, -100);
UPDATE `creature_template` SET `lootid`=48960 WHERE (`entry`=48960);

-- http://www.wowhead.com/npc=49161
DELETE FROM `creature_loot_template` WHERE `entry`=49161 AND item=66052;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (49161, 66052, -100);
UPDATE `creature_template` SET `lootid`=49161 WHERE (`entry`=49161);

-- http://www.wowhead.com/npc=49235
DELETE FROM `creature_loot_template` WHERE `entry`=49235 AND item=12435;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (49235, 12435, -100);
UPDATE `creature_template` SET `lootid`=49235 WHERE (`entry`=49235);
DELETE FROM `creature_loot_template` WHERE `entry`=49235 AND item=64664;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (49235, 64664, -100);
UPDATE `creature_template` SET `lootid`=49235 WHERE (`entry`=49235);

-- fix zona http://www.wowhead.com/npc=49396
UPDATE `quest_template` SET `Flags`=0 WHERE (`Id`=28641);
UPDATE `quest_template` SET `Flags`=0 WHERE (`Id`=28640);
UPDATE `quest_template` SET `Flags`=0 WHERE (`Id`=28710);
UPDATE `quest_template` SET `Flags`=0 WHERE (`Id`=28718);
UPDATE `quest_template` SET `Flags`=0 WHERE (`Id`=28742);

UPDATE `quest_template` SET `PrevQuestId`=28718 WHERE (`Id`=28640);
UPDATE `quest_template` SET `PrevQuestId`=28640 WHERE (`Id`=28641);
UPDATE `quest_template` SET `PrevQuestId`=28706 WHERE (`Id`=28707);
UPDATE `quest_template` SET `PrevQuestId`=28707 WHERE (`Id`=28710);
UPDATE `quest_template` SET `PrevQuestId`=28710 WHERE (`Id`=28718);
UPDATE `quest_template` SET `PrevQuestId`=28641 WHERE (`Id`=28742);

UPDATE `quest_template` SET `NextQuestId`=28641, `NextQuestIdChain`=0 WHERE (`Id`=28640);
UPDATE `quest_template` SET `NextQuestId`=28742, `NextQuestIdChain`=0 WHERE (`Id`=28641);
UPDATE `quest_template` SET `NextQuestId`=28707, `NextQuestIdChain`=0 WHERE (`Id`=28706);
UPDATE `quest_template` SET `NextQuestId`=28710, `NextQuestIdChain`=0 WHERE (`Id`=28707); 
UPDATE `quest_template` SET `NextQuestId`=28718, `NextQuestIdChain`=0 WHERE (`Id`=28710);
UPDATE `quest_template` SET `NextQuestId`=28640, `NextQuestIdChain`=0 WHERE (`Id`=28718);

UPDATE `quest_template` SET `NextQuestIdChain`=0 WHERE (`Id`=28638);
UPDATE `quest_template` SET `NextQuestId`=28745 WHERE (`Id`=28638);
UPDATE `quest_template` SET `NextQuestId`=28782, `NextQuestIdChain`=0 WHERE (`Id`=28745);
UPDATE `quest_template` SET `Flags`=8 WHERE (`Id`=28638);
UPDATE `quest_template` SET `Flags`=8 WHERE (`Id`=28745);
UPDATE `quest_template` SET `Flags`=8 WHERE (`Id`=28782);

UPDATE `quest_template` SET `Flags`=8 WHERE (`Id`=28637);
UPDATE `quest_template` SET `Flags`=8 WHERE (`Id`=28719);
UPDATE `quest_template` SET `Flags`=8 WHERE (`Id`=28639);
UPDATE `quest_template` SET `NextQuestId`=28719, `NextQuestIdChain`=0 WHERE (`Id`=28637);
UPDATE `quest_template` SET `NextQuestId`=28639, `NextQuestIdChain`=0 WHERE (`Id`=28719);


UPDATE `quest_template` SET `PrevQuestId`=28638 WHERE (`Id`=28745);

--
UPDATE `quest_template` SET `Flags`=8 WHERE (`Id`=28464);
UPDATE `quest_template` SET `Flags`=8 WHERE (`Id`=28467);
UPDATE `quest_template` SET `NextQuestId`=28467, `NextQuestIdChain`=0 WHERE (`Id`=28464);
UPDATE `quest_template` SET `NextQuestId`=28469, `NextQuestIdChain`=0 WHERE (`Id`=28467);
UPDATE `quest_template` SET `NextQuestId`=28470, `NextQuestIdChain`=0 WHERE (`Id`=28469);
UPDATE `quest_template` SET `NextQuestId`=28464, `NextQuestIdChain`=0 WHERE (`Id`=28462);

-- add loot npc 48765
DELETE FROM `creature_loot_template` WHERE `entry`=48765 AND item=64465;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (48765, 64465, -100);
UPDATE `creature_template` SET `lootid`=48765 WHERE (`entry`=48765);

-- add loot http://www.wowhead.com/quest=28530
DELETE FROM `creature_loot_template` WHERE `entry` IN (48767, 48768) AND item=64449;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (48768, 64449, -49);
UPDATE `creature_template` SET `lootid`=48768 WHERE (`entry`=48768);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (48767, 64449, -49);
UPDATE `creature_template` SET `lootid`=48767 WHERE (`entry`=48767);


-- add loot 48740
DELETE FROM `creature_loot_template` WHERE `entry`=48740 AND item=64441;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (48740, 64441, -92);
UPDATE `creature_template` SET `lootid`=48740 WHERE (`entry`=48740);

UPDATE `quest_template` SET `NextQuestId`=28536, `NextQuestIdChain`=0 WHERE (`Id`=28519);
UPDATE `quest_template` SET `NextQuestId`=28537, `NextQuestIdChain`=0 WHERE (`Id`=28536);

-- add loot 48678
DELETE FROM `creature_loot_template` WHERE `entry`=48678 AND item=64463;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (48678, 64463, -100);
UPDATE `creature_template` SET `lootid`=48678 WHERE (`entry`=48678);

-- fix chain timbermaw hold
UPDATE `quest_template` SET `NextQuestId`=28472 WHERE (`Id`=28471);
UPDATE `quest_template` SET `PrevQuestId`=28471, `NextQuestId`=28479 WHERE (`Id`=28472);
UPDATE `quest_template` SET `PrevQuestId`=28472, `NextQuestId`=28513 WHERE (`Id`=28479);
UPDATE `quest_template` SET `PrevQuestId`=28479, `NextQuestId`=28534 WHERE (`Id`=28513);
UPDATE `quest_template` SET `PrevQuestId`=28513, `NextQuestId`=28518 WHERE (`Id`=28534);
UPDATE `quest_template` SET `PrevQuestId`=28534, `NextQuestId`=28535 WHERE (`Id`=28518);
UPDATE `quest_template` SET `PrevQuestId`=28518, `NextQuestId`=28519 WHERE (`Id`=28535);
UPDATE `quest_template` SET `PrevQuestId`=28535, `NextQuestId`=28536 WHERE (`Id`=28519);
UPDATE `quest_template` SET `PrevQuestId`=28519, `NextQuestId`=28537 WHERE (`Id`=28536);
UPDATE `quest_template` SET `PrevQuestId`=28536, `NextQuestId`=28848 WHERE (`Id`=28537);
UPDATE `quest_template` SET `PrevQuestId`=28537 WHERE (`Id`=28848);

-- add loot per chain
DELETE FROM `creature_loot_template` WHERE `entry` IN (7439, 7438, 7441, 7442, 7440, 10916, 10738) AND item=21383;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7439, 21383, 50);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7438, 21383, 50);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7441, 21383, 50);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7442, 21383, 50);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7440, 21383, 50);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (10916, 21383, 50);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (10738, 21383, 50);
UPDATE `creature_template` SET `lootid`=7439 WHERE (`entry`=7439);
UPDATE `creature_template` SET `lootid`=7438 WHERE (`entry`=7438);
UPDATE `creature_template` SET `lootid`=7441 WHERE (`entry`=7441);
UPDATE `creature_template` SET `lootid`=7442 WHERE (`entry`=7442);
UPDATE `creature_template` SET `lootid`=7440 WHERE (`entry`=7440);
UPDATE `creature_template` SET `lootid`=10916 WHERE (`entry`=10916);
UPDATE `creature_template` SET `lootid`=10738 WHERE (`entry`=10738);

-- deletata the arcane storm within
DELETE FROM `creature_questrelation` WHERE (`id`=10929) AND (`quest`=28841);