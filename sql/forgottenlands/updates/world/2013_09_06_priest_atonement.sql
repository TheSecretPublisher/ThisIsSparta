delete from `spell_script_names` where `spell_id` in (81751, -81751);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('-81751', 'spell_priest_atonement'); 
delete from `spell_bonus_data` where `entry` = 81751;
INSERT INTO `world`.`spell_bonus_data` (`entry`, `comments`) VALUES ('81751', 'Priest - Atonement'); 