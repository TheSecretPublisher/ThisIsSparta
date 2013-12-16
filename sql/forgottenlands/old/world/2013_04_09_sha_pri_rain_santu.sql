DELETE FROM `spell_script_names` WHERE `spell_id` = 73920;
INSERT INTO `spell_script_names` (`spell_id`, `scriptname`) VALUES (73920, 'spell_sha_healing_rain');
DELETE FROM `spell_script_names` WHERE `spell_id` = 88685;
INSERT INTO `spell_script_names` (`spell_id`, `scriptname`) VALUES (88685, 'spell_pri_holy_word_sanctuary');
DELETE FROM `spell_bonus_data` WHERE `entry` = 73921;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `comments`) VALUES (73921, 0.11, 'Shaman - Healing Rain');