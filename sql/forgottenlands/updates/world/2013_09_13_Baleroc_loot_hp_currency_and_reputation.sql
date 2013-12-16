DELETE FROM `reference_loot_template` WHERE `entry` = 53494;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(53494, 71343, 0, 1, 1, 1, 1),
(53494, 71345, 0, 1, 1, 1, 1),
(53494, 71314, 0, 1, 1, 1, 1),
(53494, 71341, 0, 1, 1, 1, 1),
(53494, 71340, 0, 1, 1, 1, 1),
(53494, 71315, 0, 1, 1, 1, 1),
(53494, 71342, 0, 1, 1, 1, 1),
(53494, 70916, 0, 1, 1, 1, 1),
(53494, 70917, 0, 1, 1, 1, 1),
(53494, 68982, 0, 1, 1, 1, 1),
(53494, 71323, 0, 1, 1, 1, 1),
(53494, 71312, 0, 1, 1, 1, 1),
(53494, 70915, 0, 1, 1, 1, 1),
(53494, 71776, 0, 1, 1, 1, 1),
(53494, 71775, 0, 1, 1, 1, 1),
(53494, 71782, 0, 1, 1, 1, 1),
(53494, 71780, 0, 1, 1, 1, 1),
(53494, 71779, 0, 1, 1, 1, 1),
(53494, 71785, 0, 1, 0, 1, 1),
(53494, 71787, 0, 1, 1, 1, 1);

DELETE FROM `creature_loot_template` WHERE entry IN (53494, 53587);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(53494, 1, 100, 1, 1, -53494, 3),
(53494, 69237, 100, 1, 0, 1, 2),
(53587, 1, 100, 1, 1, -53494, 6),
(53587, 69237, 100, 1, 0, 1, 2);


DELETE FROM `creature_onkill_currency` WHERE  `creature_id`=53494;
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyCount1`) VALUES (53494, 396, 120);

DELETE FROM `creature_onkill_currency` WHERE  `creature_id`=53587;
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyCount1`) VALUES (53587, 396, 120);

DELETE FROM `creature_onkill_reputation` WHERE  `creature_id`=53494;
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `MaxStanding1`, `RewOnKillRepValue1`) VALUES (53494, 1204, 7, 400);

DELETE FROM `creature_onkill_reputation` WHERE  `creature_id`=53587;
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `MaxStanding1`, `RewOnKillRepValue1`) VALUES (53587, 1204, 7, 400);

UPDATE `creature_template` SET `exp`=3 WHERE  `entry`=53587;
UPDATE `creature_template` SET `Health_mod`=1164 WHERE  `entry`=53587;
UPDATE `creature_template` SET `Health_mod`=367.5 WHERE  `entry`=53494;


UPDATE `creature_template` SET `lootid`=53587 WHERE  `entry`=53587;