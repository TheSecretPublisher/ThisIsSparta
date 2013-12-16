-- Chain DK damage range from some npc
UPDATE `creature_template` SET `minrangedmg`='15', `maxrangedmg`='15' WHERE (`entry`='29104');
UPDATE `creature_template` SET `minrangedmg`='15', `maxrangedmg`='15' WHERE (`entry`='29103');
UPDATE `creature_template` SET `minrangedmg`='15', `maxrangedmg`='15' WHERE (`entry`='28610');
UPDATE `creature_template` SET `minrangedmg`='15', `maxrangedmg`='15' WHERE (`entry`='29102');
-- Chain DK quest chain fix "do not meet requirement" for goblin race on quest 12751
UPDATE `quest_template` SET `NextQuestId`='12751' WHERE (`Id`='28650');

-- Add item 63537 on some bdw trash like offy
DELETE FROM `creature_loot_template` WHERE (`entry`='42802') AND (`item`='63537');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('42802', '63537', '2');
DELETE FROM `creature_loot_template` WHERE (`entry`='42764') AND (`item`='63537');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('42764', '63537', '1.7');
DELETE FROM `creature_loot_template` WHERE (`entry`='42649') AND (`item`='63537');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('42649', '63537', '1.5');
DELETE FROM `creature_loot_template` WHERE (`entry`='43126') AND (`item`='63537');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('43126', '63537', '1.3');