DELETE FROM `creature_onkill_currency` WHERE `creature_id` IN (43735, 49619, 49620, 49621);
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyCount1`) VALUES
(43735, 396, 40),
(49619, 396, 70),
(49620, 396, 40),
(49621, 396, 70);

DELETE FROM `reference_loot_template` WHERE `entry` IN (43735, 43720);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(43735, 59502, 0, 1, 1, 1, 1),
(43735, 59503, 0, 1, 1, 1, 1),
(43735, 59504, 0, 1, 1, 1, 1),
(43735, 59505, 0, 1, 1, 1, 1),
(43735, 59506, 0, 1, 1, 1, 1),
(43735, 59507, 0, 1, 1, 1, 1),
(43735, 59508, 0, 1, 1, 1, 1),
(43735, 59509, 0, 1, 1, 1, 1),
(43735, 59510, 0, 1, 1, 1, 1),
(43735, 59511, 0, 1, 1, 1, 1),
(43735, 59513, 0, 1, 1, 1, 1),
(43735, 59514, 0, 1, 1, 1, 1),
(43720, 65110, 0, 1, 1, 1, 1),
(43720, 65111, 0, 1, 1, 1, 1),
(43720, 65112, 0, 1, 1, 1, 1),
(43720, 65113, 0, 1, 1, 1, 1),
(43720, 65114, 0, 1, 1, 1, 1),
(43720, 65115, 0, 1, 1, 1, 1),
(43720, 65116, 0, 1, 1, 1, 1),
(43720, 65117, 0, 1, 1, 1, 1),
(43720, 65118, 0, 1, 1, 1, 1),
(43720, 65119, 0, 1, 1, 1, 1),
(43720, 65120, 0, 1, 1, 1, 1),
(43720, 65121, 0, 1, 1, 1, 1),
(43720, 65122, 0, 1, 1, 1, 1);

DELETE FROM `creature_loot_template` WHERE `entry` IN (43735, 49619, 49620, 49621);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (43735, 0, 100, 1, 1, -43735, 3);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (49619, 0, 100, 1, 1, -43735, 6);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (49720, 0, 100, 1, 1, -43720, 3);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (49621, 0, 100, 1, 1, -43720, 6);
