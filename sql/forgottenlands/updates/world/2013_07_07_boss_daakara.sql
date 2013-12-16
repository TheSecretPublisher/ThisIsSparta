UPDATE `creature_template` SET `Health_mod`=80, `ScriptName`='boss_daakara' WHERE (`entry`=23863);

UPDATE `creature_template` SET `exp`=3, `faction_A`=1890, `faction_H`=1890,`Health_mod`=6, `ScriptName`='mob_amani_lynx' WHERE (`entry`=52839);

DELETE FROM `creature_template` WHERE `entry`= 24136;
INSERT INTO `creature_template` VALUES (24136, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Feather Vortex', '', NULL, 0, 85, 85, 0, 0, 1890, 1890, 0, 1, 1.5, 1, 0, 2, 2, 0, 24, 1, 2000, 0, 1, 33554432, 2048, 8, 0, 0, 0, 0, 1, 1, 0, 10, 1096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 169, 1, 0, 0, 'mob_daakara_vortex', 15595);

UPDATE `creature_template` SET `modelid1`=11686 WHERE (`entry`=24136);
