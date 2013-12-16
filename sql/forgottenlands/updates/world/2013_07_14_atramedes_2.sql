DELETE FROM `creature_template_addon` WHERE `entry` IN (49623, 41807);
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES (49623, '77674');
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES (41807, '78387 78385');

UPDATE `creature_template` SET `modelid1`=11686, `modelid2`=0, `minlevel`=87, `maxlevel`=87, `exp`=3, `faction_A`=14, `faction_H`=14 WHERE  `entry`=49623 LIMIT 1;

DELETE FROM `conditions` WHERE `SourceEntry` IN (78098, 92403, 92404, 92405, 77611);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES 
(13, 1, 78098, 31, 3, 41879),
(13, 1, 92403, 31, 3, 41879),
(13, 1, 92404, 31, 3, 41879),
(13, 1, 92405, 31, 3, 41879),
(13, 1, 77611, 31, 3, 41442);

UPDATE `creature_template` SET `minlevel`=88, `maxlevel`=88, `exp`=3, `faction_A`=16, `faction_H`=16, `Health_mod`=266 WHERE  `entry`=41879 LIMIT 1;
UPDATE `creature_template` SET `modelid1`=11686, `modelid2`=0, `ScriptName`='npc_tracking_flames' WHERE  `entry`=41879 LIMIT 1;

UPDATE `creature_template` SET `minlevel`=88, `maxlevel`=88, `exp`=3, `faction_A`=14, `faction_H`=14 WHERE  `entry`=41807 LIMIT 1;
UPDATE `creature_template` SET `modelid1`=11686, `modelid2`=0 WHERE  `entry`=41807 LIMIT 1;
UPDATE `creature_template` SET `ScriptName`='npc_ancient_dwarven_shield' WHERE  `entry`=42949 LIMIT 1;
UPDATE `creature_template` SET `npcflag`=1 WHERE  `entry`=42949 LIMIT 1;
UPDATE `creature_template` SET `IconName`='openhandglow' WHERE  `entry`=42949 LIMIT 1;