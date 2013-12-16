UPDATE `creature_template` SET `speed_run`=1, `minlevel`=85, `Health_mod`=5.12 WHERE (`entry`=23598);

UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `Health_mod`=5.12 WHERE (`entry`=23818);

DELETE FROM `creature_template` WHERE `entry`=43037;
INSERT INTO `creature_template` VALUES (43037, 0, 0, 0, 0, 0, 169, 0, 0, 0, 'Flame Breath', '', NULL, 0, 87, 87, 1, 0, 14, 14, 0, 1, 2, 1, 0, 316, 450, 0, 320, 1, 2000, 0, 1, 33554432, 2048, 8, 0, 0, 0, 0, 278, 413, 58, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 128, 'npc_flame_breath', 15595);

DELETE FROM `creature_template` WHERE `entry`=23920;
INSERT INTO `creature_template` VALUES (23920, 0, 0, 0, 0, 0, 169, 0, 0, 0, 'Fire Bomb (Zul\'Aman)', '', NULL, 0, 87, 87, 1, 0, 1890, 1890, 0, 1.15, 1.14286, 0.8, 0, 316, 450, 0, 320, 1, 2000, 0, 1, 33554432, 2048, 8, 0, 0, 0, 0, 278, 413, 58, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 128, 'mob_janalai_firebomb', 15595);
