-- MISC START ERROR FIX

INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (43239, 26572);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (37657, 24629);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (37657, 24635);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (37657, 24636);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (37657, 24629);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (37657, 24635);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (37657, 24636);

UPDATE `skinning_loot_template` SET `maxcount`=3 WHERE `mincountOrRef`=2 AND `maxcount`=1;
UPDATE `skinning_loot_template` SET `groupid`=0 WHERE `entry`=8761;
UPDATE `skinning_loot_template` SET `groupid`=0 WHERE `entry`=6375;
UPDATE `skinning_loot_template` SET `groupid`=0 WHERE `entry`=8764;
DELETE FROM `skinning_loot_template` WHERE `item`>4303 AND `entry`=8761;
DELETE FROM `skinning_loot_template` WHERE `item`>4303 AND `entry`=6377;
DELETE FROM `skinning_loot_template` WHERE `item`>4303 AND `entry`=8764;
DELETE FROM `skinning_loot_template` WHERE `item`>4303 AND `entry`=6375;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance`=8 WHERE (`entry`=6377) AND (`item`=783);
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance`=6 WHERE (`entry`=6377) AND (`item`=4232);
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance`=60 WHERE (`entry`=6377) AND (`item`=2318);
