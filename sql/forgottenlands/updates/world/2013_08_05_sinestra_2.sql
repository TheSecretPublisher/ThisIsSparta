UPDATE `creature_template` SET `minlevel`=86, `maxlevel`=86, `exp`=3, `faction_A`=16, `faction_H`=16, `ScriptName`='npc_sinestra_shadow_orb' WHERE  `entry`=49863 LIMIT 1;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (92852, 92954);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(92852, 'spell_sinestra_twilight_slicer'),
(92954, 'spell_sinestra_twilight_slicer');