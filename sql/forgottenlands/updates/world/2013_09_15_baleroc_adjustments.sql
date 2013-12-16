DELETE FROM `spell_script_names` WHERE `spell_id` IN(99263, 99256);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (99263, 'spell_vital_flame');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (99256, 'spell_torment');

UPDATE `creature_template` SET `mechanic_immune_mask`=635387903 WHERE (`entry`=53494);