-- Some missing race required
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='26508');

-- Quest 26616 It's Never Over CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='9638' WHERE (`Id`='9630');
UPDATE `quest_template` SET `NextQuestIdChain`='9639' WHERE (`Id`='9638');
UPDATE `quest_template` SET `NextQuestIdChain`='9640' WHERE (`Id`='9639');
UPDATE `quest_template` SET `NextQuestIdChain`='9645' WHERE (`Id`='9640');
UPDATE `quest_template` SET `NextQuestIdChain`='9680' WHERE (`Id`='9645');
UPDATE `quest_template` SET `NextQuestIdChain`='9631' WHERE (`Id`='9680');
UPDATE `quest_template` SET `NextQuestIdChain`='9637' WHERE (`Id`='9631');
UPDATE `quest_template` SET `NextQuestIdChain`='9644' WHERE (`Id`='9637');
UPDATE `quest_template` SET `PrevQuestId`='9630' WHERE (`Id`='9638');
UPDATE `quest_template` SET `PrevQuestId`='9638' WHERE (`Id`='9639');
UPDATE `quest_template` SET `PrevQuestId`='9639' WHERE (`Id`='9640');
UPDATE `quest_template` SET `PrevQuestId`='9640' WHERE (`Id`='9645');
UPDATE `quest_template` SET `PrevQuestId`='9645' WHERE (`Id`='9680');
UPDATE `quest_template` SET `PrevQuestId`='9680' WHERE (`Id`='9631');
UPDATE `quest_template` SET `PrevQuestId`='9631' WHERE (`Id`='9637');
UPDATE `quest_template` SET `PrevQuestId`='9637' WHERE (`Id`='9644');

-- Quest 9824 Arcane Disturbances
INSERT INTO `gameobject` VALUES (null, 300078, 0, 1, 1, -11162, -1915.33, -17.7747, 4.2618, 0, 0, 0.847201, -0.531273, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 300078, 0, 1, 1, -11373.2, -2164.63, 22.2507, 1.86306, 0, 0, 0.802532, 0.596609, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 300078, 0, 1, 1, -11368.8, -2166.18, 22.1967, 3.12755, 0, 0, 0.999975, 0.00702276, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 300078, 0, 1, 1, -11367.2, -2162.78, 22.2416, 5.11852, 0, 0, 0.549973, -0.835183, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 300078, 0, 1, 1, -11368.5, -2160.32, 22.2954, 3.28462, 0, 0, 0.997444, -0.0714524, 300, 0, 1);

-- Removed block on istance Black morass - You must complete the quest Return to Andormu before entering the Black Morass - deprecated
-- This permit to complete the chain quest of Karazan
DELETE FROM `access_requirement` WHERE (`mapId`='269') AND (`difficulty`='1');
DELETE FROM `access_requirement` WHERE (`mapId`='269') AND (`difficulty`='0');

-- Removed copies of karazan gate object
DELETE FROM `gameobject` WHERE (`id`='184164');
INSERT INTO `gameobject` VALUES (null, 184164, 0, 1, 1, -11111, -2004.48, 49.3827, 3.81354, 0, 0, 0.900698, 0.434445, 120, 255, 1);
DELETE FROM `gameobject` WHERE (`id`='176694');
INSERT INTO `gameobject` VALUES (null, 176694, 0, 1, 1, -11037.9, -1999.85, 92.9915, 2.24275, 0, 0, 0.900698, 0.434445, 120, 255, 1);

-- Quest 9644 Nightbane
UPDATE `gameobject_template` SET `faction`='35' WHERE (`entry`='194092');