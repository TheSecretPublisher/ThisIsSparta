UPDATE `creature_template` SET `faction_A` = '14' , `faction_H` = '14', `Health_mod` = '500', `ScriptName` = 'boss_sinestra' WHERE `entry` = '45213'; 
UPDATE `creature_template` SET `faction_A` = '14' , `faction_H` = '14', `Health_mod` = '1500' WHERE `entry` = '49744'; 

DELETE FROM `creature_loot_template` WHERE `entry` IN (45213, 49744);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(45213, 0, 100, 1, 1, -45213, 3),
(49744, 0, 100, 1, 1, -45213, 6);

DELETE FROM `reference_loot_template` WHERE `entry` = 45213;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(45213, 60226, 0, 1, 1, 1, 1),
(45213, 60227, 0, 1, 1, 1, 1),
(45213, 60228, 0, 1, 1, 1, 1),
(45213, 60229, 0, 1, 1, 1, 1),
(45213, 60230, 0, 1, 1, 1, 1),
(45213, 60231, 0, 1, 1, 1, 1),
(45213, 60232, 0, 1, 1, 1, 1),
(45213, 60233, 0, 1, 1, 1, 1),
(45213, 60234, 0, 1, 1, 1, 1),
(45213, 60235, 0, 1, 1, 1, 1),
(45213, 60236, 0, 1, 1, 1, 1),
(45213, 60237, 0, 1, 1, 1, 1),
(45213, 60238, 0, 1, 1, 1, 1);