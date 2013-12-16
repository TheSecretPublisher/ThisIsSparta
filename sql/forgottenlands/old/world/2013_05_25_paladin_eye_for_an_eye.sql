DELETE FROM spell_proc_event WHERE entry=25988;

DELETE FROM spell_script_names WHERE ScriptName='spell_pal_eye_for_an_eye';
INSERT INTO `spell_script_names` VALUES (9799, 'spell_pal_eye_for_an_eye');
INSERT INTO `spell_script_names` VALUES (25988, 'spell_pal_eye_for_an_eye');
