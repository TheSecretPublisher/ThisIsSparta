UPDATE `creature_template` SET `ScriptName`='npc_power_generator' WHERE  `entry`=42733 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction_A`=16, `faction_H`=16 WHERE  `entry`=42934 LIMIT 1;
UPDATE `creature_template` SET `difficulty_entry_1`=49121, `difficulty_entry_2`=49122, `difficulty_entry_3`=49123, `minlevel`=85, `exp`=3, `faction_A`=16, `faction_H`=16, `ScriptName`='npc_poison_bomb' WHERE  `entry`=42897 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85, `exp`=3, `faction_A`=16, `faction_H`=16 WHERE  `entry` IN (49121, 49122, 49123);
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction_A`=16, `faction_H`=16 WHERE  `entry`=42920 LIMIT 1;
