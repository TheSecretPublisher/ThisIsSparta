DELETE FROM `creature_template_addon` WHERE `entry`=24136;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES (24136, '97835 43120');

UPDATE `creature_template` SET `speed_run`=2 WHERE (`entry`=24136);