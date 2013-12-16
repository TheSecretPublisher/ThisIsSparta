DELETE FROM `creature` WHERE `id` = 52498;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(NULL, 52498, 720, 15, 1, 0, 0, 41.8449, 399.831, 74.0416, 4.25389, 3000000, 0, 0, 83658808, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `difficulty_entry_1`=53576, `difficulty_entry_2`=53577, `difficulty_entry_3`=53578, `flags_extra`=1, `ScriptName`='boss_bethtilac' WHERE  `entry`=52498 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=88, `maxlevel`=88, `exp`=3 WHERE  `entry`=53576 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=88, `maxlevel`=88, `exp`=3 WHERE  `entry`=53577 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=88, `maxlevel`=88, `exp`=3 WHERE  `entry`=53578 LIMIT 1;
UPDATE `creature_template` SET `mechanic_immune_mask`=635387903 WHERE  `entry`=53578 LIMIT 1;
UPDATE `creature_template` SET `mechanic_immune_mask`=635387903 WHERE  `entry`=53577 LIMIT 1;
UPDATE `creature_template` SET `mechanic_immune_mask`=635387903 WHERE  `entry`=53576 LIMIT 1;
UPDATE `creature_template` SET `Health_mod`=206 WHERE  `entry`=52498 LIMIT 1;

UPDATE `creature_template` SET `difficulty_entry_1`=53599 WHERE  `entry`=53642 LIMIT 1;
UPDATE `creature_template` SET `difficulty_entry_2`=53600, `difficulty_entry_3`=53601 WHERE  `entry`=53642 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3 WHERE  `entry`=53643 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3 WHERE  `entry`=53600 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3 WHERE  `entry`=53601 LIMIT 1;
UPDATE `creature_template` SET `Health_mod`=4 WHERE  `entry`=53600 LIMIT 1;
UPDATE `creature_template` SET `Health_mod`=12 WHERE  `entry`=53601 LIMIT 1;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_cinderweb_spinner' WHERE  `entry`=53642 LIMIT 1;
UPDATE `creature_template` SET `mindmg`=2000, `maxdmg`=4000 WHERE  `entry`=53642 LIMIT 1;
UPDATE `creature_template` SET `mindmg`=2000 WHERE  `entry`=53643 LIMIT 1;
UPDATE `creature_template` SET `mindmg`=2000 WHERE  `entry`=53600 LIMIT 1;
UPDATE `creature_template` SET `mindmg`=2000 WHERE  `entry`=53601 LIMIT 1;
UPDATE `creature_template` SET `maxdmg`=4000 WHERE  `entry`=53643 LIMIT 1;
UPDATE `creature_template` SET `maxdmg`=4000 WHERE  `entry`=53600 LIMIT 1;
UPDATE `creature_template` SET `maxdmg`=4000 WHERE  `entry`=53601 LIMIT 1;
UPDATE `creature_template` SET `dmg_multiplier`=6 WHERE  `entry`=53643 LIMIT 1;
UPDATE `creature_template` SET `dmg_multiplier`=5 WHERE  `entry`=53600 LIMIT 1;
UPDATE `creature_template` SET `dmg_multiplier`=7 WHERE  `entry`=53601 LIMIT 1;
UPDATE `creature_template` SET `ScriptName`='npc_spirderweb_filament' WHERE  `entry`=53082 LIMIT 1;
UPDATE `creature_template` SET `npcflag`=1 WHERE  `entry`=53082 LIMIT 1;
UPDATE `creature_template` SET `modelid2`=0 WHERE  `entry`=53237 LIMIT 1;
UPDATE `creature_template` SET `unit_class`=4 WHERE  `entry`=52498 LIMIT 1;
UPDATE `creature_template` SET `difficulty_entry_1`=53579, `difficulty_entry_2`=53580, `difficulty_entry_3`=53581 WHERE  `entry`=53631 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85 WHERE  `entry`=53632 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85 WHERE  `entry`=53580 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85 WHERE  `entry`=53581 LIMIT 1;
UPDATE `creature_template` SET `maxlevel`=85 WHERE  `entry`=53580 LIMIT 1;
UPDATE `creature_template` SET `maxlevel`=85 WHERE  `entry`=53632 LIMIT 1;
UPDATE `creature_template` SET `exp`=3 WHERE  `entry`=53632 LIMIT 1;
UPDATE `creature_template` SET `exp`=3 WHERE  `entry`=53581 LIMIT 1;
UPDATE `creature_template` SET `exp`=3 WHERE  `entry`=53580 LIMIT 1;
UPDATE `creature_template` SET `ScriptName`='npc_cinderweb_spiderling' WHERE  `entry`=53631 LIMIT 1;
UPDATE `creature_template` SET `AIName`='' WHERE  `entry`=53631 LIMIT 1;
UPDATE `creature_template` SET `AIName`='' WHERE  `entry`=53580 LIMIT 1;
UPDATE `creature_template` SET `AIName`='' WHERE  `entry`=53581 LIMIT 1;
UPDATE `creature_template` SET `movementId`=106 WHERE  `entry`=53580 LIMIT 1;
UPDATE `creature_template` SET `AIName`='' WHERE  `entry`=53579 LIMIT 1;
UPDATE `creature_template` SET `Health_mod`=1.54859 WHERE  `entry`=53579 LIMIT 1;
UPDATE `creature_template` SET `Health_mod`=1.54859 WHERE  `entry`=53580 LIMIT 1;
UPDATE `creature_template` SET `Health_mod`=1.54859 WHERE  `entry`=53581 LIMIT 1;
UPDATE `creature_template` SET `Health_mod`=3 WHERE  `entry`=53579 LIMIT 1;
UPDATE `creature_template` SET `Health_mod`=3 WHERE  `entry`=53580 LIMIT 1;
UPDATE `creature_template` SET `difficulty_entry_1`=53582, `difficulty_entry_2`=53583, `difficulty_entry_3`=53584, `exp`=3, `faction_A`=16, `faction_H`=16 WHERE  `entry`=52581 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3 WHERE  `entry`=53582 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85 WHERE  `entry`=53583 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85 WHERE  `entry`=53584 LIMIT 1;
UPDATE `creature_template` SET `maxlevel`=85 WHERE  `entry`=53583 LIMIT 1;
UPDATE `creature_template` SET `maxlevel`=85 WHERE  `entry`=53584 LIMIT 1;
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16 WHERE  `entry`=53582 LIMIT 1;
UPDATE `creature_template` SET `faction_A`=16 WHERE  `entry`=53583 LIMIT 1;
UPDATE `creature_template` SET `faction_A`=16 WHERE  `entry`=53584 LIMIT 1;
UPDATE `creature_template` SET `faction_H`=16 WHERE  `entry`=53583 LIMIT 1;
UPDATE `creature_template` SET `faction_H`=16 WHERE  `entry`=53584 LIMIT 1;
UPDATE `creature_template` SET `exp`=3 WHERE  `entry`=53582 LIMIT 1;
UPDATE `creature_template` SET `exp`=3 WHERE  `entry`=53583 LIMIT 1;
UPDATE `creature_template` SET `exp`=3 WHERE  `entry`=53584 LIMIT 1;
UPDATE `creature_template` SET `ScriptName`='npc_cinderweb_drone' WHERE  `entry`=52581 LIMIT 1;

DELETE FROM `reference_loot_template` WHERE `entry` = 52498;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(52498, 71780, 0, 1, 1, 1, 1),
(52498, 71032, 0, 1, 1, 1, 1),
(52498, 71038, 0, 1, 1, 1, 1),
(52498, 71042, 0, 1, 1, 1, 1),
(52498, 68981, 0, 1, 1, 1, 1),
(52498, 71043, 0, 1, 1, 1, 1),
(52498, 71775, 0, 1, 1, 1, 1),
(52498, 71782, 0, 1, 1, 1, 1),
(52498, 71041, 0, 1, 1, 1, 1),
(52498, 70922, 0, 1, 1, 1, 1),
(52498, 71039, 0, 1, 1, 1, 1),
(52498, 71030, 0, 1, 1, 1, 1),
(52498, 71785, 0, 1, 1, 1, 1),
(52498, 71776, 0, 1, 1, 1, 1),
(52498, 71787, 0, 1, 1, 1, 1),
(52498, 71040, 0, 1, 1, 1, 1),
(52498, 71031, 0, 1, 1, 1, 1),
(52498, 71044, 0, 1, 1, 1, 1),
(52498, 70914, 0, 1, 0, 1, 1),
(52498, 71779, 0, 1, 0, 1, 1),
(52498, 71029, 0, 1, 1, 1, 1);

DELETE FROM `creature_loot_template` WHERE entry IN  (52498, 53576);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(52498, 1, 100, 1, 1, -52498, 3),
(52498, 69237, 100, 1, 0, 1, 2),
(53576, 1, 100, 1, 1, -52498, 6),
(53576, 69237, 100, 1, 0, 1, 2);

DELETE FROM `creature_onkill_currency` WHERE  `creature_id`=52498;
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyCount1`) VALUES (52498, 396, 120);

DELETE FROM `creature_onkill_currency` WHERE  `creature_id`=53576;
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyCount1`) VALUES (53576, 396, 120);

delete from creature where id IN (53490, 53492);