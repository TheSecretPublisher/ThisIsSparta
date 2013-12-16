DELETE FROM spell_proc_event WHERE entry in(30299, 30301);
INSERT INTO `spell_proc_event` VALUES (30299, 0, 0, 0, 0, 0, 664096, 1024, 0, 100, 0);
INSERT INTO `spell_proc_event` VALUES (30301, 0, 0, 0, 0, 0, 664096, 1024, 0, 100, 0);

DELETE FROM spell_script_names WHERE ScriptName='spell_warl_nether_protection';
INSERT INTO `spell_script_names` VALUES (30299, 'spell_warl_nether_protection');
INSERT INTO `spell_script_names` VALUES (30301, 'spell_warl_nether_protection');

DELETE FROM spell_script_names WHERE spell_id=7812;
INSERT INTO `spell_script_names` VALUES (7812, 'spell_warl_shadow_ward');
