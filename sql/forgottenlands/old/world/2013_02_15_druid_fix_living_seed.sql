DELETE FROM spell_script_names WHERE spell_id = -48496;
DELETE FROM spell_script_names WHERE spell_id IN(48500,48499,48496);
INSERT INTO `spell_script_names` VALUES (48500, 'spell_dru_living_seed');
INSERT INTO `spell_script_names` VALUES (48499, 'spell_dru_living_seed');
INSERT INTO `spell_script_names` VALUES (48496, 'spell_dru_living_seed');

DELETE FROM spell_proc_event WHERE entry in(48500, 48499, 48496);
INSERT INTO `spell_proc_event` VALUES (48500, 0, 7, 96, 33554434, 0, 16384, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (48499, 0, 7, 96, 33554434, 0, 16384, 2, 0, 0, 0);
INSERT INTO `spell_proc_event` VALUES (48496, 0, 7, 96, 33554434, 0, 16384, 2, 0, 0, 0);
