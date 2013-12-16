DELETE FROM `reference_loot_template` WHERE `entry` = 53691;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(53691, 70913, 0, 1, 1, 1, 1),
(53691, 71013, 0, 1, 1, 1, 1),
(53691, 71014, 0, 1, 1, 1, 1),
(53691, 71018, 0, 1, 1, 1, 1),
(53691, 71019, 0, 1, 1, 1, 1),
(53691, 71020, 0, 1, 1, 1, 1),
(53691, 71021, 0, 1, 1, 1, 1),
(53691, 71022, 0, 1, 1, 1, 1),
(53691, 71023, 0, 1, 1, 1, 1),
(53691, 71024, 0, 1, 1, 1, 1),
(53691, 71025, 0, 1, 1, 1, 1),
(53691, 71026, 0, 1, 1, 1, 1),
(53691, 71028, 0, 1, 1, 1, 1),
(53691, 71775, 0, 1, 1, 1, 1),
(53691, 71776, 0, 1, 1, 1, 1),
(53691, 71779, 0, 1, 1, 1, 1),
(53691, 71780, 0, 1, 1, 1, 1),
(53691, 71782, 0, 1, 1, 1, 1),
(53691, 71785, 0, 1, 0, 1, 1),
(53691, 71787, 0, 1, 1, 1, 1);

DELETE FROM `creature_loot_template` WHERE entry = 53691;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(53691, 1, 100, 1, 1, -53691, 3),
(53691, 69237, 100, 1, 0, 1, 2),
(53691, 71141, 100, 1, 0, 1, 3);