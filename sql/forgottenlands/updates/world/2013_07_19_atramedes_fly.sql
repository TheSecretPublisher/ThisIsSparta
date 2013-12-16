UPDATE `creature_template` SET `InhabitType`=5 WHERE  `entry` IN(41442, 49583, 49584, 49585);
UPDATE `creature_template` SET `modelid1`=11686, `modelid2`=0, `minlevel`=85, `maxlevel`=85, `exp`=3, `faction_A`=16, `faction_H`=16, `ScriptName`='npc_tracking_flames' WHERE  `entry`=41962 LIMIT 1;

DELETE FROM `creature_template` WHERE `entry` = 70000;
INSERT INTO `creature_template` (`entry`, `name`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `Health_mod`, `ScriptName`, `WDBVerified`) VALUES (70000, 'Sonic fireball', 88, 88, 3, 15, 15, 100, 'npc_sonic_fireball', 15595);
UPDATE `creature_template` SET `modelid1`=1126 WHERE  `entry`=70000 LIMIT 1;
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16 WHERE  `entry`=70000 LIMIT 1;
UPDATE `creature_template` SET `InhabitType`=5 WHERE  `entry`=49623 LIMIT 1;

DELETE FROM `creature_loot_template` WHERE `entry` IN (49583, 41442);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(41442, 0, 100, 1, 1, -41442, 3),
(49583, 0, 100, 1, 1, -41442, 6);

DELETE FROM `reference_loot_template` WHERE `entry` = 41442;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(41442, 59312, 0, 1, 1, 1, 1),
(41442, 59315, 0, 1, 1, 1, 1),
(41442, 59316, 0, 1, 1, 1, 1),
(41442, 59317, 0, 1, 1, 1, 1),
(41442, 59318, 0, 1, 1, 1, 1),
(41442, 59319, 0, 1, 1, 1, 1),
(41442, 59320, 0, 1, 1, 1, 1),
(41442, 59322, 0, 1, 1, 1, 1),
(41442, 59324, 0, 1, 1, 1, 1),
(41442, 59325, 0, 1, 1, 1, 1),
(41442, 59326, 0, 1, 1, 1, 1),
(41442, 59327, 0, 1, 1, 1, 1);

DELETE FROM `creature_onkill_currency` WHERE `creature_id` IN (49583, 41442);
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyCount1`) VALUES 
(41442, 396, 40),
(49583, 396, 40);

DELETE FROM `creature` WHERE `id` = 41442;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(NULL, 41442, 669, 15, 1, 0, 0, 212.134, -225.314, 74.758, 3.12037, 3000000, 0, 0, 2027680, 0, 0, 16777216, 0, 0);