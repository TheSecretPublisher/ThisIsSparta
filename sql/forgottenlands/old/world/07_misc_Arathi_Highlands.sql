UPDATE `gameobject_template` SET `faction`=5, `flags`=0 WHERE (`entry`=138492);

DELETE FROM `creature_loot_template` WHERE `entry`=2559 AND item=4512;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2559, 4512, -30);
UPDATE `creature_template` SET `lootid`=2559 WHERE (`entry`=2559);

DELETE FROM `creature_loot_template` WHERE `entry`=2572 AND item=4435;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2572, 4435, -60);
UPDATE `creature_template` SET `lootid`=2572 WHERE (`entry`=2572);

UPDATE `gameobject_template` SET `faction`=5, `flags`=0 WHERE (`entry`=2701);
UPDATE `gameobject_template` SET `faction`=5, `flags`=0 WHERE (`entry`=2702);

UPDATE `quest_template` SET `RequiredRaces`=2098253 WHERE (`Id`=26346);

DELETE FROM `creature_loot_template` WHERE `entry`=2611 AND item=4469;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2611, 4469, -100);
UPDATE `creature_template` SET `lootid`=2611 WHERE (`entry`=2611);
UPDATE `gameobject_template` SET `faction`=5, `flags`=0 WHERE (`entry`=2688);

UPDATE `quest_template` SET `NextQuestId`=26030 WHERE (`Id`='26023');
UPDATE `quest_template` SET `PrevQuestId`=26030, `NextQuestId`=26031 WHERE (`Id`=26031);
UPDATE `quest_template` SET `PrevQuestId`=26031, `NextQuestId`=26032 WHERE (`Id`=26032);
UPDATE `quest_template` SET `PrevQuestId`=26032, `NextQuestId`=26033 WHERE (`Id`=26033);
UPDATE `quest_template` SET `PrevQuestId`=26033, `NextQuestId`=26081 WHERE (`Id`=26081);
UPDATE `quest_template` SET `PrevQuestId`=26081, `NextQuestId`=26084 WHERE (`Id`=26084);

DELETE FROM `creature_loot_template` WHERE `entry`=2589 AND item=4495;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2589, 4495, -100);
UPDATE `creature_template` SET `lootid`=2589 WHERE (`entry`=2589);

DELETE FROM `creature_loot_template` WHERE `entry`=24477 AND item=4440;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (24477, 4440, -50);
UPDATE `creature_template` SET `lootid`=24477 WHERE (`entry`=24477);

DELETE FROM `creature_loot_template` WHERE `entry`=2783 AND item=4510;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2783, 4510, -100);
UPDATE `creature_template` SET `lootid`=2783 WHERE (`entry`=2783);

DELETE FROM `creature_loot_template` WHERE `entry`=2773 AND item=4551;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2773, 4551, -100);
UPDATE `creature_template` SET `lootid`=2773 WHERE (`entry`=2773);

DELETE FROM `creature_loot_template` WHERE `entry`=4479 AND item=5831;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (4479, 5831, -100);
UPDATE `creature_template` SET `lootid`=4479 WHERE (`entry`=4479);
DELETE FROM `creature_loot_template` WHERE `entry`=4481 AND item=5832;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (4481, 5832, -100);
UPDATE `creature_template` SET `lootid`=4481 WHERE (`entry`=4481);
DELETE FROM `creature_loot_template` WHERE `entry`=4480 AND item=5830;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (4480, 5830, -100);
UPDATE `creature_template` SET `lootid`=4480 WHERE (`entry`=4480);

DELETE FROM `creature_loot_template` WHERE `entry` IN (2584, 2585)  AND item=4450;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `mincountOrRef`, `maxcount`) VALUES (2585, 4450, -50, 2, 4);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `mincountOrRef`, `maxcount`) VALUES (2584, 4450, -50, 2, 4);
UPDATE `creature_template` SET `lootid`=2584 WHERE (`entry`=2584);

