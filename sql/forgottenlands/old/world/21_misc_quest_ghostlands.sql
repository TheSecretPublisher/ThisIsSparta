
DELETE FROM `creature_loot_template` WHERE `entry`=16342 AND item=22633;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16342, 22633, -50);
UPDATE `creature_template` SET `lootid`=16342 WHERE (`entry`=16342);

DELETE FROM `creature_loot_template` WHERE `entry`=16343 AND item=22633;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16343, 22633, -50);
UPDATE `creature_template` SET `lootid`=16343 WHERE (`entry`=16343);


-- fix lurzan

DELETE FROM `creature_loot_template` WHERE `entry`=16245 AND item=22893;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16245, 22893, -100);
UPDATE `creature_template` SET `lootid`=16245 WHERE (`entry`=16245);
 
-- fix spinal dust

DELETE FROM `creature_loot_template` WHERE `entry`=16305 AND item=22642;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16305, 22642, -70);
UPDATE `creature_template` SET `lootid`=16305 WHERE (`entry`=16305);

DELETE FROM `creature_loot_template` WHERE `entry`=16308 AND item=22642;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16308, 22642, -50);
UPDATE `creature_template` SET `lootid`=16308 WHERE (`entry`=16308);
 
-- fix rotting heart

DELETE FROM `creature_loot_template` WHERE `entry`=16302 AND item=22641;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16302, 22641, -70);
UPDATE `creature_template` SET `lootid`=16302 WHERE (`entry`=16302);

DELETE FROM `creature_loot_template` WHERE `entry`=16301 AND item=22641;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16301, 22641, -50);
UPDATE `creature_template` SET `lootid`=16301 WHERE (`entry`=16301);

-- add loot Knucklerot's Head

DELETE FROM `creature_loot_template` WHERE `entry`=16246 AND item=22894;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16246, 22894, -100);
UPDATE `creature_template` SET `lootid`=16246 WHERE (`entry`=16246);

-- add loot zeb sora troll ear

DELETE FROM `creature_loot_template` WHERE `entry`=16340 AND item=22639;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16340, 22639, -90);
UPDATE `creature_template` SET `lootid`=16340 WHERE (`entry`=16340);

DELETE FROM `creature_loot_template` WHERE `entry`=16341 AND item=22639;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16341, 22639, -60);
UPDATE `creature_template` SET `lootid`=16341 WHERE (`entry`=16341);

-- salvaging the root

DELETE FROM `creature_loot_template` WHERE `entry`=16304 AND item=22580;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16304, 22580, -70);
UPDATE `creature_template` SET `lootid`=16304 WHERE (`entry`=16304);

DELETE FROM `creature_loot_template` WHERE `entry`=16310 AND item=22580;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16310, 22580, -50);
UPDATE `creature_template` SET `lootid`=16310 WHERE (`entry`=16310);

-- fix culinary crunch

DELETE FROM `creature_loot_template` WHERE `entry`=16352 AND item=22644;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16352, 22644, -70);
UPDATE `creature_template` SET `lootid`=16352 WHERE (`entry`=16352);

DELETE FROM `creature_loot_template` WHERE `entry`=16350 AND item=22644;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16350, 22644, -60);
UPDATE `creature_template` SET `lootid`=16350 WHERE (`entry`=16350);

DELETE FROM `creature_loot_template` WHERE `entry`=16351 AND item=22644;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16351, 22644, -60);
UPDATE `creature_template` SET `lootid`=16351 WHERE (`entry`=16351);

-- plagued murloc spine

DELETE FROM `creature_loot_template` WHERE `entry`=16403 AND item=22579;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16403, 22579, -46);
UPDATE `creature_template` SET `lootid`=16403 WHERE (`entry`=16403);

DELETE FROM `creature_loot_template` WHERE `entry`=16402 AND item=22579;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16402, 22579, -51);
UPDATE `creature_template` SET `lootid`=16402 WHERE (`entry`=16402);

-- fix windrunner village

DELETE FROM `creature_loot_template` WHERE `entry`=16324 AND item=22567;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16324, 22567, -90);
UPDATE `creature_template` SET `lootid`=16324 WHERE (`entry`=16324);

DELETE FROM `creature_loot_template` WHERE `entry`=16323 AND item=22566;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16323, 22566, -80);
UPDATE `creature_template` SET `lootid`=16323 WHERE (`entry`=16323);


-- fix Shadowpine Weaponry

DELETE FROM `creature_loot_template` WHERE `entry`=16345 AND item=22677;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16345, 22677, -90);
UPDATE `creature_template` SET `lootid`=16345 WHERE (`entry`=16345);

DELETE FROM `creature_loot_template` WHERE `entry`=16344 AND item=23165;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16344, 23165, -90);
UPDATE `creature_template` SET `lootid`=16344 WHERE (`entry`=16344);


DELETE FROM `creature_loot_template` WHERE `entry`=16346 AND item=23166;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16346, 23166, -90);
UPDATE `creature_template` SET `lootid`=16346 WHERE (`entry`=16346);


DELETE FROM `creature_loot_template` WHERE `entry`=16469 AND item=23167;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16469, 23167, -90);
UPDATE `creature_template` SET `lootid`=16469 WHERE (`entry`=16469);


-- fiix kel gash
DELETE FROM `creature_loot_template` WHERE `entry`=16358 AND item=22640;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16358, 22640, -100);
UPDATE `creature_template` SET `lootid`=16358 WHERE (`entry`=16358);

-- fix Deactivate An'owyn

DELETE FROM `creature_loot_template` WHERE `entry`=16333 AND item=23191;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16333, 23191, -30);
UPDATE `creature_template` SET `lootid`=16333 WHERE (`entry`=16333);


DELETE FROM `creature` WHERE `id`=10415;

DELETE FROM `creature_loot_template` WHERE `entry`=16329 AND item=22653;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (16329, 22653, -100);
UPDATE `creature_template` SET `lootid`=16329 WHERE (`entry`=16329);
