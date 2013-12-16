DELETE FROM `creature_loot_template` WHERE entry = 53979;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(53979, 1, 100, 1, 1, -53691, 6),
(53979, 69237, 100, 1, 0, 1, 2);

DELETE FROM `creature_onkill_currency` WHERE creature_id  IN(53979, 53691);
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyCount1`) VALUES 
(53979, 396, 120),
(53691, 396, 120);