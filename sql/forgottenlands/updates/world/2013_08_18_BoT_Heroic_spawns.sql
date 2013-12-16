UPDATE `creature` SET `spawnMask` = '15' WHERE `guid` IN (1579001, 263030, 692151, 699196, 692007, 659194, 691998, 659195,691999, 659192, 602005, 659193, 692006, 659191, 602048, 659190, 692015); 
UPDATE `creature_template` SET `faction_A` = '14' , `faction_H` = '14' WHERE `entry` = '50131';
UPDATE `creature_template` SET `faction_A` = '14' , `faction_H` = '14', `Health_mod` = '8100'  WHERE `entry` = '50132';
UPDATE `creature_template` SET `faction_A` = '14' , `faction_H` = '14', `Health_mod` = '24700' WHERE `entry` = '50133';
