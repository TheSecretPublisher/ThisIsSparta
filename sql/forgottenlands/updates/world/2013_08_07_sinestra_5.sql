UPDATE `creature_template` SET `exp`=3 WHERE  `entry`=46277 LIMIT 1;
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35 WHERE  `entry`=46277 LIMIT 1;
UPDATE `creature_template` SET `InhabitType`=5 WHERE  `entry`=46288 LIMIT 1;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (87323, 92941);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(87323, 'spell_sinestra_phyrric_focus'),
(92941, 'spell_sinestra_phyrric_focus');