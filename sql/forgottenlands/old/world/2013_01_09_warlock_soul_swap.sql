DELETE FROM `spell_script_names` WHERE `spell_id` IN (86121, 86211, 86213);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(86121, 'spell_warl_soul_swap'),
(86211, 'spell_warl_soul_swap_buff'),
(86213, 'spell_warl_soul_swap_exhale');