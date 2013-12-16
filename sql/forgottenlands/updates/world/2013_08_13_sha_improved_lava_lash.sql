DELETE FROM spell_script_names WHERE spell_id in(77700, 77701);
INSERT INTO `spell_script_names` VALUES (77700, 'spell_sha_improved_lava_lash');
INSERT INTO `spell_script_names` VALUES (77701, 'spell_sha_improved_lava_lash');

DELETE FROM spell_proc_event WHERE entry in(77700, 77701);
INSERT INTO `spell_proc_event` VALUES (77700, 0, 11, 0, 0, 4, 16, 0, 0, 100, 0);
INSERT INTO `spell_proc_event` VALUES (77701, 0, 11, 0, 0, 4, 16, 0, 0, 100, 0);

