UPDATE `creature_template` SET `difficulty_entry_1`=49583, `difficulty_entry_2`=49584, `difficulty_entry_3`=49585 WHERE  `entry`=41442 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=88, `maxlevel`=88, `exp`=3, `faction_A`=14, `faction_H`=14, `baseattacktime`=1500, `rangeattacktime`=2000, `mechanic_immune_mask`=650854369, `flags_extra`=1 WHERE  `entry` IN (49583, 49584, 49585);
UPDATE `creature_template` SET `exp`=3 WHERE  `entry`=41442 LIMIT 1;
UPDATE `creature_template` SET `mechanic_immune_mask`=650854369 WHERE  `entry`=41442 LIMIT 1;
DELETE FROM `creature` WHERE  `id`=43126;
DELETE FROM `creature` WHERE  `id`=49740;