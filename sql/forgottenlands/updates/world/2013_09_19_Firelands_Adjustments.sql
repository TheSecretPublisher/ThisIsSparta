DELETE FROM `spell_script_names` WHERE `spell_id` IN(99263, 99256, 100230, 100231, 100232);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (99263, 'spell_vital_flame');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (99256, 'spell_torment');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (100230, 'spell_torment');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (100231, 'spell_torment');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (100232, 'spell_torment');

-- baleroc hp
UPDATE `creature_template` SET `exp` = '3' WHERE `entry` = '53588';
UPDATE `creature_template` SET `exp` = '3' WHERE `entry` = '53589'; 
UPDATE `creature_template` SET `Health_mod` = '490' WHERE `entry` = '53494'; 
UPDATE `creature_template` SET `Health_mod` = '1552' WHERE `entry` = '53587'; 
UPDATE `creature_template` SET `Health_mod` = '921' WHERE `entry` = '53588'; 
UPDATE `creature_template` SET `Health_mod` = '2580' WHERE `entry` = '53589'; 

-- shannox hp
UPDATE `creature_template` SET `Health_mod` = '280' WHERE `entry` = '53691';
UPDATE `creature_template` SET `Health_mod` = '390' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `Health_mod` = '950' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `Health_mod` = '1330' WHERE `entry` = '54080'; 
-- rageface hp
UPDATE `creature_template` SET `Health_mod` = '112' WHERE `entry` = '53695'; 
UPDATE `creature_template` SET `Health_mod` = '392' WHERE `entry` = '53981'; 
-- riplimb hp
UPDATE `creature_template` SET `Health_mod` = '112' WHERE `entry` = '53694'; 
UPDATE `creature_template` SET `Health_mod` = '392' WHERE `entry` = '53980'; 



Update `creature_template` SET health_mod=911 WHERE entry=52558; -- già alzato
delete from `areatrigger_scripts` where `entry` =  5770;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('5770', 'at_sulfuron_keep');
UPDATE `creature_template` SET `ScriptName` = 'boss_ragnaros_cata' WHERE `entry` = '52409';
delete from `creature_equip_template` where `entry` = '52409';
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`) VALUES ('52409', '1', '99173'); 

delete from `spell_proc_event` where `entry` = 99252;
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `CustomChance`, `Cooldown`) VALUES ('99252', '33554431', '100', '5');