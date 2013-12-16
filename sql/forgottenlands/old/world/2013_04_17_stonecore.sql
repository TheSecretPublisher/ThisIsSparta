DELETE FROM `creature` WHERE `id` IN (43438, 43214, 42188, 42333);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(NULL, 43438, 725, 3, 1, 0, 0, 1164.41, 874.28, 285.348, 3.07851, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(NULL, 43214, 725, 3, 1, 0, 0, 1282.7, 1229.77, 247.155, 3.82227, 7200, 0, 0, 1, 0, 0, 0, 0, 0),
(NULL, 42188, 725, 3, 1, 0, 0, 1473.44, 1061.58, 216.667, 0.47337, 86400, 0, 0, 1, 0, 0, 0, 0, 0),
(NULL, 42333, 725, 3, 1, 0, 0, 1337.79, 963.399, 214.183, 1.80461, 86400, 0, 0, 1, 0, 0, 0, 0, 0);



UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `faction_A`=16, `faction_H`=16, `ScriptName`='npc_lava_fissure' WHERE  `entry`=43242;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction_A`=16, `faction_H`=16, `mechanic_immune_mask`=613097436, `flags_extra`=2, `ScriptName`='npc_stalactite_base' WHERE  `entry`=43159 LIMIT 1;
UPDATE `creature_template` SET `ScriptName`='npc_gravity_well' WHERE  `entry`=42499 LIMIT 1;
UPDATE `creature_template` SET `InhabitType`=5 WHERE  `entry`=42355 LIMIT 1;