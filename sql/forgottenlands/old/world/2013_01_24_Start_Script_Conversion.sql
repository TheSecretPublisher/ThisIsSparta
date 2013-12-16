-- Quest 13982 In a Bind
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='3698');
DELETE FROM smart_scripts WHERE entryorguid IN (3698) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (3698, 0, 80, 0, 19, 0, 100, 0, 13982, 0, 0, 0, 12, 34602, 7, 8000000, 0, 0, 0, 8, 0, 0, 0, 2383.63,639.579,148.897,2.11285, 'Summon mob');

-- Quest 13935 Defend the Tree!
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='34377');
DELETE FROM smart_scripts WHERE entryorguid IN (34377) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (34377, 0, 80, 0, 19, 0, 100, 0, 13935, 0, 0, 0, 85, 65396, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0,0,0,0, 'Cast spell phase 2');

-- Quest 13987 The Last Stand
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='34604');
DELETE FROM smart_scripts WHERE entryorguid IN (34604) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (34604, 0, 80, 0, 19, 0, 100, 0, 13987, 0, 0, 0, 85, 65396, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0,0,0,0, 'Cast spell phase 2');

-- Quest 27311 No Weapons For You!
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45278');
DELETE FROM smart_scripts WHERE entryorguid IN (45278) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (45278, 0, 80, 0, 19, 0, 100, 0, 27311, 0, 0, 0, 85, 84658, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0,0,0,0, 'Cast spell');

-- Quest 27310 No Weapons For You!
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45277');
DELETE FROM smart_scripts WHERE entryorguid IN (45277) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (45277, 0, 80, 0, 19, 0, 100, 0, 27310, 0, 0, 0, 85, 84657, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0,0,0,0, 'Cast spell');

-- Quest 25067 Thunderdrome: The Ginormus!
UPDATE `quest_template` SET `RequiredNpcOrGo1`='39075', `RequiredNpcOrGoCount1`='1' WHERE (`Id`='25067');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='39034');
DELETE FROM smart_scripts WHERE entryorguid IN (39034) AND id = 80;
INSERT INTO `smart_scripts` VALUES (39034, 0, 80, 0, 19, 0, 100, 0, 25067, 0, 0, 0, 12, 39075, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, -7139.56,-3786.39,8.99354,5.97151, 'Summon mob');

-- Quest 25094 Thunderdrome: Zumonga!
UPDATE `quest_template` SET `RequiredNpcOrGo1`='39148', `RequiredNpcOrGoCount1`='1' WHERE (`Id`='25094');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='39034');
DELETE FROM smart_scripts WHERE entryorguid IN (39034) AND id = 81;
INSERT INTO `smart_scripts` VALUES (39034, 0, 81, 0, 19, 0, 100, 0, 25094, 0, 0, 0, 12, 39148, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, -7139.56,-3786.39,8.99354,5.97151, 'Summon mob');

-- Quest 25095 Thunderdrome: Sarinexx!
UPDATE `quest_template` SET `RequiredNpcOrGo1`='39149', `RequiredNpcOrGoCount1`='1' WHERE (`Id`='25095');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='39034');
DELETE FROM smart_scripts WHERE entryorguid IN (39034) AND id = 82;
INSERT INTO `smart_scripts` VALUES (39034, 0, 82, 0, 19, 0, 100, 0, 25095, 0, 0, 0, 12, 39149, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, -7139.56,-3786.39,8.99354,5.97151, 'Summon mob');

-- Quest 25591 Thunderdrome: Grudge Match! HORDE
UPDATE `quest_template` SET `RequiredNpcOrGo1`='40547', `RequiredNpcOrGoCount1`='1' WHERE (`Id`='25591');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='39034');
DELETE FROM smart_scripts WHERE entryorguid IN (39034) AND id = 83;
INSERT INTO `smart_scripts` VALUES (39034, 0, 83, 0, 19, 0, 100, 0, 25591, 0, 0, 0, 12, 40547, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, -7139.56,-3786.39,8.99354,5.97151, 'Summon mob');

-- Quest 25513 Thunderdrome: Grudge Match! ALLIANCE
UPDATE `quest_template` SET `RequiredNpcOrGo1`='40547', `RequiredNpcOrGoCount1`='1' WHERE (`Id`='25513');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='39034');
DELETE FROM smart_scripts WHERE entryorguid IN (39034) AND id = 84;
INSERT INTO `smart_scripts` VALUES (39034, 0, 84, 0, 19, 0, 100, 0, 25513, 0, 0, 0, 12, 40547, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, -7139.56,-3786.39,8.99354,5.97151, 'Summon mob');

-- Quest 25070 What Lies Within
DELETE FROM `creature` WHERE (`id`='39077');
INSERT INTO `creature` VALUES (null, 39077, 1, 1, 1, 0, 0, -9834.34, -2791.28, 12.3501, 0.0408065, 300, 0, 0, 4276, 0, 0, 0, 0, 0);

-- Quest 26419 Shadra the Venom Queen
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43299');
DELETE FROM smart_scripts WHERE entryorguid IN (43299) AND id = 80;
INSERT INTO `smart_scripts` VALUES (43299, 0, 80, 0, 19, 0, 100, 0, 26419, 0, 0, 0, 12, 43007, 7, 8000000, 0, 0, 0, 8, 0, 0, 0, -261.964569, -2935.161133, 88.428385, 2.51616, 'Summon mob');

-- Quest 26532 Shadra the Venom Queen
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43298');
DELETE FROM smart_scripts WHERE entryorguid IN (43298) AND id = 80;
INSERT INTO `smart_scripts` VALUES (43298, 0, 80, 0, 19, 0, 100, 0, 26532, 0, 0, 0, 12, 43007, 7, 8000000, 0, 0, 0, 8, 0, 0, 0, -261.964569, -2935.161133, 88.428385, 2.51616, 'Summon mob');

-- Fix Bunny quest - it was visible
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='45509');