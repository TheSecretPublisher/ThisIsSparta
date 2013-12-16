-- Loot Hellfire Ramparts chest
UPDATE `gameobject_template` SET `faction`=65535, `flags`=0, `data20`=0 WHERE  `entry`=185168;

-- Loot mechanar Cache of the Legion
UPDATE `gameobject_template` SET `flags`=0 WHERE  `entry`=184465;
DELETE FROM `gameobject_loot_template` WHERE  `entry`=20529 AND `item`=72663;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (20529, 72663, 45);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=25, `groupid`=0 WHERE  `entry`=20529 AND `item`=28252;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=25, `groupid`=0 WHERE  `entry`=20529 AND `item`=28251;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=25, `groupid`=0 WHERE  `entry`=20529 AND `item`=28250;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=25, `groupid`=0 WHERE  `entry`=20529 AND `item`=28249;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=25, `groupid`=0 WHERE  `entry`=20529 AND `item`=28248;