DELETE FROM `creature_loot_template` WHERE `entry`=2612 AND item=4458;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2612, 4458, -100);
UPDATE `creature_template` SET `lootid`=2612 WHERE (`entry`=2612);

DELETE FROM `creature_loot_template` WHERE `entry`=2561 AND item=4513;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2561, 4513, -71);
UPDATE `creature_template` SET `lootid`=2561 WHERE (`entry`=2561);

UPDATE `gameobject_template` SET `faction`=1, `flags`=0 WHERE (`entry`=2713);

DELETE FROM `creature_loot_template` WHERE `entry` IN (2554, 2556, 2555, 51631, 51633, 2552, 2557, 2553, 2558) AND item=4503;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2554, 4503, -50);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2556, 4503, -50);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2555, 4503, -50);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (51631, 4503, -50);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (51633, 4503, -50);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2557, 4503, -50);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2552, 4503, -50);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2553, 4503, -50);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2558, 4503, -50);
UPDATE `creature_template` SET `lootid`=2554 WHERE (`entry`=2554);
UPDATE `creature_template` SET `lootid`=2556 WHERE (`entry`=2556);
UPDATE `creature_template` SET `lootid`=2555 WHERE (`entry`=2555);
UPDATE `creature_template` SET `lootid`=51631 WHERE (`entry`=51631);
UPDATE `creature_template` SET `lootid`=51633 WHERE (`entry`=2554);
UPDATE `creature_template` SET `lootid`=2557 WHERE (`entry`=2557);
UPDATE `creature_template` SET `lootid`=2553 WHERE (`entry`=2553);
UPDATE `creature_template` SET `lootid`=2558 WHERE (`entry`=2558);
UPDATE `creature_template` SET `lootid`=51633 WHERE (`entry`=51633);

DELETE FROM `creature_loot_template` WHERE `entry`=2555 AND item=4522;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2555, 4522, -100);
UPDATE `creature_template` SET `lootid`=2555 WHERE (`entry`=2555);

DELETE FROM `creature_loot_template` WHERE `entry`=2714 AND item=4482;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2714, 4482, -100);
UPDATE `creature_template` SET `lootid`=2714 WHERE (`entry`=2714);

DELETE FROM `creature_loot_template` WHERE `entry`=2783 AND item=4515;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2783, 4515, -100);
UPDATE `creature_template` SET `lootid`=2783 WHERE (`entry`=2783);

DELETE FROM `creature_loot_template` WHERE `entry`=2597 AND item=4517;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2597, 4517, -100);
UPDATE `creature_template` SET `lootid`=2597 WHERE (`entry`=2597);
DELETE FROM `creature_loot_template` WHERE `entry`=2599 AND item=4516;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2599, 4516, -100);
UPDATE `creature_template` SET `lootid`=2599 WHERE (`entry`=2599);

DELETE FROM `creature_loot_template` WHERE `entry`=2570 AND item=4527;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2570, 4527, -20);
UPDATE `creature_template` SET `lootid`=2570 WHERE (`entry`=2570);


-- da rimuover: sunken treasure e the princess unleashed

DELETE FROM `creature_loot_template` WHERE `entry`=2590 AND item=4506;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2590, 4506, -100);
UPDATE `creature_template` SET `lootid`=2590 WHERE (`entry`=2590);
DELETE FROM `creature_loot_template` WHERE `entry`=2588 AND item=4506;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2588, 4506, -100);
UPDATE `creature_template` SET `lootid`=2588 WHERE (`entry`=2588);
DELETE FROM `creature_loot_template` WHERE `entry`=2591 AND item=4506;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2591, 4506, -100);
UPDATE `creature_template` SET `lootid`=2591 WHERE (`entry`=2591);

-- the princess unleashed ( ally e orda) RIMOSSA
DELETE FROM `creature_questrelation` WHERE (`id`=2789) AND (`quest`=26049); 
DELETE FROM `creature_questrelation` WHERE (`id`=2787) AND (`quest`=26912);

-- sunken treasure RIMOSSA
DELETE FROM `creature_questrelation` WHERE (`id`=2774) AND (`quest`=26051);
