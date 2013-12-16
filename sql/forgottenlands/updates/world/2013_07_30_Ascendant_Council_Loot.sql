DELETE FROM `creature_onkill_currency` WHERE `creature_id` IN (43735, 49619);
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyCount1`) VALUES
(43735, 396, 40),
(49619, 396, 40);

DELETE FROM `creature_loot_template` WHERE `entry` IN (43735, 49619);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(43735, 0, 100, 1, 1, -43735, 3),
(49619, 0, 100, 1, 1, -43735, 6);

DELETE FROM `reference_loot_template` WHERE `entry` = 43735;
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
(43735, 59514, 0, 1, 1, 1, 1);

DELETE FROM `spell_script_names` WHERE `spell_id` = 92548;
INSERT INTO `spell_script_names` VALUES (92548, 'spell_council_glaciate');