DELETE FROM `spell_script_names` WHERE `spell_id`=98020;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (98020, 'spell_spirit_link');
DELETE FROM `creature_template_addon` WHERE `entry`= 53006;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES (53006, '98017 98007');