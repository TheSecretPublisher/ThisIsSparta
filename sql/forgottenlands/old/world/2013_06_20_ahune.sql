UPDATE `creature_template` SET `exp`=3, `ScriptName`='boss_ahune' WHERE  `entry`=25740 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=87, `maxlevel`=87, `exp`=3, `unit_flags`=0, `ScriptName`='npc_frozen_core' WHERE  `entry`=25865 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction_A`=16, `faction_H`=16 WHERE  `entry`=25755 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction_A`=16, `faction_H`=16 WHERE  `entry`=25757 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction_A`=16, `faction_H`=16 WHERE  `entry`=25756 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction_A`=16, `faction_H`=16, `ScriptName`='npc_ice_spear' WHERE  `entry`=25985 LIMIT 1;
UPDATE `gameobject_template` SET `faction`=35 WHERE  `entry`=187892 LIMIT 1;
UPDATE `gameobject_template` SET `data0`=0, `data1`=187892 WHERE  `entry`=187892 LIMIT 1;
UPDATE `gameobject_template` SET `flags`=0 WHERE  `entry`=187892 LIMIT 1;
UPDATE `gameobject_template` SET `data6`=0, `data7`=0 WHERE  `entry`=187892 LIMIT 1;
UPDATE `gameobject_template` SET `faction`=35, `data0`=1634, `data3`=1, `data10`=1, `data11`=1, `data12`=1, `data13`=1, `data15`=1, `data20`=80 WHERE  `entry`=187892 LIMIT 1;

DELETE FROM `gameobject_loot_template` WHERE `entry` = 187892;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (187892, 69769, 0, 1);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (187892, 69770, 0, 1);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (187892, 69768, 0, 1);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (187892, 69767, 0, 1);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (187892, 69766, 0, 1);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (187892, 54536, 2, 5, 5);

DELETE FROM `item_loot_template` WHERE `entry` = 54536;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (54536, 53641, 4);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (54536, 69771, 5, 1);
INSERT INTO `item_loot_template` (`entry`, `item`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (54536, 23247, 2, 5, 15);