-- Frederick's Fish Fancy
UPDATE `creature_template` SET `faction_A`=67 WHERE (`entry`=45655);
UPDATE `creature_template` SET `faction_H`=67 WHERE (`entry`=45655);
UPDATE `creature_template` SET `minlevel`=1 WHERE (`entry`=45655);
UPDATE `creature_template` SET `maxlevel`=1 WHERE (`entry`=45655);



UPDATE `creature_template` SET `faction_A`=67 WHERE (`entry`=45657);
UPDATE `creature_template` SET `faction_H`=67 WHERE (`entry`=45657);
UPDATE `creature_template` SET `minlevel`=1 WHERE (`entry`=45657);
UPDATE `creature_template` SET `maxlevel`=1 WHERE (`entry`=45657);


UPDATE `creature_template` SET `faction_A`=67 WHERE (`entry`=45650);
UPDATE `creature_template` SET `faction_H`=67 WHERE (`entry`=45650);
UPDATE `creature_template` SET `minlevel`=1 WHERE (`entry`=45650);
UPDATE `creature_template` SET `maxlevel`=1 WHERE (`entry`=45650);



-- add loot Add 'em to the Pile

DELETE FROM `creature_loot_template` WHERE `entry`=8524 AND item=61372;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8524, 61372, -95);
UPDATE `creature_template` SET `lootid`=8524 WHERE (`entry`=8524);

DELETE FROM `creature_loot_template` WHERE `entry`=8523 AND item=61372;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8523, 61372, -95);
UPDATE `creature_template` SET `lootid`=8523 WHERE (`entry`=8523);

-- spawn  Gidwin Goldbraids

DELETE FROM `creature` WHERE `id`=45428;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (45428, 0, 1, 1, 0, 0, 2736.42, -2454.52, 68.781, 3.1765, 120, 0, 0, 1, 0, 0, 0, 0, 0);

-- add loot Postponing the Inevitable

DELETE FROM `creature_loot_template` WHERE `entry`=8550 AND item=61037;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8550, 61037, -80);
UPDATE `creature_template` SET `lootid`=8550 WHERE (`entry`=8550);

DELETE FROM `creature_loot_template` WHERE `entry`=8546 AND item=61037;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8546, 61037, -80);
UPDATE `creature_template` SET `lootid`=8546 WHERE (`entry`=8546);


-- Scarlet Salvage

DELETE FROM `gameobject_loot_template` WHERE `entry`=34748 AND `item`=61959;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (34748, 61959, -100);

DELETE FROM `gameobject_loot_template` WHERE `entry`=34749 AND `item`=61960;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (34749, 61960, -100);

DELETE FROM `gameobject_loot_template` WHERE `entry`=34750 AND `item`=61961;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (34750, 61961, -100);

DELETE FROM `gameobject_loot_template` WHERE `entry`=34751 AND `item`=61962;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (34751, 61962, -100);


-- spawn vari

DELETE FROM `creature` WHERE `id`=45428;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (45428, 0, 1, 1, 0, 0, 2736.42, -2454.52, 68.781, 3.1765, 120, 0, 0, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=45429;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (45429, 0, 1, 1, 0, 0, 1692.83, -3027.97, 77.4409, 3.15905, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (45429, 0, 1, 0, 0, 0, 1933.89, -2646.13, 59.7709, 3.46417, 300, 0, 0, 1535, 1587, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (45429, 0, 1, 0, 0, 0, 1851.49, -3686.72, 158.024, 0.11551, 300, 0, 0, 1535, 1587, 0, 0, 0, 0);
