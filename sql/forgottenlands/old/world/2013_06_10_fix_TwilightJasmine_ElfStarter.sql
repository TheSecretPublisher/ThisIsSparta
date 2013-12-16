-- Few fix to Night Elf starter zone
DELETE FROM creature WHERE guid IN (1022918, 1022916, 1022917);
UPDATE `creature_template` SET `npcflag`=0 WHERE (`entry`=2031);

-- fix Loot Twilight Jasmine
Delete From `gameobject_loot_template` WHERE `entry` = 28525;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `mincountOrRef`, `maxcount`) VALUES (28525, 52987, 2, 9);