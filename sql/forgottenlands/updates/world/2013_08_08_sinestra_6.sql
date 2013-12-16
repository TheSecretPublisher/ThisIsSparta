UPDATE `creature_template` SET `unit_flags`=0 WHERE  `entry`=46842 LIMIT 1;
UPDATE `creature_template` SET `exp`=3 WHERE  `entry`=46842 LIMIT 1;
UPDATE `creature_template` SET `exp`=3, `faction_A`=14, `faction_H`=14, `ScriptName`='npc_sinestra_add' WHERE  `entry`=48415 LIMIT 1;
UPDATE `creature_template` SET `exp`=3, `faction_A`=14, `faction_H`=14, `unit_flags`=0, `unit_flags2`=0, `ScriptName`='npc_sinestra_add' WHERE  `entry`=55636 LIMIT 1;
UPDATE `creature_template` SET `mechanic_immune_mask`=650854369 WHERE  `entry`IN(55636);
